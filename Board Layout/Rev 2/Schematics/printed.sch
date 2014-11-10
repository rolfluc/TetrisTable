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
LIBS:printed-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "10 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WS2812B U1
U 1 1 54604751
P 6050 4350
F 0 "U1" H 5550 4650 60  0000 C CNN
F 1 "WS2812B" H 5550 4650 60  0000 C CNN
F 2 "~" H 5550 4650 60  0000 C CNN
F 3 "~" H 5550 4650 60  0000 C CNN
	1    6050 4350
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U4
U 1 1 54604760
P 8200 4400
F 0 "U4" H 7700 4700 60  0000 C CNN
F 1 "WS2812B" H 7700 4700 60  0000 C CNN
F 2 "~" H 7700 4700 60  0000 C CNN
F 3 "~" H 7700 4700 60  0000 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U2
U 1 1 5460476F
P 6250 5600
F 0 "U2" H 5750 5900 60  0000 C CNN
F 1 "WS2812B" H 5750 5900 60  0000 C CNN
F 2 "~" H 5750 5900 60  0000 C CNN
F 3 "~" H 5750 5900 60  0000 C CNN
	1    6250 5600
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U3
U 1 1 5460477E
P 7850 5600
F 0 "U3" H 7350 5900 60  0000 C CNN
F 1 "WS2812B" H 7350 5900 60  0000 C CNN
F 2 "~" H 7350 5900 60  0000 C CNN
F 3 "~" H 7350 5900 60  0000 C CNN
	1    7850 5600
	1    0    0    -1  
$EndComp
$Comp
L CONN_5X2 P1
U 1 1 54604A35
P 6550 4650
F 0 "P1" H 6550 4950 60  0000 C CNN
F 1 "CONN_5X2" V 6550 4650 50  0000 C CNN
F 2 "" H 6550 4650 60  0000 C CNN
F 3 "" H 6550 4650 60  0000 C CNN
	1    6550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3850 7550 4050
Wire Wire Line
	7550 4050 7600 4050
Wire Wire Line
	5400 3850 5400 4000
Wire Wire Line
	5400 4000 5450 4000
Wire Wire Line
	5600 3850 5600 5250
Wire Wire Line
	5600 5250 5650 5250
Wire Wire Line
	7200 5050 7200 5250
Wire Wire Line
	7200 5250 7250 5250
Wire Wire Line
	5850 5350 5900 5350
Wire Wire Line
	5900 5350 5900 5650
Wire Wire Line
	5650 4100 5700 4100
Wire Wire Line
	5700 4100 5700 5650
Wire Wire Line
	7800 4150 7850 4150
Wire Wire Line
	7850 4150 7850 5650
Wire Wire Line
	7450 5350 7500 5350
Wire Wire Line
	7500 5350 7500 5650
Wire Wire Line
	7850 4450 6950 4450
Wire Wire Line
	6150 3850 6150 4450
Wire Wire Line
	7450 5250 7550 5250
Wire Wire Line
	7800 4050 8150 4050
Wire Wire Line
	5650 5350 5500 5350
Wire Wire Line
	5450 4100 5350 4100
Connection ~ 6950 4450
Connection ~ 6950 4550
Connection ~ 6950 4650
Connection ~ 6950 4750
Connection ~ 6950 4850
Connection ~ 6150 4850
Connection ~ 6150 4750
Connection ~ 6150 4650
Connection ~ 6150 4550
Connection ~ 6150 4450
Connection ~ 5650 4100
Connection ~ 5650 4000
Connection ~ 5450 4000
Connection ~ 5450 4100
Connection ~ 5650 5250
Connection ~ 5650 5350
Connection ~ 5850 5350
Connection ~ 5850 5250
Connection ~ 7250 5250
Connection ~ 7250 5350
Connection ~ 7450 5250
Connection ~ 7450 5350
Connection ~ 7800 4050
Connection ~ 7800 4150
Connection ~ 7600 4050
Connection ~ 7600 4150
Wire Wire Line
	7850 5650 5700 5650
Connection ~ 7850 4450
Connection ~ 7500 5650
Connection ~ 5900 5650
Wire Wire Line
	5400 3850 7550 3850
Connection ~ 5600 3850
Wire Wire Line
	7200 5050 7300 5050
Wire Wire Line
	7300 5050 7300 3850
Connection ~ 7300 3850
Connection ~ 6150 3850
Wire Wire Line
	5350 4100 5350 4550
Wire Wire Line
	5350 4550 6150 4550
Wire Wire Line
	5650 4000 7100 4000
Wire Wire Line
	7100 4000 7100 4550
Wire Wire Line
	7100 4550 6950 4550
Wire Wire Line
	5500 5350 5500 4650
Wire Wire Line
	5500 4650 6150 4650
Wire Wire Line
	5850 5250 7000 5250
Wire Wire Line
	7000 5250 7000 4650
Wire Wire Line
	7000 4650 6950 4650
Wire Wire Line
	7250 5350 7100 5350
Wire Wire Line
	7100 5350 7100 5000
Wire Wire Line
	7100 5000 5850 5000
Wire Wire Line
	5850 5000 5850 4750
Wire Wire Line
	5850 4750 6150 4750
Wire Wire Line
	7550 5250 7550 4750
Wire Wire Line
	7550 4750 6950 4750
Wire Wire Line
	6000 4150 7600 4150
Wire Wire Line
	6000 4150 6000 4850
Wire Wire Line
	6000 4850 6150 4850
Wire Wire Line
	6950 4850 8150 4850
Wire Wire Line
	8150 4850 8150 4050
$EndSCHEMATC
