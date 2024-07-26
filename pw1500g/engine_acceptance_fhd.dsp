$DISPLAY "Engine Acceptance FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#C ********************************************************
#if	(ArmAcceptance_TB & (AcceptStage > 0))
dummy:	startautotest (Acceptance_ATP)
#elseif	(ArmAcceptance_TB & (AcceptStage = 0))
dummy:	StoreEvent ("Acceptance Test 9 (Started)")
AcceptStage:	1
AcceptStep:	1
StageTmr:Sec	0.0
StageTmr_F:	OFF
StepTxt:	concat ("Step " AcceptStep)
StepTxt:	concat (StepTxt ": ")
AcceptStageTxt:	concat (StepTxt "Acceptance Test 9 (Started)...")
#endif	
#C ********************************************************
$END-CALC
$STOREDISPLAY Append
$OBJECT String font=92 displayflag=AcceptT9_TS startx=10 starty=844 endx=297 endy=867
AcceptStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ShapedAccel_TS startx=10 starty=844 endx=297 endy=867
ShapedStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=10 starty=870 endx=1848 endy=871
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Bar font=100 startx=52 starty=714 endx=1527 endy=830
labelspace=5 unitspace=0 labelcolor=Black length=1225 \
height=20 format=7.3 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
TRA_Actual target=TRA_Targ label="       TRA" units="default" min=-14 max=35 ticinter=1 labelinter=2
EEC_TLA target=TLA_Targ label="EEC TLA" units="default" min=0 max=48 ticinter=1 labelinter=2
$END-OBJECT
***********
$OBJECT Box font=101 startx=269 starty=326 endx=607 endy=698
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=1 startx=269 starty=496 endx=606 endy=497
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=1 startx=270 starty=7 endx=1493 endy=310
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=1 startx=271 starty=361 endx=606 endy=362
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=271 starty=426 endx=606 endy=427
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=273 starty=95 endx=1493 endy=98
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=273 starty=232 endx=1492 endy=235
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=274 starty=105 endx=454 endy=290
labelspace=4 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FnMax type="FLOAT" width=5 prec=0 label="  Max" 
FNTR2 type="FLOAT" width=5 prec=0 label="  Cor" 
FnMin type="FLOAT" width=5 prec=0 label="  Min" 
dummy type="FLOAT" width=0 prec=0 
FNTR2Delta type="FLOAT" width=5 prec=0 label="  Delta" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=289 starty=607 endx=608 endy=635
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
CowlAITemp type="FLOAT" width=6 prec=1 label="Cowl AI Temp:" units="default" 
$END-OBJECT
***********
$OBJECT String font=100 startx=308 starty=532 endx=584 endy=555
CAIOp_Stat labelspace=7 label="   CAI OPEN:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = 0 "Not Checked..."
Green = 1 "Passed..."
Red = 2 "Failed..."
Red = 3 "TIME Failed..."
$END-OBJECT
***********
$OBJECT String font=100 startx=311 starty=583 endx=587 endy=606
CAICl_Stat labelspace=7 label="CAI CLOSED:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = 0 "Not Checked..."
Green = 1 "Passed..."
Red = 2 "Failed..."
Red = 3 "TIME Failed..."
$END-OBJECT
***********
$OBJECT Digital font=100 startx=316 starty=366 endx=578 endy=430
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
LPCSVA type="FLOAT" width=6 prec=1 label="LPC SVA" units="default" 
HPCSVA type="FLOAT" width=6 prec=1 label="HPC SVA" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=322 starty=463 endx=546 endy=493
labelspace=8 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS3Q25 type="FLOAT" width=6 prec=3 label="PS3Q25 (HPCR)" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=351 starty=501 endx=540 endy=528
Blue direction=1 alignment=1
"Cowl AI CHECK"
$END-OBJECT
***********
$OBJECT Text font=101 startx=365 starty=433 endx=530 endy=460
Blue direction=1 alignment=1
"Other Params"
$END-OBJECT
***********
$OBJECT Line font=1 startx=366 starty=11 endx=367 endy=307
linewidth=1 linecolor=Blue
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=376 starty=11 endx=458 endy=92
Blue direction=1 alignment=1
"Target"
"FNTR2"
"(Lbs)"
$END-OBJECT
***********
$OBJECT Text font=101 startx=379 starty=334 endx=520 endy=361
Blue direction=1 alignment=1
"EEC Params"
$END-OBJECT
***********
$OBJECT Line font=1 startx=468 starty=11 endx=469 endy=307
linewidth=1 linecolor=Blue
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=479 starty=105 endx=559 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT49OP49Mx type="FLOAT" width=5 prec=1 
T49OP49C type="FLOAT" width=5 prec=1 
GGCCT49OP49Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT49Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=480 starty=10 endx=560 endy=91
Black direction=1 alignment=1
"T49"
"(T5)"
"(DegC)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=570 starty=11 endx=571 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=581 starty=10 endx=661 endy=91
Black direction=1 alignment=1
"T45"
"(ITT)"
"(DegC)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=581 starty=105 endx=661 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT45OP45Mx type="FLOAT" width=5 prec=1 
T45OP45C type="FLOAT" width=5 prec=1 
GGCCT45OP45Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT45Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Button font=101 startx=616 starty=326 endx=823 endy=406
TOGGLE ArmAcceptance_TB setvalue=-1 onlabel="Acceptance\nArmed" offlabel="Arm\nAcceptance" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=101 startx=616 starty=414 endx=823 endy=494
PHASE storeMIdle_ATP setvalue=-1 onlabel="Minimum Idle" offlabel="Minimum Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=101 startx=616 starty=502 endx=822 endy=582
PHASE storeAIdle_ATP setvalue=-1 onlabel="Approach Idle" offlabel="Approach Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Box font=101 displayflag=OilConsumpOFF_F startx=634 starty=593 endx=1010 endy=670
style=3
linewidth=2 linecolor=Cyan
boxcolor=Red
shading=2
$END-OBJECT
***********
$OBJECT Text font=101 displayflag=OilConsumpOFF_F startx=645 starty=601 endx=1000 endy=655
White direction=1 alignment=1
"Please start Oil Consumption"
"before running Performance."
$END-OBJECT
***********
$OBJECT Line font=1 startx=672 starty=11 endx=673 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=683 starty=105 endx=763 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT3OP3Mx type="FLOAT" width=5 prec=1 
T3OP3C type="FLOAT" width=5 prec=1 
GGCCT3OP3Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT3Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=686 starty=37 endx=766 endy=91
Black direction=1 alignment=1
"T3"
"(DegC)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=774 starty=11 endx=775 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=785 starty=37 endx=865 endy=91
Black direction=1 alignment=1
"T25"
"(DegC)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=785 starty=105 endx=865 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT25OP25Mx type="FLOAT" width=5 prec=1 
T25OP25C type="FLOAT" width=5 prec=1 
GGCCT25OP25Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT25Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Button font=101 startx=837 starty=327 endx=1049 endy=407
TOGGLE CowlAICk_F setvalue=-1 onlabel="Cowl AI ON\nCheck (Band D)" offlabel="Cowl AI OFF\nCheck (Band D)" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=101 startx=837 starty=414 endx=1048 endy=494
PHASE storeTOATB_ATP setvalue=-1 onlabel="TOATB" offlabel="TOATB" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=104 startx=837 starty=502 endx=1049 endy=582
PHASE storePerformance_ATP setvalue=-1 onlabel="A B C D" offlabel="A B C D" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Line font=1 startx=876 starty=11 endx=877 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=886 starty=38 endx=971 endy=92
Black direction=1 alignment=1
"N1C2D"
"(RPM)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=887 starty=105 endx=967 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCN1C2DMx type="FLOAT" width=5 prec=0 
N1C2D type="FLOAT" width=5 prec=0 
GGCCN1C2DMn type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
GGCCN1C2Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Line font=1 startx=978 starty=11 endx=979 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=986 starty=38 endx=1071 endy=92
Black direction=1 alignment=1
"N2C2D"
"(RPM)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=989 starty=105 endx=1069 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCN2C2DMx type="FLOAT" width=5 prec=0 
N2C2D type="FLOAT" width=5 prec=0 
GGCCN2C2DMn type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
GGCCN2C2Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Box font=101 startx=1060 starty=325 endx=1492 endy=697
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=101 startx=1063 starty=533 endx=1491 endy=534
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=1064 starty=366 endx=1491 endy=367
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=97 startx=1079 starty=376 endx=1453 endy=395
Blue direction=1 alignment=0
"Stored               Min          Max        Stored"
$END-OBJECT
***********
$OBJECT Line font=1 startx=1080 starty=11 endx=1081 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=401 endx=1119 endy=431
BandA textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=433 endx=1119 endy=463
BandB textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=464 endx=1119 endy=494
BandC textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=496 endx=1119 endy=526
BandD textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=549 endx=1119 endy=579
MIdle textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=586 endx=1119 endy=616
AIdle textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=623 endx=1119 endy=653
ZeroDrift textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1089 starty=657 endx=1119 endy=687
ToATB textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1091 starty=105 endx=1171 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCWFPLHCR2Mx type="FLOAT" width=5 prec=0 
WFPLHCR2 type="FLOAT" width=5 prec=0 
GGCCWFPLHCR2Mn type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
GGCCWFDelta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1098 starty=38 endx=1163 endy=92
Black direction=1 alignment=1
"WF"
"(PPH)"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=404 endx=1188 endy=425
BandA_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Band A"
Yellow = ON "Band A"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=437 endx=1185 endy=458
BandB_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Band B"
Yellow = ON "Band B"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=469 endx=1186 endy=490
BandC_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Band C"
Yellow = ON "Band C"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=501 endx=1188 endy=522
BandD_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Band D"
Yellow = ON "Band D"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=557 endx=1251 endy=578
MIdle_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Minimum Idle"
Yellow = ON "Minimum Idle"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=592 endx=1251 endy=613
AIdle_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Approach Idle"
Yellow = ON "Approach Idle"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=628 endx=1215 endy=649
ZeroDrift_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Zero Drift"
Yellow = ON "Zero Drift"
$END-OBJECT
***********
$OBJECT String font=99 startx=1120 starty=661 endx=1190 endy=682
BandA_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "TOATB"
Yellow = ON "TOATB"
$END-OBJECT
***********
$OBJECT Text font=101 startx=1164 starty=334 endx=1411 endy=361
Blue direction=1 alignment=0
"FNTR2 Targets (Lbs)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=1182 starty=11 endx=1183 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1193 starty=105 endx=1273 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCTSFCPLHCMx type="FLOAT" width=5 prec=3 
TSFCPLHC type="FLOAT" width=5 prec=3 
GGCCTSFCPLHCMn type="FLOAT" width=5 prec=3 
dummy type="FLOAT" width=0 prec=0 
GGCCTSFCDelta type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1201 starty=38 endx=1262 endy=65
Black direction=1 alignment=0
"TSFC"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1206 starty=398 endx=1278 endy=526
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FnAMin type="FLOAT" width=6 prec=0 
FnBMin type="FLOAT" width=6 prec=0 
FnCMin type="FLOAT" width=6 prec=0 
FnDMin type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Line font=1 startx=1284 starty=11 endx=1285 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1295 starty=105 endx=1375 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCP25Q2Mx type="FLOAT" width=5 prec=3 
P25Q2 type="FLOAT" width=5 prec=3 
GGCCP25Q2Mn type="FLOAT" width=5 prec=3 
dummy type="FLOAT" width=0 prec=0 
GGCCP25Q2Delta type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1298 starty=398 endx=1370 endy=526
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FnAMax type="FLOAT" width=6 prec=0 
FnBMax type="FLOAT" width=6 prec=0 
FnCMax type="FLOAT" width=6 prec=0 
FnDMax type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1303 starty=38 endx=1366 endy=65
Black direction=1 alignment=0
"LPCR"
$END-OBJECT
***********
$OBJECT Text font=2 startx=1356 starty=536 endx=1491 endy=632
Yellow direction=1 alignment=1
"^^^^^^^"
"NOTE:If Stored"
"is not within"
"Min/Max Limits,"
"RE-RUN"
"Acceptance."
$END-OBJECT
***********
$OBJECT Line font=1 startx=1386 starty=11 endx=1387 endy=307
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1392 starty=398 endx=1464 endy=526
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
BandA..FNTR2 type="FLOAT" width=6 prec=0 
BandB..FNTR2 type="FLOAT" width=6 prec=0 
BandC..FNTR2 type="FLOAT" width=6 prec=0 
BandD..FNTR2 type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1397 starty=105 endx=1477 endy=290
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCPS3Q2Mx type="FLOAT" width=5 prec=3 
PS3Q2 type="FLOAT" width=5 prec=3 
GGCCPS3Q2Mn type="FLOAT" width=5 prec=3 
dummy type="FLOAT" width=0 prec=0 
GGCCPS3Q2Delta type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1400 starty=38 endx=1468 endy=65
Black direction=1 alignment=0
"OPCR"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=1569 starty=783 endx=1822 endy=841
labelspace=7 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
StageTmrLim type="SECONDS" width=8 prec=0 label="         Limit:" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=2 startx=1657 starty=736 endx=1816 endy=770
MOMENTARY StageTmrAdv_TS onlabel="Increase Timer" offlabel="Increase Timer" offcolor=LightGray oncolor=Green 
$RELEASE
StageTmr:Sec	(StageTmr + 10)
$END-RELEASE
$END-OBJECT
***********
$HELP
"Remember to review your data on the Auxiliary screen before taking your points."
"Performance points "
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
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

