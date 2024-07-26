$DISPLAY "MOP Test FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#C ********************************************************
#C *************** MOP Test Phase Procedures **************
#C ********************************************************
MOPTstStage_F:	inrange (1 MOPTstStage 35)
#if	(ArmMOPTst_TB & MOPTstStage_F & MOPTstPause_F)
dummy:	storeevent ("MOP Test (Resumed)")
StageTmr_F:	MOPTstTmrState_F
MOPTstStageTxt:	concat (StageTxt "")
MOPTstStage:	Stage
MOPTstPause_F:	OFF
MOPTstState:	4
#elseif	(ArmMOPTst_TB & (MOPTstStage > 0))
dummy:	startautotest (MOPTest_ATP)
#elseif	(ArmMOPTst_TB & (MOPTstStage = 0))
#C **** Start the MOP Test Procedure ***********************
FreezeMOP_F:	OFF
MOPTstStage:	1
dummy:	storeevent ("MOP Test (Started)")
StepTxt:	concat ("" "5.C. ")
MOPTstStageTxt:	concat (StepTxt "MOP Test Started...")
MOPTstState:	1
#elseif	(~ArmMOPTst_TB & MOPTstStage_F & ~MOPTstPause_F)
dummy:	storeevent ("MOP Test (PAUSED)")
StageTxt:	concat (MOPTstStageTxt "")
MOPTstTmrState_F:	StageTmr_F
Stage:	MOPTstStage
MOPTstPause_F:	ON
MOPTstState:	2
MOPTstStageTxt:	concat (StepTxt "MOP Test Paused at Stage: ")
MOPTstStageTxt:	concat (MOPTstStageTxt MOPTstStage)
StageTmr_F:	OFF
#endif	
#C **** End of MOP Test Phase *****************************
#C **** Recalculate the Installed MOP Diameter value if InstPOilClass_RB Changes...
InstPOilClassChg_F:	~(InstPOilDiam = (InstPOilClass_RB / 1000))
#if	InstPOilClassChg_F
dummy:	startautotest (SetPOilClass_ATP)
#endif	
#if	(InstPOilClassChg_F & ~(POilDiffSign = 0))
dummy:	startautotest (CalcPOilTrim_ATP)
#endif	
#if	FreezeMOP_F
POilN1:%	EEC_N1Pct
POilN2:%	EEC_N2Pct
POilTemp:DegC	TOILAC
POilCor:PSIG	POILAC
POilMxLim:PSI	MOPExpMx
POilMnLim:PSI	MOPExpMn
POilNomLim:PSIG	((MOPExpMn + MOPExpMx) / 2.0)
dummy:	startautotest (SetPOilTrim_ATP)
FreezeMOP_F:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Line font=101 startx=19 starty=889 endx=1877 endy=890
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=92 startx=21 starty=864 endx=322 endy=887
MOPTstStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=175 endx=467 endy=221
RADIO InstPOilClass_RB setvalue=10 onlabel="Class 1 = 0.010 IN" offlabel="Class 1 = 0.010 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=221 endx=467 endy=267
RADIO InstPOilClass_RB setvalue=36 onlabel="Class 2 = 0.036 IN" offlabel="Class 2 = 0.036 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=267 endx=467 endy=313
RADIO InstPOilClass_RB setvalue=50 onlabel="Class 3 = 0.050 IN" offlabel="Class 3 = 0.050 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=313 endx=467 endy=359
RADIO InstPOilClass_RB setvalue=64 onlabel="Class 4 = 0.064 IN" offlabel="Class 4 = 0.064 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=359 endx=467 endy=405
RADIO InstPOilClass_RB setvalue=79 onlabel="Class 5 = 0.079 IN" offlabel="Class 5 = 0.079 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=405 endx=467 endy=451
RADIO InstPOilClass_RB setvalue=93 onlabel="Class 6 = 0.093 IN" offlabel="Class 6 = 0.093 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=451 endx=467 endy=497
RADIO InstPOilClass_RB setvalue=107 onlabel="Class 7 = 0.107 IN" offlabel="Class 7 = 0.107 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=497 endx=467 endy=543
RADIO InstPOilClass_RB setvalue=122 onlabel="Class 8 = 0.122 IN" offlabel="Class 8 = 0.122 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=543 endx=467 endy=589
RADIO InstPOilClass_RB setvalue=136 onlabel="Class 9 = 0.136 IN" offlabel="Class 9 = 0.136 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=589 endx=467 endy=635
RADIO InstPOilClass_RB setvalue=150 onlabel="Class 10 = 0.150 IN" offlabel="Class 10 = 0.150 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=635 endx=467 endy=681
RADIO InstPOilClass_RB setvalue=165 onlabel="Class 11 = 0.165 IN" offlabel="Class 11 = 0.165 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=287 starty=681 endx=467 endy=727
RADIO InstPOilClass_RB setvalue=179 onlabel="Class 12 = 0.179 IN" offlabel="Class 12 = 0.179 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=101 startx=288 starty=104 endx=463 endy=167
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Box font=1 startx=294 starty=745 endx=1438 endy=838
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=100 startx=298 starty=113 endx=456 endy=159
Yellow direction=1 alignment=1
"Select Installed"
"*Metering Plug*"
$END-OBJECT
***********
$OBJECT String font=13 startx=306 starty=803 endx=339 endy=820
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=DarkGray parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "==>"
Black = -1 "==>"
DarkGray = 0 "==>"
Black = 1 "==>"
$END-OBJECT
***********
$OBJECT Text font=1 startx=319 starty=764 endx=424 endy=787
Black direction=1 alignment=0
"60% N2:"
$END-OBJECT
***********
$OBJECT String font=1 startx=350 starty=800 endx=845 endy=823
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
Red = -2 "Not Frozen, Orfice Trim invalid"
Yellow = -1 "Decrease trim orifice diam. from:"
Blue = 0 "Data OK, No orifice trim required"
Yellow = 1 "Increase trim orifice diam. from:"
$END-OBJECT
***********
$OBJECT String font=1 startx=424 starty=765 endx=874 endy=788
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Green parambox=0 paramboxcolor=Black shading=0
Blue = -2 "Ready."
BurntOrange = -1 "Increase oil pressure to: from"
Green = 0 "Oil pressure is within limits:"
BurntOrange = 1 "Decrease oil pressure to: from"
$END-OBJECT
***********
$OBJECT Button font=100 startx=519 starty=144 endx=714 endy=219
PHASE SetPOilTrim_ATP setvalue=-1 onlabel="Recalc Trim to\nMin/Max Limits" offlabel="Recalc Trim to\nMin/Max Limits" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=1 startx=519 starty=231 endx=1440 endy=725
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=1 startx=521 starty=539 endx=1439 endy=545
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=522 starty=421 endx=1437 endy=427
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=522 starty=480 endx=1437 endy=486
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=522 starty=597 endx=1438 endy=603
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=522 starty=656 endx=1438 endy=662
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=523 starty=363 endx=1437 endy=369
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=524 starty=307 endx=1439 endy=313
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=104 startx=530 starty=317 endx=854 endy=723
labelspace=6 unitspace=1 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
POilN1 type="FLOAT" width=6 prec=2 label="N1%" 
POilN2 type="FLOAT" width=6 prec=2 label="N2%" 
POilTemp type="FLOAT" width=6 prec=0 label="MOT C" 
POilMxLim type="FLOAT" width=6 prec=1 label="MOP Max" 
POilCor type="FLOAT" width=6 prec=1 label="MOP Corr" 
POilMnLim type="FLOAT" width=6 prec=1 label="MOP Min" 
POilNomLim type="FLOAT" width=6 prec=1 label="MOP Nom" 
$END-OBJECT
***********
$OBJECT Digital font=97 startx=537 starty=263 endx=703 endy=283
labelspace=9 unitspace=1 spacing=1 labelcolor=Yellow parambox=2 paramboxcolor=LightGray shading=0
InstPOilCLASS type="INTEGER" width=2 prec=0 label="Installed Class:" 
$END-OBJECT
***********
$OBJECT Line font=1 startx=711 starty=232 endx=717 endy=721
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Switch font=100 startx=725 starty=144 endx=874 endy=219
MOMENTARY FreezeMOP_F onlabel="Release\n60% N1" offlabel="Capture\n60% N1" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Text font=104 startx=731 starty=258 endx=858 endy=297
Blue direction=1 alignment=0
"60% N1"
$END-OBJECT
***********
$OBJECT Box font=101 startx=815 starty=10 endx=1084 endy=75
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=859 starty=25 endx=1039 endy=64
BurntOrange direction=1 alignment=0
"MOP TEST"
$END-OBJECT
***********
$OBJECT Digital font=1 startx=864 starty=800 endx=939 endy=826
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
InstPOilDiam type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Line font=1 startx=878 starty=233 endx=884 endy=722
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=1 startx=879 starty=765 endx=939 endy=791
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
POilMnLim type="FLOAT" width=4 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=102 startx=894 starty=324 endx=1158 endy=438
labelspace=5 unitspace=0 spacing=24 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
InstPOilDiam type="FLOAT" width=6 prec=4 label="Installed" units="default" 
POilTrimDiam type="FLOAT" width=6 prec=4 label="New" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=104 startx=897 starty=492 endx=1188 endy=724
labelspace=0 unitspace=1 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
POilTrimP type="FLOAT" width=6 prec=4 units="In +" 
POilDiff type="FLOAT" width=6 prec=1 units="Default" 
POilTrimM type="FLOAT" width=6 prec=4 units="In -" 
POilTrimN type="FLOAT" width=6 prec=4 units="In" 
$END-OBJECT
***********
$OBJECT Button font=100 startx=901 starty=145 endx=1131 endy=220
PHASE SetPOilTrimNom_ATP setvalue=-1 onlabel="Calc Trim to\nNominal Range" offlabel="Calc Trim to\nNominal Range" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Digital font=100 startx=907 starty=279 endx=1121 endy=303
labelspace=10 unitspace=1 spacing=1 labelcolor=Yellow parambox=2 paramboxcolor=LightGray shading=0
POilTrimClass type="INTEGER" width=2 prec=0 label="Install Trim Class:" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=909 starty=244 endx=1129 endy=274
Blue direction=1 alignment=0
"METERING PLUG"
$END-OBJECT
***********
$OBJECT Text font=103 startx=936 starty=442 endx=1101 endy=472
Blue direction=1 alignment=0
"DIFFERENCE"
$END-OBJECT
***********
$OBJECT String font=1 startx=952 starty=799 endx=982 endy=822
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=DarkGray parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "to"
Yellow = -1 "to"
DarkGray = 0 "="
Yellow = 1 "to"
LightGray = 2 "to"
$END-OBJECT
***********
$OBJECT String font=1 startx=953 starty=761 endx=983 endy=784
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Green parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "to"
BurntOrange = -1 "to"
Green = 0 "to"
BurntOrange = 1 "to"
LightGray = 2 "to"
$END-OBJECT
***********
$OBJECT Digital font=1 startx=994 starty=761 endx=1054 endy=787
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
POilMxLim type="FLOAT" width=4 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=1 startx=994 starty=800 endx=1069 endy=826
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
POilTrimDiam type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT String font=1 startx=1079 starty=761 endx=1334 endy=784
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Green parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "PSIG is invalid."
BurntOrange = -1 "PSIG is required."
Green = 0 "PSIG"
BurntOrange = 1 "PSIG is required."
LightGray = 2 "PSIG is invalid."
$END-OBJECT
***********
$OBJECT String font=1 startx=1081 starty=801 endx=1336 endy=824
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "In. is invalid."
Yellow = -1 "In. is required."
Blue = 0 "In. NOT required."
Yellow = 1 "In. is required."
LightGray = 2 "In. is invalid."
$END-OBJECT
***********
$OBJECT Line font=1 startx=1165 starty=234 endx=1171 endy=723
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=103 startx=1200 starty=245 endx=1384 endy=305
Blue direction=1 alignment=1
"OBSERVED"
"PARAMETERS"
$END-OBJECT
***********
$OBJECT Digital font=104 startx=1200 starty=317 endx=1458 endy=665
labelspace=0 unitspace=1 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_N1Pct type="FLOAT" width=6 prec=2 label="N1%" units="%" 
EEC_N2Pct type="FLOAT" width=6 prec=2 label="N2%" units="%" 
TOILAC type="FLOAT" width=6 prec=1 label="MOT C" units="C" 
MOPExpMx type="FLOAT" width=6 prec=1 label="MOP Max" units="PSI" 
POILAC type="FLOAT" width=6 prec=1 label="MOP" units="PSI" 
MOPExpMn type="FLOAT" width=6 prec=1 label="MOP Min" units="PSI" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1569 starty=838 endx=1886 endy=866
labelspace=7 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="HOURS" width=8 prec=0 label="Stage Timer:" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=101 startx=1608 starty=247 endx=1814 endy=325
TOGGLE ArmMopTst_TB onlabel="MOP Test\nARMED" offlabel="ARM\nMOP Test" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Switch font=101 startx=1610 starty=336 endx=1814 endy=415
MOMENTARY ResetMOPTest_MB onlabel="MOP Test\nRESET" offlabel="RESET\nMOP Test" offcolor=DarkGray oncolor=Green 
$RELEASE
StageTmr_F:	OFF
StageTmr:Sec	0.0
FreezeMOP_F:	OFF
MOPTstStage:	0
MOPTstStageTxt:	concat ("" "MOP Test RESET")
dummy:	storeevent ("MOP Test RESET")
ArmMopTst_TB:	OFF
MOPTstPause_F:	OFF
MOPTstState:	3
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Switch font=2 displayflag=FALSE startx=1674 starty=796 endx=1825 endy=829
MOMENTARY IncTmr_MB onlabel="Increase Timer" offlabel="Increase Timer" offcolor=DarkGray oncolor=Green 
$PUSH
StageTmr:Sec	(StageTmr + 10)
$END-PUSH
$END-OBJECT
***********
$END-DISPLAY

