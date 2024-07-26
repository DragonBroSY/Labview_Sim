$DISPLAY "Engine Start FHD" background=Charcoal loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
IgnSystem:	concat ("" "UNK")
#if	((SAPTargPctPrev > 40.0) & (SAPTargPct <= 40.0))
SAPTargPct:%	SAPTargPctPrev
#endif	
$END-CALC
$CALC
StartDspOpn_F:	ON
#if	ResetOT_S
ITTStrtTrigTmr_F:	OFF
ITTRunTrigTmr_F:	OFF
ITTRunMxTmr_F:	OFF
ITTStrtMxTmr_F:	OFF
ITTStrtTrigTmr:Sec	0.0
ITTRunTrigTmr:Sec	0.0
ITTRunMxTmr:Sec	0.0
ITTStrtMxTmr:Sec	0.0
ITTStrtPk:DegC	0.0
ITTRunPk:DegC	0.0
ResetOT_S:	OFF
#endif	
#if	RestartES_S
ES_Stage:	0
ES_StageTxt:	concat ("" "Start Reset.")
IgnSystem:	concat ("" "UNK")
DateAtStart:	concat ("" "UNK")
TimrAtStart:	concat ("" "UNK")
StartPeakITT:DegC	0.0
StartPeakWf:PPH	0.0
WfLtOff:PPH	0.0
MOPLtOff:PSID	0.0
NoLightoffMsg:	0.0
StrtOnToIdleTmr_F:	OFF
StrtOnToIdleTmr:secs	0.0
StrtOnToIdle:secs	0.0
FuelOnToIdleTmr_F:	OFF
FuelOnToIdleTmr:	0.0
FuelOnToIdle:secs	0.0
FuelOnToLtOFF:secs	0.0
dummy:	StoreEvent ("Start Reset...")
RestartES_S:	OFF
#endif	
#C ************ Starter Air ***********************
#if	(~StartAir_PID_F & AirArm_I & ~StartOS_TS)
#C **** See commonCIT.cal for PAIRs_Cmd *******
StartAir_PID_F:	ON
#elseif	(StartAir_PID_F & ~AirArm_I)
StartAir_PID_F:	OFF
PAIRs_Cmd:ma	0.0
SAP_CmdPct:%	0.0
#endif	
#C ***********************************************
ES_Stage_F:	((ES_Stage > 1) & (ES_Stage < 35))
StartMode_F:	(StartAir_PID_F & (N2I > 200.0) & ~RunMode)
#C ***********************************************
#if	ES_Stage_F
StartPeakITT:DegC	max (StartPeakITT EEC_ITT)
StartPeakWf:PPH	max (StartPeakWf WfI)
#C StartPeakWf:PPH max (StartPeakWf EEC_WF)
FuelOnToIdle:secs	FuelOnToIdleTmr
StrtOnToIdle:secs	StrtOnToIdleTmr
#endif	
#C ***********************************************
#if	((ES_Stage = 0) & ~AirArm_I & ECM_ModeSel_TB)
ES_Stage:	0
ECM_ModeSel_TB:	OFF
ECM_FuelCtrl_TB:	OFF
ES_StageTxt:	concat ("" "Must Press the Console [AIR ARM ON] Button...")
#C ***********************************************
#elseif	((ES_Stage = 0) & ~InitOilService_F & StartMode_F & (ECM_ModeSel_TB | (~ECM_ModeSel_TB & ECM_FuelCtrl_TB)))
ES_Stage:	0
ECM_ModeSel_TB:	OFF
ECM_FuelCtrl_TB:	OFF
ES_StageTxt:	concat ("" "Perform Initial Oil Service before Engine Start...")
#C ***********************************************
#elseif	((ES_Stage = 0) & StartAir_PID_F & SAVREQ & InitOilService_F)
ES_Stage:	1
StageTmrLim:Sec	5
NoLightoffMsg:	0.0
ES_StageTxt:	concat ("" "Starter ON Requested.")
dummy:	StoreEvent ("Starter ON Requested...")
#C ***********************************************
#elseif	((ES_Stage = 1) & StartMode_F & MANSTA)
ES_Stage:	5
StageTmr_F:	ON
StrtOnToIdleTmr_F:	ON
ES_StageTxt:	concat ("" "Starter ON and N2 Rotation, Manual Start Mode...")
dummy:	StoreEvent ("Starter On and N2 Rotation, Manual Start Mode...")
#C ***********************************************
#elseif	((ES_Stage = 1) & StartMode_F & AUTSTA)
ES_Stage:	5
StageTmr_F:	ON
StrtOnToIdleTmr_F:	ON
ES_StageTxt:	concat ("" "Starter ON and N2 Rotation, AUTO Start Mode...")
dummy:	StoreEvent ("Starter On and N2 Rotation, AUTO Engine Start Mode...")
#C ***********************************************
#elseif	((ES_Stage = 1) & StartMode_F & DRYCKA)
ES_Stage:	6
StageTmr_F:	ON
StrtOnToIdleTmr_F:	ON
NoLightoffMsg:	3.0
ES_StageTxt:	concat ("" "Starter ON and N2 Rotation, Dry Crank Mode...")
dummy:	StoreEvent ("Starter On and N2 Rotation, Dry Crank Mode...")
#C ***********************************************
#elseif	((ES_Stage = 1) & StartMode_F & WETCKA)
ES_Stage:	6
StageTmr_F:	ON
StrtOnToIdleTmr_F:	ON
NoLightoffMsg:	4.0
ES_StageTxt:	concat ("" "Starter ON and N2 Rotation, Wet Crank Mode...")
dummy:	StoreEvent ("Starter On and N2 Rotation, Wet Crank Mode...")
#C ***********************************************
#elseif	(((ES_Stage = 5) | (ES_Stage = 6)) & StartMode_F & BROVCK)
ES_Stage:	7
ES_StageTxt:	concat ("" "Long Crank In Progress, Please Wait...")
dummy:	StoreEvent ("Long Crank In Progress...")
#C ***********************************************
#elseif	(((ES_Stage = 5) | (ES_Stage = 6) | (ES_Stage = 7)) & ~BROVCK & AUTSTA & StageTmrLim_F)
ES_Stage:	8
ES_StageTxt:	concat ("" "AUTO Engine Start...")
dummy:	StoreEvent ("AUTO Engine Start...")
#C ***********************************************
#elseif	(((ES_Stage = 5) | (ES_Stage = 6) | (ES_Stage = 7)) & ~BROVCK & MANSTA & StageTmrLim_F)
ES_Stage:	8
ES_StageTxt:	concat ("" "Manual Engine Start...")
dummy:	StoreEvent ("Manual Engine Start...")
#C ***********************************************
#elseif	(((ES_Stage = 5) | (ES_Stage = 6) | (ES_Stage = 7)) & ~BROVCK & DRYCKA & StageTmrLim_F)
ES_Stage:	9
StageTmr_F:	OFF
NoLightoffMsg:	3.0
ES_StageTxt:	concat ("" "Dry Crank Engine...")
dummy:	StoreEvent ("Dry Crank Engine...")
#C ***********************************************
#elseif	(((ES_Stage = 5) | (ES_Stage = 6) | (ES_Stage = 7)) & ~BROVCK & WETCKA & StageTmrLim_F)
ES_Stage:	9
StageTmr_F:	OFF
NoLightoffMsg:	4.0
ES_StageTxt:	concat ("" "Wet Crank Engine...")
dummy:	StoreEvent ("Wet Crank Engine...")
#C ***********************************************
#elseif	(((ES_Stage = 8) | (ES_Stage = 9)) & StartMode_F & (IGN1CMD_F | IGN2CMD_F))
ES_Stage:	10
StageTmr_F:	OFF
FuelOnToIdleTmr_F:	ON
ES_StageTxt:	concat ("" "Fuel/Ignition Selected ON.")
dummy:	StoreEvent ("Engine Start, Fuel/IGNITION Selected ON...")
#C ***********************************************
#elseif	(inrange(10 ES_Stage 20) & ABTSTRT)
ES_Stage:	21
StartAborted_F:	ON
StageTmr_F:	OFF
FuelOnToIdleTmr_F:	OFF
StrtOnToIdleTmr_F:	OFF
ES_StageTxt:	concat ("" "Start ABorted...")
dummy:	StoreEvent ("Engine Start Aborted...")
#C ***********************************************
#elseif	(((ES_Stage = 10) | (ES_Stage = 12)) & StartMode_F & ECM_FuelCtrl_TB & LightUpDet_F)
ES_Stage:	15
FuelOnToLtOFF:secs	FuelOnToIdleTmr
WfLtOff:PPH	WFI
MOPLtOff:PSID	POILAC
NoLightoffMsg:	2.0
ES_StageTxt:	concat ("" "Light-OFF Detected...")
dummy:	StoreEvent ("Light-OFF Detected...")
#C ***********************************************
#elseif	((ES_Stage = 10) & StartMode_F & ECM_FuelCtrl_TB & (FuelOnToIdleTmr > 20.0) & ~LightUpDet_F)
ES_Stage:	12
FuelOnToLtOFF:secs	FuelOnToIdleTmr
WfLtOff:PPH	max(WFI WfLtOff)
MOPLtOff:PSID	POILAC
NoLightoffMsg:	1.0
ES_StageTxt:	concat ("" "No Light Off.")
dummy:	StoreEvent ("NO Light-OFF Detected...")
#C ***********************************************
#elseif	((ES_Stage = 15) & StarterCutOut_F & ECM_FuelCtrl_TB)
ES_Stage:	20
ES_StageTxt:	concat ("" "Starter Cutout.")
dummy:	StoreEvent ("Starter Cutout...")
#C ***********************************************
#elseif	((ES_Stage = 20) & EECEngRunning)
ES_Stage:	25
FuelOnToIdleTmr_F:	OFF
StrtOnToIdleTmr_F:	OFF
FuelOnToIdle:secs	FuelOnToIdleTmr
StrtOnToIdle:secs	StrtOnToIdleTmr
ES_StageTxt:	concat ("" "Idle.")
dummy:	StoreEvent ("Engine Start Idle Detected...")
#C ***********************************************
#elseif	((ES_Stage = 21) & ~StartMode_F)
ES_Stage:	30
FuelOnToIdleTmr_F:	OFF
StrtOnToIdleTmr_F:	OFF
ES_StageTxt:	concat ("" "Aborted Start Attempt...")
#C ***********************************************
#elseif	((ES_Stage = 25) & RunMode)
ES_Stage:	30
ES_StageTxt:	concat ("" "Successful Start, now at Idle...")
dummy:	StoreEvent ("Successful Start, now at Idle...")
#C ***********************************************
#elseif	((ES_Stage = 9) & ~DRYCKA & ~WETCKA)
ES_Stage:	30
FuelOnToIdleTmr_F:	OFF
StrtOnToIdleTmr_F:	OFF
ES_StageTxt:	concat ("" "Successful Motor, complete...")
dummy:	StoreEvent ("Successful Motor, complete...")
#C ***********************************************
#elseif	(ES_Stage = 30)
ES_Stage:	35
TimeAtStart:	concat ("" SysReportTime)
DateAtStart:	concat ("" SysDate)
StoreStartData:	(StoreStartData + 1)
#endif	
#C ***********************************************
$END-CALC
$STOREDISPLAY Append
$OBJECT String font=93 startx=8 starty=892 endx=361 endy=920
ES_StageTxt labelspace=9 label="START STATUS:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=DarkGray shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=8 starty=923 endx=1855 endy=927
linewidth=2 linecolor=Red
shading=-1
$END-OBJECT
***********
$OBJECT Box font=1 startx=12 starty=1 endx=1180 endy=121
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Box font=1 startx=12 starty=124 endx=427 endy=832
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=1 startx=14 starty=540 endx=424 endy=542
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=17 starty=151 endx=424 endy=153
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=20 starty=550 endx=415 endy=742
labelspace=12 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
WfLtOff type="FLOAT" width=6 prec=1 label="Fuel Flow at Lightoff" units="default" 
MOPLtOff type="FLOAT" width=6 prec=1 label="MOP at Lightoff" units="default" 
FuelOnToLtOFF type="FLOAT" width=6 prec=1 label="Fuel on to Lightoff" units="default" 
FuelOnToIdle type="FLOAT" width=6 prec=1 label="Fuel on to Idle" units="default" 
StrtOnToIdle type="FLOAT" width=6 prec=1 label="Starter on to Idle" units="default" 
StartPeakWf type="FLOAT" width=6 prec=1 label="Peak Wf" units="default" 
StartPeakITT type="FLOAT" width=6 prec=1 label="Peak ITT" units="default" 
$END-OBJECT
***********
$OBJECT String font=101 startx=21 starty=783 endx=308 endy=810
IgnSystem labelspace=7 label="Igniter Used:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=24 starty=162 endx=419 endy=514
labelspace=12 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
NFPctS type="FLOAT" width=6 prec=1 label="NF Pct" units="default" 
N1PctS type="FLOAT" width=6 prec=1 label="N1 Pct" units="default" 
N2PctS type="FLOAT" width=6 prec=1 label="N2 Pct" units="default" 
EEC_NSA type="FLOAT" width=6 prec=1 label="Starter" units="default" 
EEC_ITT type="FLOAT" width=6 prec=1 label="ITT" units="default" 
WfS type="FLOAT" width=6 prec=1 label="Wf" units="default" 
FIP_PSIG type="FLOAT" width=6 prec=1 label="Fuel Pressure" units="default" 
POILAC type="FLOAT" width=6 prec=1 label="Oil Pressure" units="default" 
StoredAir type="FLOAT" width=6 prec=1 label="Stored Air" units="default" 
PAIRStart type="FLOAT" width=6 prec=1 label="Starter Air Press" units="default" 
TCSTAT type="FLOAT" width=6 prec=1 label="Starter Air Temp" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=50 starty=26 endx=120 endy=86
Blue direction=1 alignment=0
"ITT"
"DegC"
$END-OBJECT
***********
$OBJECT Text font=100 startx=112 starty=131 endx=304 endy=154
Blue direction=1 alignment=0
"OBSERVED DATA  "
$END-OBJECT
***********
$OBJECT Text font=100 startx=141 starty=517 endx=279 endy=540
Blue direction=1 alignment=0
"START DATA"
$END-OBJECT
***********
$OBJECT Line font=1 startx=161 starty=4 endx=163 endy=121
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=162 starty=31 endx=1178 endy=33
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=222 starty=6 endx=342 endy=33
Blue direction=1 alignment=0
"Max Limit"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=229 starty=38 endx=325 endy=73
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTStrtMxRLim type="FLOAT" width=6 prec=1 
$END-OBJECT
***********
$OBJECT Line font=1 startx=401 starty=4 endx=403 endy=119
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=403 starty=79 endx=888 endy=80
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=429 starty=153 endx=817 endy=794
style=2
boxcolor=DarkGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=101 startx=431 starty=146 endx=1182 endy=147
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=97 startx=433 starty=125 endx=648 endy=144
CtrlLoopTxt labelspace=7 label="CTRL LOOP:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=156 endx=623 endy=246
Bitdummy textcolor=Black
DarkGray = 1 "Spare"
DarkGray = 1 "Spare"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=246 endx=623 endy=336
Bitdummy textcolor=Black
DarkGray = 1 "Spare"
DarkGray = 0 "Spare"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=336 endx=623 endy=426
LightupDet_F textcolor=Black
Green = 1 "Light Off\nDetected"
DarkGray = 0 "Light Off\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=426 endx=623 endy=516
HungStart_F textcolor=Black
Red = 1 "HUNG START\nDetected"
DarkGray = 0 "HUNG START\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=516 endx=623 endy=606
HotStart_F textcolor=Black
Red = 1 "HOT START\nDetected"
DarkGray = 0 "HOT START\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=606 endx=623 endy=696
ABTSTRT textcolor=Black
Red = 1 "START\nABORTED"
DarkGray = 0 "START\nNOT ABORTED"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=433 starty=696 endx=623 endy=786
BowedROvrCrk_F textcolor=Black
Red = 1 "Bowed Rotor\nOverCrank"
DarkGray = 0 "Bowed Rotor\nNO OverCrank"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=465 starty=38 endx=561 endy=73
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_ITT type="FLOAT" width=6 prec=1 
$END-OBJECT
***********
$OBJECT Text font=101 startx=467 starty=6 endx=585 endy=33
Blue direction=1 alignment=0
"Observed"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=474 starty=85 endx=755 endy=113
labelspace=7 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FnS type="FLOAT" width=6 prec=1 label="Thrust Zero:" units="default" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=621 starty=608 endx=811 endy=698
InitOilService_F textcolor=Black
Green = 1 "Initial Oil\nService Complete"
Red = 0 "Perform Initial\nOil Service"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=622 starty=426 endx=812 endy=516
EngineRunning textcolor=Black
Green = 1 "Engine\nRunning"
Red = 0 "Engine\nNOT Running"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=622 starty=516 endx=812 endy=606
BLOWOUT textcolor=Black
Red = 1 "FLAME OUT\nDetected"
DarkGray = 0 "FLAME OUT\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=622 starty=697 endx=812 endy=787
STLIM textcolor=Black
Red = 1 "Start Duty\nCycle LIMIT"
DarkGray = 0 "Start Duty\nCycle OK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=623 starty=156 endx=813 endy=246
StrtInPrgs_F textcolor=Black
Green = 1 "START\nIN PROGRESS"
DarkGray = 0 "NO START\nIN PROGRESS"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=623 starty=246 endx=813 endy=336
ECM_StartMode_Stat textcolor=Black
Magenta = 0 "Start Mode\nStatus UNK"
Green = 1 "Start Mode\nAUTO Start"
Yellow = 2 "Start Mode\nMANUAL Start"
Blue = 3 "Start Mode\nDRY CRANK"
Blue = 4 "Start Mode\nWET CRANK"
DarkGray = 5 "Start Mode\nNORMAL"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=623 starty=336 endx=813 endy=426
ECM_FuelCtrl_TB textcolor=Black
Green = 1 "Engine Run/OFF\nSelected RUN"
DarkGray = 0 "Engine Run/OFF\nSelected OFF"
$END-OBJECT
***********
$OBJECT Line font=1 startx=641 starty=4 endx=643 endy=80
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=702 starty=6 endx=809 endy=33
Blue direction=1 alignment=0
"Peak ITT"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=705 starty=39 endx=801 endy=74
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StartPeakITT type="FLOAT" width=6 prec=1 
$END-OBJECT
***********
$OBJECT Box font=101 startx=820 starty=152 endx=1182 endy=261
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Switch font=103 startx=834 starty=745 endx=1206 endy=793
TOGGLE ResetOT_S onlabel="Over Temps Reset" offlabel="Reset Over Temps" offcolor=DarkGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Box font=101 startx=836 starty=636 endx=1204 endy=746
style=2
boxcolor=DarkGray
shading=-3
$END-OBJECT
***********
$OBJECT Line font=101 startx=840 starty=671 endx=1200 endy=677
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=844 starty=682 endx=1146 endy=702
White direction=1 alignment=0
"AREA   ITT    LIMIT             TIME"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=864 starty=704 endx=950 endy=736
labelspace=2 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTStrtPk type="FLOAT" width=4 prec=0 label="A" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=867 starty=645 endx=1160 endy=668
Blue direction=1 alignment=1
"START OVER TEMPERATURE"
$END-OBJECT
***********
$OBJECT String font=101 startx=870 starty=196 endx=1151 endy=227
NoLightoffMsg labelspace=0 label="" labelcolor=Black stringcolor=Yellow parambox=2 paramboxcolor=DarkGray shading=-2
Yellow = 0.0 "Light Off Status Reset"
Red = 1.0 "Light Off Not Detected"
Black = 2.0 "Light Off Detected"
Black = 3.0 "DRY CRANK"
Black = 4.0 "WET CRANK"
$END-OBJECT
***********
$OBJECT Text font=101 startx=882 starty=162 endx=1118 endy=189
Magenta direction=1 alignment=0
"LIGHT OFF STATUS"
$END-OBJECT
***********
$OBJECT Line font=1 startx=886 starty=4 endx=888 endy=121
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=937 starty=5 endx=1130 endy=32
Blue direction=1 alignment=0
"Start Date/Time"
$END-OBJECT
***********
$OBJECT String font=100 startx=938 starty=67 endx=1117 endy=90
TimeAtStart labelspace=3 label="Time:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT String font=100 startx=942 starty=47 endx=1116 endy=70
DateAtStart labelspace=3 label="Date:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=969 starty=704 endx=1093 endy=736
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTStrtMxRLim type="FLOAT" width=4 prec=0 label="A" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1096 starty=703 endx=1201 endy=735
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ITTStrtMxTmr type="FLOAT" width=4 prec=1 label="A" units="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=1275 starty=19 endx=1832 endy=338
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=1277 starty=58 endx=1830 endy=60
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=98 startx=1296 starty=70 endx=1445 endy=156
StartAir_PID_F textcolor=Black
DarkGray = 0 "Starter Air\nis OFF"
Green = 1 "Starter Air\nis ON"
$END-OBJECT
***********
$OBJECT Text font=101 startx=1315 starty=25 endx=1779 endy=52
Blue direction=1 alignment=0
"Starter Air Pressure (SAP) Adjustment"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1392 starty=424 endx=1750 endy=454
labelspace=7 unitspace=1 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
FnS type="FLOAT" width=7 prec=1 label="Thrust Zero:" units="default" 
$END-OBJECT
***********
$OBJECT Bar font=97 startx=1410 starty=178 endx=1815 endy=230
labelspace=6 unitspace=1 labelcolor=Black length=303 \
height=10 format=0.0 ticpos=BELOW dir=0 shading=-2 spacing=5 \
ticfont=2 parambox=0 paramboxcolor=Black limitwidth=4
StoredAir label="Stored Air:" min=20 max=115 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Button font=104 startx=1427 starty=467 endx=1697 endy=547
PHASE VishayZero_ATP setvalue=-1 onlabel="Zero Thrust" offlabel="Zero Thrust" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Button font=104 startx=1427 starty=557 endx=1697 endy=637
PHASE storeZeroDrift_ATP setvalue=-1 onlabel="Zero Drift" offlabel="Zero Drift" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Switch font=104 startx=1427 starty=647 endx=1697 endy=727
TOGGLE RestartES_S onlabel="Restart" offlabel="Restart" offcolor=DarkGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Bar font=97 startx=1459 starty=128 endx=1816 endy=180
labelspace=3 unitspace=1 labelcolor=Black length=303 \
height=10 format=0.0 ticpos=BELOW dir=0 shading=-2 spacing=5 \
ticfont=2 parambox=0 paramboxcolor=Black limitwidth=4
PAIRStart label="SAP:" min=20 max=70 ticinter=2.5 labelinter=2
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1510 starty=68 endx=1798 endy=132
labelspace=7 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SAPTarg type="FLOAT" width=5 prec=1 label="SAP Target:" units="default" 
PAIRStart type="FLOAT" width=5 prec=1 label="          SAP:" units="default" 
$END-OBJECT
***********
$OBJECT Input font=100 startx=1530 starty=228 endx=1796 endy=327
SAPTargPct label="ADJUST SAP ABOVE" labelcolor=Blue max=105.00   min=0.00     \
interval=10.00    width=0 prec=0 bar=0 \
leftlabel="-" calclabel="SAP %" rightlabel="+" \
parambox=2 paramboxcolor=Black shading=-2 delta=1.00    
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
""
""
""
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

