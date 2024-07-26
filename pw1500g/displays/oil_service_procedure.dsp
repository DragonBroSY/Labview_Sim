$DISPLAY "Oil Service Procedure" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
#if	((SAPTargPctPrev <= 35.0) & (SAPTargPct > 35.0))
SAPTargPctPrev:%	SAPTargPct
#endif	
SAPTargPct:%	35.0
$END-CALC
$CALC
OSPDspOpn_F:	ON
#if	RestartEM_S
StartOS_TS:	OFF
EM_Stage:	0
EM_StageTxt:	concat ("" "Oil Service Procedure Reset.")
PAIRsNFPk:RPM	0.0
PAIRsN1Pk:RPM	0.0
PAIRsN2Pk:RPM	0.0
PAIRsNSAPk:RPM	0.0
PAIRsTmr_F:	OFF
PAIRsTmr:Sec	0.0
MotorTmr:Sec	0.0
TimeAtMotor:	concat ("" "Reset Time")
DateAtMotor:	concat ("" "Reset Date")
RestartEM_S:	OFF
InitOilService_F:	OFF
EngMotorAttempts:	0
#endif	
#C ***** PAIRs = Pressure AIR Start ******
#if	(StartOS_TS & ~PAIRsN2_PID_F)
PAIRsN2_PID_F:	ON
dummy:	startcontrolloop ("PAIRsN2_PID")
PAIRs_Cmd:ma	0.0
#elseif	(~StartOS_TS & PAIRsN2_PID_F)
PAIRsN2_PID_F:	OFF
#C StartAir_O: OFF
ECM_ModeSel_TB:	OFF
dummy:	stopcontrolloop ("PAIRsN2_PID")
PAIRs_Cmd:ma	0.0
#endif	
EM_StageInRng_F:	inrange (1 EM_Stage 5)
MotorMode_F:	(StartOS_TS & (PAIRsN2 > 20.0))
#C ***************************************
#if	(StartOS_TS & EM_StageInRng_F)
#C ***** 100% N2 @ Starter Cut Out 12265 RPM
#C ***** 0 - 100% = (0.0074 * N2 RPM)
#C ***** 0 - 13500 RPM = 0 - 100% (PAIRsN2_Cmd:% [feedbackparam]) *****
PAIRsN2_Cmd:%	(0.0074 * N2S)
#C ***** 0 - 100% (PAIRs_CmdPct:% [outputparam]) = 0 - 10 (E1328A Card [PAIRs_Cmd]) = 4 - 20 ma *****
PAIRs_Cmd:ma	(0.1 * PAIRs_CmdPct)
PAIRsNFPk:RPM	max (PAIRsNFPk EEC_NF)
PAIRsN1Pk:RPM	max (PAIRsN1Pk EEC_N1)
PAIRsN2Pk:RPM	max (PAIRsN2Pk EEC_N2)
PAIRsNSAPk:RPM	max (PAIRsNSAPk EEC_NSA)
#endif	
#if	(StartOS_TS & (PAIRsN2 > (PAIRsN2Mx + 50.0)))
EM_StageTxt:	concat ("Oil Service ABORTED Due to N2 is > " PAIRsN2Mx)
EM_StageTxt:	concat (EM_StageTxt " RPM")
StartOS_TS:	OFF
#elseif	(StartOS_TS & (EEC_NF > 20.0))
#C #elseif (StartOS_TS & (EEC_N1 > 40.0))
EM_StageTxt:	concat ("" "Oil Service ABORTED Due to N1 is > 40 RPM")
StartOS_TS:	OFF
#endif	
#if	((EM_Stage = 0) & StartOS_TS & ~AirArm_I)
EM_StageTxt:	concat ("" "Must Press the Console [AIR ARM ON] Button...")
StartOS_TS:	OFF
#elseif	((EM_Stage = 0) & StartOS_TS & StartDspOpn_F)
EM_StageTxt:	concat ("" "Close the Engine Start Display Before Starting Oil Service Procedure...")
StartOS_TS:	OFF
#elseif	((EM_Stage = 0) & StartOS_TS & ~ECM_EECGndTstPwr_TB)
EM_Stage:	-1
EM_StageTxt:	concat ("" "Turning ON EEC Ground Power, Wait 15 seconds...")
StageTmr:Sec	0.0
StageTmr_F:	ON
StageTmrLim:Sec	15
ECM_EECGndTstPwr_TB:	ON
#elseif	((EM_Stage = -1) & StartOS_TS & StageTmr_F & StageTmrLim_F)
EM_Stage:	0
EM_StageTxt:	concat ("" "EEC Initialized...")
StageTmr_F:	OFF
StageTmr:Sec	0.0
#elseif	((EM_Stage = -1) & StartOS_TS & StageTmr_F)
EM_StageTxt:	concat ("" "Waiting for EEC to Initialize, Wait 15 seconds...")
#C ************ Start of Motor *****************************************
#elseif	((EM_Stage = 0) & StartOS_TS)
EM_Stage:	1
PAIRsTmr_F:	OFF
PAIRsTmr:Sec	0.0
MotorTmr_F:	OFF
MotorTmr:Sec	0.0
#C EM_StageTxt: concat ("" "Starter ON Request...")
EM_StageTxt:	concat("" "Setting Crank Mode...")
ECM_ModeSel_TB:	ON
#elseif	((EM_Stage = 1) & StartOS_TS & ECM_ModeSel_TB)
EM_Stage:	2
EM_StageTxt:	concat("" "CRANK Mode Engaged...")
#elseif	((EM_Stage = 2) & StartOS_TS & MotorMode_F)
EM_Stage:	3
EM_StageTxt:	concat ("" "Starter ON and N2 Rotation")
PAIRsTmr_F:	ON
#elseif	((EM_Stage = 3) & StartOS_TS & MotorMode_F & (PAIRsN2 > PAIRsN2Mn))
EM_Stage:	4
EM_StageTxt:	concat ("N2 Motor Speed > " PAIRsN2Mn)
EM_StageTxt:	concat (EM_StageTxt ", Waiting for Stable Oil Quantity...")
EngMotorAttempts:	(EngMotorAttempts + 1)
#elseif	(((EM_Stage = 3) | (EM_Stage = 4)) & StartOS_TS & (OilQ < 10.0))
#C **** Shut down starter due to low Oil Qty.
EM_Stage:	0
EM_StageTxt:	concat ("" "Low Oil Quantity Shutdown, Service Oil again and Continue...")
PAIRsTmr_F:	OFF
StartOS_TS:	OFF
#elseif	((EM_Stage = 4) & StartOS_TS & StableOilQ_F & (OilQ > 10.0) & (PAIRsTmr > 15.0))
EM_Stage:	5
EM_StageTxt:	concat ("" "Oil Quantity Stable.")
InitOilService_F:	ON
#elseif	(((EM_Stage = 3) | (EM_Stage = 4)) & ~StartOS_TS)
EM_Stage:	0
EM_StageTxt:	concat ("" "Starter OFF.")
PAIRsTmr_F:	OFF
#elseif	((EM_Stage = 4) & StartOS_TS & (PAIRsN2 < (PAIRsN2Mn - 350.0)))
#C **** EEC Shut down starter due to low Oil Qty.
EM_Stage:	0
EM_StageTxt:	concat ("" "EEC Shutdown, Service Oil again and Continue...")
PAIRsTmr_F:	OFF
StartOS_TS:	OFF
#elseif	(EM_Stage = 5)
EM_Stage:	6
InitOilService_F:	ON
PAIRsTmr_F:	OFF
StartOS_TS:	OFF
ECM_ModeSel_TB:	OFF
TimeAtMotor:	concat ("" SysReportTime)
DateAtMotor:	concat ("" SysDate)
#elseif	(EM_Stage = 6)
EM_Stage:	7
SAPTargPct:%	SAPTargPctPrev
EM_StageTxt:	concat ("" "Initial Oil Service Complete...")
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Line font=101 startx=8 starty=800 endx=1210 endy=801
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Box font=1 startx=9 starty=4 endx=1179 endy=163
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Box font=1 startx=9 starty=168 endx=424 endy=771
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=1 startx=13 starty=200 endx=423 endy=202
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=14 starty=580 endx=425 endy=582
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=92 startx=14 starty=778 endx=277 endy=801
EM_StageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=19 starty=209 endx=414 endy=529
labelspace=12 unitspace=1 spacing=4 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_NFPct type="FLOAT" width=6 prec=1 label="NF Pct" units="default" 
EEC_N1Pct type="FLOAT" width=6 prec=1 label="N1 Pct" units="default" 
EEC_N2Pct type="FLOAT" width=6 prec=1 label="N2 Pct" units="default" 
EEC_NSAPct type="FLOAT" width=6 prec=1 label="Starter" units="default" 
EEC_ITT type="FLOAT" width=6 prec=1 label="ITT" units="default" 
FIP_PSIG type="FLOAT" width=6 prec=1 label="Fuel Pressure" units="default" 
POILAC type="FLOAT" width=6 prec=1 label="Oil Pressure" units="default" 
OILQ type="FLOAT" width=6 prec=1 label="Oil Quantity" units="default" 
StoredAir type="FLOAT" width=6 prec=1 label="Stored Air" units="default" 
PAIRStart type="FLOAT" width=6 prec=1 label="Starter Air" units="default" 
SAP type="FLOAT" width=6 prec=1 label="SAP" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=20 starty=585 endx=396 endy=745
labelspace=12 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PAIRsTmr type="FLOAT" width=6 prec=1 label="Starter on Time" units="default" 
PAIRsNFPk type="FLOAT" width=6 prec=1 label="Peak NF" units="default" 
PAIRsN1Pk type="FLOAT" width=6 prec=1 label="Peak N1" units="default" 
PAIRsN2Pk type="FLOAT" width=6 prec=1 label="Peak N2" units="default" 
PAIRsNSAPk type="FLOAT" width=6 prec=1 label="Peak NSA" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=44 starty=69 endx=257 endy=141
labelspace=6 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PAIRsN2Mn type="FLOAT" width=5 prec=0 label=" EEC N2:" 
PAIRsMn type="FLOAT" width=5 prec=1 label="Start Air:" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=116 starty=177 endx=308 endy=200
Blue direction=1 alignment=0
"OBSERVED DATA  "
$END-OBJECT
***********
$OBJECT Text font=100 startx=137 starty=557 endx=284 endy=580
Blue direction=1 alignment=0
"MOTOR DATA"
$END-OBJECT
***********
$OBJECT Line font=1 startx=161 starty=6 endx=163 endy=161
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=163 starty=40 endx=1178 endy=42
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=203 starty=14 endx=426 endy=41
Blue direction=1 alignment=0
"Min     Obs     Max"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=273 starty=68 endx=348 endy=140
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_N2 type="FLOAT" width=5 prec=0 
PAIRStart type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=364 starty=69 endx=439 endy=141
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PAIRsN2Mx type="FLOAT" width=5 prec=0 
PAIRsMx type="FLOAT" width=5 prec=1 
$END-OBJECT
***********
$OBJECT Box font=101 startx=426 starty=197 endx=814 endy=770
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=101 startx=428 starty=190 endx=1210 endy=192
linewidth=2 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=97 startx=430 starty=169 endx=645 endy=188
CtrlLoopTxt labelspace=7 label="CTRL LOOP:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=430 starty=200 endx=620 endy=290
HotStart_F textcolor=Black
DarkGray = 0 "Hot Start\nNOT Detected"
Red = 1 "Hot Start\nDetected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=430 starty=290 endx=620 endy=380
HungStart_F textcolor=Black
DarkGray = 0 "Hung Start\nNOT Detected"
Red = 1 "Hung Start\nDetected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=430 starty=380 endx=620 endy=470
LightupDet_F textcolor=Black
DarkGray = 0 "Light Off\nNOT Detected"
Green = 1 "Light Off\nDetected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=430 starty=470 endx=620 endy=560
BitDummy textcolor=Black
DarkGray = 0 "Spare"
DarkGray = 1 "Spare"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=430 starty=560 endx=620 endy=650
STLIM textcolor=Black
DarkGray = 0 "Starter Duty\nCycle OK"
Red = 1 "Starter Duty\nCycle LIMIT"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=430 starty=650 endx=620 endy=740
ABTSTRT textcolor=Black
DarkGray = 0 "START\nNOT ABORTED"
Red = 1 "START\nABORTED"
$END-OBJECT
***********
$OBJECT Line font=1 startx=459 starty=6 endx=461 endy=161
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=484 starty=47 endx=670 endy=143
labelspace=3 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_NF type="FLOAT" width=6 prec=1 label="NF" units="default" 
EEC_N1 type="FLOAT" width=6 prec=1 label="N1" units="default" 
EEC_NSA type="FLOAT" width=6 prec=1 label="NSA" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=494 starty=13 endx=612 endy=40
Blue direction=1 alignment=0
"Observed"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=617 starty=650 endx=807 endy=740
InitOilService_F textcolor=Black
Red = 0 "Perform Initial\nOil Service"
Green = 1 "Initial Oil\nService Complete"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=619 starty=470 endx=809 endy=560
EngineRunning textcolor=Black
Red = 1 "Engine\nRunning"
DarkGray = 0 "Engine\nNOT Running"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=620 starty=200 endx=810 endy=290
StrtInPrgs_F textcolor=Black
Green = 1 "START\nIN PROGRESS"
DarkGray = 0 " NO START\nIN PROGRESS"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=620 starty=290 endx=810 endy=380
ECM_StartMode_Stat textcolor=Black
Magenta = 0 "Start Mode\nStatus UNK"
Green = 1 "Start Mode\nAUTO Start"
Yellow = 2 "Start Mode\nMANUAL Start"
Blue = 3 "Start Mode\nDRY CRANK"
Blue = 4 "Start Mode\nWET CRANK"
DarkGray = 5 "Start Mode\nNORMAL"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=620 starty=380 endx=810 endy=470
ECM_FuelCtrl_TB textcolor=Black
Green = 1 "Engine RUN/OFF\nSelected RUN"
DarkGray = 0 "Engine RUN/OFF\nSelected OFF"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=620 starty=559 endx=810 endy=649
BowedROvrCrk_F textcolor=Black
Red = 1 "Bowed Rotor\nOverCrank"
DarkGray = 0 "Bowed Rotor\nNO OverCrank"
$END-OBJECT
***********
$OBJECT Line font=1 startx=674 starty=5 endx=676 endy=162
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=817 starty=196 endx=1205 endy=627
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=841 starty=461 endx=1170 endy=543
labelspace=13 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EM_Stage type="INTEGER" width=2 prec=0 label="Engine Motor Stage:" 
EngMotorAttempts type="INTEGER" width=2 prec=0 label="Engine Motor Attempts:" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=873 starty=677 endx=1190 endy=773
labelspace=7 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PAIRsTmr type="HOURS" width=8 prec=0 label="PAIRs Timer:" units="default" 
MotorTmr type="HOURS" width=8 prec=0 label="Motor Timer:" units="default" 
StageTmr type="HOURS" width=8 prec=0 label="Stage Timer:" units="default" 
$END-OBJECT
***********
$OBJECT String font=101 startx=875 starty=561 endx=1191 endy=588
StartDspOpn_F labelspace=0 label="" labelcolor=Black stringcolor=LightGray parambox=0 paramboxcolor=Black shading=0
LightGray = OFF "Start Display is Closed"
Red = ON "Please Close Start Display"
$END-OBJECT
***********
$OBJECT Line font=1 startx=886 starty=6 endx=888 endy=161
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Switch font=103 startx=907 starty=232 endx=1115 endy=325
TOGGLE StartOS_TS onlabel="Oil Service\nStarted" offlabel="Start\nOil Service" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Switch font=103 startx=908 starty=354 endx=1116 endy=434
TOGGLE RestartEM_S onlabel="Restart\nMotor" offlabel="Motor\nRestart" offcolor=DarkGray oncolor=Green 
$END-OBJECT
***********
$OBJECT Text font=101 startx=928 starty=10 endx=1138 endy=37
Blue direction=1 alignment=0
"Motor Date/Time"
$END-OBJECT
***********
$OBJECT String font=100 startx=932 starty=93 endx=1111 endy=116
TimeAtMotor labelspace=3 label="Time:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT String font=100 startx=938 starty=66 endx=1112 endy=89
DateAtMotor labelspace=3 label="Date:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$HELP
"This is the help for the Engine Start display"
""
""
""
""
""
""
""
""
""
""
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

