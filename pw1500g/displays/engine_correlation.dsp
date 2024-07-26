$DISPLAY "Engine Correlation" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
CorrN1C2D:RPM	N1C2_SLS
#C ***** REF: PW1500G TIS Rev C *****
#C ***** Page: 97, 9.3.1 Table A-1 Schedule A *****
C0_F:	(inrange (C0TargMn CorrN1C2D C0TargMx) & (CorrStep = 1))
D1_F:	(inrange (D1TargMn CorrN1C2D D1TargMx) & inrange (2 CorrStep 3))
D2_F:	(inrange (D2TargMn CorrN1C2D D2TargMx) & inrange (4 CorrStep 5))
C1_F:	(inrange (C1TargMn CorrN1C2D C1TargMx) & inrange (6 CorrStep 7))
C2_F:	(inrange (C2TargMn CorrN1C2D C2TargMx) & inrange (8 CorrStep 9))
C3_F:	(inrange (C3TargMn CorrN1C2D C3TargMx) & inrange (10 CorrStep 11))
C4_F:	(inrange (C4TargMn CorrN1C2D C4TargMx) & inrange (13 CorrStep 13))
C5_F:	(inrange (C5TargMn CorrN1C2D C5TargMx) & inrange (14 CorrStep 15))
C6_F:	(inrange (C6TargMn CorrN1C2D C6TargMx) & inrange (16 CorrStep 17))
C7_F:	(inrange (C7TargMn CorrN1C2D C7TargMx) & inrange (18 CorrStep 19))
C8_F:	(inrange (C8TargMn CorrN1C2D C8TargMx) & inrange (20 CorrStep 21))
C9_F:	(inrange (C9TargMn CorrN1C2D C9TargMx) & inrange (22 CorrStep 23))
C10_F:	(inrange (C10TargMn CorrN1C2D C10TargMx) & inrange (24 CorrStep 25))
C11_F:	(inrange (C11TargMn CorrN1C2D C11TargMx) & inrange (26 CorrStep 27))
C12_F:	(inrange (C12TargMn CorrN1C2D C12TargMx) & inrange (28 CorrStep 29))
D3_F:	(inrange (D3TargMn CorrN1C2D D3TargMx) & inrange (30 CorrStep 31))
D4_F:	(inrange (D4TargMn CorrN1C2D D4TargMx) & inrange (32 CorrStep 33))
C13_F:	(inrange (C13TargMn CorrN1C2D C13TargMx) & inrange (34 CorrStep 35))
CorrN1C2_F:	(D1_F | D2_F | D3_F | D4_F | C0_F | C1_F | C2_F | C3_F | C4_F | C5_F | C6_F | C7_F | C8_F | C9_F | C10_F | C11_F | C12_F | C13_F)
#if	D1_F
N1C2DMx:RPM	D1TargMx
N1C2DMn:RPM	D1TargMn
#elseif	D2_F
N1C2DMx:RPM	D2TargMx
N1C2DMn:RPM	D2TargMn
#elseif	D3_F
N1C2DMx:RPM	D3TargMx
N1C2DMn:RPM	D3TargMn
#elseif	D4_F
N1C2DMx:RPM	D4TargMx
N1C2DMn:RPM	D4TargMn
#elseif	C0_F
N1C2DMx:RPM	C0TargMx
N1C2DMn:RPM	C0TargMn
#elseif	C1_F
N1C2DMx:RPM	C1TargMx
N1C2DMn:RPM	C1TargMn
#elseif	C2_F
N1C2DMx:RPM	C2TargMx
N1C2DMn:RPM	C2TargMn
#elseif	C3_F
N1C2DMx:RPM	C3TargMx
N1C2DMn:RPM	C3TargMn
#elseif	C4_F
N1C2DMx:RPM	C4TargMx
N1C2DMn:RPM	C4TargMn
#elseif	C5_F
N1C2DMx:RPM	C5TargMx
N1C2DMn:RPM	C5TargMn
#elseif	C6_F
N1C2DMx:RPM	C6TargMx
N1C2DMn:RPM	C6TargMn
#elseif	C7_F
N1C2DMx:RPM	C7TargMx
N1C2DMn:RPM	C7TargMn
#elseif	C8_F
N1C2DMx:RPM	C8TargMx
N1C2DMn:RPM	C8TargMn
#elseif	C9_F
N1C2DMx:RPM	C9TargMx
N1C2DMn:RPM	C9TargMn
#elseif	C10_F
N1C2DMx:RPM	C10TargMx
N1C2DMn:RPM	C10TargMn
#elseif	C11_F
N1C2DMx:RPM	C11TargMx
N1C2DMn:RPM	C11TargMn
#elseif	C12_F
N1C2DMx:RPM	C12TargMx
N1C2DMn:RPM	C12TargMn
#endif	
#C ==============================================
#if	(CorrN1C2D < N1C2DMn)
CorrN1C2Delta:RPM	(CorrN1C2D - N1C2DMn)
#elseif	(CorrN1C2D > N1C2DMx)
CorrN1C2Delta:RPM	(CorrN1C2D - N1C2DMx)
#else	
CorrN1C2Delta:RPM	0.0
#endif	
#C ==============================================
N1C2DMxY:RPM	(N1C2DMx + N1C2TargBand)
N1C2DMnY:RPM	(N1C2DMn - N1C2TargBand)
#if	(CorrN1C2D < N1C2DMnY)
CorrN1C2DeltaY:RPM	(CorrN1C2D - N1C2DMnY)
#elseif	(CorrN1C2D > N1C2DMxY)
CorrN1C2DeltaY:RPM	(CorrN1C2D - N1C2DMxY)
#else	
CorrN1C2DeltaY:RPM	0.0
#endif	
#C ********************************************************
#if	(ArmCorrelation_TB & (CorrStage > 0))
dummy:	startautotest (Correlation_ATP)
#elseif	(ArmCorrelation_TB & (CorrStage = 0))
dummy:	StoreEvent ("Correlation Test (Started)")
CorrStage:	1
CorrStep:	1
StageTmr:Sec	0.0
StageTmr_F:	OFF
StepTxt:	concat ("Step " CorrStep)
StepTxt:	concat (StepTxt ": ")
CorrStageTxt:	concat (StepTxt "Correlation Test (Started)...")
#endif	
#C ********************************************************
$END-CALC
$STOREDISPLAY Append
$OBJECT Box font=1 startx=5 starty=0 endx=1237 endy=303
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT String font=92 startx=6 starty=834 endx=293 endy=857
CorrStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=7 starty=863 endx=1218 endy=864
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=8 starty=224 endx=1234 endy=227
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=9 starty=88 endx=1236 endy=91
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=12 starty=319 endx=343 endy=686
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Bar font=100 startx=13 starty=691 endx=909 endy=807
labelspace=5 unitspace=0 labelcolor=Black length=646 \
height=20 format=7.3 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
TRA_Actual target=TRA_Targ label="       TRA" units="default" min=-15 max=35 ticinter=1 labelinter=2
EEC_TLA target=TLA_Targ label="EEC TLA" units="default" min=0 max=49 ticinter=1 labelinter=2
$END-OBJECT
***********
$OBJECT Line font=1 startx=15 starty=485 endx=339 endy=488
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=18 starty=98 endx=198 endy=283
labelspace=4 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2DMx type="FLOAT" width=5 prec=0 label="  Max" 
CorrN1C2D type="FLOAT" width=5 prec=0 label="  Cor" 
N1C2DMn type="FLOAT" width=5 prec=0 label="  Min" 
dummy type="FLOAT" width=0 prec=0 
CorrN1C2Delta type="FLOAT" width=5 prec=0 label="  Delta" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=26 starty=527 endx=250 endy=557
labelspace=8 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS3Q25 type="FLOAT" width=6 prec=3 label="PS3Q25 (HPCR)" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=41 starty=353 endx=303 endy=449
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
LPCSVA type="FLOAT" width=6 prec=1 label="LPC SVA" units="default" 
HPCSVA type="FLOAT" width=6 prec=1 label="HPC SVA" units="default" 
HPCBVPOS type="FLOAT" width=6 prec=1 label="HPC BV" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=101 starty=492 endx=266 endy=519
Blue direction=1 alignment=1
"Other Params"
$END-OBJECT
***********
$OBJECT Line font=1 startx=110 starty=4 endx=111 endy=300
linewidth=1 linecolor=Blue
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=115 starty=323 endx=256 endy=350
Blue direction=1 alignment=1
"EEC Params"
$END-OBJECT
***********
$OBJECT Text font=101 startx=120 starty=4 endx=205 endy=85
Blue direction=1 alignment=1
"Target"
"N1C2D"
"(RPM)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=212 starty=4 endx=213 endy=300
linewidth=1 linecolor=Blue
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=223 starty=98 endx=303 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT49OP49Mx type="FLOAT" width=5 prec=1 
T49OP49C type="FLOAT" width=5 prec=1 
GGCCT49OP49Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT49Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=224 starty=3 endx=304 endy=84
Black direction=1 alignment=1
"T49"
"(T5)"
"(DegC)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=314 starty=4 endx=315 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=325 starty=3 endx=405 endy=84
Black direction=1 alignment=1
"T45"
"(ITT)"
"(DegC)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=325 starty=98 endx=405 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT45OP45Mx type="FLOAT" width=5 prec=1 
T45OP45C type="FLOAT" width=5 prec=1 
GGCCT45OP45Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT45Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Button font=101 startx=364 starty=329 endx=584 endy=409
TOGGLE ArmCorrelation_TB setvalue=-1 onlabel="Correlation\nArmed" offlabel="Arm\nCorrelation" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=101 startx=365 starty=420 endx=585 endy=500
PHASE storeMIdle_ATP setvalue=-1 onlabel="Minimum Idle" offlabel="Minimum Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=101 startx=365 starty=607 endx=585 endy=687
PHASE storeCorrelation_ATP setvalue=-1 onlabel="Correlation\nPoint" offlabel="Correlation\nPoint" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=101 startx=367 starty=513 endx=587 endy=593
PHASE storeAIdle_ATP setvalue=-1 onlabel="Approach Idle" offlabel="Approach Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Line font=1 startx=416 starty=4 endx=417 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=427 starty=98 endx=507 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT3OP3Mx type="FLOAT" width=5 prec=1 
T3OP3C type="FLOAT" width=5 prec=1 
GGCCT3OP3Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT3Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=430 starty=30 endx=510 endy=84
Black direction=1 alignment=1
"T3"
"(DegC)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=518 starty=4 endx=519 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=529 starty=30 endx=609 endy=84
Black direction=1 alignment=1
"T25"
"(DegC)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=529 starty=98 endx=609 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCT25OP25Mx type="FLOAT" width=5 prec=1 
T25OP25C type="FLOAT" width=5 prec=1 
GGCCT25OP25Mn type="FLOAT" width=5 prec=1 
dummy type="FLOAT" width=0 prec=0 
GGCCT25Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Box font=101 startx=601 starty=346 endx=916 endy=684
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=605 starty=527 endx=915 endy=528
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=97 startx=618 starty=370 endx=871 endy=389
Blue direction=1 alignment=0
"Stored            Min          Max"
$END-OBJECT
***********
$OBJECT Line font=1 startx=620 starty=4 endx=621 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=625 starty=390 endx=655 endy=420
D1 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=625 starty=420 endx=655 endy=450
D2 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=625 starty=450 endx=655 endy=480
D3 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=625 starty=480 endx=655 endy=510
D4 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT Text font=101 startx=630 starty=31 endx=712 endy=85
Black direction=1 alignment=1
"FNTR2"
"(Lbs)"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=630 starty=558 endx=660 endy=588
MIdle textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=630 starty=592 endx=660 endy=622
AIdle textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=630 starty=625 endx=660 endy=655
ZeroDrift textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT Digital font=103 startx=631 starty=98 endx=711 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNTR2_TargMx type="FLOAT" width=5 prec=0 
FNTR2 type="FLOAT" width=5 prec=0 
FNTR2_TargMn type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
FNTR2Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT String font=99 startx=677 starty=397 endx=705 endy=420
D1_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "D1"
Yellow = ON "D1"
$END-OBJECT
***********
$OBJECT String font=99 startx=677 starty=427 endx=705 endy=450
D2_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "D2"
Yellow = ON "D2"
$END-OBJECT
***********
$OBJECT String font=99 startx=677 starty=457 endx=705 endy=480
D3_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "D3"
Yellow = ON "D3"
$END-OBJECT
***********
$OBJECT String font=99 startx=677 starty=487 endx=705 endy=510
D4_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "D4"
Yellow = ON "D4"
$END-OBJECT
***********
$OBJECT Text font=2 startx=680 starty=355 endx=860 endy=371
Yellow direction=1 alignment=0
"Deterioration Points"
$END-OBJECT
***********
$OBJECT String font=99 startx=683 starty=563 endx=824 endy=586
GIdle_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Minimum Idle"
Yellow = ON "Minimum Idle"
$END-OBJECT
***********
$OBJECT String font=99 startx=683 starty=592 endx=814 endy=613
AIdle_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Approach Idle"
Yellow = ON "Approach Idle"
$END-OBJECT
***********
$OBJECT String font=99 startx=683 starty=629 endx=778 endy=650
ZeroDrift_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "Zero Drift"
Yellow = ON "Zero Drift"
$END-OBJECT
***********
$OBJECT Text font=2 startx=699 starty=536 endx=807 endy=552
Yellow direction=1 alignment=0
"Other Points"
$END-OBJECT
***********
$OBJECT Line font=1 startx=722 starty=4 endx=723 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=725 starty=390 endx=797 endy=510
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
D1TargMn type="FLOAT" width=6 prec=0 
D2TargMn type="FLOAT" width=6 prec=0 
D3TargMn type="FLOAT" width=6 prec=0 
D4TargMn type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Text font=101 startx=730 starty=31 endx=815 endy=85
Black direction=1 alignment=1
"N2C2D"
"(RPM)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=733 starty=98 endx=813 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCN2C2DMx type="FLOAT" width=5 prec=0 
N2C2D type="FLOAT" width=5 prec=0 
GGCCN2C2DMn type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
GGCCN2C2Delta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=817 starty=315 endx=1060 endy=342
Blue direction=1 alignment=0
"N1C2 Targets (RPM)"
$END-OBJECT
***********
$OBJECT Line font=1 startx=824 starty=4 endx=825 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=824 starty=390 endx=896 endy=510
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
D1TargMx type="FLOAT" width=6 prec=0 
D2TargMx type="FLOAT" width=6 prec=0 
D3TargMx type="FLOAT" width=6 prec=0 
D4TargMx type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=835 starty=98 endx=915 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCWFPLHCR2Mx type="FLOAT" width=5 prec=0 
WFPLHCR2 type="FLOAT" width=5 prec=0 
GGCCWFPLHCR2Mn type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
GGCCWFDelta type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=842 starty=31 endx=907 endy=85
Black direction=1 alignment=1
"WF"
"(PPH)"
$END-OBJECT
***********
$OBJECT Box font=101 startx=920 starty=345 endx=1224 endy=761
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=390 endx=955 endy=420
C1 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=420 endx=955 endy=450
C2 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=450 endx=955 endy=480
C3 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=480 endx=955 endy=510
C4 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=510 endx=955 endy=540
C5 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=540 endx=955 endy=570
C6 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=570 endx=955 endy=600
C7 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=600 endx=955 endy=630
C8 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=630 endx=955 endy=660
C9 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=660 endx=955 endy=690
C10 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=690 endx=955 endy=720
C11 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=925 starty=720 endx=955 endy=750
C12 textcolor=Black
DarkGray = OFF ""
Green = ON ""
$END-OBJECT
***********
$OBJECT Line font=1 startx=926 starty=4 endx=927 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=937 starty=98 endx=1017 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCTSFCPLHCMx type="FLOAT" width=5 prec=3 
TSFCPLHC type="FLOAT" width=5 prec=3 
GGCCTSFCPLHCMn type="FLOAT" width=5 prec=3 
dummy type="FLOAT" width=0 prec=0 
GGCCTSFCDelta type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Text font=97 startx=939 starty=371 endx=1174 endy=390
Blue direction=1 alignment=0
"Stored         Min          Max"
$END-OBJECT
***********
$OBJECT Text font=101 startx=945 starty=31 endx=1006 endy=58
Black direction=1 alignment=0
"TSFC"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=962 starty=772 endx=1215 endy=830
labelspace=7 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
StageTmrLim type="SECONDS" width=8 prec=0 label="         Limit:" units="default" 
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=394 endx=1005 endy=417
C1_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C1"
Yellow = ON "C1"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=423 endx=1007 endy=446
C2_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C2"
Yellow = ON "C2"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=454 endx=1005 endy=477
C3_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C3"
Yellow = ON "C3"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=484 endx=1005 endy=507
C4_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C4"
Yellow = ON "C4"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=514 endx=1005 endy=537
C5_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C5"
Yellow = ON "C5"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=544 endx=1005 endy=567
C6_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C6"
Yellow = ON "C6"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=574 endx=1005 endy=597
C7_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C7"
Yellow = ON "C7"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=604 endx=1005 endy=627
C8_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C8"
Yellow = ON "C8"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=634 endx=1005 endy=657
C9_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C9"
Yellow = ON "C9"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=664 endx=1005 endy=687
C10_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C10"
Yellow = ON "C10"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=694 endx=1005 endy=717
C11_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C11"
Yellow = ON "C11"
$END-OBJECT
***********
$OBJECT String font=99 startx=979 starty=724 endx=1005 endy=747
C12_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = OFF "C12"
Yellow = ON "C12"
$END-OBJECT
***********
$OBJECT Text font=2 startx=992 starty=354 endx=1154 endy=370
Yellow direction=1 alignment=0
"Correlation Points"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1024 starty=390 endx=1096 endy=750
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
C1TargMn type="FLOAT" width=6 prec=0 
C2TargMn type="FLOAT" width=6 prec=0 
C3TargMn type="FLOAT" width=6 prec=0 
C4TargMn type="FLOAT" width=6 prec=0 
C5TargMn type="FLOAT" width=6 prec=0 
C6TargMn type="FLOAT" width=6 prec=0 
C7TargMn type="FLOAT" width=6 prec=0 
C8TargMn type="FLOAT" width=6 prec=0 
C9TargMn type="FLOAT" width=6 prec=0 
C10TargMn type="FLOAT" width=6 prec=0 
C11TargMn type="FLOAT" width=6 prec=0 
C12TargMn type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Line font=1 startx=1028 starty=4 endx=1029 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1039 starty=98 endx=1119 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCP25Q2Mx type="FLOAT" width=5 prec=3 
P25Q2 type="FLOAT" width=5 prec=3 
GGCCP25Q2Mn type="FLOAT" width=5 prec=3 
dummy type="FLOAT" width=0 prec=0 
GGCCP25Q2Delta type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1047 starty=31 endx=1110 endy=58
Black direction=1 alignment=0
"LPCR"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1116 starty=390 endx=1188 endy=750
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
C1TargMx type="FLOAT" width=6 prec=0 
C2TargMx type="FLOAT" width=6 prec=0 
C3TargMx type="FLOAT" width=6 prec=0 
C4TargMx type="FLOAT" width=6 prec=0 
C5TargMx type="FLOAT" width=6 prec=0 
C6TargMx type="FLOAT" width=6 prec=0 
C7TargMx type="FLOAT" width=6 prec=0 
C8TargMx type="FLOAT" width=6 prec=0 
C9TargMx type="FLOAT" width=6 prec=0 
C10TargMx type="FLOAT" width=6 prec=0 
C11TargMx type="FLOAT" width=6 prec=0 
C12TargMx type="FLOAT" width=6 prec=0 
$END-OBJECT
***********
$OBJECT Line font=1 startx=1130 starty=4 endx=1131 endy=300
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1141 starty=98 endx=1221 endy=283
labelspace=0 unitspace=0 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
GGCCPS3Q2Mx type="FLOAT" width=5 prec=3 
PS3Q2 type="FLOAT" width=5 prec=3 
GGCCPS3Q2Mn type="FLOAT" width=5 prec=3 
dummy type="FLOAT" width=0 prec=0 
GGCCPS3Q2Delta type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Text font=101 startx=1144 starty=31 endx=1212 endy=58
Black direction=1 alignment=0
"OPCR"
$END-OBJECT
***********
$HELP
"Correlation points "
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
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

