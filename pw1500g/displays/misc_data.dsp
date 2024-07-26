$DISPLAY "Misc Data" background=LightGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Box font=101 startx=25 starty=10 endx=772 endy=404
style=1
linewidth=4 linecolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Button font=101 startx=25 starty=420 endx=224 endy=519
TOGGLE StoreARVibPeaks1_TB setvalue=-1 onlabel="Store\nAs Received\nPeaks" offlabel="Store\nAs Received\nPeaks" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=100 startx=42 starty=559 endx=198 endy=619
TOGGLE StoreZeroDrift1_TB setvalue=-1 onlabel="Store\nZero Drift" offlabel="Store\nZero Drift" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=42 starty=637 endx=198 endy=697
TOGGLE StoreMIdle1_TB setvalue=-1 onlabel="Store\nMinimum Idle" offlabel="Store\nMinimum Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=42 starty=715 endx=198 endy=775
TOGGLE StoreAIdle1_TB setvalue=-1 onlabel="Store\nApproach Idle" offlabel="Store\nApproach Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=98 startx=45 starty=135 endx=139 endy=195
Yellow direction=1 alignment=0
"Fan "
"Case"
"(B-Flange)"
$END-OBJECT
***********
$OBJECT Text font=98 startx=45 starty=235 endx=139 endy=295
Yellow direction=1 alignment=0
"Turbine "
"Case"
"(P-Flange)"
$END-OBJECT
***********
$OBJECT String font=90 startx=140 starty=355 endx=381 endy=375
StrARVibPeakTime labelspace=4 label="Time:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Digital font=98 startx=145 starty=135 endx=313 endy=222
labelspace=5 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibFBBPk type="FLOAT" width=6 prec=2 label="Peak" units="" 
StrARVibFBBPkN1 type="FLOAT" width=6 prec=0 label="N1" units="" 
StrARVibFBBPkN2 type="FLOAT" width=6 prec=0 label="N2" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=145 starty=235 endx=313 endy=322
labelspace=5 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibRBBPk type="FLOAT" width=6 prec=2 label="Peak" units="" 
StrARVibRBBPkN1 type="FLOAT" width=6 prec=0 label="N1" units="" 
StrARVibRBBPkN2 type="FLOAT" width=6 prec=0 label="N2" units="" 
$END-OBJECT
***********
$OBJECT String font=90 startx=145 starty=330 endx=383 endy=350
StrARVibPeakDate labelspace=4 label=" Date:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Text font=98 startx=240 starty=30 endx=450 endy=70
Magenta direction=1 alignment=1
"STORED AS-RECEIVED"
"VIBRATION PEAKS"
$END-OBJECT
***********
$OBJECT Text font=98 startx=240 starty=80 endx=292 endy=120
Blue direction=1 alignment=1
"Broad"
"Band"
$END-OBJECT
***********
$OBJECT Button font=101 startx=240 starty=420 endx=439 endy=519
TOGGLE StoreVibPeaks1_TB setvalue=-1 onlabel="Store\nFinal\nPeaks" offlabel="Store\nFinal\nPeaks" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=100 startx=253 starty=561 endx=409 endy=621
TOGGLE StoreTOATB1_TB setvalue=-1 onlabel="Store\nTOATB" offlabel="Store\nTOATB" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=253 starty=639 endx=409 endy=699
TOGGLE StorePP10_1_TB setvalue=-1 onlabel="Store\nPP10" offlabel="Store\nPP10" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=253 starty=717 endx=409 endy=777
TOGGLE StorePP11_1_TB setvalue=-1 onlabel="Store\nPP11" offlabel="Store\nPP11" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=98 startx=305 starty=85 endx=379 endy=125
Blue direction=1 alignment=1
"N1"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=310 starty=135 endx=393 endy=222
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibFN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibFN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibFN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=310 starty=235 endx=393 endy=322
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibRN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibRN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibRN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=380 starty=84 endx=454 endy=124
Blue direction=1 alignment=1
"N2"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=385 starty=135 endx=468 endy=222
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibFN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibFN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibFN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=385 starty=235 endx=468 endy=322
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrARVibRN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrARVibRN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrARVibRN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Switch font=100 startx=470 starty=420 endx=769 endy=469
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
$OBJECT Switch font=100 startx=470 starty=470 endx=769 endy=519
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
$OBJECT Line font=101 startx=479 starty=24 endx=487 endy=373
linewidth=4 linecolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT String font=90 startx=500 starty=330 endx=711 endy=350
StrVibPeakDate labelspace=4 label=" Date:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT String font=90 startx=500 starty=355 endx=714 endy=375
StrVibPeakTime labelspace=4 label="Time:" labelcolor=Black stringcolor=Blue parambox=2 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Digital font=98 startx=505 starty=135 endx=588 endy=222
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibFN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibFN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibFN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=505 starty=235 endx=588 endy=322
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibRBBPk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibRBBPkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibRBBPkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=510 starty=80 endx=562 endy=120
Blue direction=1 alignment=1
"Broad"
"Band"
$END-OBJECT
***********
$OBJECT Button font=100 startx=526 starty=561 endx=682 endy=621
PHASE VishayZero_ATP setvalue=-1 onlabel="Thrust Zero" offlabel="Zero Thrust" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=98 startx=533 starty=30 endx=704 endy=70
Magenta direction=1 alignment=1
"STORED FINAL"
"VIBRATION PEAKS"
$END-OBJECT
***********
$OBJECT Text font=98 startx=580 starty=80 endx=654 endy=120
Blue direction=1 alignment=1
"N1"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=585 starty=135 endx=668 endy=222
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibFN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibFN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibFN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=585 starty=235 endx=668 endy=322
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibRN1Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibRN1PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibRN1PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=665 starty=80 endx=739 endy=120
Blue direction=1 alignment=1
"N2"
"Tracked"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=665 starty=135 endx=748 endy=222
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibFN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibFN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibFN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=665 starty=235 endx=748 endy=322
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StrVibRN2Pk type="FLOAT" width=6 prec=2 label="" units="" 
StrVibRN2PkN1 type="FLOAT" width=6 prec=0 label="" units="" 
StrVibRN2PkN2 type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=810 starty=10 endx=1052 endy=519
style=1
linewidth=4 linecolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=98 startx=830 starty=25 endx=1015 endy=85
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
$END-HELP
$END-DISPLAY

