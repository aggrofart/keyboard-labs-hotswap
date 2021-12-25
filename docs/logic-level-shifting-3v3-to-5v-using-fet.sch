EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 61C3C363
P 1450 1250
F 0 "R1" H 1520 1296 50  0000 L CNN
F 1 "10k" H 1520 1205 50  0000 L CNN
F 2 "" V 1380 1250 50  0001 C CNN
F 3 "~" H 1450 1250 50  0001 C CNN
	1    1450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_SGD Q1
U 1 1 61C3D268
P 1800 1450
F 0 "Q1" V 2049 1450 50  0000 C CNN
F 1 "Q_NMOS_SGD" V 2140 1450 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
	1    1800 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61C3F55A
P 2150 1250
F 0 "R2" H 2220 1296 50  0000 L CNN
F 1 "10k" H 2220 1205 50  0000 L CNN
F 2 "" V 2080 1250 50  0001 C CNN
F 3 "~" H 2150 1250 50  0001 C CNN
	1    2150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61C3F9FE
P 1450 900
F 0 "#PWR?" H 1450 750 50  0001 C CNN
F 1 "+3.3V" H 1465 1073 50  0000 C CNN
F 2 "" H 1450 900 50  0001 C CNN
F 3 "" H 1450 900 50  0001 C CNN
	1    1450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61C3FF97
P 2150 900
F 0 "#PWR?" H 2150 750 50  0001 C CNN
F 1 "+5V" H 2165 1073 50  0000 C CNN
F 2 "" H 2150 900 50  0001 C CNN
F 3 "" H 2150 900 50  0001 C CNN
	1    2150 900 
	1    0    0    -1  
$EndComp
Text Label 1250 1550 2    50   ~ 0
RGB_DATA_3V3
Text Label 2350 1550 0    50   ~ 0
RGB_DATA_5V
Wire Wire Line
	1450 900  1450 1000
Wire Wire Line
	1450 1000 1800 1000
Wire Wire Line
	1800 1000 1800 1250
Connection ~ 1450 1000
Wire Wire Line
	1450 1000 1450 1100
Wire Wire Line
	2150 900  2150 1100
Wire Wire Line
	1600 1550 1450 1550
Wire Wire Line
	1450 1400 1450 1550
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 1250 1550
Wire Wire Line
	2000 1550 2150 1550
Wire Wire Line
	2150 1550 2150 1400
Wire Wire Line
	2150 1550 2350 1550
Connection ~ 2150 1550
$EndSCHEMATC