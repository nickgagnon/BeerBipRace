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
LIBS:BipBiere
LIBS:switches
LIBS:BipBiere-cache
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
L ATMEGA328-AU U1
U 1 1 59CEE13C
P 2000 5700
F 0 "U1" H 1250 6950 50  0000 L BNN
F 1 "ATMEGA328-AU" H 2400 4300 50  0000 L BNN
F 2 "Housings_QFP:LQFP-32_5x5mm_Pitch0.5mm" H 2000 5700 50  0001 C CIN
F 3 "" H 2000 5700 50  0001 C CNN
F 4 "ATMEGA328P-AURCT-ND" H 2000 5700 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/microchip-technology/ATMEGA328P-AUR/ATMEGA328P-AURCT-ND/3789455" H 2000 5700 60  0001 C CNN "Lien"
	1    2000 5700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 59CEE273
P 1000 4500
F 0 "#PWR01" H 1000 4350 50  0001 C CNN
F 1 "+5V" H 1000 4640 50  0000 C CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "" H 1000 4500 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59CEE315
P 1000 7000
F 0 "#PWR02" H 1000 6750 50  0001 C CNN
F 1 "GND" H 1000 6850 50  0000 C CNN
F 2 "" H 1000 7000 50  0001 C CNN
F 3 "" H 1000 7000 50  0001 C CNN
	1    1000 7000
	1    0    0    -1  
$EndComp
$Comp
L LCD16X2 DS1
U 1 1 59CEE422
P 5200 5350
F 0 "DS1" H 4400 5750 50  0000 C CNN
F 1 "LCD16X2" H 5900 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 5200 5300 50  0001 C CIN
F 3 "" H 5200 5350 50  0001 C CNN
F 4 "N/A" H 5200 5350 60  0001 C CNN "digi-key name"
F 5 "https://www.amazon.ca/Lysignal-Character-Display-Backlight-MEGA2560/dp/B073W9NY2C/ref=sr_1_2?ie=UTF8&qid=1506729511&sr=8-2&keywords=lcd+screen+16x2" H 5200 5350 60  0001 C CNN "Lien"
	1    5200 5350
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 59CEE956
P 4350 4450
F 0 "#PWR03" H 4350 4300 50  0001 C CNN
F 1 "+5V" H 4350 4590 50  0000 C CNN
F 2 "" H 4350 4450 50  0001 C CNN
F 3 "" H 4350 4450 50  0001 C CNN
	1    4350 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59CEEAD8
P 3450 4700
F 0 "#PWR04" H 3450 4450 50  0001 C CNN
F 1 "GND" H 3450 4550 50  0000 C CNN
F 2 "" H 3450 4700 50  0001 C CNN
F 3 "" H 3450 4700 50  0001 C CNN
	1    3450 4700
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 59CEEB9C
P 3900 4550
F 0 "RV1" V 3725 4550 50  0000 C CNN
F 1 "10k" V 3800 4550 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Vishay_TS53YJ" H 3900 4550 50  0001 C CNN
F 3 "" H 3900 4550 50  0001 C CNN
F 4 "TC33X-103ETR-ND" V 3900 4550 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/bourns-inc/TC33X-2-103E/TC33X-103ETR-ND/612858" V 3900 4550 60  0001 C CNN "Lien"
	1    3900 4550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 59CEEDC8
P 4950 4250
F 0 "#PWR05" H 4950 4000 50  0001 C CNN
F 1 "GND" H 4950 4100 50  0000 C CNN
F 2 "" H 4950 4250 50  0001 C CNN
F 3 "" H 4950 4250 50  0001 C CNN
	1    4950 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59CEEFC2
P 4600 6200
F 0 "#PWR06" H 4600 5950 50  0001 C CNN
F 1 "GND" H 4600 6050 50  0000 C CNN
F 2 "" H 4600 6200 50  0001 C CNN
F 3 "" H 4600 6200 50  0001 C CNN
	1    4600 6200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 59CEF198
P 4200 5500
F 0 "#PWR07" H 4200 5350 50  0001 C CNN
F 1 "+5V" H 4200 5640 50  0000 C CNN
F 2 "" H 4200 5500 50  0001 C CNN
F 3 "" H 4200 5500 50  0001 C CNN
	1    4200 5500
	1    0    0    -1  
$EndComp
$Comp
L RT6215E U2
U 1 1 59CEF5AE
P 3250 1250
F 0 "U2" H 3000 1850 60  0000 C CNN
F 1 "RT6215E" H 3300 1850 60  0000 C CNN
F 2 "BipBiere:RT6215E" H 3250 1250 60  0001 C CNN
F 3 "" H 3250 1250 60  0001 C CNN
F 4 "RT6215EHGJ8FCT-ND" H 3250 1250 60  0001 C CNN "digi-key name"
F 5 "RT6215EHGJ8FCT-ND" H 3250 1250 60  0001 C CNN "Lien"
	1    3250 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59CEFE01
P 3200 2050
F 0 "#PWR08" H 3200 1800 50  0001 C CNN
F 1 "GND" H 3200 1900 50  0000 C CNN
F 2 "" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
NoConn ~ 2800 1550
$Comp
L L L1
U 1 1 59CEFFCC
P 4900 1400
F 0 "L1" V 4850 1400 50  0000 C CNN
F 1 "L" V 4975 1400 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" H 4900 1400 50  0001 C CNN
F 3 "" H 4900 1400 50  0001 C CNN
	1    4900 1400
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 59CF0013
P 4400 1200
F 0 "C1" H 4425 1300 50  0000 L CNN
F 1 "0.1u" H 4425 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 1050 50  0001 C CNN
F 3 "" H 4400 1200 50  0001 C CNN
F 4 "399-1170-1-ND" H 4400 1200 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/kemet/C0805C104K5RACTU/399-1170-1-ND/411445" H 4400 1200 60  0001 C CNN "Lien"
	1    4400 1200
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 59CF0086
P 4000 1200
F 0 "R1" V 4080 1200 50  0000 C CNN
F 1 "20" V 4000 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 1200 50  0001 C CNN
F 3 "" H 4000 1200 50  0001 C CNN
F 4 "311-20.0CRCT-ND" V 4000 1200 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/yageo/RC0805FR-0720RL/311-20.0CRCT-ND/730666" V 4000 1200 60  0001 C CNN "Lien"
	1    4000 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 59CF0B01
P 5150 2400
F 0 "#PWR09" H 5150 2150 50  0001 C CNN
F 1 "GND" H 5150 2250 50  0000 C CNN
F 2 "" H 5150 2400 50  0001 C CNN
F 3 "" H 5150 2400 50  0001 C CNN
	1    5150 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59CF0B37
P 5750 1900
F 0 "#PWR010" H 5750 1650 50  0001 C CNN
F 1 "GND" H 5750 1750 50  0000 C CNN
F 2 "" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 59CF1CCB
P 1950 1350
F 0 "J1" H 1950 1500 50  0000 C CNN
F 1 "Batt" V 2050 1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1950 1350 50  0001 C CNN
F 3 "" H 1950 1350 50  0001 C CNN
	1    1950 1350
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 59CF28E0
P 5150 2150
F 0 "R4" V 5230 2150 50  0000 C CNN
F 1 "20k" V 5150 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 2150 50  0001 C CNN
F 3 "" H 5150 2150 50  0001 C CNN
F 4 "311-20.0KCRCT-ND" V 5150 2150 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/yageo/RC0805FR-0720KL/311-20.0KCRCT-ND/730667" V 5150 2150 60  0001 C CNN "Lien"
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59CF2A85
P 5150 1650
F 0 "R3" V 5230 1650 50  0000 C CNN
F 1 "107k" V 5150 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 1650 50  0001 C CNN
F 3 "" H 5150 1650 50  0001 C CNN
F 4 "311-107KCRCT-ND" V 5150 1650 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/yageo/RC0805FR-07107KL/311-107KCRCT-ND/730497" V 5150 1650 60  0001 C CNN "Lien"
	1    5150 1650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59CF3815
P 4450 6000
F 0 "R2" V 4530 6000 50  0000 C CNN
F 1 "220" V 4450 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4380 6000 50  0001 C CNN
F 3 "" H 4450 6000 50  0001 C CNN
F 4 "311-200CRCT-ND" V 4450 6000 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/yageo/RC0805FR-07200RL/311-200CRCT-ND/730670" V 4450 6000 60  0001 C CNN "Lien"
	1    4450 6000
	0    1    1    0   
$EndComp
$Comp
L SW_SPST SW1
U 1 1 59CF458A
P 2550 1300
F 0 "SW1" H 2550 1425 50  0000 C CNN
F 1 "SW_SPST" H 2550 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2550 1300 50  0001 C CNN
F 3 "" H 2550 1300 50  0001 C CNN
F 4 "CH755-ND" H 2550 1300 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/zf-electronics/SRB22A2FBBNN/CH755-ND/446021" H 2550 1300 60  0001 C CNN "Lien"
	1    2550 1300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59CF4C27
P 5750 1650
F 0 "C3" H 5775 1750 50  0000 L CNN
F 1 "22u" H 5775 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5788 1500 50  0001 C CNN
F 3 "" H 5750 1650 50  0001 C CNN
F 4 "399-4696-1-ND" H 5750 1650 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/kemet/C0805C226M9PACTU/399-4696-1-ND/992221" H 5750 1650 60  0001 C CNN "Lien"
	1    5750 1650
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 59CF4D81
P 5400 1650
F 0 "C2" H 5425 1750 50  0000 L CNN
F 1 "22p" H 5425 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5438 1500 50  0001 C CNN
F 3 "" H 5400 1650 50  0001 C CNN
F 4 "490-5534-1-ND" H 5400 1650 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/murata-electronics-north-america/GRM21A5C2E220JW01D/490-5534-1-ND/2334930" H 5400 1650 60  0001 C CNN "Lien"
	1    5400 1650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 59CF4F72
P 6000 1900
F 0 "#PWR011" H 6000 1650 50  0001 C CNN
F 1 "GND" H 6000 1750 50  0000 C CNN
F 2 "" H 6000 1900 50  0001 C CNN
F 3 "" H 6000 1900 50  0001 C CNN
	1    6000 1900
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59CF4F7B
P 6000 1650
F 0 "C4" H 6025 1750 50  0000 L CNN
F 1 "22u" H 6025 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6038 1500 50  0001 C CNN
F 3 "" H 6000 1650 50  0001 C CNN
F 4 "399-4696-1-ND" H 6000 1650 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/kemet/C0805C226M9PACTU/399-4696-1-ND/992221" H 6000 1650 60  0001 C CNN "Lien"
	1    6000 1650
	-1   0    0    1   
$EndComp
NoConn ~ 4700 5500
NoConn ~ 4700 5400
NoConn ~ 4700 5300
NoConn ~ 4700 5200
NoConn ~ 3000 6900
NoConn ~ 3000 6800
NoConn ~ 3000 6300
NoConn ~ 3000 6200
NoConn ~ 3000 6050
NoConn ~ 3000 5950
NoConn ~ 3000 5850
NoConn ~ 3000 5750
NoConn ~ 3000 5650
NoConn ~ 3000 5550
NoConn ~ 3000 5450
NoConn ~ 3000 5300
NoConn ~ 3000 5200
NoConn ~ 3000 4700
NoConn ~ 3000 4600
NoConn ~ 1100 4900
NoConn ~ 1100 5200
NoConn ~ 1100 5950
NoConn ~ 1100 6050
$Comp
L Q_NMOS_GSD Q1
U 1 1 59CF88E2
P 9000 4300
F 0 "Q1" H 9200 4350 50  0000 L CNN
F 1 "2N7002" H 9200 4250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9200 4400 50  0001 C CNN
F 3 "" H 9000 4300 50  0001 C CNN
F 4 "1727-4692-1-ND" H 9000 4300 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/nexperia-usa-inc/2N7002P215/1727-4692-1-ND/2531105" H 9000 4300 60  0001 C CNN "Lien"
	1    9000 4300
	1    0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 59CF8DFF
P 9400 3750
F 0 "LS1" H 9450 3975 50  0000 R CNN
F 1 "Speaker" H 9450 3900 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9400 3550 50  0001 C CNN
F 3 "" H 9390 3700 50  0001 C CNN
	1    9400 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 59CF90B0
P 9100 3550
F 0 "#PWR012" H 9100 3400 50  0001 C CNN
F 1 "+5V" H 9100 3690 50  0000 C CNN
F 2 "" H 9100 3550 50  0001 C CNN
F 3 "" H 9100 3550 50  0001 C CNN
	1    9100 3550
	1    0    0    -1  
$EndComp
$Comp
L D_Shockley D1
U 1 1 59CF914D
P 8900 3800
F 0 "D1" H 8900 3900 50  0000 C CNN
F 1 "Shockley 0.45V" H 8900 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8900 3800 50  0001 C CNN
F 3 "" H 8900 3800 50  0001 C CNN
F 4 "478-7800-1-ND" H 8900 3800 60  0001 C CNN "digi-key name"
F 5 "https://www.digikey.ca/product-detail/en/avx-corporation/SD0805S020S1R0/478-7800-1-ND/3749510" H 8900 3800 60  0001 C CNN "Lien"
	1    8900 3800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 59CF9A8D
P 9100 4600
F 0 "#PWR013" H 9100 4350 50  0001 C CNN
F 1 "GND" H 9100 4450 50  0000 C CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "" H 9100 4600 50  0001 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
Text Label 8400 4300 0    60   ~ 0
Speaker
Text Label 3300 4400 0    60   ~ 0
Speaker
Wire Wire Line
	1100 4700 1000 4700
Wire Wire Line
	1000 4700 1000 4500
Wire Wire Line
	1100 4600 1000 4600
Connection ~ 1000 4600
Wire Wire Line
	1000 6700 1000 7000
Wire Wire Line
	1000 6900 1100 6900
Wire Wire Line
	1100 6800 1000 6800
Connection ~ 1000 6900
Wire Wire Line
	1100 6700 1000 6700
Connection ~ 1000 6800
Wire Wire Line
	3900 5100 4700 5100
Wire Wire Line
	4150 4900 4700 4900
Wire Wire Line
	4700 5600 3750 5600
Wire Wire Line
	3750 5600 3750 6700
Wire Wire Line
	3750 6700 3000 6700
Wire Wire Line
	3000 6600 3850 6600
Wire Wire Line
	3850 6600 3850 5700
Wire Wire Line
	3850 5700 4700 5700
Wire Wire Line
	4700 5800 3950 5800
Wire Wire Line
	3950 5800 3950 6500
Wire Wire Line
	3950 6500 3000 6500
Wire Wire Line
	3000 6400 4050 6400
Wire Wire Line
	4050 6400 4050 5900
Wire Wire Line
	4050 5900 4700 5900
Wire Wire Line
	4350 4450 4350 4700
Wire Wire Line
	3900 4700 3900 4800
Wire Wire Line
	3900 4800 4700 4800
Wire Wire Line
	4050 4550 4350 4550
Wire Wire Line
	4350 4700 4700 4700
Connection ~ 4350 4550
Wire Wire Line
	3750 4550 3450 4550
Wire Wire Line
	3450 4550 3450 4700
Wire Wire Line
	4600 4600 4700 4600
Wire Wire Line
	4600 4150 4600 5000
Wire Wire Line
	4600 4150 4950 4150
Wire Wire Line
	4950 4150 4950 4250
Wire Wire Line
	3900 5100 3900 4900
Wire Wire Line
	3900 4900 3000 4900
Wire Wire Line
	4150 5000 3000 5000
Wire Wire Line
	4150 4900 4150 5000
Wire Wire Line
	4600 5000 4700 5000
Connection ~ 4600 4600
Wire Wire Line
	4600 6200 4600 6100
Wire Wire Line
	4600 6100 4700 6100
Wire Wire Line
	4700 6000 4600 6000
Wire Wire Line
	4200 5500 4200 6000
Wire Wire Line
	4200 6000 4300 6000
Wire Wire Line
	3200 1950 3200 2050
Wire Wire Line
	2250 2000 3350 2000
Wire Wire Line
	3350 2000 3350 1950
Connection ~ 3200 2000
Wire Wire Line
	3750 1400 4750 1400
Wire Wire Line
	4550 1200 4650 1200
Wire Wire Line
	4650 1200 4650 1400
Connection ~ 4650 1400
Wire Wire Line
	4250 1200 4150 1200
Wire Wire Line
	3850 1200 3750 1200
Wire Wire Line
	5400 1500 5400 1400
Wire Wire Line
	5050 1400 6000 1400
Wire Wire Line
	5150 1500 5150 1400
Connection ~ 5150 1400
Wire Wire Line
	5400 1900 5400 1800
Wire Wire Line
	5000 1900 5400 1900
Wire Wire Line
	5150 1800 5150 2000
Connection ~ 5150 1900
Wire Wire Line
	5000 1900 5000 1650
Wire Wire Line
	5000 1650 3750 1650
Wire Wire Line
	5750 1400 5750 1500
Connection ~ 5400 1400
Wire Wire Line
	5750 1900 5750 1800
Wire Wire Line
	5150 2300 5150 2400
Wire Wire Line
	3250 900  3250 800 
Wire Wire Line
	3250 800  2250 800 
Wire Wire Line
	2250 800  2250 1300
Wire Wire Line
	2150 1300 2350 1300
Wire Wire Line
	2150 1400 2250 1400
Wire Wire Line
	2250 1400 2250 2000
Wire Wire Line
	2800 1300 2750 1300
Connection ~ 2250 1300
Wire Wire Line
	6000 1400 6000 1500
Wire Wire Line
	6000 1900 6000 1800
Connection ~ 5750 1400
Wire Wire Line
	9100 4100 9100 3850
Wire Wire Line
	9100 3850 9200 3850
Wire Wire Line
	9100 3550 9100 3750
Wire Wire Line
	9100 3750 9200 3750
Wire Wire Line
	8900 3650 8900 3600
Wire Wire Line
	8900 3600 9100 3600
Connection ~ 9100 3600
Wire Wire Line
	8900 3950 8900 4000
Wire Wire Line
	8900 4000 9100 4000
Connection ~ 9100 4000
Wire Wire Line
	9100 4600 9100 4500
Wire Wire Line
	8400 4300 8800 4300
Wire Wire Line
	3300 4400 3200 4400
Wire Wire Line
	3200 4400 3200 4800
Wire Wire Line
	3200 4800 3000 4800
$Comp
L AVR-ISP-6 CON1
U 1 1 59CF08AA
P 4100 7150
F 0 "CON1" H 3995 7390 50  0000 C CNN
F 1 "AVR-ISP-6" H 3835 6920 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 3580 7190 50  0001 C CNN
F 3 "" H 4075 7150 50  0001 C CNN
	1    4100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7150 3950 7150
Wire Wire Line
	3000 6050 3200 6050
Wire Wire Line
	3200 6050 3200 7250
Wire Wire Line
	3200 7250 3950 7250
Wire Wire Line
	3300 7150 3300 5100
Wire Wire Line
	3300 5100 3000 5100
Wire Wire Line
	3400 5000 3400 7050
Wire Wire Line
	3400 7050 3950 7050
Connection ~ 3400 5000
$Comp
L +5V #PWR014
U 1 1 59CF26EC
P 4450 6850
F 0 "#PWR014" H 4450 6700 50  0001 C CNN
F 1 "+5V" H 4450 6990 50  0000 C CNN
F 2 "" H 4450 6850 50  0001 C CNN
F 3 "" H 4450 6850 50  0001 C CNN
	1    4450 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59CF27C8
P 4450 7450
F 0 "#PWR015" H 4450 7200 50  0001 C CNN
F 1 "GND" H 4450 7300 50  0000 C CNN
F 2 "" H 4450 7450 50  0001 C CNN
F 3 "" H 4450 7450 50  0001 C CNN
	1    4450 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7250 4450 7250
Wire Wire Line
	4450 7250 4450 7450
Wire Wire Line
	4200 7050 4450 7050
Wire Wire Line
	4450 7050 4450 6850
Wire Wire Line
	4200 7150 4350 7150
Wire Wire Line
	4350 7150 4350 6850
Wire Wire Line
	4350 6850 3500 6850
Wire Wire Line
	3500 6850 3500 4900
Connection ~ 3500 4900
$EndSCHEMATC
