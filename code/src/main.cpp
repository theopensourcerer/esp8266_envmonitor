/*
Environment Monitor

For the Espressif ESP8266

Uses MQTT and a Bosch BME280 Sensor to read and transmit Temprature, Hunidity and
Air pressure to an MQTT Broker.

This code was written and tested using the PlatformIO IDE and the ESP8266-12F
module.

Ideas and code from various soruces:
https://github.com/chaeplin/esp8266_and_arduino
https://twitter.com/jpwsutton,
https://github.com/finitespace/BME280

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

This code is licensed under the GNU LGPL and is open for ditrbution
and copying in accordance with the license.
This header must be included in any derived code or copies of the code.

(C) Alan Lord 2017
*/
#include "config.h"

#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <BME280I2C.h>
#include <Wire.h>
#include <ArduinoJson.h>

// Not sure why this is necessary but the BME280I2C won't compile without it.
#include <SPI.h>

// Set up ESP8266 ADC for voltage read
ADC_MODE(ADC_VCC);

// BME280
bool metric = true; // Want 'C not 'F
float temp(NAN), hum(NAN), pres(NAN);
uint8_t pressureUnit(1); // unit: B000 = Pa, B001 = hPa, B010 = Hg, B011 = atm, B100 = bar, B101 = torr, B110 = N/m^2, B111 = psi

// ESP
float vcc;
const uint32_t esp_id = ESP.getChipId();

// Timer placeholders
unsigned long startMills = 0;
unsigned long wifiMills = 0;
unsigned long subMills = 0;

// Function Prototypes
void readBME();
void setup_wifi();
void reconnect();
void publishJSON();
void goingToSleep();
// End Prototypes

// Begin code
WiFiClient espClient;
PubSubClient client(espClient);
BME280I2C bme;

long lastMsg = 0;
char msg[50];
int value = 0;

void setup() {
  startMills = millis();
  vcc = ESP.getVcc();
  Serial.begin(115200);
  while(!bme.begin()) {
    Serial.println("Could not find BME280I2C sensor!");
    Serial.println("Going to sleep");
    goingToSleep();
  }
  setup_wifi();
  client.setServer(MQTT_SERVER, 1883);
}

void setup_wifi() {
  //delay(10);
  // We start by connecting to a WiFi network
  if (DEBUG_PRINT) {
    Serial.println();
    Serial.print("Connecting to ");
    Serial.println(WIFI_SSID);
  }
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
    if (millis() - startMills > 15000) {
      if (DEBUG_PRINT) {
        Serial.println("Taken too long to connect to WiFi. Going to sleep");
      }
      goingToSleep();
    }
  }

  if (DEBUG_PRINT) {
    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
  }
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }

  readBME();

  if(temp && hum && pres) {
    if (DEBUG_PRINT) {
      Serial.print("Read BME280. Publish message: ");
    }
    publishJSON();
  }
  goingToSleep();
}

void publishJSON() {
  if (client.connected()) {
    StaticJsonBuffer<175> jsonBuffer;
    JsonObject& root = jsonBuffer.createObject();
    JsonArray& payload = root.createNestedArray("payload");
    JsonObject& data = payload.createNestedObject();
    data["sensorid"] = SENSORNAME;
    data["temp"] = temp;
    data["hum"] = hum;
    data["pres"] = String(pres, 2);
    data["vcc"] = vcc/1000;
    data["cycletime"] = millis() - startMills;
    if (DEBUG_PRINT) {
      Serial.print("Sending payload: ");
      root.prettyPrintTo(Serial);
    }

    char buffer[150];
    root.printTo(buffer, sizeof(buffer));
    if (client.publish(TOPIC, buffer));
      if (DEBUG_PRINT) {
        Serial.print("Published OK  --> ");
        Serial.println(millis() - startMills);
      }
    } else {
      if (DEBUG_PRINT) {
        Serial.print("Publish failed --> ");
        Serial.println(millis() - startMills);
      }
    }
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    if (DEBUG_PRINT) {
      Serial.print("Attempting MQTT connection...");
    }
    // Attempt to connect
    if (client.connect("ENVMonitor")) {
      if (DEBUG_PRINT) {
        Serial.println("Connected");
      }
    } else {
      if (DEBUG_PRINT) {
        Serial.print("Failed to connect. State = ");
        Serial.print(client.state());
        Serial.println(" Retry in 2 seconds");
      }
      // Wait 2 seconds before retrying
      delay(2000);
    }
  }
}

void readBME() {
  bme.read(pres, temp, hum, pressureUnit, metric);
  if (DEBUG_PRINT) {
    Serial.print("Temp: ");
    Serial.print(temp);
    Serial.print(" Humidity: ");
    Serial.print(hum);
    Serial.print(" Pressure: ");
    Serial.print(pres);
    Serial.println();
  }
}

void goingToSleep() {
  // All Good
  if (DEBUG_PRINT) {
    Serial.print("About to go to sleep: Time taken to complete cycle: ");
    Serial.println(millis() - startMills);
  }
  client.disconnect();
  yield();
  WiFi.disconnect();
  WiFi.mode(WIFI_OFF);
  WiFi.forceSleepBegin();
  ESP.deepSleep(deep_sleep, DS_MODE);
  //ESP.deepSleep(0);
  delay(250);
}
