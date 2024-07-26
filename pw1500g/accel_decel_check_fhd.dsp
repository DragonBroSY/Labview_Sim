$DISPLAY "Accel Decel Check FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
#C ***** Equation 7 *******************************
#C FNTR2_TO:Lbs	FnAMin
FNTR2_TO:Lbs	FNANom
FNTR2_Ref:%	AccelFNTR2
FNTR2_ACC:Lbs	(FNTR2_Ref * FNTR2_TO)
FNTR2_ACCMx:Lbs	(FNTR2_ACC + 50.0)
#C ***** Equation 8 *******************************
FNTR2_TODEC:Lbs	FNTR2_TO
FNTR2_Ref:%	DecelFNTR2
FNTR2_DEC:Lbs	(FNTR2_TODEC - (FNTR2_Ref * (FNTR2_TODEC - FNTR2Mx_MI)))
FNTR2_DECMx:lbs	(FNTR2_DEC - 50.0)
$END-CALC
$CALC
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
$OBJECT Line font=101 startx=13 starty=861 endx=1872 endy=862
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=92 startx=18 starty=833 endx=302 endy=858
AccelStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Bar font=102 startx=126 starty=588 endx=1788 endy=652
labelspace=4 unitspace=0 labelcolor=Black length=1400 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
FNTR2_AC label="FNTR2" units="default" min=0 max=25000 ticinter=1000 labelinter=2
$END-OBJECT
***********
$OBJECT Box font=101 startx=354 starty=74 endx=1527 endy=574
style=1
linewidth=4 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=357 starty=394 endx=1525 endy=396
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=358 starty=197 endx=1525 endy=201
linewidth=4 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=377 starty=349 endx=707 endy=386
labelspace=10 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
strAccelTm type="FLOAT" width=5 prec=1 label="Accel Time to 97%" 
$END-OBJECT
***********
$OBJECT Buttonobj font=102 startx=451 starty=662 endx=716 endy=801
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
$OBJECT Digital font=103 startx=483 starty=244 endx=913 endy=281
labelspace=10 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNTR2_ACC type="FLOAT" width=5 prec=0 label="Accel 97% Thrust" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=502 starty=458 endx=646 endy=566
labelspace=3 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNFPk type="FLOAT" width=5 prec=2 label="NF" 
VibFN1Pk type="FLOAT" width=5 prec=2 label="N1" 
VibFN2Pk type="FLOAT" width=5 prec=2 label="N2" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=506 starty=412 endx=805 endy=439
Blue direction=1 alignment=0
"Vibration Peaks E-Flange"
$END-OBJECT
***********
$OBJECT Text font=103 startx=521 starty=316 endx=689 endy=346
Magenta direction=1 alignment=0
"Accel Times:"
$END-OBJECT
***********
$OBJECT Text font=103 startx=543 starty=210 endx=827 endy=240
Magenta direction=1 alignment=0
"Accel Thrust Targets:"
$END-OBJECT
***********
$OBJECT Text font=2 startx=592 starty=441 endx=745 endy=457
Yellow direction=1 alignment=0
"Accel       Decel"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=679 starty=458 endx=846 endy=566
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFNFPk type="FLOAT" width=5 prec=2 label="NF" units="default" 
DVibFN1Pk type="FLOAT" width=5 prec=2 label="N1" units="default" 
DVibFN2Pk type="FLOAT" width=5 prec=2 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=729 starty=6 endx=1157 endy=68
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Digital font=103 startx=747 starty=349 endx=927 endy=386
labelspace=0 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
AccelTmMx type="FLOAT" width=5 prec=1 label="97% Max Accel Time" units="default" 
$END-OBJECT
***********
$OBJECT Text font=96 startx=752 starty=18 endx=1138 endy=57
BurntOrange direction=1 alignment=0
"ACCEL/DECEL CHECK"
$END-OBJECT
***********
$OBJECT Buttonobj font=101 startx=768 starty=691 endx=1143 endy=776
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
$OBJECT Text font=97 startx=770 starty=322 endx=815 endy=341
Yellow direction=1 alignment=0
"Limit"
$END-OBJECT
***********
$OBJECT Line font=101 startx=957 starty=74 endx=959 endy=574
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=983 starty=354 endx=1313 endy=389
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
strDecelTm type="FLOAT" width=5 prec=1 label="Decel Time to 90%" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1049 starty=81 endx=1392 endy=189
labelspace=6 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITT_AC type="FLOAT" width=6 prec=0 label="ITT" units="default" 
MaxITT_AC type="FLOAT" width=6 prec=0 label="PEAK ITT" units="default" 
N1C2R type="FLOAT" width=6 prec=0 label="N1C2R" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1077 starty=251 endx=1532 endy=325
labelspace=11 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNTR2_DEC type="FLOAT" width=5 prec=0 label="Decel 90% Thrust" units="default" 
FNTR2DecelNom type="FLOAT" width=5 prec=0 label="FNTR2 Before Decel" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1077 starty=458 endx=1221 endy=566
labelspace=3 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNFPk type="FLOAT" width=5 prec=2 label="NF" 
VibRN1Pk type="FLOAT" width=5 prec=2 label="N1" 
VibRN2Pk type="FLOAT" width=5 prec=2 label="N2" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1095 starty=410 endx=1395 endy=437
Blue direction=1 alignment=0
"Vibration Peaks P-Flange"
$END-OBJECT
***********
$OBJECT Text font=103 startx=1118 starty=216 endx=1389 endy=246
Blue direction=1 alignment=0
"Decel Thrust Target:"
$END-OBJECT
***********
$OBJECT Text font=103 startx=1143 starty=322 endx=1312 endy=352
Blue direction=1 alignment=0
"Decel Times:"
$END-OBJECT
***********
$OBJECT Text font=2 startx=1164 starty=441 endx=1317 endy=457
Yellow direction=1 alignment=0
"Accel       Decel"
$END-OBJECT
***********
$OBJECT Buttonobj font=102 startx=1206 starty=663 endx=1466 endy=802
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
$OBJECT Digital font=101 startx=1252 starty=458 endx=1419 endy=566
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRNFPk type="FLOAT" width=5 prec=2 label="NF" units="default" 
DVibRN1Pk type="FLOAT" width=5 prec=2 label="N1" units="default" 
DVibRN2Pk type="FLOAT" width=5 prec=2 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1345 starty=354 endx=1525 endy=391
labelspace=0 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DecelTmMx type="FLOAT" width=5 prec=1 label="Decel Time Max" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=1360 starty=328 endx=1405 endy=347
Yellow direction=1 alignment=0
"Limit"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1608 starty=799 endx=1870 endy=827
labelspace=7 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
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
""
""
""
$END-HELP
$END-DISPLAY

