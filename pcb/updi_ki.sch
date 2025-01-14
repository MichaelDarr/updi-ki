EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Updi-Key"
Date "2020-10-21"
Rev "v1.0"
Comp ""
Comment1 "for targets tinyAVR® 0-1-2 series with 3 to 5V target voltage"
Comment2 "Automatically activates UPDI mode and provides power-cycle"
Comment3 "Converts any UPDI programmer to HV-UPDI"
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F5C9525
P 6350 4150
F 0 "J2" H 6500 4150 50  0000 C CNN
F 1 "UPDI-IN" H 6450 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 6350 4150 50  0001 C CNN
F 3 "~" H 6350 4150 50  0001 C CNN
F 4 "Pin strip male header, 2.54mm, 3-position" H 6350 4150 50  0001 C CNN "Description"
	1    6350 4150
	-1   0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny202-SS U1
U 1 1 5F5C9531
P 2250 2600
F 0 "U1" H 1850 3150 50  0000 R CNN
F 1 "ATtiny202-SS" H 2850 3175 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2250 2600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny202-402-AVR-MCU-with-Core-Independent-Peripherals_and-picoPower-40001969A.pdf" H 2250 2600 50  0001 C CNN
F 4 "IC MCU 8BIT 2KB FLASH 8SOIC" H 2250 2600 50  0001 C CNN "Description"
F 5 "ATTINY202-SSNRCT-ND" H 2250 2600 50  0001 C CNN "Digi-Key Part Number"
F 6 "ATTINY202-SSNR" H 2250 2600 50  0001 C CNN "Manufacturer_Part_Number"
	1    2250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1800 8000 1800
Text Label 2850 2400 0    50   ~ 0
HV-EN
Text Label 2850 2700 0    50   ~ 0
PWR-SW-EN
$Comp
L Device:C_Small C1
U 1 1 5F5C962E
P 1600 2650
F 0 "C1" H 1625 2725 50  0000 L CNN
F 1 "0.1µF" H 1625 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1600 2650 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10B104KB8NNNC.jsp" H 1600 2650 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0603" H 1600 2650 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 1600 2650 50  0001 C CNN "Manufacturer_Name"
F 6 "CL10B104KB8NNNC" H 1600 2650 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "1276-1000-1-ND" H 1600 2650 50  0001 C CNN "Digi-Key Part Number"
	1    1600 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2250 1950 1600 1950
Wire Wire Line
	2250 1950 2250 2000
Wire Wire Line
	2250 3250 2250 3200
Wire Wire Line
	2250 3250 2250 3350
Connection ~ 2250 3250
$Comp
L Device:R_Small_US R11
U 1 1 5F5C9679
P 8700 2800
F 0 "R11" V 8800 2650 50  0000 L CNN
F 1 "180Ω" V 8600 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8700 2800 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 8700 2800 50  0001 C CNN
F 4 "RES 180 OHM 5% 1/8W 0603" H 8700 2800 50  0001 C CNN "Description"
F 5 "Yageo" H 8700 2800 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD181J" H 8700 2800 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD181JCT-ND" H 8700 2800 50  0001 C CNN "Digi-Key Part Number"
F 8 "RK73B1JTTD181J" H 8700 2800 50  0001 C CNN "Mouser Part Number"
	1    8700 2800
	0    1    -1   0   
$EndComp
Text GLabel 2250 1900 1    50   Input ~ 0
VF
Connection ~ 2250 1950
Wire Wire Line
	2250 1900 2250 1950
$Comp
L updi_ki:0ZCM0005FF2G F1
U 1 1 5F5E4CB0
P 1400 1950
F 0 "F1" V 1325 1925 50  0000 C CNN
F 1 "50mA" V 1500 1950 50  0000 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" H 1450 1750 50  0001 L CNN
F 3 "https://belfuse.com/resources/datasheets/circuitprotection/ds-cp-0zcm-series.pdf" H 1400 1950 50  0001 C CNN
F 4 "PTC RESET FUSE 15V 50MA 0603" H 1400 1950 50  0001 C CNN "Description"
F 5 "507-1816-1-ND" H 1400 1950 50  0001 C CNN "Digi-Key Part Number"
F 6 "0ZCM0005FF2G" H 1400 1950 50  0001 C CNN "Manufacturer_Part_Number"
	1    1400 1950
	0    1    1    0   
$EndComp
Text Label 6900 1800 2    50   ~ 0
HV-EN
$Comp
L Device:C_Small C7
U 1 1 5F60F732
P 6250 1950
F 0 "C7" H 6350 2000 50  0000 L CNN
F 1 "0.1µF" H 6275 1875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 1950 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10B104KB8NNNC.jsp" H 6250 1950 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0603" H 6250 1950 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 6250 1950 50  0001 C CNN "Manufacturer_Name"
F 6 "CL10B104KB8NNNC" H 6250 1950 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "1276-1000-1-ND" H 6250 1950 50  0001 C CNN "Digi-Key Part Number"
	1    6250 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5F5C9609
P 6950 2450
F 0 "R10" H 7025 2500 50  0000 L CNN
F 1 "10K" H 7000 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6950 2450 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 6950 2450 50  0001 C CNN
F 4 "RES 10K OHM 5% 1/10W 0603" H 6950 2450 50  0001 C CNN "Description"
F 5 "Yageo" H 6950 2450 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD103J" H 6950 2450 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD103JCT-ND" H 6950 2450 50  0001 C CNN "Digi-Key Part Number"
	1    6950 2450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F6BC1F8
P 2250 3350
F 0 "#PWR01" H 2250 3100 50  0001 C CNN
F 1 "GND" H 2255 3177 50  0001 C CNN
F 2 "" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F6D25AD
P 6600 4300
F 0 "#PWR08" H 6600 4050 50  0001 C CNN
F 1 "GND" H 6605 4127 50  0001 C CNN
F 2 "" H 6600 4300 50  0001 C CNN
F 3 "" H 6600 4300 50  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F5B14F9
P 5400 6850
F 0 "#FLG02" H 5400 6925 50  0001 C CNN
F 1 "PWR_FLAG" V 5400 7150 50  0000 C CNN
F 2 "" H 5400 6850 50  0001 C CNN
F 3 "~" H 5400 6850 50  0001 C CNN
	1    5400 6850
	0    1    1    0   
$EndComp
Text GLabel 5400 6850 0    50   Input ~ 0
VTG
Text GLabel 1200 1950 0    50   Input ~ 0
VTG
Wire Wire Line
	1200 1950 1300 1950
Text GLabel 6650 4250 2    50   Input ~ 0
VTG
Text GLabel 5400 7000 0    50   Input ~ 0
VF
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5F6566E4
P 5400 7000
F 0 "#FLG03" H 5400 7075 50  0001 C CNN
F 1 "PWR_FLAG" V 5400 7300 50  0000 C CNN
F 2 "" H 5400 7000 50  0001 C CNN
F 3 "~" H 5400 7000 50  0001 C CNN
	1    5400 7000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F663192
P 5400 7150
F 0 "#PWR05" H 5400 6900 50  0001 C CNN
F 1 "GND" H 5405 6977 50  0001 C CNN
F 2 "" H 5400 7150 50  0001 C CNN
F 3 "" H 5400 7150 50  0001 C CNN
	1    5400 7150
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5F665A2E
P 5400 7150
F 0 "#FLG04" H 5400 7225 50  0001 C CNN
F 1 "PWR_FLAG" V 5400 7450 50  0000 C CNN
F 2 "" H 5400 7150 50  0001 C CNN
F 3 "~" H 5400 7150 50  0001 C CNN
	1    5400 7150
	0    1    1    0   
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5F5C28CD
P 5450 7500
F 0 "FID2" H 5535 7546 50  0000 L CNN
F 1 "Fiducial" H 5535 7455 50  0001 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 5450 7500 50  0001 C CNN
F 3 "" H 5450 7500 50  0001 C CNN
F 4 "Fiducial 1mm with 2mm mask" H 5450 7500 50  0001 C CNN "Description"
	1    5450 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5F5BB1E6
P 5450 7350
F 0 "FID1" H 5535 7396 50  0000 L CNN
F 1 "Fiducial" H 5535 7305 50  0001 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 5450 7350 50  0001 C CNN
F 3 "" H 5450 7350 50  0001 C CNN
F 4 "Fiducial 1mm with 2mm mask" H 5450 7350 50  0001 C CNN "Description"
	1    5450 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1950 1600 2550
Wire Wire Line
	1600 2750 1600 3250
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5F614186
P 8950 5700
F 0 "J4" H 9000 5925 50  0000 C CNN
F 1 "HVUPDI_OUT6" H 8950 5475 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8950 5700 50  0001 C CNN
F 3 "~" H 8950 5700 50  0001 C CNN
F 4 "Pin header, male, 2.54mm, 6-position" H 8950 5700 50  0001 C CNN "Description"
	1    8950 5700
	1    0    0    -1  
$EndComp
Text GLabel 9450 5050 2    50   Input ~ 0
VTG
Wire Wire Line
	9250 5250 9300 5250
Wire Wire Line
	9300 5250 9300 5800
Wire Wire Line
	9300 5800 9250 5800
$Comp
L power:GND #PWR011
U 1 1 5F65197B
P 9300 5850
F 0 "#PWR011" H 9300 5600 50  0001 C CNN
F 1 "GND" H 9305 5677 50  0001 C CNN
F 2 "" H 9300 5850 50  0001 C CNN
F 3 "" H 9300 5850 50  0001 C CNN
	1    9300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5850 9300 5800
Connection ~ 9300 5800
Text Label 8550 5600 2    50   ~ 0
HVUPDI-TARGET
Wire Wire Line
	8550 5600 8750 5600
$Comp
L Device:LED_ALT VTG1
U 1 1 5F5E186B
P 6100 5650
F 0 "VTG1" V 6150 5550 50  0000 C CNN
F 1 "GREEN" V 5925 5425 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6100 5650 50  0001 C CNN
F 3 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493948/LG%20Q396.pdf" H 6100 5650 50  0001 C CNN
F 4 "LED GREEN DIFFUSED 0603 SMD" H 6100 5650 50  0001 C CNN "Description"
F 5 "LG Q396-PS-35" H 6100 5650 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "475-3754-1-ND" H 6100 5650 50  0001 C CNN "Digi-Key Part Number"
	1    6100 5650
	0    -1   -1   0   
$EndComp
Text GLabel 6200 5200 2    50   Output ~ 0
VTG-PC
Text GLabel 9450 5600 2    50   Input ~ 0
VTG-PC
Wire Wire Line
	9250 5050 9450 5050
Wire Wire Line
	9250 5600 9450 5600
Text GLabel 3950 4950 1    50   Input ~ 0
VTG
Text Label 2850 2500 0    50   ~ 0
UPDI-SENSE
$Comp
L Device:C_Small C5
U 1 1 5F714F5E
P 5650 5650
F 0 "C5" H 5675 5725 50  0000 L CNN
F 1 "10µF" H 5675 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5650 5650 50  0001 C CNN
F 3 "http://www.yuden.co.jp/productdata/catalog/mlcc06_e.pdf" H 5650 5650 50  0001 C CNN
F 4 "CAP CER 10UF 10V X5R 0603" H 5650 5650 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 5650 5650 50  0001 C CNN "Manufacturer_Name"
F 6 "LMK107BBJ106MALT" H 5650 5650 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "587-3258-1-ND" H 5650 5650 50  0001 C CNN "Digi-Key Part Number"
	1    5650 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 1800 7000 1800
Wire Wire Line
	8800 2800 8900 2800
Wire Wire Line
	6550 4150 6600 4150
Wire Wire Line
	6600 4150 6600 4300
Wire Wire Line
	6550 4250 6650 4250
Wire Wire Line
	6550 4050 6600 4050
Wire Wire Line
	1600 3250 2250 3250
Wire Wire Line
	1500 1950 1600 1950
Connection ~ 1600 1950
$Comp
L Device:R_Small_US R4
U 1 1 5F5C9613
P 3550 5500
F 0 "R4" H 3625 5550 50  0000 L CNN
F 1 "10K" H 3600 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 5500 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 3550 5500 50  0001 C CNN
F 4 "RES 10K OHM 5% 1/10W 0603" H 3550 5500 50  0001 C CNN "Description"
F 5 "Yageo" H 3550 5500 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD103J" H 3550 5500 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD103JCT-ND" H 3550 5500 50  0001 C CNN "Digi-Key Part Number"
	1    3550 5500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F662288
P 3950 5500
F 0 "C3" H 3800 5575 50  0000 L CNN
F 1 "10µF" H 3725 5400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3950 5500 50  0001 C CNN
F 3 "http://www.yuden.co.jp/productdata/catalog/mlcc06_e.pdf" H 3950 5500 50  0001 C CNN
F 4 "CAP CER 10UF 10V X5R 0603" H 3950 5500 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 3950 5500 50  0001 C CNN "Manufacturer_Name"
F 6 "LMK107BBJ106MALT" H 3950 5500 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "587-3258-1-ND" H 3950 5500 50  0001 C CNN "Digi-Key Part Number"
	1    3950 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F66228E
P 3950 5700
F 0 "#PWR04" H 3950 5450 50  0001 C CNN
F 1 "GND" H 3955 5527 50  0001 C CNN
F 2 "" H 3950 5700 50  0001 C CNN
F 3 "" H 3950 5700 50  0001 C CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5200 4300 5200
Wire Wire Line
	4300 5200 4300 5650
Wire Wire Line
	3950 5600 3950 5650
Connection ~ 3950 5650
Wire Wire Line
	3950 5650 3950 5700
Wire Wire Line
	3950 5100 3950 5400
Wire Wire Line
	3950 4950 3950 5100
Connection ~ 3950 5100
$Comp
L power:GND #PWR06
U 1 1 5F6A313A
P 5650 5900
F 0 "#PWR06" H 5650 5650 50  0001 C CNN
F 1 "GND" H 5655 5727 50  0001 C CNN
F 2 "" H 5650 5900 50  0001 C CNN
F 3 "" H 5650 5900 50  0001 C CNN
	1    5650 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5F719032
P 6100 5400
F 0 "R9" H 6150 5500 50  0000 L CNN
F 1 "1K" H 6100 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6100 5400 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 6100 5400 50  0001 C CNN
F 4 "RES 1K OHM 5% 1/8W 0603" H 6100 5400 50  0001 C CNN "Description"
F 5 "Yageo" H 6100 5400 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD102J" H 6100 5400 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD102JCT-ND" H 6100 5400 50  0001 C CNN "Digi-Key Part Number"
F 8 "RK73B1JTTD181J" H 6100 5400 50  0001 C CNN "Mouser Part Number"
	1    6100 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 5850 5650 5750
Wire Wire Line
	5650 5850 5650 5900
Connection ~ 5650 5850
Wire Wire Line
	5650 5200 5900 5200
Wire Wire Line
	5650 5200 5650 5550
Wire Wire Line
	6100 5800 6100 5850
Wire Wire Line
	6100 5200 6100 5300
$Comp
L Device:R_Small_US R8
U 1 1 5F836114
P 5900 5650
F 0 "R8" H 5950 5700 50  0000 L CNN
F 1 "1K" H 5900 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 5650 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 5900 5650 50  0001 C CNN
F 4 "RES 1K OHM 5% 1/8W 0603" H 5900 5650 50  0001 C CNN "Description"
F 5 "Yageo" H 5900 5650 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD102J" H 5900 5650 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD102JCT-ND" H 5900 5650 50  0001 C CNN "Digi-Key Part Number"
	1    5900 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 5750 5900 5850
Connection ~ 5900 5850
Wire Wire Line
	5900 5850 6100 5850
Wire Wire Line
	5650 5850 5900 5850
Wire Wire Line
	5900 5550 5900 5200
Wire Wire Line
	6100 5200 5900 5200
Connection ~ 5900 5200
Wire Wire Line
	6200 5200 6100 5200
Connection ~ 6100 5200
$Comp
L SamacSys_Parts:ISL43210IHZ-T SW2
U 1 1 5F885250
P 7000 1800
F 0 "SW2" H 7175 1975 50  0000 C CNN
F 1 "ISL43210IHZ-T" H 7600 1975 50  0000 C CNN
F 2 "0_mouser:SOT95P280X145-6N" H 7850 1900 50  0001 L CNN
F 3 "https://www.renesas.com/en-us/www/doc/datasheet/isl43210.pdf" H 7850 1800 50  0001 L CNN
F 4 "IC SWITCH SPDT SOT23-6, Marking GJQG" H 7850 1700 50  0001 L CNN "Description"
F 5 "1.45" H 7850 1600 50  0001 L CNN "Height"
F 6 "Renesas Electronics" H 7850 1500 50  0001 L CNN "Manufacturer_Name"
F 7 "ISL43210IHZ-T" H 7850 1400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "ISL43210IHZ-T" H 7850 1300 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/isl43210ihz-t/renesas-electronics" H 7850 1200 50  0001 L CNN "Arrow Price/Stock"
F 10 "968-ISL43210IHZ-T" H 7850 1100 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Renesas-Intersil/ISL43210IHZ-T?qs=9fLuogzTs8IzNDzK%2FTk%2FfQ%3D%3D" H 7850 1000 50  0001 L CNN "Mouser Price/Stock"
F 12 "ISL43210IHZCT-ND" H 7000 1800 50  0001 C CNN "Digi-Key Part Number"
	1    7000 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5F5C952B
P 9300 2000
F 0 "J5" H 9450 2000 50  0000 C CNN
F 1 "HVUPDI-OUT" H 9450 2200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Horizontal" H 9300 2000 50  0001 C CNN
F 3 "~" H 9300 2000 50  0001 C CNN
F 4 "Pin strip male header, 2.54mm, 3-position" H 9300 2000 50  0001 C CNN "Description"
	1    9300 2000
	1    0    0    -1  
$EndComp
Text Label 8400 1900 0    50   ~ 0
HVUPDI-TARGET
Text GLabel 9000 2100 0    50   Input ~ 0
VTG-PC
Wire Wire Line
	9100 2000 9050 2000
Wire Wire Line
	9100 2100 9000 2100
$Comp
L power:GND #PWR010
U 1 1 5F6E4935
P 9050 2150
F 0 "#PWR010" H 9050 1900 50  0001 C CNN
F 1 "GND" H 9055 1977 50  0001 C CNN
F 2 "" H 9050 2150 50  0001 C CNN
F 3 "" H 9050 2150 50  0001 C CNN
	1    9050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2000 9050 2150
$Comp
L Device:R_Small_US R12
U 1 1 5F8C2D98
P 8150 2250
F 0 "R12" H 8200 2350 50  0000 L CNN
F 1 "180Ω" H 8200 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8150 2250 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 8150 2250 50  0001 C CNN
F 4 "RES 180 OHM 5% 1/8W 0603" H 8150 2250 50  0001 C CNN "Description"
F 5 "Yageo" H 8150 2250 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD181J" H 8150 2250 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD181JCT-ND" H 8150 2250 50  0001 C CNN "Digi-Key Part Number"
F 8 "RK73B1JTTD181J" H 8150 2250 50  0001 C CNN "Mouser Part Number"
	1    8150 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 1500 6600 1900
Wire Wire Line
	8050 1500 8050 1800
$Comp
L Device:R_Small_US R5
U 1 1 5F811016
P 5600 1650
F 0 "R5" H 5650 1700 50  0000 L CNN
F 1 "102K 1%" H 5625 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 1650 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5600 1650 50  0001 C CNN
F 4 "RES SMD 102K OHM 1% 1/10W 0603" H 5600 1650 50  0001 C CNN "Description"
F 5 "Yageo" H 5600 1650 50  0001 C CNN "Manufacturer_Name"
F 6 "RC0603FR-07102KL" H 5600 1650 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "311-102KHRCT-ND" H 5600 1650 50  0001 C CNN "Digi-Key Part Number"
	1    5600 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5F815A93
P 5600 1950
F 0 "R6" H 5650 2000 50  0000 L CNN
F 1 "11K 1%" H 5625 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 1950 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 5600 1950 50  0001 C CNN
F 4 "RES SMD 11K OHM 1% 1/10W 0603" H 5600 1950 50  0001 C CNN "Description"
F 5 "Yageo" H 5600 1950 50  0001 C CNN "Manufacturer_Name"
F 6 "RC0603FR-0711KL" H 5600 1950 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "311-11.0KHRCT-ND" H 5600 1950 50  0001 C CNN "Digi-Key Part Number"
	1    5600 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 5F81B129
P 5400 1500
F 0 "D2" H 5400 1387 50  0000 C CNN
F 1 "PMEG4005CEJX" H 5400 1386 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-323F" V 5400 1500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG4005CEJ.pdf" V 5400 1500 50  0001 C CNN
F 4 "DIODE SCHOTTKY 40V 500MA SC90" H 5400 1500 50  0001 C CNN "Description"
F 5 "1727-8169-1-ND" H 5400 1500 50  0001 C CNN "Digi-Key Part Number"
F 6 "PMEG4005CEJX" H 5400 1500 50  0001 C CNN "Manufacturer_Part_Number"
	1    5400 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F81C3F7
P 5850 1650
F 0 "C4" H 5700 1725 50  0000 L CNN
F 1 "68pF" H 5625 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 1650 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GP_NP0_16V-to-50V_18.pdf" H 5850 1650 50  0001 C CNN
F 4 "CAP CER 0.68PF 50V NPO 0603" H 5850 1650 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 5850 1650 50  0001 C CNN "Manufacturer_Name"
F 6 "CC0603BRNPO9BNR68" H 5850 1650 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "311-3842-1-ND" H 5850 1650 50  0001 C CNN "Digi-Key Part Number"
	1    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F820D6B
P 6000 1950
F 0 "C6" H 5850 2025 50  0000 L CNN
F 1 "4.7µF" H 5775 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 1950 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/CL10A475KO8NNNC_Spec.pdf" H 6000 1950 50  0001 C CNN
F 4 "CAP CER 4.7UF 16V X5R 0603" H 6000 1950 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 6000 1950 50  0001 C CNN "Manufacturer_Name"
F 6 "CL10A475KO8NNNC" H 6000 1950 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "1276-1784-1-ND" H 6000 1950 50  0001 C CNN "Digi-Key Part Number"
	1    6000 1950
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F8252A2
P 3950 2250
F 0 "C2" H 3800 2325 50  0000 L CNN
F 1 "10µF" H 3725 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3950 2250 50  0001 C CNN
F 3 "http://www.yuden.co.jp/productdata/catalog/mlcc06_e.pdf" H 3950 2250 50  0001 C CNN
F 4 "CAP CER 10UF 10V X5R 0603" H 3950 2250 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 3950 2250 50  0001 C CNN "Manufacturer_Name"
F 6 "LMK107BBJ106MALT" H 3950 2250 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "587-3258-1-ND" H 3950 2250 50  0001 C CNN "Digi-Key Part Number"
	1    3950 2250
	1    0    0    -1  
$EndComp
Text GLabel 3950 1450 1    50   Input ~ 0
VF
Wire Wire Line
	3950 2100 3950 1900
Connection ~ 3950 1500
Connection ~ 3950 1900
Wire Wire Line
	3950 1900 3950 1500
Wire Wire Line
	5150 1900 5200 1900
Wire Wire Line
	5200 1900 5200 1500
Wire Wire Line
	4700 1500 5200 1500
Connection ~ 5200 1500
Wire Wire Line
	5200 1500 5300 1500
Wire Wire Line
	4100 2000 4150 2000
Wire Wire Line
	5600 1550 5600 1500
Wire Wire Line
	5600 2050 5600 2100
Wire Wire Line
	5600 1750 5600 1800
Wire Wire Line
	5500 1500 5600 1500
Connection ~ 5600 1500
Wire Wire Line
	5600 1500 5850 1500
Wire Wire Line
	5150 2100 5600 2100
Connection ~ 5600 2100
Wire Wire Line
	5850 1550 5850 1500
Connection ~ 5850 1500
Wire Wire Line
	5850 1500 6000 1500
Wire Wire Line
	5850 1750 5850 1800
Wire Wire Line
	5850 1800 5600 1800
Connection ~ 5600 1800
Wire Wire Line
	5600 1800 5600 1850
Wire Wire Line
	6000 1850 6000 1500
Connection ~ 6000 1500
Wire Wire Line
	5850 1800 5850 2300
Wire Wire Line
	4100 2300 5850 2300
Connection ~ 5850 1800
$Comp
L power:GND #PWR07
U 1 1 5FA38992
P 6250 2650
F 0 "#PWR07" H 6250 2400 50  0001 C CNN
F 1 "GND" H 6255 2477 50  0001 C CNN
F 2 "" H 6250 2650 50  0001 C CNN
F 3 "" H 6250 2650 50  0001 C CNN
	1    6250 2650
	1    0    0    -1  
$EndComp
Text Label 2850 2800 0    50   ~ 0
UPDI-EN
Text Label 2850 2300 0    50   ~ 0
PROG
Text Label 2850 2600 0    50   ~ 0
UPDI-KEY
Wire Wire Line
	3950 1500 3950 1450
$Comp
L SamacSys_Parts:NCP1406SNT1G U2
U 1 1 5F7FBF2D
P 4150 1900
F 0 "U2" H 4300 2100 50  0000 C CNN
F 1 "NCP1406SNT1G" H 4700 2100 50  0000 C CNN
F 2 "0_mouser:SOT95P275X110-5N" H 5000 2000 50  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/NCP1406-D.PDF" H 5000 1900 50  0001 L CNN
F 4 "IC REG BUCK BST ADJ 25MA 5TSOP" H 5000 1800 50  0001 L CNN "Description"
F 5 "1.1" H 5000 1700 50  0001 L CNN "Height"
F 6 "ON Semiconductor" H 5000 1600 50  0001 L CNN "Manufacturer_Name"
F 7 "NCP1406SNT1G" H 5000 1500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "NCP1406SNT1G" H 5000 1400 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/ncp1406snt1g/on-semiconductor" H 5000 1300 50  0001 L CNN "Arrow Price/Stock"
F 10 "863-NCP1406SNT1G" H 5000 1200 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.com/Search/Refine.aspx?Keyword=863-NCP1406SNT1G" H 5000 1100 50  0001 L CNN "Mouser Price/Stock"
F 12 "NCP1406SNT1GOSCT-ND" H 4150 1900 50  0001 C CNN "Digi-Key Part Number"
	1    4150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2100 3950 2150
Connection ~ 3950 2100
Wire Wire Line
	3950 1900 4150 1900
Wire Wire Line
	3950 2100 4150 2100
Wire Wire Line
	4100 2000 4100 2300
Wire Wire Line
	3950 1500 4500 1500
Wire Wire Line
	6950 2550 6950 2600
Wire Wire Line
	5600 2600 6000 2600
Wire Wire Line
	5600 2100 5600 2600
Wire Wire Line
	6600 2000 6600 2600
Wire Wire Line
	6900 1800 6950 1800
Connection ~ 6950 1800
Connection ~ 6600 1500
Wire Wire Line
	6600 1500 8050 1500
Wire Wire Line
	6600 1900 7000 1900
Wire Wire Line
	6000 1500 6250 1500
Connection ~ 6600 2600
Wire Wire Line
	6600 2600 6950 2600
Wire Wire Line
	6600 2000 7000 2000
Wire Wire Line
	6250 2650 6250 2600
Wire Wire Line
	6250 1850 6250 1500
Connection ~ 6250 1500
Wire Wire Line
	6250 1500 6600 1500
Wire Wire Line
	6250 2050 6250 2600
Connection ~ 6250 2600
Wire Wire Line
	6250 2600 6600 2600
Wire Wire Line
	6000 2050 6000 2600
Connection ~ 6000 2600
Wire Wire Line
	6000 2600 6250 2600
Wire Wire Line
	5600 2600 3950 2600
Wire Wire Line
	3950 2600 3950 2350
Connection ~ 5600 2600
$Comp
L SamacSys_Parts:SN74LVC1G3157DBVR SW1
U 1 1 5FBF6F95
P 7000 3150
F 0 "SW1" H 7500 3415 50  0000 C CNN
F 1 "SN74LVC1G3157DBVR" H 7500 3324 50  0000 C CNN
F 2 "0_mouser:SOT95P280X145-6N" H 7850 3250 50  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74lvc1g3157" H 7850 3150 50  0001 L CNN
F 4 "IC SWITCH SPDT SOT23-6" H 7850 3050 50  0001 L CNN "Description"
F 5 "1.45" H 7850 2950 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 7850 2850 50  0001 L CNN "Manufacturer_Name"
F 7 "SN74LVC1G3157DBVR" H 7850 2750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "SN74LVC1G3157DBVR" H 7850 2650 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/sn74lvc1g3157dbvr/texas-instruments" H 7850 2550 50  0001 L CNN "Arrow Price/Stock"
F 10 "595-SN74LVC1G3157DBV" H 7850 2450 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74LVC1G3157DBVR?qs=PVVDbbWpW3ID6l2sElWeMw%3D%3D" H 7850 2350 50  0001 L CNN "Mouser Price/Stock"
F 12 "296-14908-1-ND" H 7000 3150 50  0001 C CNN "Digi-Key Part Number"
	1    7000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3250 8250 3200
Text GLabel 8250 3200 1    50   Input ~ 0
VF
Wire Wire Line
	8000 2000 8150 2000
Wire Wire Line
	8000 3250 8250 3250
Wire Wire Line
	8000 3350 8150 3350
Wire Wire Line
	8050 2800 8050 3150
Wire Wire Line
	8050 3150 8000 3150
$Comp
L power:GND #PWR09
U 1 1 5FC79D07
P 6950 3400
F 0 "#PWR09" H 6950 3150 50  0001 C CNN
F 1 "GND" H 6955 3227 50  0001 C CNN
F 2 "" H 6950 3400 50  0001 C CNN
F 3 "" H 6950 3400 50  0001 C CNN
	1    6950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3400 6950 3250
Wire Wire Line
	6950 3250 7000 3250
Text Label 6500 3150 2    50   ~ 0
UPDI-KEY
Text Label 7050 1500 0    50   ~ 0
12V
$Comp
L Device:R_Small_US R3
U 1 1 5FD033D9
P 4700 3750
F 0 "R3" V 4600 3700 50  0000 L CNN
F 1 "10K" V 4800 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 3750 50  0001 C CNN
F 3 "http://www.koaspeer.com/pdfs/RK73B.pdf" H 4700 3750 50  0001 C CNN
F 4 "RES 10K OHM 5% 1/10W 0603" H 4700 3750 50  0001 C CNN "Description"
F 5 "Yageo" H 4700 3750 50  0001 C CNN "Manufacturer_Name"
F 6 "RK73B1JTTD103J" H 4700 3750 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "2019-RK73B1JTTD103JCT-ND" H 4700 3750 50  0001 C CNN "Digi-Key Part Number"
	1    4700 3750
	0    -1   1    0   
$EndComp
Wire Wire Line
	2850 2500 3750 2500
$Comp
L power:GND #PWR03
U 1 1 5FD39EEF
P 3750 4200
F 0 "#PWR03" H 3750 3950 50  0001 C CNN
F 1 "GND" H 3755 4027 50  0001 C CNN
F 2 "" H 3750 4200 50  0001 C CNN
F 3 "" H 3750 4200 50  0001 C CNN
	1    3750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4150 3750 4200
Wire Wire Line
	3750 2500 3750 3750
Wire Wire Line
	6600 3350 7000 3350
Text Label 6500 3750 2    50   ~ 0
UPDI-HOST
Wire Wire Line
	8550 5050 8750 5050
Text Label 8550 5050 2    50   ~ 0
UPDI-HOST
Text Label 3300 5300 2    50   ~ 0
PWR-SW-EN
$Comp
L SamacSys_Parts:PTS810SJG250SMTRLFS SW3
U 1 1 5F819419
P 2500 3900
F 0 "SW3" H 2300 3850 50  0000 C CNN
F 1 "PTS810SJG250SMTRLFS" H 3100 4074 50  0001 C CNN
F 2 "0_mouser:PTS810SJG250SMTRLFS" H 3550 4000 50  0001 L CNN
F 3 "https://dznh3ojzb2azq.cloudfront.net/products/Tactile/PTS810/documents/datasheet.pdf" H 3550 3900 50  0001 L CNN
F 4 "SWITCH TACTILE SPST-NO 0.05A 16V" H 3550 3800 50  0001 L CNN "Description"
F 5 "2.7" H 3550 3700 50  0001 L CNN "Height"
F 6 "C & K COMPONENTS" H 3550 3600 50  0001 L CNN "Manufacturer_Name"
F 7 "PTS810SJG250SMTRLFS" H 3550 3500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3550 3400 50  0001 L CNN "Arrow Part Number"
F 9 "" H 3550 3300 50  0001 L CNN "Arrow Price/Stock"
F 10 "611-PTS810SJG250SMTR" H 3550 3200 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/CK/PTS810SJG250SMTRLFS?qs=UxeAxwACbqndUPIQjZosiw%3D%3D" H 3550 3100 50  0001 L CNN "Mouser Price/Stock"
F 12 "CKN10504CT-ND" H 2500 3900 50  0001 C CNN "Digi-Key Part Number"
	1    2500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3900 3750 3900
Wire Wire Line
	2450 3750 2450 3900
Wire Wire Line
	2450 3900 2500 3900
Wire Wire Line
	2500 4000 2450 4000
Wire Wire Line
	2450 4000 2450 4150
Wire Wire Line
	2450 4150 3750 4150
Wire Wire Line
	3750 4150 3750 4000
Wire Wire Line
	3750 4000 3700 4000
Wire Wire Line
	3750 3900 3750 3750
Wire Wire Line
	3750 3750 2450 3750
Connection ~ 3750 4150
$Comp
L SamacSys_Parts:MIC2091-1YM5-TR U3
U 1 1 5F8424F9
P 4350 5100
F 0 "U3" H 4950 5365 50  0000 C CNN
F 1 "MIC2091-1YM5-TR" H 4950 5274 50  0000 C CNN
F 2 "0_mouser:SOT95P280X130-5N" H 5400 5200 50  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en579481" H 5400 5100 50  0001 L CNN
F 4 "MICROCHIP - MIC2091-1YM5-TR - POWER SWITCH, 100MA, SOT23-5" H 5400 5000 50  0001 L CNN "Description"
F 5 "1.3" H 5400 4900 50  0001 L CNN "Height"
F 6 "Microchip" H 5400 4800 50  0001 L CNN "Manufacturer_Name"
F 7 "MIC2091-1YM5-TR" H 5400 4700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "MIC2091-1YM5-TR" H 5400 4600 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/mic2091-1ym5-tr/microchip-technology" H 5400 4500 50  0001 L CNN "Arrow Price/Stock"
F 10 "998-MIC2091-1YM5TR" H 5400 4400 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Micrel/MIC2091-1YM5-TR?qs=Y3Q3JoKAO1RvtmzBukqSAw%3D%3D" H 5400 4300 50  0001 L CNN "Mouser Price/Stock"
F 12 "576-3891-1-ND" H 4350 5100 50  0001 C CNN "Digi-Key Part Number"
	1    4350 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F892172
P 4150 5500
F 0 "C8" H 4175 5575 50  0000 L CNN
F 1 "0.1µF" H 3900 5400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4150 5500 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10B104KB8NNNC.jsp" H 4150 5500 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0603" H 4150 5500 50  0001 C CNN "Description"
F 5 " ‎Samsung Electro-Mechanics" H 4150 5500 50  0001 C CNN "Manufacturer_Name"
F 6 "CL10B104KB8NNNC" H 4150 5500 50  0001 C CNN "Manufacturer_Part_Number"
F 7 "1276-1000-1-ND" H 4150 5500 50  0001 C CNN "Digi-Key Part Number"
	1    4150 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 5650 4150 5600
Wire Wire Line
	3950 5650 4150 5650
Wire Wire Line
	4150 5650 4300 5650
Connection ~ 4150 5650
Wire Wire Line
	4150 5400 4150 5100
Wire Wire Line
	3950 5100 4150 5100
Wire Wire Line
	4150 5100 4350 5100
Connection ~ 4150 5100
Wire Wire Line
	5550 5200 5650 5200
Connection ~ 5650 5200
Wire Wire Line
	8150 2150 8150 2000
Wire Wire Line
	8150 2350 8150 3350
Wire Wire Line
	8000 1900 9100 1900
Text Notes 2700 3700 0    50   ~ 0
RE-UPDIFY
NoConn ~ 5550 5100
$Comp
L Device:L_Small L1
U 1 1 5F82A465
P 4600 1500
F 0 "L1" V 4785 1500 50  0000 C CNN
F 1 "47µH" V 4694 1500 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 4600 1500 50  0001 C CNN
F 3 "~https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=CBC2518T470K%20%20&u=M" H 4600 1500 50  0001 C CNN
F 4 "FIXED IND 47UH 290MA 2.47 OHM" H 4600 1500 50  0001 C CNN "Description"
F 5 "587-3060-1-ND" H 4600 1500 50  0001 C CNN "Digi-Key Part Number"
F 6 "CBC2518T470K" H 4600 1500 50  0001 C CNN "Manufacturer_Part_Number"
	1    4600 1500
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5F8C7336
P 5450 7650
F 0 "FID3" H 5535 7696 50  0000 L CNN
F 1 "Fiducial" H 5535 7605 50  0001 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 5450 7650 50  0001 C CNN
F 3 "" H 5450 7650 50  0001 C CNN
F 4 "Fiducial 1mm with 2mm mask" H 5450 7650 50  0001 C CNN "Description"
	1    5450 7650
	1    0    0    -1  
$EndComp
NoConn ~ 9250 5150
NoConn ~ 8750 5250
NoConn ~ 8750 5800
NoConn ~ 9250 5700
Wire Wire Line
	6950 1800 6950 2350
Connection ~ 8050 2800
$Comp
L power:GND #PWR0101
U 1 1 5F88BE39
P 9300 3000
F 0 "#PWR0101" H 9300 2750 50  0001 C CNN
F 1 "GND" H 9305 2827 50  0001 C CNN
F 2 "" H 9300 3000 50  0001 C CNN
F 3 "" H 9300 3000 50  0001 C CNN
	1    9300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3000 9300 2800
Wire Wire Line
	9300 2800 9200 2800
$Comp
L Device:LED_ALT HV1
U 1 1 5F5C966F
P 9050 2800
F 0 "HV1" H 9050 2700 50  0000 C CNN
F 1 "ORANGE" H 9043 2925 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9050 2800 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/APTD1608SECK-J4-PF.pdf" H 9050 2800 50  0001 C CNN
F 4 "LED ORANGE CLEAR 0603 (1608 Metric)" H 9050 2800 50  0001 C CNN "Description"
F 5 "APTD1608SECK/J4-PF" H 9050 2800 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "754-1802-1-ND" H 9050 2800 50  0001 C CNN "Digi-Key Part Number"
	1    9050 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2800 8050 2800
Wire Wire Line
	8050 2800 8600 2800
$Comp
L Mechanical:Fiducial FID4
U 1 1 5F88A9EF
P 5450 7800
F 0 "FID4" H 5535 7846 50  0000 L CNN
F 1 "Fiducial" H 5535 7755 50  0001 L CNN
F 2 "Fiducial:Fiducial_1mm_Mask2mm" H 5450 7800 50  0001 C CNN
F 3 "" H 5450 7800 50  0001 C CNN
F 4 "Fiducial 1mm with 2mm mask" H 5450 7800 50  0001 C CNN "Description"
	1    5450 7800
	1    0    0    -1  
$EndComp
Text Label 8750 5150 2    50   ~ 0
PROG
Wire Wire Line
	6600 3350 6600 3750
Wire Wire Line
	4800 3750 6600 3750
Connection ~ 6600 3750
Wire Wire Line
	6600 3750 6600 4050
Wire Wire Line
	3750 3750 4600 3750
Connection ~ 3750 3750
Wire Wire Line
	3550 2600 3550 3150
Wire Wire Line
	3550 3150 7000 3150
Wire Wire Line
	2850 2600 3550 2600
Text GLabel 8650 5700 0    50   Input ~ 0
VTG
Wire Wire Line
	8650 5700 8750 5700
Wire Wire Line
	3300 5300 3550 5300
Wire Wire Line
	3950 5650 3550 5650
Wire Wire Line
	3550 5650 3550 5600
Wire Wire Line
	3550 5400 3550 5300
Connection ~ 3550 5300
Wire Wire Line
	3550 5300 4350 5300
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5F60EDA6
P 8950 5150
F 0 "J3" H 9000 5375 50  0000 C CNN
F 1 "UPDI_IN6" H 9000 4925 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8950 5150 50  0001 C CNN
F 3 "~" H 8950 5150 50  0001 C CNN
F 4 "Pin header, male, 2.54mm, 6-position" H 8950 5150 50  0001 C CNN "Description"
	1    8950 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
