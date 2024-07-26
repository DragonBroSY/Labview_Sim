$DISPLAY "Auxiliary FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Button font=98 startx=114 starty=505 endx=308 endy=579
PHASE printer_reset_ATP setvalue=-1 onlabel="Printer\nReset" offlabel="Printer\nReset" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Box font=101 startx=320 starty=53 endx=1513 endy=939
style=1
linewidth=5 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=322 starty=89 endx=1512 endy=90
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=324 starty=454 endx=681 endy=457
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=324 starty=632 endx=682 endy=635
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=333 starty=674 endx=633 endy=866
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
B25 type="FLOAT" width=6 prec=2 label="2.5 Bld" units="default" 
LPCSVA type="FLOAT" width=6 prec=2 label="LPC SVA" units="default" 
HPCSVA type="FLOAT" width=6 prec=2 label="HPC SVA" units="default" 
HPCBVPOS type="FLOAT" width=6 prec=2 label="HPC BV" units="default" 
EEC_TLA type="FLOAT" width=6 prec=3 label="TLA" units="default" 
TRA_Actual type="FLOAT" width=6 prec=2 label="TRA Actual" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=334 starty=100 endx=700 endy=440
labelspace=7 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
P2_Avg type="FLOAT" width=6 prec=3 label="P2 (Avg)" units="default" 
P2ENG type="FLOAT" width=6 prec=3 label="P2 (ENG)" units="default" 
EEC_P2 type="FLOAT" width=6 prec=3 label="P2 (SEL)" units="default" 
EEC_P25 type="FLOAT" width=6 prec=2 label="P2.5 (EEC)" units="default" 
PECSL type="FLOAT" width=6 prec=2 label="LP (EEC)" units="default" 
PECSH type="FLOAT" width=6 prec=2 label="HP (EEC)" units="default" 
EEC_PB type="FLOAT" width=6 prec=2 label="PB (EEC)" units="default" 
POILAC type="FLOAT" width=6 prec=1 label="MOP (EEC)" units="default" 
AOP type="FLOAT" width=6 prec=1 label="FGB Ax MOP" units="default" 
OFDP type="FLOAT" width=6 prec=1 label="Oil Filter Diff" units="default" 
$END-OBJECT
***********
$OBJECT Button font=98 displayflag=EngineNotRunning startx=343 starty=547 endx=537 endy=621
PHASE ZeroPSI_ATP setvalue=-1 onlabel="PSI Zero Pressure\nCalibration" offlabel="PSI Zero Pressure\nCalibration" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=98 startx=345 starty=465 endx=539 endy=539
PHASE WeatherStaReset_ATP setvalue=-1 onlabel="Weather Station\nReset" offlabel="Weather Station\nReset" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=101 startx=367 starty=871 endx=637 endy=931
TOGGLE Blink_TB setvalue=-1 onlabel="Turn Blinking ON" offlabel="Turn Blinking OFF" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=103 startx=431 starty=637 endx=571 endy=667
Blue direction=1 alignment=0
"EEC DATA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=434 starty=61 endx=581 endy=91
Blue direction=1 alignment=0
"PRESSURES"
$END-OBJECT
***********
$OBJECT Buttonobj font=101 startx=547 starty=508 endx=668 endy=590
parameter=Corr_Sync_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=Black
defaultstate=0
$STATE 1
label="SI Start\nSYNC"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$INITCALC
Corr_Sync_O:	ON
dummy:	storeevent ("SI Start Sync...")
$END-CALC
$CALC
Corr_Sync_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="SI Start\nSYNC"
oncolor=Cyan
$CALC
Corr_Sync_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Line font=101 startx=681 starty=57 endx=684 endy=937
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=685 starty=384 endx=1097 endy=387
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=699 starty=3 endx=1071 endy=49
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=706 starty=95 endx=1095 endy=333
labelspace=8 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
T2E type="FLOAT" width=6 prec=1 label="T2 (EEC)" units="default" 
EEC_T25 type="FLOAT" width=6 prec=1 label="T2.5 (EEC)" units="default" 
EEC_T3 type="FLOAT" width=6 prec=1 label="T3 (EEC)" units="default" 
EEC_T5 type="FLOAT" width=6 prec=1 label="T5 (EEC)" units="default" 
EEC_ITT type="FLOAT" width=6 prec=1 label="ITT (EEC)" units="default" 
FMUFT type="FLOAT" width=6 prec=1 label="FMU FuelT" units="default" 
TOILAC type="FLOAT" width=6 prec=1 label="MOT (EEC)" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=711 starty=394 endx=1081 endy=424
Blue direction=1 alignment=1
"Trim Balance Vibration Info "
$END-OBJECT
***********
$OBJECT Text font=98 startx=711 starty=825 endx=1081 endy=865
Yellow direction=1 alignment=1
"NOTE: * FOR BEST POSSIBLE SOLUTION"
"USE BAND D DATA ONLY"
$END-OBJECT
***********
$OBJECT Button font=101 startx=712 starty=871 endx=1077 endy=931
TOGGLE Lbl242PCell_F setvalue=-1 onlabel="Use PCellF for EEC PT2 ON" offlabel="Use PBar for EEC PT2 OFF" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=96 startx=725 starty=6 endx=1035 endy=45
BurntOrange direction=1 alignment=0
"AUXILIARY DATA"
$END-OBJECT
***********
$OBJECT String font=97 startx=756 starty=605 endx=818 endy=624
BandA_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band A"
Black = OFF "Band A"
$END-OBJECT
***********
$OBJECT String font=97 startx=756 starty=633 endx=815 endy=652
BandB_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band B"
Black = OFF "Band B"
$END-OBJECT
***********
$OBJECT String font=97 startx=756 starty=662 endx=816 endy=681
BandC_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band C"
Black = OFF "Band C"
$END-OBJECT
***********
$OBJECT String font=97 startx=756 starty=690 endx=817 endy=709
BandD_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band D"
Black = OFF "Band D"
$END-OBJECT
***********
$OBJECT String font=97 startx=756 starty=719 endx=817 endy=738
BandO_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Other"
Black = OFF "Other"
$END-OBJECT
***********
$OBJECT Button font=100 startx=757 starty=755 endx=1035 endy=819
PHASE storeTrimBalData_ATP setvalue=-1 onlabel="Store Performance\nTrim Balance Data" offlabel="Store Performance\nTrim Balance Data" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Digital font=97 startx=764 starty=477 endx=995 endy=561
labelspace=6 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNF type="FLOAT" width=5 prec=2 label="NF Amp" units="default" 
FANWGT type="FLOAT" width=5 prec=0 label="Magnitude" units="default" 
FANANG type="FLOAT" width=5 prec=0 label="Angle" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=791 starty=59 endx=1008 endy=89
Blue direction=1 alignment=0
"TEMPERATURES"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=829 starty=603 endx=884 endy=743
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANWGT_A type="FLOAT" width=5 prec=0 label="Band A" 
FANWGT_B type="FLOAT" width=5 prec=0 label="Band B" 
FANWGT_C type="FLOAT" width=5 prec=0 label="Band C" 
FANWGT_D type="FLOAT" width=5 prec=0 label="Band D" 
FANWGT_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=836 starty=570 endx=953 endy=602
Yellow direction=1 alignment=0
" Mag    Angle"
"OZ-IN    Deg"
$END-OBJECT
***********
$OBJECT Text font=98 startx=852 starty=434 endx=928 endy=474
Yellow direction=1 alignment=1
"E-Flange"
"FAN"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=901 starty=603 endx=956 endy=743
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANANG_A type="FLOAT" width=5 prec=0 label="Band A" 
FANANG_B type="FLOAT" width=5 prec=0 label="Band B" 
FANANG_C type="FLOAT" width=5 prec=0 label="Band C" 
FANANG_D type="FLOAT" width=5 prec=0 label="Band D" 
FANANG_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=966 starty=689 endx=977 endy=716
Yellow direction=1 alignment=0
"*"
$END-OBJECT
***********
$OBJECT Line font=101 startx=1097 starty=58 endx=1100 endy=936
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=1098 starty=733 endx=1512 endy=736
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=1099 starty=858 endx=1513 endy=861
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1129 starty=100 endx=1448 endy=730
labelspace=8 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FnMeasure type="FLOAT" width=7 prec=1 label="default" units="default" 
FnMeasure2 type="FLOAT" width=7 prec=1 label="default" units="default" 
PBarPSIA type="FLOAT" width=6 prec=3 label="PBar   " units="default" 
PCellFPSIA type="FLOAT" width=6 prec=3 label="PCell Front" units="default" 
PCellRPSIA type="FLOAT" width=6 prec=3 label="PCell Rear" units="default" 
OATDegC type="FLOAT" width=6 prec=1 label="OAT C" units="default" 
OAT type="FLOAT" width=6 prec=1 label="OAT F" units="default" 
CITDegC type="FLOAT" width=6 prec=1 label="CIT C" units="default" 
CITDegF type="FLOAT" width=6 prec=1 label="CIT F" units="default" 
CIT_ValidProbes type="INTEGER" width=4 prec=0 label="CIT Probes" units="default" 
RelHum type="FLOAT" width=6 prec=2 label="Rel Humidity" units="default" 
FIP_PSIG type="FLOAT" width=6 prec=1 label="Fuel Inlet" units="default" 
FuelTempMeter type="FLOAT" width=6 prec=1 label="Fuel Temp" units="default" 
FSG type="FLOAT" width=6 prec=3 label="Fuel Sp. Gr." units="default" 
FuelFilterDiff type="FLOAT" width=6 prec=1 label="Fuel Filter" units="default" 
TotalFuelUsed type="FLOAT" width=6 prec=1 label="Fuel Used" units="default" 
WfIS type="FLOAT" width=7 prec=1 label="Wf Pri" units="default" 
WfVS type="FLOAT" width=7 prec=1 label="Wf Sec" units="default" 
WfS type="FLOAT" width=7 prec=1 label="Wf Avg" units="default" 
WFDiff type="FLOAT" width=7 prec=1 label="Wf Spread" units="default" 
StoredAir type="FLOAT" width=6 prec=1 label="Stored Air" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1129 starty=874 endx=1512 endy=902
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SigOilConsRateNG type="FLOAT" width=5 prec=3 label="Oil Consumption:" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=1131 starty=748 endx=1421 endy=778
Blue direction=1 alignment=0
"ITT Overtemperature"
$END-OBJECT
***********
$OBJECT Text font=2 startx=1133 starty=784 endx=1403 endy=800
Yellow direction=1 alignment=0
"AREA  ITT    MAX          TIME"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1135 starty=810 endx=1221 endy=838
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTRunPk type="FLOAT" width=4 prec=0 label="(A)" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1234 starty=809 endx=1358 endy=837
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTRunMxRLim type="FLOAT" width=4 prec=0 units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=1249 starty=61 endx=1374 endy=91
Blue direction=1 alignment=0
"FACILITY"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1348 starty=808 endx=1453 endy=836
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTRunMxTmr type="FLOAT" width=4 prec=0 label="A" units="default" 
$END-OBJECT
***********
$END-DISPLAY

