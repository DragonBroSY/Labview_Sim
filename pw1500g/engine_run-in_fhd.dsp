$DISPLAY "Engine Run-In FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
N1_ADBar_F:	OFF
$END-CALC
$CALC
#C **** See loopcalc.cal for FN/N1_ADBar_F calcs **********
#C **************** Pause RUN-IN Procedures ***************
#C ********************************************************
#C N1C2R:RPM N1C2D ***** Check corrections.cal (DJR 11/29/20)
RunInStage_F:	inrange (1 RunInStage 380)
#C ********************************************************
#if	(RunInHPC_TS & ArmRunInHPC_TB & RunInStage_F & RunInPause_F)
dummy:	StoreEvent ("Engine Run-In HPC (Resumed)")
StageTmr_F:	RunInTmrState_F
RunInStageTxt:	concat (StageTxt "")
RunInStage:	Stage
RunInPause_F:	OFF
RunInState:	4
#elseif	(RunInHPC_TS & ArmRunInHPC_TB & (RunInStage > 0))
dummy:	startautotest (RunInHPC_ATP)
#elseif	(RunInHPC_TS & ArmRunInHPC_TB & (RunInStage = 0))
dummy:	StoreEvent ("Engine Run-In HPC (Started)")
RunInStage:	1
RunInStep:	1
RunInHPC_N2:RPM	0.0
RunInT2Diff:DegF	0.0
StepTxt:	concat ("Step " RunInStep)
StepTxt:	concat (StepTxt ": ")
RunInStageTxt:	concat (StepTxt "Engine Run-In HPC (Started)...")
RunInState:	1
#elseif	(RunInHPC_TS & ~ArmRunInHPC_TB & RunInStage_F & ~RunInPause_F)
dummy:	StoreEvent ("Engine Run-In HPC (PAUSED)")
StageTxt:	concat (RunInStageTxt "")
RunInTmrState_F:	StageTmr_F
Stage:	RunInStage
RunInPause_F:	ON
RunInState:	2
RunInStageTxt:	concat (StepTxt "HPC Seal Run-In Paused at Stage: ")
RunInStageTxt:	concat (RunInStageTxt RunInStage)
StageTmr_F:	OFF
#endif	
#C ********************************************************
$END-CALC
$STOREDISPLAY Append
$OBJECT Line font=101 startx=12 starty=847 endx=1841 endy=848
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmRunInHPC_TB startx=16 starty=819 endx=300 endy=844
RunInStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmShapedAccel_F startx=16 starty=819 endx=300 endy=844
ShapedStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Text font=2 startx=37 starty=681 endx=118 endy=713
Yellow direction=1 alignment=1
"Reference"
"Only"
$END-OBJECT
***********
$OBJECT Bar font=100 startx=48 starty=541 endx=1464 endy=657
labelspace=5 unitspace=1 labelcolor=Black length=1225 \
height=20 format=7.3 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
TRA_Actual target=TRA_Targ label="       TRA" min=-15 max=35 ticinter=1 labelinter=2
EEC_TLA target=TLA_Targ label="EEC TLA" min=0 max=48 ticinter=1 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=100 startx=48 starty=664 endx=1523 endy=780
labelspace=5 unitspace=0 labelcolor=Black length=1225 \
height=20 format=7.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
N1C2R target=N1C2_Targ label="   N1C2R" min=2000 max=9800 ticinter=250 labelinter=2
EEC_N2 label="  N2 EEC" units="default" min=12000 max=25000 ticinter=250 labelinter=4
$END-OBJECT
***********
$OBJECT Button font=100 startx=323 starty=77 endx=544 endy=148
TOGGLE OverRideSVScd_F setvalue=-1 onlabel="Stator Vane Sched\n(HPVOR) Overridden" offlabel="Override (HPVOR)\nStator Vane Sched" \
labelcolor=Black oncolor=Yellow offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=324 starty=152 endx=545 endy=223
TOGGLE OverRide25Bld_F setvalue=-1 onlabel="LPC B2.5 Bleed\nOverride ON" offlabel="LPC B2.5 Bleed\nOverride OFF" \
labelcolor=Black oncolor=Yellow offcolor=Cyan
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=324 starty=232 endx=548 endy=320
OverRide25Bld_F textcolor=Black
Green = 0 "LPC B2.5 Bleed\nOverride OFF"
Yellow = 1 "LPC B2.5 Bleed\nOverride ON"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=326 starty=334 endx=538 endy=430
labelspace=6 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
B25 type="FLOAT" width=5 prec=1 label="2.5 Bleed" units="default" 
LPCSVA type="FLOAT" width=5 prec=1 label="LPC SVA" units="default" 
HPCSVA type="FLOAT" width=5 prec=1 label="HPC SVA" units="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=572 starty=87 endx=830 endy=294
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Line font=1 startx=574 starty=130 endx=828 endy=132
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=95 startx=587 starty=95 endx=803 endy=125
Blue direction=1 alignment=0
"FAN/HPC Run-In"
$END-OBJECT
***********
$OBJECT Switch font=100 startx=589 starty=136 endx=812 endy=205
TOGGLE ArmRunInHPC_TB onlabel="Run-In HPC\nArmed/Pause" offlabel="ARM/UNPAUSE\nRun-In HPC" offcolor=Cyan oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=589 starty=208 endx=812 endy=272
MOMENTARY ResetRunInHPC_MB onlabel="Run-In HPC\nRESET" offlabel="RESET\nRun-In HPC" offcolor=DarkGray oncolor=Green 
$RELEASE
dummy:	storeevent ("Engine Run-In HPC RESET")
dummy:	startautotest (RunInHPCReset_ATP)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Box font=101 startx=620 starty=321 endx=790 endy=412
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=625 starty=371 endx=790 endy=376
linewidth=1 linecolor=Magenta
shading=-2
$END-OBJECT
***********
$OBJECT String font=100 startx=635 starty=384 endx=764 endy=407
RunInState labelspace=0 label="RUN-IN State:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
Blue = 0 "Not Started..."
Green = 1 "Running..."
Yellow = 2 "Paused..."
Red = 3 "Reset..."
Green = 4 "Resumed..."
Green = 5 "Complete..."
$END-OBJECT
***********
$OBJECT Box font=101 startx=644 starty=12 endx=977 endy=68
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=100 startx=667 starty=325 endx=733 endy=371
Black direction=1 alignment=1
"Run-In"
"State"
$END-OBJECT
***********
$OBJECT Text font=96 startx=678 starty=20 endx=951 endy=59
BurntOrange direction=1 alignment=0
"ENGINE RUN-IN"
$END-OBJECT
***********
$OBJECT Box font=101 startx=859 starty=88 endx=1134 endy=292
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Digital font=98 startx=868 starty=145 endx=1127 endy=285
labelspace=7 unitspace=1 spacing=4 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
P2T2PHeatCurr type="FLOAT" width=5 prec=2 label="P2T2 Heat" units="default" 
TT2SELF type="FLOAT" width=5 prec=1 label="TT2 SEL" units="default" 
CITDegF type="FLOAT" width=5 prec=1 label="CIT" units="default" 
RunInT2Start type="FLOAT" width=5 prec=1 label="TT2 @ Start" units="default" 
RunInT2Diff type="FLOAT" width=5 prec=1 label="TT2 Diff" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=902 starty=325 endx=1066 endy=352
Blue direction=1 alignment=0
"Elapsed Time"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=918 starty=354 endx=1053 endy=395
labelspace=0 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ElapsedTmTmr type="HOURS" width=8 prec=0 label="Elapsed Time Timer" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=1217 starty=148 endx=1371 endy=248
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT String font=97 startx=1233 starty=221 endx=1329 endy=240
TestDSUPN labelspace=0 label="DSU Data Plug PN:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=100 startx=1239 starty=124 endx=1350 endy=147
White direction=1 alignment=0
"DSU DATA"
$END-OBJECT
***********
$OBJECT Text font=97 startx=1245 starty=203 endx=1344 endy=222
Yellow direction=1 alignment=0
"TEST PLUG:"
$END-OBJECT
***********
$OBJECT Text font=97 startx=1248 starty=159 endx=1333 endy=178
Yellow direction=1 alignment=0
"TEST ESN:"
$END-OBJECT
***********
$OBJECT String font=97 startx=1251 starty=180 endx=1336 endy=199
EECEngSN labelspace=0 label="DSU ENG ESN:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=2 startx=1409 starty=520 endx=1544 endy=536
Yellow direction=1 alignment=0
"Obs.     Target"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1473 starty=662 endx=1602 endy=690
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2_Targ type="FLOAT" width=6 prec=1 label="N1C2 Target" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1474 starty=539 endx=1603 endy=567
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TRA_Targ type="FLOAT" width=6 prec=2 label="TRA Target" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1474 starty=601 endx=1603 endy=629
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TLA_Targ type="FLOAT" width=6 prec=2 label="TLA Target" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=1576 starty=771 endx=1812 endy=825
labelspace=7 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
StageTmrLim type="SECONDS" width=8 prec=0 label="Timer Limit:" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=2 startx=1666 starty=728 endx=1817 endy=761
MOMENTARY IncTmr_MB onlabel="Increase Timer" offlabel="Increase Timer" offcolor=DarkGray oncolor=Green 
$PUSH
StageTmr:Sec	(StageTmr + 10)
$END-PUSH
$END-OBJECT
***********
$HELP
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

