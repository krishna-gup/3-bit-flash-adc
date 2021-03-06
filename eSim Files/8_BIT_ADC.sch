EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:8_BIT_ADC-cache
EELAYER 25 0
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
L krishna_prioenco U1
U 1 1 62247732
P 4950 5000
F 0 "U1" H 7800 6800 60  0000 C CNN
F 1 "krishna_prioenco" H 7800 7000 60  0000 C CNN
F 2 "" H 7800 6950 60  0000 C CNN
F 3 "" H 7800 6950 60  0000 C CNN
	1    4950 5000
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X6
U 1 1 622477B5
P 4700 1350
F 0 "X6" H 4500 1350 60  0000 C CNN
F 1 "lm_741" H 4600 1100 60  0000 C CNN
F 2 "" H 4700 1350 60  0000 C CNN
F 3 "" H 4700 1350 60  0000 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X1
U 1 1 62247812
P 4250 2250
F 0 "X1" H 4050 2250 60  0000 C CNN
F 1 "lm_741" H 4150 2000 60  0000 C CNN
F 2 "" H 4250 2250 60  0000 C CNN
F 3 "" H 4250 2250 60  0000 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X7
U 1 1 62247841
P 4700 3100
F 0 "X7" H 4500 3100 60  0000 C CNN
F 1 "lm_741" H 4600 2850 60  0000 C CNN
F 2 "" H 4700 3100 60  0000 C CNN
F 3 "" H 4700 3100 60  0000 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X2
U 1 1 622479D1
P 4250 4000
F 0 "X2" H 4050 4000 60  0000 C CNN
F 1 "lm_741" H 4150 3750 60  0000 C CNN
F 2 "" H 4250 4000 60  0000 C CNN
F 3 "" H 4250 4000 60  0000 C CNN
	1    4250 4000
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X4
U 1 1 622479D8
P 4650 4900
F 0 "X4" H 4450 4900 60  0000 C CNN
F 1 "lm_741" H 4550 4650 60  0000 C CNN
F 2 "" H 4650 4900 60  0000 C CNN
F 3 "" H 4650 4900 60  0000 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X5
U 1 1 62247A9C
P 4650 6650
F 0 "X5" H 4450 6650 60  0000 C CNN
F 1 "lm_741" H 4550 6400 60  0000 C CNN
F 2 "" H 4650 6650 60  0000 C CNN
F 3 "" H 4650 6650 60  0000 C CNN
	1    4650 6650
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_8 U2
U 1 1 62247B64
P 6550 3150
F 0 "U2" H 6550 3150 60  0000 C CNN
F 1 "adc_bridge_8" H 6550 3300 60  0000 C CNN
F 2 "" H 6550 3150 60  0000 C CNN
F 3 "" H 6550 3150 60  0000 C CNN
	1    6550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4000 5500 4000
Wire Wire Line
	5200 4900 5550 4900
Wire Wire Line
	4800 5750 5600 5750
Wire Wire Line
	5200 6650 5700 6650
$Comp
L GND #PWR9
U 1 1 62248046
P 4550 3550
F 0 "#PWR9" H 4550 3300 50  0001 C CNN
F 1 "GND" H 4550 3400 50  0000 C CNN
F 2 "" H 4550 3550 50  0001 C CNN
F 3 "" H 4550 3550 50  0001 C CNN
	1    4550 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 6224806C
P 4100 4450
F 0 "#PWR3" H 4100 4200 50  0001 C CNN
F 1 "GND" H 4100 4300 50  0000 C CNN
F 2 "" H 4100 4450 50  0001 C CNN
F 3 "" H 4100 4450 50  0001 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 62248092
P 4500 5350
F 0 "#PWR6" H 4500 5100 50  0001 C CNN
F 1 "GND" H 4500 5200 50  0000 C CNN
F 2 "" H 4500 5350 50  0001 C CNN
F 3 "" H 4500 5350 50  0001 C CNN
	1    4500 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 622482B9
P 4100 6200
F 0 "#PWR4" H 4100 5950 50  0001 C CNN
F 1 "GND" H 4100 6050 50  0000 C CNN
F 2 "" H 4100 6200 50  0001 C CNN
F 3 "" H 4100 6200 50  0001 C CNN
	1    4100 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 622482DF
P 4500 7100
F 0 "#PWR7" H 4500 6850 50  0001 C CNN
F 1 "GND" H 4500 6950 50  0000 C CNN
F 2 "" H 4500 7100 50  0001 C CNN
F 3 "" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 622488ED
P 4550 1800
F 0 "#PWR8" H 4550 1550 50  0001 C CNN
F 1 "GND" H 4550 1650 50  0000 C CNN
F 2 "" H 4550 1800 50  0001 C CNN
F 3 "" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 62248913
P 4100 2700
F 0 "#PWR2" H 4100 2450 50  0001 C CNN
F 1 "GND" H 4100 2550 50  0000 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
Text GLabel 4550 900  1    60   Input ~ 0
VDD
Text GLabel 4100 1800 1    60   Input ~ 0
VDD
Text GLabel 4550 2650 1    60   Input ~ 0
VDD
Text GLabel 4100 3550 1    60   Input ~ 0
VDD
Text GLabel 4500 4450 1    60   Input ~ 0
VDD
Text GLabel 4100 5300 1    60   Input ~ 0
VDD
Text GLabel 4500 6200 1    60   Input ~ 0
VDD
$Comp
L dac_bridge_3 U3
U 1 1 62248C3F
P 9100 3150
F 0 "U3" H 9100 3150 60  0000 C CNN
F 1 "dac_bridge_3" H 9100 3300 60  0000 C CNN
F 2 "" H 9100 3150 60  0000 C CNN
F 3 "" H 9100 3150 60  0000 C CNN
	1    9100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3100 10400 3100
Wire Wire Line
	9650 3200 10200 3200
Wire Wire Line
	9650 3300 10000 3300
$Comp
L plot_v1 U6
U 1 1 62248E83
P 10400 3300
F 0 "U6" H 10400 3800 60  0000 C CNN
F 1 "plot_v1" H 10600 3650 60  0000 C CNN
F 2 "" H 10400 3300 60  0000 C CNN
F 3 "" H 10400 3300 60  0000 C CNN
	1    10400 3300
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 62248EC2
P 10200 3400
F 0 "U5" H 10200 3900 60  0000 C CNN
F 1 "plot_v1" H 10400 3750 60  0000 C CNN
F 2 "" H 10200 3400 60  0000 C CNN
F 3 "" H 10200 3400 60  0000 C CNN
	1    10200 3400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U4
U 1 1 62248EFD
P 10000 3500
F 0 "U4" H 10000 4000 60  0000 C CNN
F 1 "plot_v1" H 10200 3850 60  0000 C CNN
F 2 "" H 10000 3500 60  0000 C CNN
F 3 "" H 10000 3500 60  0000 C CNN
	1    10000 3500
	1    0    0    -1  
$EndComp
Text GLabel 9800 3100 1    60   Input ~ 0
D0
Text GLabel 9700 3200 1    60   Input ~ 0
D1
Text GLabel 9850 3300 3    60   Input ~ 0
D2
$Comp
L resistor R1
U 1 1 62248B96
P 3150 1050
F 0 "R1" H 3200 1180 50  0000 C CNN
F 1 "1k" H 3200 1000 50  0000 C CNN
F 2 "" H 3200 1030 30  0000 C CNN
F 3 "" V 3200 1100 30  0000 C CNN
	1    3150 1050
	0    1    1    0   
$EndComp
$Comp
L resistor R2
U 1 1 62248C11
P 3150 1850
F 0 "R2" H 3200 1980 50  0000 C CNN
F 1 "1k" H 3200 1800 50  0000 C CNN
F 2 "" H 3200 1830 30  0000 C CNN
F 3 "" V 3200 1900 30  0000 C CNN
	1    3150 1850
	0    1    1    0   
$EndComp
$Comp
L resistor R3
U 1 1 62248D0C
P 3150 2650
F 0 "R3" H 3200 2780 50  0000 C CNN
F 1 "1k" H 3200 2600 50  0000 C CNN
F 2 "" H 3200 2630 30  0000 C CNN
F 3 "" V 3200 2700 30  0000 C CNN
	1    3150 2650
	0    1    1    0   
$EndComp
$Comp
L resistor R4
U 1 1 62248D13
P 3150 3450
F 0 "R4" H 3200 3580 50  0000 C CNN
F 1 "1k" H 3200 3400 50  0000 C CNN
F 2 "" H 3200 3430 30  0000 C CNN
F 3 "" V 3200 3500 30  0000 C CNN
	1    3150 3450
	0    1    1    0   
$EndComp
$Comp
L resistor R5
U 1 1 62248E0E
P 3150 4250
F 0 "R5" H 3200 4380 50  0000 C CNN
F 1 "1k" H 3200 4200 50  0000 C CNN
F 2 "" H 3200 4230 30  0000 C CNN
F 3 "" V 3200 4300 30  0000 C CNN
	1    3150 4250
	0    1    1    0   
$EndComp
$Comp
L resistor R6
U 1 1 62248E15
P 3150 5050
F 0 "R6" H 3200 5180 50  0000 C CNN
F 1 "1k" H 3200 5000 50  0000 C CNN
F 2 "" H 3200 5030 30  0000 C CNN
F 3 "" V 3200 5100 30  0000 C CNN
	1    3150 5050
	0    1    1    0   
$EndComp
$Comp
L resistor R7
U 1 1 62248E1C
P 3150 5850
F 0 "R7" H 3200 5980 50  0000 C CNN
F 1 "1k" H 3200 5800 50  0000 C CNN
F 2 "" H 3200 5830 30  0000 C CNN
F 3 "" V 3200 5900 30  0000 C CNN
	1    3150 5850
	0    1    1    0   
$EndComp
$Comp
L resistor R8
U 1 1 62248E23
P 3150 6650
F 0 "R8" H 3200 6780 50  0000 C CNN
F 1 "1k" H 3200 6600 50  0000 C CNN
F 2 "" H 3200 6630 30  0000 C CNN
F 3 "" V 3200 6700 30  0000 C CNN
	1    3150 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1250 3200 1750
Wire Wire Line
	3200 2050 3200 2550
Wire Wire Line
	3200 2850 3200 3350
Wire Wire Line
	3200 3650 3200 4150
Wire Wire Line
	3200 4450 3200 4950
Wire Wire Line
	3200 5250 3200 5750
Wire Wire Line
	3200 6050 3200 6550
$Comp
L GND #PWR1
U 1 1 622497D8
P 3200 7850
F 0 "#PWR1" H 3200 7600 50  0001 C CNN
F 1 "GND" H 3200 7700 50  0000 C CNN
F 2 "" H 3200 7850 50  0001 C CNN
F 3 "" H 3200 7850 50  0001 C CNN
	1    3200 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7600 3200 7850
Text GLabel 3600 950  1    60   Input ~ 0
VIN
Wire Wire Line
	3200 750  3200 950 
$Comp
L DC VDD1
U 1 1 62248562
P 7900 1900
F 0 "VDD1" H 7700 2000 60  0000 C CNN
F 1 "16" H 7700 1850 60  0000 C CNN
F 2 "R1" H 7600 1900 60  0000 C CNN
F 3 "" H 7900 1900 60  0000 C CNN
	1    7900 1900
	1    0    0    -1  
$EndComp
$Comp
L DC VIN1
U 1 1 62248618
P 8750 1850
F 0 "VIN1" H 8550 1950 60  0000 C CNN
F 1 "2.5" H 8550 1800 60  0000 C CNN
F 2 "R1" H 8450 1850 60  0000 C CNN
F 3 "" H 8750 1850 60  0000 C CNN
	1    8750 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 622486E3
P 7900 2350
F 0 "#PWR11" H 7900 2100 50  0001 C CNN
F 1 "GND" H 7900 2200 50  0000 C CNN
F 2 "" H 7900 2350 50  0001 C CNN
F 3 "" H 7900 2350 50  0001 C CNN
	1    7900 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 6224872B
P 8750 2300
F 0 "#PWR12" H 8750 2050 50  0001 C CNN
F 1 "GND" H 8750 2150 50  0000 C CNN
F 2 "" H 8750 2300 50  0001 C CNN
F 3 "" H 8750 2300 50  0001 C CNN
	1    8750 2300
	1    0    0    -1  
$EndComp
Text GLabel 7900 1450 0    60   Input ~ 0
VDD
Text GLabel 8750 1400 0    60   Input ~ 0
VIN
Text GLabel 5900 1550 0    60   Input ~ 0
IN7
Connection ~ 5750 1350
Text GLabel 5150 2250 1    60   Input ~ 0
IN6
Text GLabel 5250 3100 3    60   Input ~ 0
IN5
Text GLabel 4850 4000 1    60   Input ~ 0
IN4
Text GLabel 5250 4900 1    60   Input ~ 0
IN3
Text GLabel 5000 5750 1    60   Input ~ 0
IN2
Text GLabel 5300 6650 1    60   Input ~ 0
IN1
Connection ~ 5550 2250
Connection ~ 5150 4000
Connection ~ 5400 4900
Connection ~ 5350 5750
Connection ~ 5450 6650
$Comp
L DC v1
U 1 1 62249A0B
P 7000 1950
F 0 "v1" H 6800 2050 60  0000 C CNN
F 1 "32" H 6800 1900 60  0000 C CNN
F 2 "R1" H 6700 1950 60  0000 C CNN
F 3 "" H 7000 1950 60  0000 C CNN
	1    7000 1950
	1    0    0    -1  
$EndComp
Text GLabel 7000 1500 0    60   Input ~ 0
VREF
Text GLabel 3200 750  1    60   Input ~ 0
VREF
$Comp
L GND #PWR10
U 1 1 62249BFA
P 7000 2400
F 0 "#PWR10" H 7000 2150 50  0001 C CNN
F 1 "GND" H 7000 2250 50  0000 C CNN
F 2 "" H 7000 2400 50  0001 C CNN
F 3 "" H 7000 2400 50  0001 C CNN
	1    7000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6750 4100 6750
Wire Wire Line
	3600 5850 3700 5850
Connection ~ 3600 5850
Wire Wire Line
	3600 4100 3700 4100
Connection ~ 3600 4100
Wire Wire Line
	3600 5000 4100 5000
Connection ~ 3600 5000
Wire Wire Line
	3600 3200 4150 3200
Connection ~ 3600 3200
Wire Wire Line
	3600 2350 3700 2350
Connection ~ 3600 2350
Wire Wire Line
	3600 1450 4150 1450
Connection ~ 3600 1450
Wire Wire Line
	4150 1200 3350 1200
Wire Wire Line
	3350 1200 3350 1500
Wire Wire Line
	3350 1500 3200 1500
Connection ~ 3200 1500
Wire Wire Line
	3700 2100 3400 2100
Wire Wire Line
	3400 2100 3400 2300
Wire Wire Line
	3400 2300 3200 2300
Connection ~ 3200 2300
Wire Wire Line
	4150 2950 3450 2950
Wire Wire Line
	3450 2950 3450 3100
Wire Wire Line
	3450 3100 3200 3100
Connection ~ 3200 3100
Wire Wire Line
	3700 3850 3400 3850
Wire Wire Line
	3400 3850 3400 3900
Wire Wire Line
	3400 3900 3200 3900
Connection ~ 3200 3900
Wire Wire Line
	4100 4750 3200 4750
Wire Wire Line
	3200 4750 3200 4700
Connection ~ 3200 4700
Wire Wire Line
	3700 5600 3200 5600
Connection ~ 3200 5600
Wire Wire Line
	4100 6500 3300 6500
Wire Wire Line
	3300 6500 3300 6350
Wire Wire Line
	3300 6350 3200 6350
Connection ~ 3200 6350
$Comp
L lm_741 X8
U 1 1 62271571
P 4250 7400
F 0 "X8" H 4050 7400 60  0000 C CNN
F 1 "lm_741" H 4150 7150 60  0000 C CNN
F 2 "" H 4250 7400 60  0000 C CNN
F 3 "" H 4250 7400 60  0000 C CNN
	1    4250 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 62271579
P 4100 7850
F 0 "#PWR5" H 4100 7600 50  0001 C CNN
F 1 "GND" H 4100 7700 50  0000 C CNN
F 2 "" H 4100 7850 50  0001 C CNN
F 3 "" H 4100 7850 50  0001 C CNN
	1    4100 7850
	1    0    0    -1  
$EndComp
Text GLabel 4100 6950 1    60   Input ~ 0
VDD
$Comp
L resistor R16
U 1 1 62271967
P 3150 7400
F 0 "R16" H 3200 7530 50  0000 C CNN
F 1 "1k" H 3200 7350 50  0000 C CNN
F 2 "" H 3200 7380 30  0000 C CNN
F 3 "" V 3200 7450 30  0000 C CNN
	1    3150 7400
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 6850 3200 7300
Wire Wire Line
	3600 7500 3700 7500
Connection ~ 3600 6750
Wire Wire Line
	3700 7250 3200 7250
Wire Wire Line
	3200 7250 3200 7200
Connection ~ 3200 7200
Wire Wire Line
	5250 1350 5900 1350
Wire Wire Line
	5900 1350 5900 3100
Wire Wire Line
	5900 3100 5950 3100
Wire Wire Line
	4800 2250 5850 2250
Wire Wire Line
	5850 2250 5850 3200
Wire Wire Line
	5850 3200 5950 3200
Wire Wire Line
	5800 3100 5800 3300
Wire Wire Line
	5800 3300 5950 3300
Wire Wire Line
	5500 4000 5500 3400
Wire Wire Line
	5500 3400 5950 3400
Wire Wire Line
	5550 4900 5550 3500
Wire Wire Line
	5550 3500 5950 3500
Wire Wire Line
	5600 5750 5600 3600
Wire Wire Line
	5600 3600 5950 3600
Wire Wire Line
	5700 6650 5700 3700
Wire Wire Line
	5700 3700 5950 3700
Wire Wire Line
	5800 7400 5800 3800
Wire Wire Line
	5250 3100 5800 3100
Connection ~ 5500 3100
Text GLabel 5050 7400 1    60   Input ~ 0
IN0
Wire Wire Line
	4800 7400 5800 7400
Connection ~ 5400 7400
$Comp
L lm_741 X3
U 1 1 622479DF
P 4250 5750
F 0 "X3" H 4050 5750 60  0000 C CNN
F 1 "lm_741" H 4150 5500 60  0000 C CNN
F 2 "" H 4250 5750 60  0000 C CNN
F 3 "" H 4250 5750 60  0000 C CNN
	1    4250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3800 5950 3800
$Comp
L plot_v1 U7
U 1 1 62278CB5
P 3400 1050
F 0 "U7" H 3400 1550 60  0000 C CNN
F 1 "plot_v1" H 3600 1400 60  0000 C CNN
F 2 "" H 3400 1050 60  0000 C CNN
F 3 "" H 3400 1050 60  0000 C CNN
	1    3400 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 950  3600 7500
Connection ~ 3600 1050
$EndSCHEMATC
