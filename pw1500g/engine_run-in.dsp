$DISPLAY "Engine Run-In" background=DarkGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Line font=101 startx=12 starty=847 endx=1227 endy=848
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
$OBJECT Bar font=100 startx=48 starty=541 endx=968 endy=657
labelspace=5 unitspace=1 labelcolor=Black length=729 \
height=20 format=7.3 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
TRA_Actual target=TRA_Targ label="       TRA" min=-15 max=35 ticinter=1 labelinter=2
EEC_TLA target=TLA_Targ label="EEC TLA" min=0 max=48 ticinter=1 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=100 startx=48 starty=664 endx=1027 endy=780
labelspace=5 unitspace=0 labelcolor=Black length=729 \
height=20 format=7.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
N1C2R target=N1C2_Targ label="   N1C2R" min=2000 max=9800 ticinter=250 labelinter=2
EEC_N2 label="  N2 EEC" units="default" min=12000 max=25000 ticinter=250 labelinter=4
$END-OBJECT
***********
$OBJECT Button font=100 startx=92 starty=71 endx=313 endy=142
TOGGLE OverRideSVScd_F setvalue=-1 onlabel="Stator Vane Sched\n(HPVOR) Overridden" offlabel="Override (HPVOR)\nStator Vane Sched" \
labelcolor=Black oncolor=Yellow offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=100 startx=93 starty=146 endx=314 endy=217
TOGGLE OverRide25Bld_F setvalue=-1 onlabel="LPC B2.5 Bleed\nOverride ON" offlabel="LPC B2.5 Bleed\nOverride OFF" \
labelcolor=Black oncolor=Yellow offcolor=Cyan
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=93 starty=226 endx=317 endy=314
OverRide25Bld_F textcolor=Black
Green = 0 "LPC B2.5 Bleed\nOverride OFF"
Yellow = 1 "LPC B2.5 Bleed\nOverride ON"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=95 starty=328 endx=307 endy=424
labelspace=6 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
B25 type="FLOAT" width=5 prec=1 label="2.5 Bleed" units="default" 
LPCSVA type="FLOAT" width=5 prec=1 label="LPC SVA" units="default" 
HPCSVA type="FLOAT" width=5 prec=1 label="HPC SVA" units="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=341 starty=81 endx=599 endy=288
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Line font=1 startx=343 starty=124 endx=597 endy=126
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=95 startx=356 starty=89 endx=572 endy=119
Blue direction=1 alignment=0
"FAN/HPC Run-In"
$END-OBJECT
***********
$OBJECT Switch font=100 startx=358 starty=130 endx=581 endy=199
TOGGLE ArmRunInHPC_TB onlabel="Run-In HPC\nArmed/Pause" offlabel="ARM/UNPAUSE\nRun-In HPC" offcolor=Cyan oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=358 starty=202 endx=581 endy=266
MOMENTARY ResetRunInHPC_MB onlabel="Run-In HPC\nRESET" offlabel="RESET\nRun-In HPC" offcolor=DarkGray oncolor=Green 
$RELEASE
dummy:	storeevent ("Engine Run-In HPC RESET")
dummy:	startautotest (RunInHPCReset_ATP)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Box font=101 startx=389 starty=315 endx=559 endy=406
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=394 starty=365 endx=559 endy=370
linewidth=1 linecolor=Magenta
shading=-2
$END-OBJECT
***********
$OBJECT String font=100 startx=404 starty=378 endx=533 endy=401
RunInState labelspace=0 label="RUN-IN State:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
Blue = 0 "Not Started..."
Green = 1 "Running..."
Yellow = 2 "Paused..."
Red = 3 "Reset..."
Green = 4 "Resumed..."
Green = 5 "Complete..."
$END-OBJECT
***********
$OBJECT Box font=101 startx=413 starty=6 endx=746 endy=62
style=2
boxcolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=100 startx=436 starty=319 endx=502 endy=365
Black direction=1 alignment=1
"Run-In"
"State"
$END-OBJECT
***********
$OBJECT Text font=104 startx=447 starty=14 endx=715 endy=53
BurntOrange direction=1 alignment=0
"ENGINE RUN-IN"
$END-OBJECT
***********
$OBJECT Box font=101 startx=628 starty=82 endx=903 endy=286
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Digital font=98 startx=637 starty=139 endx=896 endy=279
labelspace=7 unitspace=1 spacing=4 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
P2T2PHeatCurr type="FLOAT" width=5 prec=2 label="P2T2 Heat" units="default" 
TT2SELF type="FLOAT" width=5 prec=1 label="TT2 SEL" units="default" 
CITDegF type="FLOAT" width=5 prec=1 label="CIT" units="default" 
RunInT2Start type="FLOAT" width=5 prec=1 label="TT2 @ Start" units="default" 
RunInT2Diff type="FLOAT" width=5 prec=1 label="TT2 Diff" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=671 starty=319 endx=835 endy=346
Blue direction=1 alignment=0
"Elapsed Time"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=687 starty=348 endx=822 endy=389
labelspace=0 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ElapsedTmTmr type="HOURS" width=8 prec=0 label="Elapsed Time Timer" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=913 starty=520 endx=1048 endy=536
Yellow direction=1 alignment=0
"Obs.     Target"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=963 starty=773 endx=1199 endy=827
labelspace=7 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
StageTmrLim type="SECONDS" width=8 prec=0 label="Timer Limit:" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=977 starty=662 endx=1106 endy=690
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2_Targ type="FLOAT" width=6 prec=1 label="N1C2 Target" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=978 starty=539 endx=1107 endy=567
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TRA_Targ type="FLOAT" width=6 prec=2 label="TRA Target" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=978 starty=601 endx=1107 endy=629
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TLA_Targ type="FLOAT" width=6 prec=2 label="TLA Target" units="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=986 starty=142 endx=1140 endy=242
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT String font=97 startx=1002 starty=215 endx=1098 endy=234
TestDSUPN labelspace=0 label="DSU Data Plug PN:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=100 startx=1008 starty=118 endx=1119 endy=141
White direction=1 alignment=0
"DSU DATA"
$END-OBJECT
***********
$OBJECT Text font=97 startx=1014 starty=197 endx=1113 endy=216
Yellow direction=1 alignment=0
"TEST PLUG:"
$END-OBJECT
***********
$OBJECT Text font=97 startx=1017 starty=153 endx=1102 endy=172
Yellow direction=1 alignment=0
"TEST ESN:"
$END-OBJECT
***********
$OBJECT String font=97 startx=1020 starty=174 endx=1105 endy=193
EECEngSN labelspace=0 label="DSU ENG ESN:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Switch font=2 startx=1053 starty=730 endx=1204 endy=763
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
$END-HELP
$END-DISPLAY

