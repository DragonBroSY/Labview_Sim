$DISPLAY "Auxiliary" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Line font=1 startx=7 starty=405 endx=361 endy=408
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=8 starty=37 endx=1190 endy=38
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=9 starty=6 endx=1190 endy=10
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=9 starty=583 endx=362 endy=586
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=14 starty=624 endx=314 endy=816
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
B25 type="FLOAT" width=6 prec=2 label="2.5 Bld" units="default" 
LPCSVA type="FLOAT" width=6 prec=2 label="LPC SVA" units="default" 
HPCSVA type="FLOAT" width=6 prec=2 label="HPC SVA" units="default" 
HPCBVPOS type="FLOAT" width=6 prec=2 label="HPC BV" units="default" 
EEC_TLA type="FLOAT" width=6 prec=3 label="TLA" units="default" 
TRA_Actual type="FLOAT" width=6 prec=2 label="TRA Actual" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=15 starty=50 endx=381 endy=356
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
$END-OBJECT
***********
$OBJECT Button font=101 startx=51 starty=825 endx=321 endy=885
TOGGLE Blink_TB setvalue=-1 onlabel="Turn Blinking ON" offlabel="Turn Blinking OFF" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=97 displayflag=EngineNotRunning startx=78 starty=498 endx=272 endy=572
PHASE ZeroPSI_ATP setvalue=-1 onlabel="PSI Zero Pressure\nCalibration" offlabel="PSI Zero Pressure\nCalibration" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=80 starty=416 endx=274 endy=490
PHASE WeatherStaReset_ATP setvalue=-1 onlabel="Weather Station\nReset" offlabel="Weather Station\nReset" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=103 startx=112 starty=587 endx=252 endy=617
Blue direction=1 alignment=0
"EEC DATA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=115 starty=11 endx=262 endy=41
Blue direction=1 alignment=0
"PRESSURES"
$END-OBJECT
***********
$OBJECT Line font=101 startx=362 starty=7 endx=365 endy=887
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=366 starty=334 endx=778 endy=337
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=101 startx=387 starty=45 endx=776 endy=283
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
$OBJECT Text font=103 startx=392 starty=344 endx=762 endy=374
Blue direction=1 alignment=1
"Trim Balance Vibration Info "
$END-OBJECT
***********
$OBJECT Text font=98 startx=392 starty=775 endx=762 endy=815
Yellow direction=1 alignment=1
"NOTE: * FOR BEST POSSIBLE SOLUTION"
"USE BAND D DATA ONLY"
$END-OBJECT
***********
$OBJECT Button font=101 startx=393 starty=821 endx=758 endy=881
TOGGLE Lbl242PCell_F setvalue=1 onlabel="Use PCellF for EEC PT2 ON" offlabel="Use PBar for EEC PT2 OFF" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT String font=97 startx=437 starty=555 endx=499 endy=574
BandA_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band A"
Black = OFF "Band A"
$END-OBJECT
***********
$OBJECT String font=97 startx=437 starty=583 endx=496 endy=602
BandB_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band B"
Black = OFF "Band B"
$END-OBJECT
***********
$OBJECT String font=97 startx=437 starty=612 endx=497 endy=631
BandC_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band C"
Black = OFF "Band C"
$END-OBJECT
***********
$OBJECT String font=97 startx=437 starty=640 endx=498 endy=659
BandD_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band D"
Black = OFF "Band D"
$END-OBJECT
***********
$OBJECT String font=97 startx=437 starty=669 endx=498 endy=688
BandO_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Other"
Black = OFF "Other"
$END-OBJECT
***********
$OBJECT Button font=100 startx=438 starty=705 endx=716 endy=769
PHASE storeTrimBalData_ATP setvalue=-1 onlabel="Store Performance\nTrim Balance Data" offlabel="Store Performance\nTrim Balance Data" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Digital font=97 startx=445 starty=427 endx=676 endy=511
labelspace=6 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNF type="FLOAT" width=5 prec=2 label="NF Amp" units="default" 
FANWGT type="FLOAT" width=5 prec=0 label="Magnitude" units="default" 
FANANG type="FLOAT" width=5 prec=0 label="Angle" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=472 starty=9 endx=689 endy=39
Blue direction=1 alignment=0
"TEMPERATURES"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=510 starty=553 endx=565 endy=693
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANWGT_A type="FLOAT" width=5 prec=0 label="Band A" 
FANWGT_B type="FLOAT" width=5 prec=0 label="Band B" 
FANWGT_C type="FLOAT" width=5 prec=0 label="Band C" 
FANWGT_D type="FLOAT" width=5 prec=0 label="Band D" 
FANWGT_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=517 starty=520 endx=634 endy=552
Yellow direction=1 alignment=0
" Mag    Angle"
"OZ-IN    Deg"
$END-OBJECT
***********
$OBJECT Text font=98 startx=533 starty=384 endx=609 endy=424
Yellow direction=1 alignment=1
"E-Flange"
"FAN"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=582 starty=553 endx=637 endy=693
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANANG_A type="FLOAT" width=5 prec=0 label="Band A" 
FANANG_B type="FLOAT" width=5 prec=0 label="Band B" 
FANANG_C type="FLOAT" width=5 prec=0 label="Band C" 
FANANG_D type="FLOAT" width=5 prec=0 label="Band D" 
FANANG_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=647 starty=639 endx=658 endy=666
Yellow direction=1 alignment=0
"*"
$END-OBJECT
***********
$OBJECT Line font=101 startx=778 starty=8 endx=781 endy=881
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=779 starty=683 endx=1178 endy=686
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=780 starty=808 endx=1181 endy=811
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=810 starty=50 endx=1129 endy=680
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
$OBJECT Digital font=100 startx=810 starty=824 endx=1193 endy=852
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SigOilConsRateNG type="FLOAT" width=5 prec=3 label="Oil Consumption:" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=812 starty=698 endx=1102 endy=728
Blue direction=1 alignment=0
"ITT Overtemperature"
$END-OBJECT
***********
$OBJECT Text font=2 startx=814 starty=734 endx=1084 endy=750
Yellow direction=1 alignment=0
"AREA  ITT    MAX          TIME"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=816 starty=760 endx=902 endy=788
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTRunPk type="FLOAT" width=4 prec=0 label="(A)" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=915 starty=759 endx=1039 endy=787
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTRunMxRLim type="FLOAT" width=4 prec=0 units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=930 starty=11 endx=1055 endy=41
Blue direction=1 alignment=0
"FACILITY"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1029 starty=758 endx=1134 endy=786
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTRunMxTmr type="FLOAT" width=4 prec=0 label="A" units="default" 
$END-OBJECT
***********
$END-DISPLAY

