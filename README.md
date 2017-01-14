# ESP8266 Environment Monitor

## Table of Contents
* [Summary](#summary)
* [Case](#case)
* [Hardware](#hardware)
* [Code] (#code)
* [License] (#license)

## Summary
This is a personal project to build an Environment Monitor for my Polytunnel where I mostly grow chillies.

The project consists of three parts: the case to hold the monitor, the hardware (PCB and Sensor(s) etc.) and the software.

## Case

The case is designed in OpenSCAD and is suitable for printing on a 3D Printer. It is not quite finished yet as I haven't designed
the to internals to mount the battery, electronics and sensor.

## Hardware

The Schematic and PCB are designed in KiCAD. The board has not yet been fully tested

## Code

The software for the ESP8266 is in this directory. It is fairly simple C code. The config.h file contains user-defined parameters.
The ESP8266 code works like this: On power up the ESP attempts to connect to the WiFi network. If successful it then attempts to 
read the data back from the BME280 which provides, Temperature, Humidity and Pressure information. If the BME is read successfully
the data is formatted and sent to the MQTT broker. The ESP8266 also sends infomration about it's supply voltage and the time it 
took to run this code loop. Finally the code puts the ESP into "Deep Sleep" for a preconfigured period.

## License

The software is GPL, the OpenSCAD design of the case is Creative Commons Attribution-ShareAlike 4.0 International and the 
electronic designs are licenced using the Solderpad Hardware License version 0.51
