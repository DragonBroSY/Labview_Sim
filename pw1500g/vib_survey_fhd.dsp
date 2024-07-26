$DISPLAY "Vib Survey FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Digital font=2 startx=38 starty=384 endx=83 endy=405
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN1 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=39 starty=624 endx=84 endy=645
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=41 starty=139 endx=86 endy=160
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=2 startx=47 starty=361 endx=74 endy=441
Blue direction=1 alignment=1
"N1"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=53 starty=603 endx=80 endy=683
Blue direction=1 alignment=1
"N2"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=55 starty=116 endx=82 endy=196
Blue direction=1 alignment=1
"NF"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=72 starty=835 endx=279 endy=851
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=86 starty=276 endx=881 endy=536
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 229 40 755 500 2 ABOVE BELOW 2000 11000 Black 0.000000
$YAXIS VibFN1 40 20 229 0.25 2 RIGHT LEFT 0 2 Black 0 2000.000000
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
$OBJECT Plot font=1 startx=94 starty=31 endx=883 endy=285
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS NFS 221 40 751 250 2 ABOVE BELOW 500 3500 Black 0.000000
$YAXIS VibFNF 40 20 221 0.25 2 RIGHT LEFT 0 2 Black 0 500.000000
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
"Engine Type: $EngNameNew" 100 800
"Delta Air Lines, Inc." 450 800
"$CustomerName" 900 800
"S/N: $SerialNum" 100 812
"Vibration Survey" 450 812
"$SysReportTime" 900 812
"$SysReportDate" 900 824
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=96 starty=521 endx=881 endy=759
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 208 40 747 1000 2 ABOVE BELOW 12000 25000 Black 0.000000
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
$OBJECT Text font=2 startx=101 starty=855 endx=254 endy=871
Green direction=1 alignment=0
"Acceptance Limits"
$END-OBJECT
***********
$OBJECT Text font=101 displayflag=StorePlotTmr_F startx=164 starty=409 endx=508 endy=436
Yellow direction=1 alignment=0
"Press the Store Plot Button..."
$END-OBJECT
***********
$OBJECT Text font=97 startx=172 starty=788 endx=220 endy=807
Blue direction=1 alignment=0
"Accel"
$END-OBJECT
***********
$OBJECT Text font=97 startx=172 starty=806 endx=220 endy=825
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Button font=100 startx=326 starty=786 endx=550 endy=846
TOGGLE ClearVibPeaks1_TB setvalue=-1 onlabel="Vib Peaks Cleared" offlabel="Clear Vib Peaks" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT String font=97 startx=438 starty=760 endx=680 endy=781
StrVibPeaks_F labelspace=0 label="Final Vib Peaks:" labelcolor=Black stringcolor=Green parambox=2 paramboxcolor=Black shading=-1
Green = TRUE "    Final Vib Peaks Stored"
Red = FALSE "Final Vib Peaks NOT Stored"
$END-OBJECT
***********
$OBJECT Button font=97 startx=555 starty=786 endx=779 endy=846
PHASE StoreVibPeaks_ATP setvalue=-1 onlabel="Final Vib Peaks\nStored" offlabel="Store Final\nVib Peaks" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=101 startx=600 starty=5 endx=700 endy=32
Blue direction=1 alignment=0
"E-Flange"
$END-OBJECT
***********
$OBJECT Button font=101 displayflag=EngineNotRunning startx=787 starty=796 endx=1011 endy=845
PHASE StoreVibPackage_ATP setvalue=-1 onlabel="Save All" offlabel="Save All" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Digital font=2 startx=892 starty=138 endx=937 endy=159
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=893 starty=391 endx=938 endy=412
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN1 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=895 starty=627 endx=940 endy=648
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=2 startx=907 starty=116 endx=934 endy=196
Blue direction=1 alignment=1
"NF"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=907 starty=604 endx=934 endy=684
Blue direction=1 alignment=1
"N2"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=911 starty=369 endx=938 endy=449
Blue direction=1 alignment=0
"N1"
""
""
"IPS"
"SA"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=930 starty=278 endx=1897 endy=539
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 229 40 928 500 2 ABOVE BELOW 2000 11000 Black 0.000000
$YAXIS VibRN1 40 20 229 0.25 2 RIGHT LEFT 0 2 Black 0 2000.000000
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
$OBJECT Plot font=1 startx=930 starty=523 endx=1893 endy=761
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 208 40 923 1000 2 ABOVE BELOW 12000 25000 Black 0.000000
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
$OBJECT Plot font=1 startx=932 starty=31 endx=1897 endy=284
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS NFS 221 40 926 250 2 ABOVE BELOW 500 3500 Black 0.000000
$YAXIS VibRNF 40 20 221 0.25 2 RIGHT LEFT 0 2 Black 0 500.000000
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
$OBJECT Button font=97 startx=1019 starty=785 endx=1243 endy=844
PHASE storeTOATB_ATP setvalue=-1 onlabel="Store TO After\nTrim Balance" offlabel="Store TO After\nTrim Balance" \
labelcolor=Black oncolor=Green offcolor=BurntOrange
$END-OBJECT
***********
$OBJECT Button font=97 startx=1255 starty=785 endx=1474 endy=844
TOGGLE ArmVibSurvey_TB setvalue=-1 onlabel="Vib Survey\nArmed" offlabel="Arm\nVib Survey" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=101 startx=1338 starty=3 endx=1439 endy=30
Blue direction=1 alignment=0
"P-Flange"
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
""
$END-HELP
$END-DISPLAY

