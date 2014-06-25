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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "24 jun 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WS2812B U?
U 1 1 53A8E722
P 4900 3450
F 0 "U?" H 4400 3750 60  0000 C CNN
F 1 "WS2812B" H 4400 3750 60  0000 C CNN
F 2 "" H 4400 3750 60  0000 C CNN
F 3 "" H 4400 3750 60  0000 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U?
U 1 1 53A8E731
P 4900 3700
F 0 "U?" H 4400 4000 60  0000 C CNN
F 1 "WS2812B" H 4400 4000 60  0000 C CNN
F 2 "" H 4400 4000 60  0000 C CNN
F 3 "" H 4400 4000 60  0000 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U?
U 1 1 53A8E740
P 5350 3450
F 0 "U?" H 4850 3750 60  0000 C CNN
F 1 "WS2812B" H 4850 3750 60  0000 C CNN
F 2 "" H 4850 3750 60  0000 C CNN
F 3 "" H 4850 3750 60  0000 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U?
U 1 1 53A8E74F
P 5350 3700
F 0 "U?" H 4850 4000 60  0000 C CNN
F 1 "WS2812B" H 4850 4000 60  0000 C CNN
F 2 "" H 4850 4000 60  0000 C CNN
F 3 "" H 4850 4000 60  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3100 4250 3100
Wire Wire Line
	4250 3000 4250 3350
Wire Wire Line
	4250 3000 4700 3000
Wire Wire Line
	4700 3000 4700 3350
Wire Wire Line
	4700 3100 4750 3100
Wire Wire Line
	4700 3350 4750 3350
Connection ~ 4700 3100
Wire Wire Line
	4250 3350 4300 3350
Connection ~ 4250 3100
Wire Wire Line
	4950 3200 5000 3200
Wire Wire Line
	5000 3200 5000 3550
Wire Wire Line
	5000 3450 4950 3450
Wire Wire Line
	4500 3450 4550 3450
Wire Wire Line
	4550 3200 4550 3550
Wire Wire Line
	4550 3200 4500 3200
Wire Wire Line
	4550 3550 5000 3550
Connection ~ 5000 3450
Connection ~ 4550 3450
$EndSCHEMATC
