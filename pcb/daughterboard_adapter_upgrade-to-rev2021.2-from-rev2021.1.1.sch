EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Upgrade Adapter Daughterboard"
Date "2021-03-07"
Rev "2021.2"
Comp "Richard Goulter"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 1550 3100
NoConn ~ 3150 4700
NoConn ~ 3150 4800
NoConn ~ 3150 4900
Text Label 3150 4200 0    50   ~ 0
SW43
Text Label 3150 4100 0    50   ~ 0
SW42
Text Label 3150 4000 0    50   ~ 0
SW41
Text Label 3150 3900 0    50   ~ 0
SW35
Text Label 3150 3800 0    50   ~ 0
SW34
Text Label 3150 3700 0    50   ~ 0
SW33
Text Label 3150 3600 0    50   ~ 0
SW32
Text Label 1550 4700 2    50   ~ 0
SW31
Text Label 3150 3400 0    50   ~ 0
SW25
Text Label 1550 4200 2    50   ~ 0
SW24
Text Label 1550 4100 2    50   ~ 0
SW23
Text Label 1550 4000 2    50   ~ 0
SW22
Text Label 1550 4300 2    50   ~ 0
SW21
Text Label 3150 4300 0    50   ~ 0
SW15
Text Label 1550 3700 2    50   ~ 0
SW14
Text Label 1550 3600 2    50   ~ 0
SW13
Text Label 1550 3500 2    50   ~ 0
SW12
Text Label 1550 3400 2    50   ~ 0
SW11
NoConn ~ 3150 5000
Text Label 1550 4500 2    50   ~ 0
SDA_RX
Text Label 1550 4400 2    50   ~ 0
SCL_TX
Text Label 3150 4500 0    50   ~ 0
RGB_DIN_3V3
Text Label 3150 3300 0    50   ~ 0
3V3
Text Label 3150 3200 0    50   ~ 0
GND
NoConn ~ 3150 3500
NoConn ~ 1550 3800
NoConn ~ 1550 3900
NoConn ~ 1550 4600
NoConn ~ 3150 4400
NoConn ~ 1550 3200
NoConn ~ 1550 3300
NoConn ~ 3150 4600
Text Label 3150 3100 0    50   ~ 0
5V
Text Notes 1600 2650 0    50   ~ 0
The actual MiniF4 dev board should be socketed\nor otherwise connected to U1.
Text Notes 7250 2700 0    50   ~ 0
This symbol has the same arrangement as the U1\nof rev 2021.1.\n\nThe daughterboard is mounted to rev2021.1 PCBs\nwith this footprint, in place of the microcontroller.
Text Label 7300 3500 2    50   ~ 0
SW11
Text Label 7300 3600 2    50   ~ 0
SW12
Text Label 7300 3700 2    50   ~ 0
SW13
Text Label 7300 3800 2    50   ~ 0
SW14
Text Label 8900 4800 0    50   ~ 0
SW15
Text Label 7300 4400 2    50   ~ 0
SW21
Text Label 7300 4100 2    50   ~ 0
SW22
Text Label 7300 4200 2    50   ~ 0
SW23
Text Label 7300 4300 2    50   ~ 0
SW24
Text Label 8900 3500 0    50   ~ 0
SW25
Text Label 8900 4400 0    50   ~ 0
SW31
Text Label 8900 3700 0    50   ~ 0
SW32
Text Label 8900 3800 0    50   ~ 0
SW33
Text Label 8900 3900 0    50   ~ 0
SW34
Text Label 8900 4000 0    50   ~ 0
SW35
Text Label 8900 4100 0    50   ~ 0
SW41
Text Label 8900 4200 0    50   ~ 0
SW42
Text Label 8900 4300 0    50   ~ 0
SW43
Text Label 7300 4500 2    50   ~ 0
SCL_TX
Text Label 7300 4600 2    50   ~ 0
SDA_RX
Text Label 8900 3200 0    50   ~ 0
5V
Text Label 8900 3300 0    50   ~ 0
GND
Text Label 8900 4600 0    50   ~ 0
RGB_DIN_5V
NoConn ~ 8900 4700
NoConn ~ 8900 4900
NoConn ~ 8900 5000
NoConn ~ 8900 5100
NoConn ~ 7300 4700
NoConn ~ 8900 4500
NoConn ~ 7300 3400
NoConn ~ 7300 3300
NoConn ~ 7300 3200
Text Notes 550  1050 0    50   ~ 0
Fixes for Errata Revision 2021/3/3 fabrication of\nkeyboard 100x100 MiniF4 36-key split:\n\n1. Incorrect pins from rev2021.1\nPA2 (SW15) to PC15.\nPB9 (SW31) to PA2.
NoConn ~ 8900 3600
NoConn ~ 7300 4000
NoConn ~ 7300 3900
NoConn ~ 7300 4800
$Comp
L ProjectLocal:MiniF4 U3
U 1 1 604668A4
P 8100 4100
F 0 "U3" H 8100 5265 50  0000 C CNN
F 1 "MiniF4" H 8100 5174 50  0000 C CNN
F 2 "ProjectLocal:WeAct_MiniF4_Staggerable_rev2020.1" H 8600 5250 50  0001 C CNN
F 3 "" V 8750 3250 50  0001 C CNN
	1    8100 4100
	1    0    0    -1  
$EndComp
$Comp
L ProjectLocal:MiniF4 U1
U 1 1 60468F4C
P 2350 4000
F 0 "U1" H 2350 5165 50  0000 C CNN
F 1 "MiniF4" H 2350 5074 50  0000 C CNN
F 2 "ProjectLocal:WeAct_MiniF4_Staggerable_rev2020.1" H 2850 5150 50  0001 C CNN
F 3 "" V 3000 3150 50  0001 C CNN
	1    2350 4000
	1    0    0    -1  
$EndComp
Text Notes 9500 4800 0    50   ~ 0
rev2021.1’s SW15 uses PC15.
Text Notes 9500 4400 0    50   ~ 0
rev2021.1’s SW31 uses PA2.
Text Label 8900 3400 0    50   ~ 0
3V3
$EndSCHEMATC
