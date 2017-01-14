EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:ESP8266
LIBS:Abracon
LIBS:ActiveSemi
LIBS:AMS
LIBS:AnalogDevices
LIBS:AOS
LIBS:Atmel
LIBS:Bosch
LIBS:conn-2mm
LIBS:conn-100mil
LIBS:conn-amphenol
LIBS:conn-assmann
LIBS:conn-cui
LIBS:conn-fci
LIBS:conn-jae
LIBS:conn-linx
LIBS:conn-molex
LIBS:conn-tagconnect
LIBS:conn-te
LIBS:conn-test
LIBS:DiodesInc
LIBS:electomech-misc
LIBS:_electromech
LIBS:Fairchild
LIBS:FTDI
LIBS:Infineon
LIBS:Intersil
LIBS:_linear
LIBS:LinearTech
LIBS:Littelfuse
LIBS:_logic
LIBS:logic-4000
LIBS:logic-7400
LIBS:logic-7400-new
LIBS:MACOM
LIBS:Macrofab
LIBS:mechanical
LIBS:Microchip
LIBS:Micron
LIBS:Murata
LIBS:NXP
LIBS:OceanOptics
LIBS:_passive
LIBS:pasv-BelFuse
LIBS:pasv-BiTech
LIBS:pasv-Bourns
LIBS:pasv-cap
LIBS:pasv-ind
LIBS:pasv-Murata
LIBS:pasv-res
LIBS:pasv-TDK
LIBS:pasv-xtal
LIBS:pcb
LIBS:Recom
LIBS:Richtek
LIBS:_semi
LIBS:semi-diode-DiodesInc
LIBS:semi-diode-generic
LIBS:semi-diode-MCC
LIBS:semi-diode-NXP
LIBS:semi-diode-OnSemi
LIBS:semi-diode-Semtech
LIBS:semi-diode-ST
LIBS:semi-diode-Toshiba
LIBS:semi-opto-generic
LIBS:semi-opto-liteon
LIBS:semi-thyristor-generic
LIBS:semi-trans-AOS
LIBS:semi-trans-DiodesInc
LIBS:semi-trans-EPC
LIBS:semi-trans-Fairchild
LIBS:semi-trans-generic
LIBS:semi-trans-Infineon
LIBS:semi-trans-IRF
LIBS:semi-trans-IXYS
LIBS:semi-trans-NXP
LIBS:semi-trans-OnSemi
LIBS:semi-trans-Panasonic
LIBS:semi-trans-ST
LIBS:semi-trans-TI
LIBS:semi-trans-Toshiba
LIBS:semi-trans-Vishay
LIBS:skyworks
LIBS:ST
LIBS:st_ic
LIBS:symbol
LIBS:TexasInstruments
LIBS:u-blox
LIBS:Vishay
LIBS:Winbond
LIBS:Xilinx
LIBS:mcp1700t-3302e-tt
LIBS:environment-monitor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Environment Monitor"
Date "2017-01-03"
Rev "V1.2"
Comp "Solderpad Hardware License version 0.51"
Comment1 "Contact: alanslists@gmail.com"
Comment2 "Author: Alan Lord"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP-12E U1
U 1 1 5846AA2E
P 5450 3000
F 0 "U1" H 5450 2900 50  0000 C CNN
F 1 "ESP-12E" H 5450 3100 50  0000 C CNN
F 2 "ESP8266:ESP-12E" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5846B825
P 4600 2300
F 0 "P2" H 4600 2450 50  0000 C CNN
F 1 "HEADER" V 4700 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0000 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5846BA46
P 4400 1650
F 0 "R2" V 4480 1650 50  0000 C CNN
F 1 "10k" V 4400 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4330 1650 50  0001 C CNN
F 3 "" H 4400 1650 50  0000 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5846BADA
P 8550 4000
F 0 "R6" V 8630 4000 50  0000 C CNN
F 1 "10k" V 8550 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 8480 4000 50  0001 C CNN
F 3 "" H 8550 4000 50  0000 C CNN
	1    8550 4000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5846BB35
P 6550 3450
F 0 "R3" V 6630 3450 50  0000 C CNN
F 1 "10k" V 6550 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6480 3450 50  0001 C CNN
F 3 "" H 6550 3450 50  0000 C CNN
	1    6550 3450
	1    0    0    -1  
$EndComp
$Comp
L CPOL C2
U 1 1 5846BB90
P 9350 1850
F 0 "C2" H 9550 1900 50  0000 C CNN
F 1 "10uF" H 9550 1800 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9340 1825 60  0001 C CNN
F 3 "" H 9340 1825 60  0000 C CNN
	1    9350 1850
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5846BBC9
P 8350 2000
F 0 "C1" H 8375 2100 50  0000 L CNN
F 1 "1uF" H 8375 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8388 1850 50  0001 C CNN
F 3 "" H 8350 2000 50  0000 C CNN
	1    8350 2000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5846EA6F
P 8050 1750
F 0 "#PWR01" H 8050 1800 30  0001 C CNN
F 1 "VCC" H 8050 1850 50  0000 C CNN
F 2 "" H 8050 1750 60  0000 C CNN
F 3 "" H 8050 1750 60  0000 C CNN
	1    8050 1750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5846EBB4
P 4400 3550
F 0 "#PWR02" H 4400 3600 30  0001 C CNN
F 1 "VCC" H 4400 3650 50  0000 C CNN
F 2 "" H 4400 3550 60  0000 C CNN
F 3 "" H 4400 3550 60  0000 C CNN
	1    4400 3550
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5846ECC2
P 4400 1450
F 0 "#PWR03" H 4400 1500 30  0001 C CNN
F 1 "VCC" H 4400 1550 50  0000 C CNN
F 2 "" H 4400 1450 60  0000 C CNN
F 3 "" H 4400 1450 60  0000 C CNN
	1    4400 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 58470DFE
P 6300 5100
F 0 "P3" H 6300 5450 50  0000 C CNN
F 1 "SERIAL" V 6400 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 6300 5100 50  0001 C CNN
F 3 "" H 6300 5100 50  0000 C CNN
	1    6300 5100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5847157D
P 6500 5450
F 0 "#PWR04" H 6500 5450 30  0001 C CNN
F 1 "GND" H 6500 5380 30  0001 C CNN
F 2 "" H 6500 5450 60  0000 C CNN
F 3 "" H 6500 5450 60  0000 C CNN
	1    6500 5450
	1    0    0    -1  
$EndComp
Text Label 6650 4950 0    60   ~ 0
TXD
Text Label 6400 2700 0    60   ~ 0
TXD
Text Label 6400 2800 0    60   ~ 0
RXD
Text Label 6650 5050 0    60   ~ 0
RXD
Connection ~ 9350 1750
Wire Wire Line
	9350 1950 10000 1950
Wire Wire Line
	8700 2050 9350 2050
Wire Wire Line
	9350 2050 9350 1950
Connection ~ 9350 1950
Wire Wire Line
	4550 3400 4400 3400
Wire Wire Line
	4400 3400 4400 3550
Wire Wire Line
	6500 4950 6800 4950
Wire Wire Line
	6350 2700 6550 2700
Wire Wire Line
	6350 2800 6550 2800
Wire Wire Line
	6500 5050 6800 5050
Wire Wire Line
	8350 1850 8350 1750
Wire Wire Line
	8350 1750 8050 1750
$Comp
L GND #PWR05
U 1 1 584731B5
P 8350 2350
F 0 "#PWR05" H 8350 2350 30  0001 C CNN
F 1 "GND" H 8350 2280 30  0001 C CNN
F 2 "" H 8350 2350 60  0000 C CNN
F 3 "" H 8350 2350 60  0000 C CNN
	1    8350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2150 8350 2350
Wire Wire Line
	4400 1450 4400 1500
Wire Wire Line
	4400 1900 4350 1900
Wire Wire Line
	4050 2700 4550 2700
Wire Wire Line
	6350 3100 6600 3100
Text Label 6350 3100 0    60   ~ 0
FLASH
$Comp
L VCC #PWR06
U 1 1 58473615
P 8550 3750
F 0 "#PWR06" H 8550 3800 30  0001 C CNN
F 1 "VCC" H 8550 3850 50  0000 C CNN
F 2 "" H 8550 3750 60  0000 C CNN
F 3 "" H 8550 3750 60  0000 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3750 8550 3850
Wire Wire Line
	8550 4150 8550 4500
Wire Wire Line
	8550 4500 8850 4500
Text Label 8550 4350 0    60   ~ 0
FLASH
$Comp
L GND #PWR07
U 1 1 58473756
P 9350 4700
F 0 "#PWR07" H 9350 4700 30  0001 C CNN
F 1 "GND" H 9350 4630 30  0001 C CNN
F 2 "" H 9350 4700 60  0000 C CNN
F 3 "" H 9350 4700 60  0000 C CNN
	1    9350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4500 9350 4700
Wire Wire Line
	6350 3300 6550 3300
$Comp
L GND #PWR08
U 1 1 58473B97
P 6350 3600
F 0 "#PWR08" H 6350 3600 30  0001 C CNN
F 1 "GND" H 6350 3530 30  0001 C CNN
F 2 "" H 6350 3600 60  0000 C CNN
F 3 "" H 6350 3600 60  0000 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3000 4550 3000
Connection ~ 4400 2700
$Comp
L R R1
U 1 1 584754DA
P 4050 2850
F 0 "R1" V 4130 2850 50  0000 C CNN
F 1 "10R" V 4050 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3980 2850 50  0001 C CNN
F 3 "" H 4050 2850 50  0000 C CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
NoConn ~ 6500 4850
NoConn ~ 6500 5150
NoConn ~ 6500 5250
NoConn ~ 5700 3900
NoConn ~ 5600 3900
NoConn ~ 5500 3900
NoConn ~ 5400 3900
NoConn ~ 5300 3900
NoConn ~ 5200 3900
Wire Wire Line
	4400 2700 4400 2350
Wire Wire Line
	4400 1800 4400 2250
Connection ~ 4400 1900
NoConn ~ 4550 2800
NoConn ~ 4550 2900
NoConn ~ 4550 3300
NoConn ~ 6350 2900
Wire Wire Line
	4050 1900 4050 2150
Wire Wire Line
	6550 3750 6550 3600
$Comp
L GND #PWR09
U 1 1 5847B527
P 6550 3750
F 0 "#PWR09" H 6550 3750 30  0001 C CNN
F 1 "GND" H 6550 3680 30  0001 C CNN
F 2 "" H 6550 3750 60  0000 C CNN
F 3 "" H 6550 3750 60  0000 C CNN
	1    6550 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5847BCC7
P 4050 2150
F 0 "#PWR010" H 4050 2150 30  0001 C CNN
F 1 "GND" H 4050 2080 30  0001 C CNN
F 2 "" H 4050 2150 60  0000 C CNN
F 3 "" H 4050 2150 60  0000 C CNN
	1    4050 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 5847C360
P 3500 4450
F 0 "P1" H 3500 4700 50  0000 C CNN
F 1 "BME280" V 3600 4450 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 3500 4450 50  0001 C CNN
F 3 "" H 3500 4450 50  0000 C CNN
	1    3500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4300 3300 4300
Wire Wire Line
	3300 4500 3000 4500
Wire Wire Line
	3300 4600 3000 4600
$Comp
L VCC #PWR011
U 1 1 5847C57F
P 2800 4000
F 0 "#PWR011" H 2800 4050 30  0001 C CNN
F 1 "VCC" H 2800 4100 50  0000 C CNN
F 2 "" H 2800 4000 60  0000 C CNN
F 3 "" H 2800 4000 60  0000 C CNN
	1    2800 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5847C5B7
P 2250 4750
F 0 "#PWR012" H 2250 4750 30  0001 C CNN
F 1 "GND" H 2250 4680 30  0001 C CNN
F 2 "" H 2250 4750 60  0000 C CNN
F 3 "" H 2250 4750 60  0000 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4000 2800 4300
Text Label 3150 4500 0    60   ~ 0
SCL
Text Label 3150 4600 0    60   ~ 0
SDA
Wire Wire Line
	6350 3600 6350 3400
Wire Wire Line
	6500 5350 6500 5450
$Comp
L PWR_FLAG #PWR013
U 1 1 5847313A
P 9100 5350
F 0 "#PWR013" H 9100 5350 50  0001 C CNN
F 1 "PWR_FLAG" H 9100 5350 50  0001 C CNN
F 2 "" H 9100 5350 60  0000 C CNN
F 3 "" H 9100 5350 60  0000 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 58473222
P 9100 5550
F 0 "#PWR014" H 9100 5550 30  0001 C CNN
F 1 "GND" H 9100 5480 30  0001 C CNN
F 2 "" H 9100 5550 60  0000 C CNN
F 3 "" H 9100 5550 60  0000 C CNN
	1    9100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5350 9100 5550
Wire Wire Line
	3300 4400 2250 4400
Wire Wire Line
	2250 4400 2250 4750
Wire Wire Line
	9350 4500 9150 4500
Connection ~ 8350 1750
$Comp
L CONN_01X02 P4
U 1 1 58475CBA
P 10200 1850
F 0 "P4" H 10200 2000 50  0000 C CNN
F 1 "PWR" V 10300 1850 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 10200 1850 50  0001 C CNN
F 3 "" H 10200 1850 50  0000 C CNN
	1    10200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1750 10000 1800
Wire Wire Line
	10000 1950 10000 1900
NoConn ~ 6350 3000
NoConn ~ 6350 3200
Wire Wire Line
	4550 3100 4050 3100
Wire Wire Line
	4550 3200 4050 3200
Text Label 4300 3100 0    60   ~ 0
SDA
Text Label 4300 3200 0    60   ~ 0
SCL
$Comp
L GND #PWR015
U 1 1 584888A7
P 9050 2250
F 0 "#PWR015" H 9050 2250 30  0001 C CNN
F 1 "GND" H 9050 2180 30  0001 C CNN
F 2 "" H 9050 2250 60  0000 C CNN
F 3 "" H 9050 2250 60  0000 C CNN
	1    9050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2250 9050 2050
Connection ~ 9050 2050
$Comp
L TACT-CK-PTS645-SMD SW1
U 1 1 584BD18E
P 4200 1900
F 0 "SW1" H 4200 2000 50  0000 C CNN
F 1 "RESET" H 4200 1750 50  0000 C CNN
F 2 "switches:SKQGAFE010_Switch" H 4200 1650 60  0001 C CNN
F 3 "" H 4200 1900 60  0000 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
Connection ~ 4050 2000
Connection ~ 4400 2000
Wire Wire Line
	4400 2000 4350 2000
$Comp
L TACT-CK-PTS645-SMD SW2
U 1 1 584BE1E9
P 9000 4500
F 0 "SW2" H 9000 4600 50  0000 C CNN
F 1 "FLASH" H 9000 4350 50  0000 C CNN
F 2 "switches:SKQGAFE010_Switch" H 9000 4250 60  0001 C CNN
F 3 "" H 9000 4500 60  0000 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4500 9150 4600
Wire Wire Line
	8850 4500 8850 4600
Connection ~ 9150 4500
Connection ~ 8850 4500
$Comp
L MCP1700T-vv02E/TT U2
U 1 1 586AB742
P 8700 1800
F 0 "U2" H 8700 2050 50  0000 C CNN
F 1 "MCP1700T-3302E/TT" H 8700 1950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8700 1800 60  0001 C CNN
F 3 "" H 8700 1800 60  0000 C CNN
F 4 "IC MICROCHIP MCP1700T-vv02E/TT" H 9200 2550 60  0001 C CNN "BOM"
	1    8700 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 1750 10000 1750
$EndSCHEMATC
