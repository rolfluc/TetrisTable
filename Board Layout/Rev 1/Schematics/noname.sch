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
Date "26 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WS2812B U1
U 1 1 53FC0499
P 4850 3550
F 0 "U1" H 4350 3850 60  0000 C CNN
F 1 "WS2812B" H 4350 3850 60  0000 C CNN
F 2 "" H 4350 3850 60  0000 C CNN
F 3 "~" H 4350 3850 60  0000 C CNN
	1    4850 3550
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U3
U 1 1 53FC04A8
P 5250 3550
F 0 "U3" H 4750 3850 60  0000 C CNN
F 1 "WS2812B" H 4750 3850 60  0000 C CNN
F 2 "" H 4750 3850 60  0000 C CNN
F 3 "~" H 4750 3850 60  0000 C CNN
	1    5250 3550
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U2
U 1 1 53FC04B7
P 4850 3950
F 0 "U2" H 4350 4250 60  0000 C CNN
F 1 "WS2812B" H 4350 4250 60  0000 C CNN
F 2 "" H 4350 4250 60  0000 C CNN
F 3 "~" H 4350 4250 60  0000 C CNN
	1    4850 3950
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U4
U 1 1 53FC04C6
P 5250 3950
F 0 "U4" H 4750 4250 60  0000 C CNN
F 1 "WS2812B" H 4750 4250 60  0000 C CNN
F 2 "" H 4750 4250 60  0000 C CNN
F 3 "~" H 4750 4250 60  0000 C CNN
	1    5250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3200 5050 3200
Wire Wire Line
	4650 3200 4600 3200
Wire Wire Line
	4600 3200 4600 3100
Wire Wire Line
	4250 3200 4200 3200
Wire Wire Line
	4200 3200 4200 3100
Wire Wire Line
	4450 3200 4550 3200
Wire Wire Line
	4550 3200 4550 3250
Wire Wire Line
	4550 3250 5050 3250
Wire Wire Line
	4450 3300 4400 3300
Wire Wire Line
	4400 3300 4400 3400
Wire Wire Line
	4650 3300 4500 3300
Wire Wire Line
	4500 3300 4500 3250
Wire Wire Line
	4500 3250 4150 3250
Wire Wire Line
	4250 3300 4150 3300
Wire Wire Line
	4250 3700 4150 3700
Wire Wire Line
	4850 3600 5050 3600
Wire Wire Line
	4450 3600 4550 3600
Wire Wire Line
	4550 3600 4550 3650
Wire Wire Line
	4550 3650 5050 3650
Wire Wire Line
	4650 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3500
Wire Wire Line
	4250 3600 4200 3600
Wire Wire Line
	4200 3600 4200 3500
Wire Wire Line
	4850 3300 4900 3300
Wire Wire Line
	4900 3300 4900 3400
Wire Wire Line
	4400 3400 5100 3400
Wire Wire Line
	4650 3700 4500 3700
Wire Wire Line
	4500 3700 4500 3650
Wire Wire Line
	4500 3650 4150 3650
Wire Wire Line
	4450 3700 4450 3800
Wire Wire Line
	4450 3800 5100 3800
Wire Wire Line
	4900 3800 4900 3700
Wire Wire Line
	4900 3700 4850 3700
$Comp
L R R3
U 1 1 53FC06F7
P 4600 2850
F 0 "R3" V 4680 2850 40  0000 C CNN
F 1 "R" V 4607 2851 40  0000 C CNN
F 2 "" V 4530 2850 30  0000 C CNN
F 3 "~" H 4600 2850 30  0000 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 53FC0710
P 4200 2850
F 0 "R1" V 4280 2850 40  0000 C CNN
F 1 "R" V 4207 2851 40  0000 C CNN
F 2 "" V 4130 2850 30  0000 C CNN
F 3 "~" H 4200 2850 30  0000 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 53FC071F
P 4350 3250
F 0 "R2" V 4430 3250 40  0000 C CNN
F 1 "R" V 4357 3251 40  0000 C CNN
F 2 "" V 4280 3250 30  0000 C CNN
F 3 "~" H 4350 3250 30  0000 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 53FC072E
P 4750 3250
F 0 "R4" V 4830 3250 40  0000 C CNN
F 1 "R" V 4757 3251 40  0000 C CNN
F 2 "" V 4680 3250 30  0000 C CNN
F 3 "~" H 4750 3250 30  0000 C CNN
	1    4750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3500 4350 3500
Wire Wire Line
	4600 3500 4750 3500
Wire Wire Line
	4750 2600 4750 3000
Wire Wire Line
	4200 2600 4750 2600
Wire Wire Line
	4350 2600 4350 3000
Connection ~ 4600 2600
Connection ~ 4350 2600
$Comp
L VDD #PWR01
U 1 1 53FC07F5
P 4450 2600
F 0 "#PWR01" H 4450 2700 30  0001 C CNN
F 1 "VDD" H 4450 2710 30  0000 C CNN
F 2 "" H 4450 2600 60  0000 C CNN
F 3 "" H 4450 2600 60  0000 C CNN
	1    4450 2600
	1    0    0    -1  
$EndComp
Connection ~ 4900 3400
Wire Wire Line
	5100 3800 5100 3400
Connection ~ 4900 3800
$Comp
L VSS #PWR02
U 1 1 53FC085A
P 4550 3850
F 0 "#PWR02" H 4550 3850 30  0001 C CNN
F 1 "VSS" H 4550 3780 30  0000 C CNN
F 2 "" H 4550 3850 60  0000 C CNN
F 3 "" H 4550 3850 60  0000 C CNN
	1    4550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3850 4550 3800
Connection ~ 4550 3800
$EndSCHEMATC