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
Date "2017-02-20"
Rev "V1.4"
Comp "Solderpad Hardware License version 0.51"
Comment1 "Contact: alanslists@gmail.com"
Comment2 "Author: Alan Lord"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP-12E U1
U 1 1 5846AA2E
P 5500 3800
F 0 "U1" H 5500 3700 50  0000 C CNN
F 1 "ESP-12F" H 5500 3900 50  0000 C CNN
F 2 "ESP8266:ESP-12E" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5846BA46
P 4000 2550
F 0 "R1" V 4080 2550 50  0000 C CNN
F 1 "4.7k" V 4000 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3930 2550 50  0001 C CNN
F 3 "" H 4000 2550 50  0000 C CNN
	1    4000 2550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5846BADA
P 7150 3150
F 0 "R3" V 7230 3150 50  0000 C CNN
F 1 "4.7k" V 7150 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7080 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0000 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5846BBC9
P 7400 2200
F 0 "C2" H 7425 2300 50  0000 L CNN
F 1 "10uF" H 7425 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7438 2050 50  0001 C CNN
F 3 "" H 7400 2200 50  0000 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
Text Label 9400 3750 0    60   ~ 0
TXD
Text Label 6450 3500 0    60   ~ 0
TXD
Text Label 6450 3600 0    60   ~ 0
RXD
Text Label 9400 3850 0    60   ~ 0
RXD
Text Label 6400 3900 0    60   ~ 0
FLASH
NoConn ~ 5750 4700
NoConn ~ 5650 4700
NoConn ~ 5550 4700
NoConn ~ 5450 4700
NoConn ~ 5350 4700
NoConn ~ 5250 4700
NoConn ~ 4600 3600
NoConn ~ 4600 4100
$Comp
L GND #PWR01
U 1 1 5847BCC7
P 3650 3150
F 0 "#PWR01" H 3650 3150 30  0001 C CNN
F 1 "GND" H 3650 3080 30  0001 C CNN
F 2 "" H 3650 3150 60  0000 C CNN
F 3 "" H 3650 3150 60  0000 C CNN
	1    3650 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 5847C360
P 2900 2800
F 0 "P1" H 2900 3050 50  0000 C CNN
F 1 "BME280" V 3000 2800 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 2900 2800 50  0001 C CNN
F 3 "" H 2900 2800 50  0000 C CNN
	1    2900 2800
	1    0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 5847C5B7
P 2200 3050
F 0 "#PWR02" H 2200 3050 30  0001 C CNN
F 1 "GND" H 2200 2980 30  0001 C CNN
F 2 "" H 2200 3050 60  0000 C CNN
F 3 "" H 2200 3050 60  0000 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
Text Label 2500 2750 0    60   ~ 0
SCL
Text Label 2500 2650 0    60   ~ 0
SDA
$Comp
L CONN_01X02 P3
U 1 1 58475CBA
P 9650 2050
F 0 "P3" H 9650 2200 50  0000 C CNN
F 1 "PWR" V 9750 2050 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 9650 2050 50  0001 C CNN
F 3 "" H 9650 2050 50  0000 C CNN
	1    9650 2050
	1    0    0    1   
$EndComp
$Comp
L TACT-CK-PTS645-SMD SW1
U 1 1 584BD18E
P 3800 2900
F 0 "SW1" H 3800 3000 50  0000 C CNN
F 1 "RESET" H 3800 2750 50  0000 C CNN
F 2 "switches:SKQGAFE010_Switch" H 3800 2650 60  0001 C CNN
F 3 "" H 3800 2900 60  0000 C CNN
	1    3800 2900
	1    0    0    -1  
$EndComp
$Comp
L TACT-CK-PTS645-SMD SW2
U 1 1 584BE1E9
P 7300 3650
F 0 "SW2" H 7300 3750 50  0000 C CNN
F 1 "FLASH" H 7300 3500 50  0000 C CNN
F 2 "switches:SKQGAFE010_Switch" H 7300 3400 60  0001 C CNN
F 3 "" H 7300 3650 60  0000 C CNN
	1    7300 3650
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 587D4AC7
P 7900 3600
F 0 "R4" V 7980 3600 50  0000 C CNN
F 1 "4.7k" V 7900 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7830 3600 50  0001 C CNN
F 3 "" H 7900 3600 50  0000 C CNN
	1    7900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3500 6600 3500
Wire Wire Line
	6400 3600 6600 3600
Wire Wire Line
	4000 2900 3950 2900
Wire Wire Line
	7150 3900 6400 3900
Wire Wire Line
	7150 3300 7150 3900
Connection ~ 4000 3500
Connection ~ 4000 2900
Wire Wire Line
	3650 2900 3650 3150
Wire Wire Line
	2200 2850 2700 2850
Connection ~ 3650 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 3000 3950 3000
Wire Wire Line
	7450 3650 7450 3750
Connection ~ 7450 3650
Wire Wire Line
	4000 2700 4000 3800
$Comp
L GND #PWR03
U 1 1 58838DC9
P 7650 3800
F 0 "#PWR03" H 7650 3800 30  0001 C CNN
F 1 "GND" H 7650 3730 30  0001 C CNN
F 2 "" H 7650 3800 60  0000 C CNN
F 3 "" H 7650 3800 60  0000 C CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58839115
P 6550 4550
F 0 "#PWR04" H 6550 4550 30  0001 C CNN
F 1 "GND" H 6550 4480 30  0001 C CNN
F 2 "" H 6550 4550 60  0000 C CNN
F 3 "" H 6550 4550 60  0000 C CNN
	1    6550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3700 6650 3700
Wire Wire Line
	6400 3800 6650 3800
Text Label 6450 3800 0    60   ~ 0
SDA
Text Label 6450 3700 0    60   ~ 0
SCL
NoConn ~ 4600 3900
NoConn ~ 4600 4000
Wire Wire Line
	6550 4100 6550 4550
Wire Wire Line
	6550 4200 6400 4200
Connection ~ 8100 2350
$Comp
L C C3
U 1 1 5883AF7C
P 9100 2150
F 0 "C3" H 9125 2250 50  0000 L CNN
F 1 "1uF" H 9125 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9138 2000 50  0001 C CNN
F 3 "" H 9100 2150 50  0000 C CNN
	1    9100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2350 9450 2350
Wire Wire Line
	4000 3800 4600 3800
Wire Wire Line
	4000 3500 4600 3500
Connection ~ 7150 3650
Wire Wire Line
	7900 3750 7900 4000
Wire Wire Line
	7900 4000 6400 4000
Connection ~ 7150 3750
Wire Wire Line
	7650 3800 7650 3650
Wire Wire Line
	7650 3650 7450 3650
Connection ~ 7400 2050
Wire Wire Line
	4600 4200 3700 4200
Wire Wire Line
	8450 2050 8500 2050
Connection ~ 9100 2000
Wire Wire Line
	9450 2350 9450 2100
Wire Wire Line
	9100 2300 9100 2350
Connection ~ 9100 2350
$Comp
L MCP1700T-vv02E/TT U2
U 1 1 586AB742
P 8100 2100
F 0 "U2" H 8100 2350 50  0000 C CNN
F 1 "MCP1700T" H 8100 2250 50  0000 C CNN
F 2 "smd-semi:SOT-23" H 8100 2100 60  0001 C CNN
F 3 "" H 8100 2100 60  0000 C CNN
F 4 "IC MICROCHIP MCP1700T-vv02E/TT" H 8600 2850 60  0001 C CNN "BOM"
	1    8100 2100
	-1   0    0    -1  
$EndComp
Connection ~ 7700 2050
$Comp
L PWR_FLAG #PWR05
U 1 1 58A9B466
P 9400 1750
F 0 "#PWR05" H 9400 1750 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 1750 50  0001 C CNN
F 2 "" H 9400 1750 60  0000 C CNN
F 3 "" H 9400 1750 60  0000 C CNN
	1    9400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1750 9400 2000
Connection ~ 9400 2000
$Comp
L PWRGND #PWR06
U 1 1 58A9B515
P 8650 2500
F 0 "#PWR06" H 8650 2500 30  0001 C CNN
F 1 "PWRGND" H 8650 2430 30  0001 C CNN
F 2 "" H 8650 2500 60  0000 C CNN
F 3 "" H 8650 2500 60  0000 C CNN
	1    8650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2500 8650 2350
Connection ~ 8650 2350
Wire Wire Line
	7200 2050 7750 2050
Wire Wire Line
	7200 2050 7200 1650
$Comp
L VCC #PWR07
U 1 1 58A9B6D0
P 7200 1650
F 0 "#PWR07" H 7200 1700 30  0001 C CNN
F 1 "VCC" H 7200 1750 50  0000 C CNN
F 2 "" H 7200 1650 60  0000 C CNN
F 3 "" H 7200 1650 60  0000 C CNN
	1    7200 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 58A9B7BD
P 7150 2800
F 0 "#PWR08" H 7150 2850 30  0001 C CNN
F 1 "VCC" H 7150 2900 50  0000 C CNN
F 2 "" H 7150 2800 60  0000 C CNN
F 3 "" H 7150 2800 60  0000 C CNN
	1    7150 2800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 58A9B7EF
P 7900 3250
F 0 "#PWR09" H 7900 3300 30  0001 C CNN
F 1 "VCC" H 7900 3350 50  0000 C CNN
F 2 "" H 7900 3250 60  0000 C CNN
F 3 "" H 7900 3250 60  0000 C CNN
	1    7900 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 58A9B830
P 3700 3900
F 0 "#PWR010" H 3700 3950 30  0001 C CNN
F 1 "VCC" H 3700 4000 50  0000 C CNN
F 2 "" H 3700 3900 60  0000 C CNN
F 3 "" H 3700 3900 60  0000 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 58A9B862
P 4000 2150
F 0 "#PWR011" H 4000 2200 30  0001 C CNN
F 1 "VCC" H 4000 2250 50  0000 C CNN
F 2 "" H 4000 2150 60  0000 C CNN
F 3 "" H 4000 2150 60  0000 C CNN
	1    4000 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 58A9B8A3
P 2200 2350
F 0 "#PWR012" H 2200 2400 30  0001 C CNN
F 1 "VCC" H 2200 2450 50  0000 C CNN
F 2 "" H 2200 2350 60  0000 C CNN
F 3 "" H 2200 2350 60  0000 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2400 4000 2150
Wire Wire Line
	2200 2350 2200 2850
Wire Wire Line
	7900 3450 7900 3250
Wire Wire Line
	7150 3000 7150 2800
Wire Wire Line
	3700 4200 3700 3900
Wire Wire Line
	4600 3700 4100 3700
Text Label 4150 3700 0    60   ~ 0
CH_EN
$Comp
L R R5
U 1 1 58A9C056
P 2150 4650
F 0 "R5" V 2230 4650 50  0000 C CNN
F 1 "4.7k" V 2150 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2080 4650 50  0001 C CNN
F 3 "" H 2150 4650 50  0000 C CNN
	1    2150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4800 2150 5050
Wire Wire Line
	2150 5050 2800 5050
Text Label 2500 5050 0    60   ~ 0
CH_EN
Wire Wire Line
	2150 4100 2150 4500
$Comp
L VCC #PWR013
U 1 1 58A9C205
P 2150 4100
F 0 "#PWR013" H 2150 4150 30  0001 C CNN
F 1 "VCC" H 2150 4200 50  0000 C CNN
F 2 "" H 2150 4100 60  0000 C CNN
F 3 "" H 2150 4100 60  0000 C CNN
	1    2150 4100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 58A9CBD1
P 8100 1500
F 0 "#PWR014" H 8100 1550 30  0001 C CNN
F 1 "VCC" H 8100 1600 50  0000 C CNN
F 2 "" H 8100 1500 60  0000 C CNN
F 3 "" H 8100 1500 60  0000 C CNN
	1    8100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1500 8100 1700
Connection ~ 8100 1700
$Comp
L Switch_SPDT_x2 SW3
U 1 1 58A9F6E0
P 8800 1950
F 0 "SW3" H 8600 2100 50  0000 C CNN
F 1 "Switch_SPDT_x2" H 8550 1800 50  0000 C CNN
F 2 "switches:SW_SPDT_PCM12" H 8800 1950 50  0001 C CNN
F 3 "" H 8800 1950 50  0000 C CNN
	1    8800 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 2000 9100 1950
Wire Wire Line
	9100 2000 9450 2000
Wire Wire Line
	8500 1850 8500 1700
Wire Wire Line
	8500 1700 7700 1700
Wire Wire Line
	7700 1700 7700 2050
Wire Wire Line
	2700 2650 2450 2650
Wire Wire Line
	2700 2750 2450 2750
Wire Wire Line
	2700 2950 2200 2950
Wire Wire Line
	2200 2950 2200 3050
$Comp
L GND #PWR015
U 1 1 58AA042D
P 7900 2500
F 0 "#PWR015" H 7900 2500 30  0001 C CNN
F 1 "GND" H 7900 2430 30  0001 C CNN
F 2 "" H 7900 2500 60  0000 C CNN
F 3 "" H 7900 2500 60  0000 C CNN
	1    7900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2500 7900 2350
Connection ~ 7900 2350
$Comp
L CONN_01X05 P2
U 1 1 58AA061D
P 9150 3950
F 0 "P2" H 9150 4250 50  0000 C CNN
F 1 "SERIAL" V 9250 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 9150 3950 50  0001 C CNN
F 3 "" H 9150 3950 50  0000 C CNN
	1    9150 3950
	-1   0    0    1   
$EndComp
NoConn ~ 9350 4050
NoConn ~ 9350 3950
$Comp
L GND #PWR016
U 1 1 58AA06D9
P 9350 4350
F 0 "#PWR016" H 9350 4350 30  0001 C CNN
F 1 "GND" H 9350 4280 30  0001 C CNN
F 2 "" H 9350 4350 60  0000 C CNN
F 3 "" H 9350 4350 60  0000 C CNN
	1    9350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4350 9350 4150
Wire Wire Line
	9350 3750 9600 3750
Wire Wire Line
	9350 3850 9600 3850
Wire Wire Line
	6400 4100 6550 4100
Connection ~ 6550 4200
$EndSCHEMATC
