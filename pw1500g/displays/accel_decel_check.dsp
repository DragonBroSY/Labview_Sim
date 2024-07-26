$DISPLAY "Accel Decel Check" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#C ***** Equation 7 *******************************
FNTR2_TO:Lbs    FnAMin
FNTR2_Ref:%     AccelFNTR2
FNTR2_ACC:Lbs   (FNTR2_Ref * FNTR2_TO)
FNTR2_ACCMx:Lbs (FNTR2_ACC + 50.0)
#C ***** Equation 8 *******************************
#if     (FNTR2DecelNom < FnAMin)
FNTR2_TODEC:Lbs FnAMin
#else
FNTR2_TODEC:Lbs FNTR2DecelNom
#endif
FNTR2_Ref:%     DecelFNTR2
FNTR2_DEC:Lbs   (FNTR2_TODEC - (FNTR2_Ref * (FNTR2_TODEC - FNTR2Mx_MI)))
FNTR2_DECMx:lbs (FNTR2_DEC - 50.0)
#C ***************** Parameters *********************
N1C2D_AC:RPM	N1C2D
ITT_AC:DegC	EEC_ITT
#C FNTR2_AC:Lbs ((FnMeasure / DeltaP2) + dFNTR2_Cell) # Moved to corrections for faster response. (DJR 2/25/21)
#C ***************** ACCEL *************************
#C ArmAccelDecel_F: (ArmAccel_F | ArmDecel_F)
#if	((ArmAccel_F | ArmDecel_F) & ~ArmAccelDecel_F)
ArmAccelDecel_F:	ON
#elseif	(~ArmAccel_F & ~ArmDecel_F & ArmAccelDecel_F & ~AccelDecel_TS)
ArmAccelDecel_F:	OFF
#endif	
#if	(ArmAccel_F & AccelTmr_F)
MaxITT_AC:DegC	max (MaxITT_AC ITT_AC)
#endif	
#C ********************************************************
#if	(ArmAccelDecel_F & (AccelStage > 0))
dummy:	startautotest (AccelCheck_ATP)
#elseif	(ArmAccelDecel_F & (AccelStage = 0))
dummy:	StoreEvent ("Accel/Decel Check (Started)")
AccelStage:	1
AccelStep:	1
StageTmr:Sec	0.0
StageTmr_F:	OFF
StepTxt:	concat ("Step " AccelStep)
StepTxt:	concat (StepTxt ": ")
AccelStageTxt:	concat (StepTxt "Accel/Decel Check (Started)...")
#endif	
#if	((StageTmr >= StageTmrLim) & AutoThrottle_F & (Accel_F | Decel_F) & ArmAccelDecel_F)
StageTmr_F:	OFF
Accel_F:	OFF
Decel_F:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Line font=1 startx=16 starty=328 endx=1178 endy=334
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=17 starty=130 endx=1179 endy=136
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=18 starty=507 endx=1180 endy=513
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=101 startx=21 starty=800 endx=1203 endy=801
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=92 startx=22 starty=773 endx=306 endy=798
AccelStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Bar font=102 startx=32 starty=524 endx=1185 endy=588
labelspace=4 unitspace=0 labelcolor=Black length=891 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
FNTR2_AC label="FNTR2" units="default" min=0 max=25000 ticinter=1000 labelinter=2
$END-OBJECT
***********
$OBJECT Digital font=103 startx=33 starty=285 endx=363 endy=322
labelspace=10 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
strAccelTm type="FLOAT" width=5 prec=1 label="Accel Time to 97%" 
$END-OBJECT
***********
$OBJECT Buttonobj font=102 startx=107 starty=598 endx=372 endy=737
parameter=ArmAccel_F type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Accel Timer"
$END-PANEL
defaultstate=0
$STATE 0
label="Not Armed"
oncolor=Magenta
$END-STATE
$STATE 1
label="Armed"
oncolor=Green
$INTERLOCK
~ArmDecel_F
$END-INTERLOCK
$INITCALC
MaxITT_AC:DegC	0.0
dummy:	StoreEvent ("Accel Armed")
dummy:	startautotest(ClearVibPeaks_ATP)
dummy:	startautotest(ClearDVibPeaks_ATP)
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Box font=101 startx=110 starty=29 endx=538 endy=91
style=2
boxcolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=104 startx=133 starty=41 endx=508 endy=80
BurntOrange direction=1 alignment=0
"ACCEL/DECEL CHECK"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=139 starty=180 endx=569 endy=217
labelspace=10 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNTR2_ACC type="FLOAT" width=5 prec=0 label="Accel 97% Thrust" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=158 starty=394 endx=302 endy=502
labelspace=3 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNFPk type="FLOAT" width=5 prec=2 label="NF" 
VibFN1Pk type="FLOAT" width=5 prec=2 label="N1" 
VibFN2Pk type="FLOAT" width=5 prec=2 label="N2" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=162 starty=348 endx=461 endy=375
Blue direction=1 alignment=0
"Vibration Peaks E-Flange"
$END-OBJECT
***********
$OBJECT Text font=103 startx=177 starty=252 endx=345 endy=282
Magenta direction=1 alignment=0
"Accel Times:"
$END-OBJECT
***********
$OBJECT Text font=103 startx=199 starty=146 endx=483 endy=176
Magenta direction=1 alignment=0
"Accel Thrust Targets:"
$END-OBJECT
***********
$OBJECT Text font=2 startx=248 starty=377 endx=401 endy=393
Yellow direction=1 alignment=0
"Accel       Decel"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=335 starty=394 endx=502 endy=502
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFNFPk type="FLOAT" width=5 prec=2 label="NF" units="default" 
DVibFN1Pk type="FLOAT" width=5 prec=2 label="N1" units="default" 
DVibFN2Pk type="FLOAT" width=5 prec=2 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=403 starty=285 endx=583 endy=322
labelspace=0 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
AccelTmMx type="FLOAT" width=5 prec=1 label="97% Max Accel Time" units="default" 
$END-OBJECT
***********
$OBJECT Buttonobj font=101 startx=424 starty=627 endx=799 endy=712
parameter=AccelTmrReset_S type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=LightGray
defaultstate=0
$STATE 1
label="Accel/Decel\nTimers Reset"
oncolor=Green
$INITCALC
strAccelTm:Sec	0.0
strDecelTm:Sec	0.0
AccelTmr_F:	OFF
AccelTmr:Sec	0.0
DecelTmr_F:	OFF
DecelTmr:Sec	0.0
AccelStage:	0
MaxITT_AC:DegC	0.0
AccelStageTxt:	concat ("" "Accel Timers Reset...")
dummy:	startautotest(ClearVibPeaks_ATP)
dummy:	startautotest(ClearDVibPeaks_ATP)
$END-CALC
$END-STATE
$STATE 0
label="Reset\nAccel/Decel Timers"
oncolor=DarkGray
$END-STATE
$END-OBJECT
***********
$OBJECT Text font=97 startx=426 starty=258 endx=471 endy=277
Yellow direction=1 alignment=0
"Limit"
$END-OBJECT
***********
$OBJECT Line font=101 startx=611 starty=7 endx=617 endy=507
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=103 startx=639 starty=290 endx=969 endy=325
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
strDecelTm type="FLOAT" width=5 prec=1 label="Decel Time to 90%" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=705 starty=17 endx=1048 endy=125
labelspace=6 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITT_AC type="FLOAT" width=6 prec=0 label="ITT" units="default" 
MaxITT_AC type="FLOAT" width=6 prec=0 label="PEAK ITT" units="default" 
N1C2R type="FLOAT" width=6 prec=0 label="N1C2R" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=733 starty=187 endx=1188 endy=261
labelspace=11 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNTR2_DEC type="FLOAT" width=5 prec=0 label="Decel 90% Thrust" units="default" 
FNTR2DecelNom type="FLOAT" width=5 prec=0 label="FNTR2 Before Decel" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=733 starty=394 endx=877 endy=502
labelspace=3 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNFPk type="FLOAT" width=5 prec=2 label="NF" 
VibRN1Pk type="FLOAT" width=5 prec=2 label="N1" 
VibRN2Pk type="FLOAT" width=5 prec=2 label="N2" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=751 starty=346 endx=1051 endy=373
Blue direction=1 alignment=0
"Vibration Peaks P-Flange"
$END-OBJECT
***********
$OBJECT Text font=103 startx=774 starty=152 endx=1045 endy=182
Blue direction=1 alignment=0
"Decel Thrust Target:"
$END-OBJECT
***********
$OBJECT Text font=103 startx=799 starty=258 endx=968 endy=288
Blue direction=1 alignment=0
"Decel Times:"
$END-OBJECT
***********
$OBJECT Text font=2 startx=820 starty=377 endx=973 endy=393
Yellow direction=1 alignment=0
"Accel       Decel"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=861 starty=749 endx=1123 endy=777
labelspace=7 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
$END-OBJECT
***********
$OBJECT Buttonobj font=102 startx=862 starty=599 endx=1122 endy=738
parameter=ArmDecel_F type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Decel Timer"
$END-PANEL
defaultstate=0
$STATE 0
label="Not Armed"
oncolor=Blue
$END-STATE
$STATE 1
label="Armed"
oncolor=Green
$INTERLOCK
~ArmAccel_F
$END-INTERLOCK
$INITCALC
dummy:	StoreEvent ("Decel Armed")
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Digital font=101 startx=908 starty=394 endx=1075 endy=502
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRNFPk type="FLOAT" width=5 prec=2 label="NF" units="default" 
DVibRN1Pk type="FLOAT" width=5 prec=2 label="N1" units="default" 
DVibRN2Pk type="FLOAT" width=5 prec=2 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1001 starty=290 endx=1181 endy=327
labelspace=0 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DecelTmMx type="FLOAT" width=5 prec=1 label="Decel Time Max" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=1016 starty=264 endx=1061 endy=283
Yellow direction=1 alignment=0
"Limit"
$END-OBJECT
***********
$HELP
"Arm Accel Timer"
"Snap Accel to Takeoff and record Accel Time."
""
"Stay at Takeoff for 30 seconds and select Min idle on Engine control screen."
"Arm Decel Timer"
"Snap decel to  Min idle."
"Record decel times."
"Store Display."
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
$END-HELP
$END-DISPLAY

