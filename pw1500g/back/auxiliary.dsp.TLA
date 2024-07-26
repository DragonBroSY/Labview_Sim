$DISPLAY "Auxiliary" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
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
$OBJECT Digital font=100 startx=14 starty=624 endx=314 endy=708
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
B25 type="FLOAT" width=6 prec=2 label="2.5 Bld" units="default" 
LPCSVA type="FLOAT" width=6 prec=2 label="LPC SVA" units="default" 
TLA_Actual type="FLOAT" width=6 prec=2 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=15 starty=50 endx=381 endy=390
labelspace=7 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
P2_Avg type="FLOAT" width=6 prec=2 label="P2 (Avg)" units="default" 
P2ENG type="FLOAT" width=6 prec=2 label="P2 (ENG)" units="default" 
EEC_P25 type="FLOAT" width=6 prec=2 label="P2.5 (EEC)" units="default" 
PECSL type="FLOAT" width=6 prec=2 label="LP (EEC)" units="default" 
PECSH type="FLOAT" width=6 prec=2 label="HP (EEC)" units="default" 
EEC_PB type="FLOAT" width=6 prec=2 label="PB (EEC)" units="default" 
Sump type="FLOAT" width=6 prec=2 label="Breather" units="default" 
BearScav type="FLOAT" width=6 prec=2 label="#3 Brg P" units="default" 
MOP_PSIG type="FLOAT" width=6 prec=1 label="MOP" units="default" 
ScanFilterDiff type="FLOAT" width=6 prec=1 label="Filter Diff" units="default" 
$END-OBJECT
***********
$OBJECT Line font=1 startx=15 starty=420 endx=361 endy=424
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Button font=97 displayflag=EngineNotRunning startx=78 starty=498 endx=272 endy=572
PHASE ZeroPSI_ATP setvalue=-1 onlabel="PSI Zero Pressure\nCalibration" offlabel="PSI Zero Pressure\nCalibration" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=103 startx=97 starty=432 endx=270 endy=462
Blue direction=1 alignment=0
"EEC Mod EPR"
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
$OBJECT Line font=101 startx=362 starty=7 endx=365 endy=837
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=364 starty=626 endx=781 endy=629
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=101 startx=387 starty=45 endx=776 endy=351
labelspace=8 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
T2E type="FLOAT" width=6 prec=1 label="T2 (EEC)" units="default" 
T2E type="FLOAT" width=6 prec=1 label="T2 (EEC)" units="default" 
EEC_T25 type="FLOAT" width=6 prec=1 label="T2.5 (EEC)" units="default" 
EEC_T3 type="FLOAT" width=6 prec=1 label="T3 (EEC)" units="default" 
EEC_T45 type="FLOAT" width=6 prec=1 label="T45 (EEC)" units="default" 
EEC_EGT type="FLOAT" width=6 prec=1 label="EGT (EEC)" units="default" 
FMUFT type="FLOAT" width=6 prec=1 label="FMU FuelT" units="default" 
TOILAC type="FLOAT" width=6 prec=1 label="MOT (EEC)" units="default" 
TOILAC type="FLOAT" width=6 prec=1 label="#3 Brg Scav" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=396 starty=640 endx=758 endy=700
Blue direction=1 alignment=0
"Trim Balance Vibration Info"
"             Inlet   Turb. "
$END-OBJECT
***********
$OBJECT Digital font=97 startx=404 starty=724 endx=587 endy=820
labelspace=6 unitspace=2 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFAmp type="FLOAT" width=5 prec=2 label="N1 Amp" units="" 
VibFPhs type="FLOAT" width=5 prec=0 label="N1 Phs" units="" 
VibFBB type="FLOAT" width=5 prec=2 label="BroadBand" units="" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=472 starty=9 endx=689 endy=39
Blue direction=1 alignment=0
"TEMPERATURES"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=590 starty=724 endx=725 endy=820
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRAmp type="FLOAT" width=5 prec=2 label="" units="default" 
VibRPhs type="FLOAT" width=5 prec=0 label="" units="default" 
VibRBB type="FLOAT" width=5 prec=2 label="" units="default" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=780 starty=8 endx=783 endy=833
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=783 starty=626 endx=1180 endy=629
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=810 starty=50 endx=1129 endy=620
labelspace=8 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
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
WFM_WFV type="FLOAT" width=7 prec=1 label="Wf Spread" units="default" 
StoredAir type="FLOAT" width=6 prec=1 label="Stored Air" units="default" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=810 starty=680 endx=1080 endy=696
Yellow direction=1 alignment=0
"AREA  EGT    MAX          TIME"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=810 starty=700 endx=896 endy=728
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EGTRunPk type="FLOAT" width=4 prec=0 label="(A)" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=850 starty=640 endx=1140 endy=670
Blue direction=1 alignment=0
"EGT Overtemperature"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=915 starty=700 endx=1039 endy=728
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EGTRunMxRLim type="FLOAT" width=4 prec=0 units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=930 starty=11 endx=1055 endy=41
Blue direction=1 alignment=0
"FACILITY"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1035 starty=700 endx=1140 endy=728
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EGTRunMxTmr type="FLOAT" width=4 prec=0 label="A" units="default" 
$END-OBJECT
***********
$END-DISPLAY

