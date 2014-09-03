EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:noname-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "30 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WS2812B LED1
U 1 1 53FFEF12
P 4700 3300
F 0 "LED1" H 4200 3600 60  0000 C CNN
F 1 "WS2812B" H 4200 3600 60  0000 C CNN
F 2 "~" H 4200 3600 60  0000 C CNN
F 3 "~" H 4200 3600 60  0000 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED3
U 1 1 53FFEF21
P 5250 3300
F 0 "LED3" H 4750 3600 60  0000 C CNN
F 1 "WS2812B" H 4750 3600 60  0000 C CNN
F 2 "~" H 4750 3600 60  0000 C CNN
F 3 "~" H 4750 3600 60  0000 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED2
U 1 1 53FFEF30
P 4700 3700
F 0 "LED2" H 4200 4000 60  0000 C CNN
F 1 "WS2812B" H 4200 4000 60  0000 C CNN
F 2 "~" H 4200 4000 60  0000 C CNN
F 3 "~" H 4200 4000 60  0000 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED4
U 1 1 53FFEF3F
P 5250 3700
F 0 "LED4" H 4750 4000 60  0000 C CNN
F 1 "WS2812B" H 4750 4000 60  0000 C CNN
F 2 "~" H 4750 4000 60  0000 C CNN
F 3 "~" H 4750 4000 60  0000 C CNN
	1    5250 3700
	1    0    0    -1  
$EndComp
NoConn ~ 4950 3250
NoConn ~ 4950 3150
NoConn ~ 4950 3350
NoConn ~ 4950 3450
NoConn ~ 3950 3350
NoConn ~ 3950 3250
NoConn ~ 3950 3150
NoConn ~ 3950 3050
$Comp
L GND #PWR01
U 1 1 53FFFA68
P 4400 3700
F 0 "#PWR01" H 4400 3700 30  0001 C CNN
F 1 "GND" H 4400 3630 30  0001 C CNN
F 2 "" H 4400 3700 60  0000 C CNN
F 3 "" H 4400 3700 60  0000 C CNN
	1    4400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2850 4050 3350
Wire Wire Line
	4050 2850 4600 2850
Wire Wire Line
	4600 2850 4600 3350
Wire Wire Line
	4600 2950 4650 2950
Wire Wire Line
	4050 3350 4100 3350
Connection ~ 4050 2950
Wire Wire Line
	4600 3350 4650 3350
Connection ~ 4600 2950
Wire Wire Line
	4100 3050 3950 3050
Wire Wire Line
	3950 3150 4450 3150
Wire Wire Line
	4100 3450 4000 3450
Wire Wire Line
	4650 3450 4500 3450
Wire Wire Line
	4500 3450 4500 3250
Wire Wire Line
	4500 3250 3950 3250
Wire Wire Line
	4000 3450 4000 3350
Wire Wire Line
	4000 3350 3950 3350
Wire Wire Line
	4400 3050 4400 3700
Wire Wire Line
	4300 3450 4350 3450
Wire Wire Line
	4350 3450 4350 3650
Wire Wire Line
	4350 3650 4400 3700
Wire Wire Line
	4400 3700 4900 3650
Wire Wire Line
	4850 3450 4900 3450
Wire Wire Line
	4900 3650 4900 3050
Connection ~ 4400 3700
Wire Wire Line
	4900 3050 4850 3050
Connection ~ 4900 3450
Wire Wire Line
	4850 3350 4950 3350
Wire Wire Line
	4850 2950 4950 2950
Wire Wire Line
	4950 2950 4950 3150
Wire Wire Line
	4300 3350 4450 3350
Wire Wire Line
	4450 3350 4450 3200
Wire Wire Line
	4450 3200 4950 3200
Wire Wire Line
	4950 3200 4950 3250
Wire Wire Line
	4300 2950 4550 2950
Wire Wire Line
	4550 2950 4550 3500
Wire Wire Line
	4550 3500 4950 3500
Wire Wire Line
	4950 3500 4950 3450
Connection ~ 4100 3350
Connection ~ 4100 3450
Connection ~ 4300 3450
Connection ~ 4300 3350
Connection ~ 4650 3350
Connection ~ 4650 3450
Connection ~ 4850 3450
Connection ~ 4850 3350
Connection ~ 4850 2950
Connection ~ 4850 3050
Connection ~ 4650 3050
Connection ~ 4650 2950
Connection ~ 4100 3050
Connection ~ 4300 2950
Wire Wire Line
	4450 3150 4450 3050
Wire Wire Line
	4450 3050 4650 3050
Wire Wire Line
	4300 3050 4400 3050
Connection ~ 4300 3050
$Comp
L +5V #PWR02
U 1 1 540008F4
P 4050 2850
F 0 "#PWR02" H 4050 2940 20  0001 C CNN
F 1 "+5V" H 4050 2940 30  0000 C CNN
F 2 "" H 4050 2850 60  0000 C CNN
F 3 "" H 4050 2850 60  0000 C CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2950 4100 2950
Connection ~ 4100 2950
$EndSCHEMATC
