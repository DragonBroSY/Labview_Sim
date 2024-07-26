$DISPLAY "MOP Test" background=LightGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Button font=97 startx=15 starty=80 endx=195 endy=126
RADIO InstPOilClass_RB setvalue=10 onlabel="Class 1 = 0.010 IN" offlabel="Class 1 = 0.010 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=126 endx=195 endy=172
RADIO InstPOilClass_RB setvalue=36 onlabel="Class 2 = 0.036 IN" offlabel="Class 2 = 0.036 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=172 endx=195 endy=218
RADIO InstPOilClass_RB setvalue=50 onlabel="Class 3 = 0.050 IN" offlabel="Class 3 = 0.050 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=218 endx=195 endy=264
RADIO InstPOilClass_RB setvalue=64 onlabel="Class 4 = 0.064 IN" offlabel="Class 4 = 0.064 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=264 endx=195 endy=310
RADIO InstPOilClass_RB setvalue=79 onlabel="Class 5 = 0.079 IN" offlabel="Class 5 = 0.079 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=310 endx=195 endy=356
RADIO InstPOilClass_RB setvalue=93 onlabel="Class 6 = 0.093 IN" offlabel="Class 6 = 0.093 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=356 endx=195 endy=402
RADIO InstPOilClass_RB setvalue=107 onlabel="Class 7 = 0.107 IN" offlabel="Class 7 = 0.107 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=402 endx=195 endy=448
RADIO InstPOilClass_RB setvalue=122 onlabel="Class 8 = 0.122 IN" offlabel="Class 8 = 0.122 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=448 endx=195 endy=494
RADIO InstPOilClass_RB setvalue=136 onlabel="Class 9 = 0.136 IN" offlabel="Class 9 = 0.136 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=494 endx=195 endy=540
RADIO InstPOilClass_RB setvalue=150 onlabel="Class 10 = 0.150 IN" offlabel="Class 10 = 0.150 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=540 endx=195 endy=586
RADIO InstPOilClass_RB setvalue=165 onlabel="Class 11 = 0.165 IN" offlabel="Class 11 = 0.165 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=97 startx=15 starty=586 endx=195 endy=632
RADIO InstPOilClass_RB setvalue=179 onlabel="Class 12 = 0.179 IN" offlabel="Class 12 = 0.179 IN" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=101 startx=16 starty=9 endx=191 endy=72
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=101 startx=19 starty=889 endx=1205 endy=890
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Box font=1 startx=21 starty=710 endx=1165 endy=803
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT String font=92 startx=21 starty=864 endx=322 endy=887
MOPTstStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=100 startx=26 starty=18 endx=184 endy=64
Yellow direction=1 alignment=1
"Select Installed"
"*Metering Plug*"
$END-OBJECT
***********
$OBJECT String font=13 startx=33 starty=768 endx=66 endy=785
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=DarkGray parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "==>"
Black = -1 "==>"
DarkGray = 0 "==>"
Black = 1 "==>"
$END-OBJECT
***********
$OBJECT Text font=1 startx=46 starty=729 endx=151 endy=752
Black direction=1 alignment=0
"60% N2:"
$END-OBJECT
***********
$OBJECT String font=1 startx=77 starty=765 endx=572 endy=788
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
Red = -2 "Not Frozen, Orfice Trim invalid"
Yellow = -1 "Decrease trim orifice diam. from:"
Blue = 0 "Data OK, No orifice trim required"
Yellow = 1 "Increase trim orifice diam. from:"
$END-OBJECT
***********
$OBJECT String font=1 startx=151 starty=730 endx=601 endy=753
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Green parambox=0 paramboxcolor=Black shading=0
Blue = -2 "Ready."
BurntOrange = -1 "Increase oil pressure to: from"
Green = 0 "Oil pressure is within limits:"
BurntOrange = 1 "Decrease oil pressure to: from"
$END-OBJECT
***********
$OBJECT Button font=100 startx=251 starty=23 endx=446 endy=98
PHASE SetPOilTrim_ATP setvalue=-1 onlabel="Recalc Trim to\nMin/Max Limits" offlabel="Recalc Trim to\nMin/Max Limits" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=1 startx=251 starty=110 endx=1172 endy=604
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=1 startx=253 starty=418 endx=1171 endy=424
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=254 starty=300 endx=1169 endy=306
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=254 starty=359 endx=1169 endy=365
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=254 starty=476 endx=1170 endy=482
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=254 starty=535 endx=1170 endy=541
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=255 starty=242 endx=1169 endy=248
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=256 starty=186 endx=1171 endy=192
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=104 startx=262 starty=196 endx=586 endy=602
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
$OBJECT Digital font=97 startx=269 starty=142 endx=435 endy=162
labelspace=9 unitspace=1 spacing=1 labelcolor=Yellow parambox=2 paramboxcolor=LightGray shading=0
InstPOilCLASS type="INTEGER" width=2 prec=0 label="Installed Class:" 
$END-OBJECT
***********
$OBJECT Line font=1 startx=443 starty=111 endx=449 endy=600
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Switch font=100 startx=457 starty=23 endx=606 endy=98
MOMENTARY FreezeMOP_F onlabel="Release\n60% N1" offlabel="Capture\n60% N1" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Text font=104 startx=463 starty=137 endx=590 endy=176
Blue direction=1 alignment=0
"60% N1"
$END-OBJECT
***********
$OBJECT Digital font=1 startx=591 starty=765 endx=666 endy=791
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
InstPOilDiam type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT Digital font=1 startx=606 starty=730 endx=666 endy=756
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
POilMnLim type="FLOAT" width=4 prec=0 
$END-OBJECT
***********
$OBJECT Line font=1 startx=610 starty=112 endx=616 endy=601
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=102 startx=626 starty=203 endx=890 endy=317
labelspace=5 unitspace=0 spacing=24 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
InstPOilDiam type="FLOAT" width=6 prec=4 label="Installed" units="default" 
POilTrimDiam type="FLOAT" width=6 prec=4 label="New" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=104 startx=629 starty=371 endx=920 endy=603
labelspace=0 unitspace=1 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
POilTrimP type="FLOAT" width=6 prec=4 units="In +" 
POilDiff type="FLOAT" width=6 prec=1 units="Default" 
POilTrimM type="FLOAT" width=6 prec=4 units="In -" 
POilTrimN type="FLOAT" width=6 prec=4 units="In" 
$END-OBJECT
***********
$OBJECT Button font=100 startx=633 starty=24 endx=863 endy=99
PHASE SetPOilTrimNom_ATP setvalue=-1 onlabel="Calc Trim to\nNominal Range" offlabel="Calc Trim to\nNominal Range" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Digital font=100 startx=639 starty=158 endx=853 endy=182
labelspace=10 unitspace=1 spacing=1 labelcolor=Yellow parambox=2 paramboxcolor=LightGray shading=0
POilTrimClass type="INTEGER" width=2 prec=0 label="Install Trim Class:" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=641 starty=123 endx=861 endy=153
Blue direction=1 alignment=0
"METERING PLUG"
$END-OBJECT
***********
$OBJECT Text font=103 startx=668 starty=321 endx=833 endy=351
Blue direction=1 alignment=0
"DIFFERENCE"
$END-OBJECT
***********
$OBJECT String font=1 startx=679 starty=764 endx=709 endy=787
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=DarkGray parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "to"
Yellow = -1 "to"
DarkGray = 0 "="
Yellow = 1 "to"
LightGray = 2 "to"
$END-OBJECT
***********
$OBJECT String font=1 startx=680 starty=726 endx=710 endy=749
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Green parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "to"
BurntOrange = -1 "to"
Green = 0 "to"
BurntOrange = 1 "to"
LightGray = 2 "to"
$END-OBJECT
***********
$OBJECT Switch font=2 displayflag=FALSE startx=710 starty=813 endx=861 endy=846
MOMENTARY IncTmr_MB onlabel="Increase Timer" offlabel="Increase Timer" offcolor=DarkGray oncolor=Green 
$PUSH
StageTmr:Sec	(StageTmr + 10)
$END-PUSH
$END-OBJECT
***********
$OBJECT Switch font=101 startx=719 starty=618 endx=925 endy=696
TOGGLE ArmMopTst_TB onlabel="MOP Test\nARMED" offlabel="ARM\nMOP Test" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Digital font=1 startx=721 starty=726 endx=781 endy=752
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
POilMxLim type="FLOAT" width=4 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=1 startx=721 starty=765 endx=796 endy=791
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
POilTrimDiam type="FLOAT" width=5 prec=3 
$END-OBJECT
***********
$OBJECT String font=1 startx=806 starty=726 endx=1061 endy=749
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Green parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "PSIG is invalid."
BurntOrange = -1 "PSIG is required."
Green = 0 "PSIG"
BurntOrange = 1 "PSIG is required."
LightGray = 2 "PSIG is invalid."
$END-OBJECT
***********
$OBJECT String font=1 startx=808 starty=766 endx=1063 endy=789
POilDiffSign labelspace=0 label="" labelcolor=White stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
LightGray = -2 "In. is invalid."
Yellow = -1 "In. is required."
Blue = 0 "In. NOT required."
Yellow = 1 "In. is required."
LightGray = 2 "In. is invalid."
$END-OBJECT
***********
$OBJECT Digital font=100 startx=882 starty=819 endx=1199 endy=847
labelspace=7 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="HOURS" width=8 prec=0 label="Stage Timer:" units="default" 
$END-OBJECT
***********
$OBJECT Line font=1 startx=897 starty=113 endx=903 endy=602
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=103 startx=932 starty=124 endx=1116 endy=184
Blue direction=1 alignment=1
"OBSERVED"
"PARAMETERS"
$END-OBJECT
***********
$OBJECT Digital font=104 startx=932 starty=196 endx=1190 endy=544
labelspace=0 unitspace=1 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_N1Pct type="FLOAT" width=6 prec=2 label="N1%" units="%" 
EEC_N2Pct type="FLOAT" width=6 prec=2 label="N2%" units="%" 
TOILAC type="FLOAT" width=6 prec=1 label="MOT C" units="C" 
MOPExpMx type="FLOAT" width=6 prec=1 label="MOP Max" units="PSI" 
POILAC type="FLOAT" width=6 prec=1 label="MOP" units="PSI" 
MOPExpMn type="FLOAT" width=6 prec=1 label="MOP Min" units="PSI" 
$END-OBJECT
***********
$OBJECT Switch font=101 startx=945 starty=618 endx=1149 endy=697
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
$END-DISPLAY

