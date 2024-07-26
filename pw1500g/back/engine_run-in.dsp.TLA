$DISPLAY "Engine Run-In" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
N1_ADBar_F:	OFF
$END-CALC
$CALC
#C **** See loopcalc.cal for FN/N1_ADBar_F calcs **********
#C **************** Pause RUN-IN Procedures ***************
#C ********************************************************
#C N1C2R (Cannot find this Calculated parameter, NEEDFIX)
N1C2R:RPM	N1C2D
RunInTLA:Deg	TLA_Actual
RunInStage_F:	inrange (1 RunInStage 1150)
BrkInStage_F:	inrange (1 BrkInStage 395)
#C HPCStageTmr_F: (ArmRunInHPC_TB & StageTmr_F)
#C ********************************************************
#if	(ArmRunInHPC_TB & RunInStage_F & RunInPause_F)
dummy:	StoreEvent ("Engine Run-In Table 4 HPC (Resumed)")
StageTmr_F:	RunInTmrState_F
RunInStageTxt:	concat (StageTxt "")
RunInStage:	Stage
RunInPause_F:	OFF
RunInState:	4
#elseif	(ArmRunInHPC_TB & (RunInStage > 0))
dummy:	startautotest (RunInHPC_ATP)
#elseif	(ArmRunInHPC_TB & (RunInStage = 0))
dummy:	StoreEvent ("Engine Run-In Table 4 HPC (Started)")
RunInStage:	1
RunInNibble:	1
RunInStep:	1
StepTxt:	concat ("Step " RunInStep)
StepTxt:	concat (StepTxt ": ")
RunInStageTxt:	concat (StepTxt "Engine Run-In Table 4 HPC (Started)...")
RunInState:	1
#elseif	(~ArmRunInHPC_TB & RunInStage_F & ~RunInPause_F)
dummy:	StoreEvent ("Engine Run-In Table 4 HPC (PAUSED)")
StageTxt:	concat (RunInStageTxt "")
RunInTmrState_F:	StageTmr_F
Stage:	RunInStage
RunInPause_F:	ON
RunInState:	2
RunInStageTxt:	concat (StepTxt "Table 5 HPT Damper Seal Break-In Paused at Stage: ")
RunInStageTxt:	concat (RunInStageTxt RunInStage)
StageTmr_F:	OFF
#endif	
#C ********************************************************
#if	(ArmBrkInHPT_TB & BrkInStage_F & BrkInPause_F)
dummy:	StoreEvent ("Table 5 HPT Damper Seal Break-In (Resumed)")
StageTmr_F:	BrkInTmrState_F
BrkInStageTxt:	concat (StageTxt "")
BrkInStage:	Stage
BrkInPause_F:	OFF
BrkInState:	4
#elseif	(ArmBrkInHPT_TB & (BrkInStage > 0))
dummy:	startautotest (BrkInHPT_ATP)
#elseif	(ArmBrkInHPT_TB & (BrkInStage = 0))
dummy:	StoreEvent ("Table 5 HPT Damper Seal Break-In (Started)")
BrkInStage:	1
BrkInNibble:	1
BrkInStep:	1
StepTxt:	concat ("Step " BrkInStep)
StepTxt:	concat (StepTxt ": ")
BrkInStageTxt:	concat (StepTxt "Table 5 HPT Damper Seal Break-In (Started)...")
BrkInState:	1
#elseif	(~ArmBrkInHPT_TB & BrkInStage_F & ~BrkInPause_F)
dummy:	StoreEvent ("Table 5 HPT Damper Seal Break-In (PAUSED)")
StageTxt:	concat (BrkInStageTxt "")
BrkInTmrState_F:	StageTmr_F
Stage:	RunInStage
BrkInPause_F:	ON
BrkInState:	2
BrkInStageTxt:	concat (StepTxt "Table 5 HPT Damper Seal Break-In Paused at Stage: ")
BrkInStageTxt:	concat (BrkInStageTxt BrkInStage)
StageTmr_F:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Bar font=102 startx=54 starty=621 endx=921 endy=749
labelspace=4 unitspace=1 labelcolor=Black length=679 \
height=25 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
RunInTLA target=TLA_Targ label="TLA" min=0 max=46 ticinter=1 labelinter=2
N1C2R target=N1C2_Targ label="N1C2R" min=1500 max=9800 ticinter=400 labelinter=2
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmBrkInHPT_TB startx=55 starty=812 endx=335 endy=837
BrkInStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmRunInHPC_TB startx=56 starty=813 endx=340 endy=838
RunInStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Line font=101 startx=57 starty=839 endx=1122 endy=840
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Text font=2 startx=58 starty=717 endx=139 endy=749
Yellow direction=1 alignment=0
"Reference"
"Only"
$END-OBJECT
***********
$OBJECT Digital font=92 displayflag=ArmRunInHPC_TB startx=63 starty=779 endx=197 endy=807
labelspace=5 unitspace=1 spacing=1 labelcolor=Yellow parambox=2 paramboxcolor=Black shading=-2
RunInNibble type="INTEGER" width=3 prec=0 label="Nibble #" 
$END-OBJECT
***********
$OBJECT Digital font=92 displayflag=ArmBrkInHPT_TB startx=64 starty=779 endx=198 endy=807
labelspace=5 unitspace=1 spacing=1 labelcolor=Yellow parambox=2 paramboxcolor=Black shading=-2
BrkInNibble type="INTEGER" width=3 prec=0 label="Nibble #" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=117 starty=339 endx=329 endy=403
labelspace=6 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
B25 type="FLOAT" width=5 prec=1 label="2.5 Bleed" units="default" 
LPCSVA type="FLOAT" width=5 prec=1 label="LPC SVA" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=118 starty=432 endx=282 endy=459
Blue direction=1 alignment=0
"Elapsed Time"
$END-OBJECT
***********
$OBJECT Box font=101 startx=118 starty=504 endx=288 endy=595
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=123 starty=554 endx=288 endy=559
linewidth=1 linecolor=Magenta
shading=-2
$END-OBJECT
***********
$OBJECT String font=100 startx=133 starty=567 endx=262 endy=590
RunInState labelspace=0 label="RUN-IN State:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
Blue = 0 "Not Started..."
Green = 1 "Running..."
Yellow = 2 "Paused..."
Red = 3 "Reset..."
Green = 4 "Resumed..."
Green = 5 "Complete..."
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=137 starty=116 endx=361 endy=204
L273B15 textcolor=Black
Green = 0 "LPC 2.5 Bleed\nUnder Control"
Yellow = 1 "Unable to Control\nLPC 2.5 Bleed"
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=138 starty=203 endx=362 endy=291
OverRideB25Bld_F textcolor=Black
Green = 0 "LPC 2.5 Bleed\nNormal"
Yellow = 1 "LPC 2.5 Bleed\n>25% Overridden"
$END-OBJECT
***********
$OBJECT String font=101 startx=139 starty=299 endx=349 endy=326
OverRideB25Bld_F labelspace=0 label="Override LPC Bleed" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
Blue = 0 "    LPC Normal"
Magenta = 1 "LPC > 25% Stroke"
$END-OBJECT
***********
$OBJECT Text font=100 startx=165 starty=508 endx=231 endy=554
Black direction=1 alignment=1
"Run-In"
"State"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=167 starty=463 endx=242 endy=504
labelspace=0 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ElapsedTmTmr type="FLOAT" width=5 prec=2 label="Elapsed Time Timer" 
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmRunInHPC_TB startx=220 starty=781 endx=452 endy=804
RunInNibble labelspace=0 label="" labelcolor=Black stringcolor=LightGray parambox=0 paramboxcolor=Black shading=0
LightGray < 17 "Shaped Accel Rate"
Yellow = 17 "Shaped 1.4x Accel Rate"
Yellow = 18 "Shaped 1.8x Accel Rate"
Yellow = 19 "Shaped 2.0x Accel Rate"
Yellow = 20 "Shaped 2.2x Accel Rate"
Green = 21 "Done"
$END-OBJECT
***********
$OBJECT Box font=101 startx=353 starty=9 endx=686 endy=65
style=2
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=104 startx=387 starty=17 endx=655 endy=56
Blue direction=1 alignment=0
"ENGINE RUN-IN"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=393 starty=295 endx=643 endy=323
labelspace=5 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TT2SELF type="FLOAT" width=5 prec=1 label="TT2 SEL" units="default" 
$END-OBJECT
***********
$OBJECT Button font=100 startx=399 starty=212 endx=620 endy=283
TOGGLE OverrideSVSched_F setvalue=-1 onlabel="Stator Vane\n2.5 Over ridden" offlabel="Stator Vane\n2.5 Override" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=101 startx=660 starty=313 endx=903 endy=511
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Box font=101 startx=661 starty=80 endx=903 endy=269
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Line font=1 startx=663 starty=349 endx=900 endy=351
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=664 starty=119 endx=901 endy=121
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=95 startx=669 starty=86 endx=885 endy=116
Blue direction=1 alignment=0
"FAN/HPC Run-In"
$END-OBJECT
***********
$OBJECT Switch font=100 startx=687 starty=360 endx=866 endy=420
TOGGLE ArmBrkInHPT_TB onlabel="Table 5 Break-In\nArmed/Pause" offlabel="ARM/UNPAUSE\nTable 5 Break-In" offcolor=Cyan oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=687 starty=425 endx=866 endy=485
MOMENTARY ResetBrkInHPT_MB onlabel="Break-In RESET\nTable 5" offlabel="RESET Break-In\nTable 5" offcolor=DarkGray oncolor=Green 
$RELEASE
dummy:	storeevent ("Table 5 Break-In Damper Seal (HPT) RESET")
dummy:	startautotest (BrkInHPTReset_ATP)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=688 starty=136 endx=867 endy=196
TOGGLE ArmRunInHPC_TB onlabel="Table 4 Run-In\nArmed/Pause" offlabel="ARM/UNPAUSE\nTable 4 Run-In" offcolor=Cyan oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=688 starty=199 endx=867 endy=259
MOMENTARY ResetRunInHPC_MB onlabel="Run-In RESET\nTable 4" offlabel="RESET Run-In\nTable 4" offcolor=DarkGray oncolor=Green 
$RELEASE
dummy:	storeevent ("Engine Run-In Table 4 (HPC) RESET")
dummy:	startautotest (RunInHPCReset_ATP)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Text font=95 startx=693 starty=319 endx=869 endy=349
Blue direction=1 alignment=0
"HPT Break-In"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=737 starty=776 endx=1035 endy=804
labelspace=7 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="HOURS" width=8 prec=0 label="Stage Timer:" units="default" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=874 starty=598 endx=1009 endy=614
Yellow direction=1 alignment=0
"Obs.     Target"
$END-OBJECT
***********
$OBJECT Digital font=102 startx=930 starty=687 endx=1098 endy=721
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2_Targ type="FLOAT" width=6 prec=1 label="N1C2 Target" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=102 startx=931 starty=619 endx=1099 endy=653
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TLA_Targ type="FLOAT" width=6 prec=1 label="TLA Target" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=2 startx=1039 starty=773 endx=1190 endy=806
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

