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

// Debugging
#define DEBUG_PRINT 1

// Change these to suit your own application and network.
const char* WIFI_SSID = "";
const char* WIFI_PASSWORD = "";
const char* MQTT_SERVER = "";

// Topics (Environment and VCC)
const char* ENV_TOPIC = "PT/Env";
const char* TECH_TOPIC = "PT/Tech";

// Deep Sleep (uSec) Debug = 10000000 (10 Seconds). Production: 900000000 (15 minutes)
long deep_sleep = 10000000;

// Deep Sleep mode.
#define DS_MODE WAKE_RF_DEFAULT
