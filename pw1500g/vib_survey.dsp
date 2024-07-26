$DISPLAY "Vib Survey" background=LightGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#if	(~VibSurvey_TS & ~VibSvyOffical_TS & ArmVibSurvey_TB)
ArmVibSurvey_TB:	OFF
StageTmr:Sec	0.0
StageTmr_F:	OFF
#endif	
#C ********************************************************
#if	(ArmVibSurvey_TB & (VibSvyStage > 0))
dummy:	startautotest (VibSurvey_ATP)
#elseif	(ArmVibSurvey_TB & (VibSvyStage = 0))
dummy:	StoreEvent ("Engine Vibration Survey (Started)")
VibSvyStage:	1
VibSvyStep:	1
StepTxt:	concat ("Step " VibSvyStep)
StepTxt:	concat (StepTxt ": ")
VibSvyStageTxt:	concat (StepTxt "Engine Vibration Survey (Started)...")
#C VibSvyState: 1
#endif	
#C ********************************************************
#if	ClearVibPeaks1_TB
dummy:	startautotest (ClearVibPeaks_ATP)
dummy:	startautotest (ClearDVibPeaks_ATP)
ClearVibPeaks1_TB:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Digital font=2 startx=1 starty=563 endx=46 endy=584
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=3 starty=118 endx=48 endy=139
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=3 starty=344 endx=48 endy=365
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN1 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=2 startx=12 starty=321 endx=39 endy=401
Blue direction=1 alignment=1
"N1"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=15 starty=542 endx=42 endy=622
Blue direction=1 alignment=1
"N2"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=17 starty=95 endx=44 endy=175
Blue direction=1 alignment=1
"NF"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=25 starty=20 endx=582 endy=256
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS NFS 206 40 527 250 2 ABOVE BELOW 500 3500 Black 0.000000
$YAXIS VibFNF 40 20 206 0.25 2 RIGHT LEFT 0 2 Black 0 500.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Green
VibFNFMx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibFNFRMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Engine Type: $DashNumber" 100 800
"Delta Air Lines, Inc." 450 800
"$CustomerName" 900 800
"S/N: $SerialNum" 100 812
"Vibration Survey" 450 812
"$SysReportTime" 900 812
"$SysReportDate" 900 824
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=25 starty=237 endx=581 endy=483
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 216 40 526 500 2 ABOVE BELOW 2000 11000 Black 0.000000
$YAXIS VibFN1 40 20 216 0.25 2 RIGHT LEFT 0 2 Black 0 2000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Green
VibFN1Mx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibFN1RMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=25 starty=468 endx=581 endy=706
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 208 40 526 1000 2 ABOVE BELOW 12000 25000 Black 0.000000
$YAXIS VibFN2 40 20 208 0.25 2 RIGHT LEFT 0 2 Black 0 12000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Green
VibFN2Mx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibFN2RMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Button font=100 startx=26 starty=733 endx=250 endy=793
TOGGLE ClearVibPeaks1_TB setvalue=-1 onlabel="Vib Peaks Cleared" offlabel="Clear Vib Peaks" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=101 displayflag=StorePlotTmr_F startx=69 starty=365 endx=413 endy=392
Yellow direction=1 alignment=0
"Press the Store Plot Button..."
$END-OBJECT
***********
$OBJECT String font=97 startx=138 starty=707 endx=380 endy=728
StrVibPeaks_F labelspace=0 label="Final Vib Peaks:" labelcolor=Black stringcolor=Red parambox=2 paramboxcolor=Black shading=-1
Green = TRUE "    Final Vib Peaks Stored"
Red = FALSE "Final Vib Peaks NOT Stored"
$END-OBJECT
***********
$OBJECT Button font=97 startx=255 starty=733 endx=479 endy=793
PHASE StoreVibPeaks_ATP setvalue=-1 onlabel="Final Vib Peaks\nStored" offlabel="Store Final\nVib Peaks" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=101 startx=264 starty=5 endx=364 endy=32
Blue direction=1 alignment=0
"E-Flange"
$END-OBJECT
***********
$OBJECT Button font=101 displayflag=EngineNotRunning startx=487 starty=743 endx=711 endy=792
PHASE StoreVibPackage_ATP setvalue=-1 onlabel="Save All" offlabel="Save All" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Text font=2 startx=499 starty=700 endx=706 endy=716
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=524 starty=720 endx=677 endy=736
Green direction=1 alignment=0
"Acceptance Limits"
$END-OBJECT
***********
$OBJECT Text font=97 startx=587 starty=660 endx=635 endy=679
Blue direction=1 alignment=0
"Accel"
$END-OBJECT
***********
$OBJECT Text font=97 startx=587 starty=678 endx=635 endy=697
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=596 starty=117 endx=641 endy=138
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=597 starty=335 endx=642 endy=356
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN1 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=597 starty=562 endx=642 endy=583
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=2 startx=609 starty=539 endx=636 endy=619
Blue direction=1 alignment=1
"N2"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=611 starty=95 endx=638 endy=175
Blue direction=1 alignment=1
"NF"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=615 starty=313 endx=642 endy=393
Blue direction=1 alignment=0
"N1"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=630 starty=20 endx=1178 endy=257
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS NFS 207 40 518 250 2 ABOVE BELOW 500 3500 Black 0.000000
$YAXIS VibRNF 40 20 207 0.25 2 RIGHT LEFT 0 2 Black 0 500.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Red
VibRNFRMx_T
$END-TABLE-PLOT
$TABLE-PLOT Green
VibRNFMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=630 starty=240 endx=1178 endy=486
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 216 40 518 500 2 ABOVE BELOW 2000 11000 Black 0.000000
$YAXIS VibRN1 40 20 216 0.25 2 RIGHT LEFT 0 2 Black 0 2000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Green
VibRN1Mx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibRN1RMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=630 starty=470 endx=1178 endy=708
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 208 40 518 1000 2 ABOVE BELOW 12000 25000 Black 0.000000
$YAXIS VibRN2 40 20 208 0.25 2 RIGHT LEFT 0 2 Black 0 12000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Green
VibRN2Mx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibRN2RMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Button font=97 startx=719 starty=732 endx=943 endy=791
PHASE storeTOATB_ATP setvalue=-1 onlabel="Store TO After\nTrim Balance" offlabel="Store TO After\nTrim Balance" \
labelcolor=Black oncolor=Green offcolor=BurntOrange
$END-OBJECT
***********
$OBJECT Text font=101 startx=870 starty=6 endx=971 endy=33
Blue direction=1 alignment=0
"P-Flange"
$END-OBJECT
***********
$OBJECT Button font=97 startx=955 starty=732 endx=1174 endy=791
TOGGLE ArmVibSurvey_TB setvalue=-1 onlabel="Vib Survey\nArmed" offlabel="Arm\nVib Survey" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$HELP
"The Save All button will:"
"Post-Vib-Survey functions (Except TOATB) for you including:"
"  Store Plot Data"
"  Store Vib Peaks"
"  Store Vib Displays"
"  Print Vib Peaks Display"
"  HardCopy Plot Vib Survey"
"You will be prompted for whether this is As-Received or Final data."
""
"Before doing this you must minimize all windows on this display"
"The other dialog box is asking you to confirm that you have done this."
"  IF YOU HAVE NOT DONE THIS, ANSWER NO"
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

