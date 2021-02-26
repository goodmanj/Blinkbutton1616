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
L fab:Conn_01x03_Male J1
U 1 1 6001A87F
P 4150 3050
F 0 "J1" H 4258 3331 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4258 3240 50  0000 C CNN
F 2 "fab:Header_SMD_01x03_P2.54mm_Horizontal_Male" H 4150 3050 50  0001 C CNN
F 3 "~" H 4150 3050 50  0001 C CNN
	1    4150 3050
	1    0    0    -1  
$EndComp
$Comp
L fab:Conn_FTDI_01x06_Male J2
U 1 1 6001C1A9
P 5150 2950
F 0 "J2" H 4981 2869 50  0000 R CNN
F 1 "Conn_FTDI_01x06_Male" H 4981 2960 50  0000 R CNN
F 2 "fab:Header_SMD_FTDI_01x06_P2.54mm_Horizontal_Male" H 5150 2950 50  0001 C CNN
F 3 "~" H 5150 2950 50  0001 C CNN
	1    5150 2950
	-1   0    0    1   
$EndComp
$Comp
L fab:R R1
U 1 1 6001DC60
P 4650 2450
F 0 "R1" V 4443 2450 50  0000 C CNN
F 1 "4.99K" V 4534 2450 50  0000 C CNN
F 2 "fab:R_1206" V 4580 2450 50  0001 C CNN
F 3 "~" H 4650 2450 50  0001 C CNN
	1    4650 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3150 4750 3150
Wire Wire Line
	4950 2850 4850 2850
Wire Wire Line
	4850 2850 4850 2450
Wire Wire Line
	4850 2450 4800 2450
Wire Wire Line
	4500 2450 4500 2300
Wire Wire Line
	4500 2300 4900 2300
Wire Wire Line
	4900 2300 4900 2750
Wire Wire Line
	4900 2750 4950 2750
Connection ~ 4500 2450
NoConn ~ 4950 3050
NoConn ~ 4950 2650
Wire Wire Line
	4350 2950 4950 2950
Wire Wire Line
	4350 3050 4750 3050
Wire Wire Line
	4750 3050 4750 3150
Wire Wire Line
	4350 3150 4500 3150
Wire Wire Line
	4500 2450 4500 3150
$EndSCHEMATC
