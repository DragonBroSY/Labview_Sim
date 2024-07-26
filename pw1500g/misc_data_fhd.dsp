$DISPLAY "Misc Data FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#if	StoreZeroDrift1_TB
dummy:	startautotest(storeZeroDrift_ATP)
StoreZeroDrift1_TB:	OFF
#elseif	StoreMIdle1_TB
dummy:	startautotest(storeMIdle_ATP)
StoreMIdle1_TB:	OFF
#elseif	StoreAIdle1_TB
dummy:	startautotest(storeAIdle_ATP)
StoreAIdle1_TB:	OFF
#elseif	StoreTOATB1_TB
dummy:	startautotest(storeTOATB_ATP)
StoreTOATB1_TB:	OFF
#elseif	StorePP10_1_TB
dummy:	startautotest(storePP10_ATP)
StorePP10_1_TB:	OFF
#elseif	StorePP11_1_TB
dummy:	startautotest(storePP11_ATP)
StorePP11_1_TB:	OFF
#elseif	StoreARVibPeaks1_TB
dummy:	startautotest(StoreARVibPeaks_ATP)
StoreARVibPeaks1_TB:	OFF
#elseif	StoreVibPeaks1_TB
dummy:	startautotest(StoreVibPeaks_ATP)
StoreVibPeaks1_TB:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Box font=101 startx=417 starty=64 endx=1164 endy=458
style=3
linewidth=4 linecolor=Cyan
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Button font=101 startx=417 starty=474 endx=616 endy=573
TOGGLE StoreARVibPeaks1_TB setvalue=-1 onlabel="Store\nAs Received\nPeaks" offlabel="Store\nAs Received\nPeaks" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=100 startx=434 starty=613 endx=590 endy=673
TOGGLE StoreZeroDrift1_TB setvalue=-1 onlabel="Store\nZero Drift" offlabel="Store\nZero Drift" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=434 starty=691 endx=590 endy=751
TOGGLE StoreMIdle1_TB setvalue=-1 onlabel="Store\nMinimum Idle" offlabel="Store\nMinimum Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=434 starty=769 endx=590 endy=829
TOGGLE StoreAIdle1_TB setvalue=-1 onlabel="Store\nApproach Idle" offlabel="Store\nApproach Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=98 startx=437 starty=189 endx=531 endy=249
Yellow direction=1 alignment=0
"Fan "
"Case"
"(B-Flange)"
$END-OBJECT
***********
$OBJECT Text font=98 startx=437 starty=289 endx=531 endy=349
Yellow direction=1 alignment=0
"Turbine "
"Case"
"(P-Flange)"
$END-OBJECT
***********
$OBJECT String font=90 startx=532 starty=409 endx=773 endy=429
StrARVibPeakTime labelspace=4 label="Time:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Digital font=98 startx=537 starty=189 endx=705 endy=276
labelspace=5 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibFBBPk type="FLOAT" width=6 prec=2 label="Peak" units="" 
StrARVibFBBPkN1 type="FLOAT" width=6 prec=0 label="N1" units="" 
StrARVibFBBPkN2 type="FLOAT" width=6 prec=0 label="N2" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=537 starty=289 endx=705 endy=376
labelspace=5 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibRBBPk type="FLOAT" width=6 prec=2 label="Peak" units="" 
StrARVibRBBPkN1 type="FLOAT" width=6 prec=0 label="N1" units="" 
StrARVibRBBPkN2 type="FLOAT" width=6 prec=0 label="N2" units="" 
$END-OBJECT
***********
$OBJECT String font=90 startx=537 starty=384 endx=775 endy=404
StrARVibPeakDate labelspace=4 label=" Date:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Text font=98 startx=632 starty=84 endx=842 endy=124
Magenta direction=1 alignment=1
"STORED AS-RECEIVED"
"VIBRATION PEAKS"
$END-OBJECT
***********
$OBJECT Text font=98 startx=632 starty=134 endx=684 endy=174
Blue direction=1 alignment=1
"Broad"
"Band"
$END-OBJECT
***********
$OBJECT Button font=101 startx=632 starty=474 endx=831 endy=573
TOGGLE StoreVibPeaks1_TB setvalue=-1 onlabel="Store\nFinal\nPeaks" offlabel="Store\nFinal\nPeaks" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=100 startx=645 starty=615 endx=801 endy=675
TOGGLE StoreTOATB1_TB setvalue=-1 onlabel="Store\nTOATB" offlabel="Store\nTOATB" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=645 starty=693 endx=801 endy=753
TOGGLE StorePP10_1_TB setvalue=-1 onlabel="Store\nPP10" offlabel="Store\nPP10" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=645 starty=771 endx=801 endy=831
TOGGLE StorePP11_1_TB setvalue=-1 onlabel="Store\nPP11" offlabel="Store\nPP11" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=98 startx=697 starty=139 endx=771 endy=179
Blue direction=1 alignment=1
"N1"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=702 starty=189 endx=785 endy=276
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibFN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibFN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibFN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=702 starty=289 endx=785 endy=376
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibRN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibRN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibRN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=772 starty=138 endx=846 endy=178
Blue direction=1 alignment=1
"N2"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=777 starty=189 endx=860 endy=276
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibFN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibFN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibFN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=777 starty=289 endx=860 endy=376
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibRN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibRN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibRN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Switch font=100 startx=862 starty=474 endx=1161 endy=523
MOMENTARY RestoreARVibPeaks_S onlabel="Restore As Received Peaks" offlabel="Restore As Received Peaks" offcolor=Cyan oncolor=Green 
$RELEASE
VibFBBPk:IPS	StrARVibFBBPk
VibFBBPkN1:RPM	StrARVibFBBPkN1
VibFBBPkN2:RPM	StrARVibFBBPkN2
VibFN1Pk:IPS	StrARVibFN1Pk
VibFN1PkN1:RPM	StrARVibFN1PkN1
VibFN1PkN2:RPM	StrARVibFN1PkN2
VibFN2Pk:IPS	StrARVibFN2Pk
VibFN2PkN1:RPM	StrARVibFN2PkN1
VibFN2PkN2:RPM	StrARVibFN2PkN2
VibRBBPk:IPS	StrARVibRBBPk
VibRBBPkN1:RPM	StrARVibRBBPkN1
VibRBBPkN2:RPM	StrARVibRBBPkN2
VibRN1Pk:IPS	StrARVibRN1Pk
VibRN1PkN1:RPM	StrARVibRN1PkN1
VibRN1PkN2:RPM	StrARVibRN1PkN2
VibRN2Pk:IPS	StrARVibRN2Pk
VibRN2PkN1:RPM	StrARVibRN2PkN1
VibRN2PkN2:RPM	StrARVibRN2PkN2
VibPeakTime:	concat ("" StrARVibPeakTime)
VibPeakDate:	concat ("" StrARVibPeakDate)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=862 starty=524 endx=1161 endy=573
MOMENTARY RestoreVibPeaks_S onlabel="Restore Final Peaks" offlabel="Restore Final Peaks" offcolor=Cyan oncolor=Green 
$RELEASE
VibFBBPk:IPS	StrVibFBBPk
VibFBBPkN1:RPM	StrVibFBBPkN1
VibFBBPkN2:RPM	StrVibFBBPkN2
VibFN1Pk:IPS	StrVibFN1Pk
VibFN1PkN1:RPM	StrVibFN1PkN1
VibFN1PkN2:RPM	StrVibFN1PkN2
VibFN2Pk:IPS	StrVibFN2Pk
VibFN2PkN1:RPM	StrVibFN2PkN1
VibFN2PkN2:RPM	StrVibFN2PkN2
VibRBBPk:IPS	StrVibRBBPk
VibRBBPkN1:RPM	StrVibRBBPkN1
VibRBBPkN2:RPM	StrVibRBBPkN2
VibRN1Pk:IPS	StrVibRN1Pk
VibRN1PkN1:RPM	StrVibRN1PkN1
VibRN1PkN2:RPM	StrVibRN1PkN2
VibRN2Pk:IPS	StrVibRN2Pk
VibRN2PkN1:RPM	StrVibRN2PkN1
VibRN2PkN2:RPM	StrVibRN2PkN2
VibPeakDate:	concat ("" StrVibPeakDate)
VibPeakTime:	concat ("" StrVibPeakTime)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Line font=101 startx=871 starty=78 endx=879 endy=427
linewidth=4 linecolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT String font=90 startx=892 starty=384 endx=1103 endy=404
StrVibPeakDate labelspace=4 label=" Date:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT String font=90 startx=892 starty=409 endx=1106 endy=429
StrVibPeakTime labelspace=4 label="Time:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Digital font=98 startx=897 starty=189 endx=980 endy=276
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibFN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibFN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibFN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=897 starty=289 endx=980 endy=376
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibRBBPk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibRBBPkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibRBBPkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=902 starty=134 endx=954 endy=174
Blue direction=1 alignment=1
"Broad"
"Band"
$END-OBJECT
***********
$OBJECT Button font=100 startx=918 starty=615 endx=1074 endy=675
PHASE VishayZero_ATP setvalue=-1 onlabel="Thrust Zero" offlabel="Zero Thrust" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=98 startx=925 starty=84 endx=1096 endy=124
Magenta direction=1 alignment=1
"STORED FINAL"
"VIBRATION PEAKS"
$END-OBJECT
***********
$OBJECT Text font=98 startx=972 starty=134 endx=1046 endy=174
Blue direction=1 alignment=1
"N1"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=977 starty=189 endx=1060 endy=276
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibFN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibFN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibFN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=977 starty=289 endx=1060 endy=376
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibRN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibRN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibRN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=1057 starty=134 endx=1131 endy=174
Blue direction=1 alignment=1
"N2"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=1057 starty=189 endx=1140 endy=276
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibFN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibFN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibFN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=1057 starty=289 endx=1140 endy=376
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibRN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibRN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibRN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=1202 starty=64 endx=1444 endy=573
style=3
linewidth=4 linecolor=Cyan
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=98 startx=1222 starty=79 endx=1407 endy=139
Magenta direction=1 alignment=1
"VIEW"
"CURRENT RECORDS"
"DISABLED"
$END-OBJECT
***********
$HELP
"This display shows the current values of both As Received Vib Peaks"
"and Final Vib Peaks without having to over-write the current values"
"on the Vib Peaks display."
""
"******** DISABLED database functions (currently set to Oracle DB) **********"
"The database function buttons allow the operators to view the current tests:"
"1. Data Scans (Performance Points) stored for the current test."
"2. Plot Data parameters already stored."
"    (At end of test, there should be 2 sets of Plot Data for rotor speeds and"
"     Vibration signals)"
"3. Displays already stored."
""
"In addition to these functions for the current test, the operators can view"
"  parameter values for the last 20 tests for engines of the same model as the"
"  current engine."
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

