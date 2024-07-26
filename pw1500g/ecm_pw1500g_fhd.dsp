$DISPLAY "ECM PW1500G FHD" background=Black loadflag=ecmFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Switch font=101 displayflag=TRAMxPwrStopSet_F startx=0 starty=180 endx=140 endy=265
TOGGLE GoToMxPwrStop_TS onlabel="GoTo Max\nPWR Stop" offlabel="GoTo Max\nPWR Stop" offcolor=LightGray oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=101 displayflag=TRAMnIdleStopSet_F startx=0 starty=265 endx=140 endy=350
TOGGLE GoToMnIdleStop_TS onlabel="GoTo Min\nIdle Stop" offlabel="GoTo Min\nIdle Stop" offcolor=LightGray oncolor=Green 
$RELEASE
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=101 displayflag=TRAMxPwrStopSet_F startx=0 starty=350 endx=140 endy=435
MOMENTARY IncreaseTRA_MS onlabel="Increase\nTRA" offlabel="Increase\nTRA" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Switch font=101 displayflag=TRAMnIdleStopSet_F startx=0 starty=435 endx=140 endy=520
MOMENTARY DecreaseTRA_MS onlabel="Decrease\nTRA" offlabel="Decrease\nTRA" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=0 starty=520 endx=210 endy=755
parameter=ECM_IdleCtrl_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Idle Control"
$END-PANEL
defaultstate=0
$STATE 1
label="APPROACH"
oncolor=Blue
$INTERLOCK
EngineRunning
RunMode
$END-INTERLOCK
$END-STATE
$STATE 0
label="MINIMUM"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=0 starty=755 endx=210 endy=990
parameter=ECM_FuelCtrl_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="ENGINE RUN"
$END-PANEL
defaultstate=0
$STATE 1
label="RUN"
oncolor=Green
$INTERLOCK
SWActive
~EFSO_I
InitOilService_F
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("Engine Run Selected ON")
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Red
$INITCALC
dummy:	storeevent ("Engine Run Selected OFF")
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Text font=100 startx=3 starty=368 endx=131 endy=437
Yellow direction=1 alignment=1
"MAX POWER"
"STOP"
"NOT SET"
$END-OBJECT
***********
$OBJECT Line font=101 startx=4 starty=1028 endx=1906 endy=1032
linewidth=2 linecolor=Red
shading=-1
$END-OBJECT
***********
$OBJECT Digital font=101 startx=5 starty=23 endx=325 endy=173
labelspace=5 unitspace=1 spacing=1 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
EEC_NF type="FLOAT" width=6 prec=0 label="NFan" units="default" 
EEC_N1 type="FLOAT" width=6 prec=0 label="N1" units="default" 
EEC_N2 type="FLOAT" width=6 prec=0 label="N2" units="default" 
EEC_ITT type="FLOAT" width=6 prec=1 label="EGT" units="default" 
EEC_WF type="FLOAT" width=6 prec=0 label="Fuel Wf" units="default" 
$END-OBJECT
***********
$OBJECT Line font=0 startx=8 starty=180 endx=1253 endy=181
linewidth=1 linecolor=DarkGray
shading=0
$END-OBJECT
***********
$OBJECT Text font=93 startx=13 starty=999 endx=163 endy=1027
Yellow direction=1 alignment=0
"Instructions:"
$END-OBJECT
***********
$OBJECT Text font=100 startx=26 starty=448 endx=121 endy=517
Yellow direction=1 alignment=1
"MIN IDLE"
"STOP"
"NOT SET"
$END-OBJECT
***********
$OBJECT Text font=98 startx=91 starty=2 endx=247 endy=22
Cyan direction=1 alignment=0
"EEC INDICATION"
$END-OBJECT
***********
$OBJECT Button font=2 startx=140 starty=180 endx=250 endy=248
RADIO TRA_SpeedCtrl_RB setvalue=4 onlabel="S Fast\n10 Sec\nGI > TO" offlabel="S Fast\n10 Sec\nGI > TO" \
labelcolor=Orange oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=140 starty=248 endx=250 endy=316
RADIO TRA_SpeedCtrl_RB setvalue=3 onlabel="Fast\n30 Sec\nGI > TO" offlabel="Fast\n30 Sec\nGI > TO" \
labelcolor=Red oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=140 starty=316 endx=250 endy=384
RADIO TRA_SpeedCtrl_RB setvalue=2 onlabel="Medium\n60 Sec\nGI > TO" offlabel="Medium\n60 Sec\nGI > TO" \
labelcolor=Yellow oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=140 starty=384 endx=250 endy=452
RADIO TRA_SpeedCtrl_RB setvalue=1 onlabel="Slow\n120 Sec\nGI > TO" offlabel="Slow\n120 Sec\nGI > TO" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=140 starty=452 endx=250 endy=520
RADIO TRA_SpeedCtrl_RB setvalue=0 onlabel="Fine\n300 Sec\nGI > TO" offlabel="Fine\n300 Sec\nGI > TO" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ES_Stage_F startx=167 starty=998 endx=316 endy=1028
ES_StageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=StartOS_TS startx=167 starty=998 endx=316 endy=1028
EM_StageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ShapedAccel_TS startx=167 starty=998 endx=316 endy=1028
ShapedStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ArmMopTst_TB startx=167 starty=998 endx=316 endy=1028
MOPTstStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ArmAccelDecel_F startx=167 starty=998 endx=316 endy=1028
AccelStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=RunInHPC_TS startx=167 starty=998 endx=316 endy=1028
RunInStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ArmVibSurvey_TB startx=167 starty=998 endx=316 endy=1028
VibSvyStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=AcceptT9_TS startx=167 starty=998 endx=316 endy=1028
AcceptStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ArmCoolDown_F startx=167 starty=998 endx=316 endy=1028
CoolDnStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=93 displayflag=ArmWarmUp_F startx=167 starty=998 endx=316 endy=1028
WarmUpStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=210 starty=520 endx=420 endy=990
parameter=ECM_ModeSel_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="ENGINE\nSTART"
$END-PANEL
defaultstate=0
$STATE 1
label="CRANK"
oncolor=Blue
$INTERLOCK
SWActive
ECM_EECGndTstPwr_TB
~GIdle_F
$END-INTERLOCK
$END-STATE
$STATE 0
label="AUTO"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT String font=89 startx=250 starty=183 endx=478 endy=202
CtrlLoopTxt labelspace=8 label="Control Loop:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=250 starty=205 endx=1254 endy=206
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Switch font=98 startx=250 starty=410 endx=375 endy=520
TOGGLE WarmUp_TS onlabel="Warm-Up\nProcedure" offlabel="Warm-Up\nProcedure" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Bar font=101 startx=262 starty=296 endx=1227 endy=408
labelspace=7 unitspace=0 labelcolor=White length=708 \
height=15 format=6.3 ticpos=BELOW dir=0 shading=1 spacing=2 \
ticfont=2 parambox=1 paramboxcolor=DarkGray limitwidth=3
TRA_Actual label="TRA Actual" min=-35 max=35 ticinter=2.5 labelinter=2
TRA_Cmd label="TRA Cmd" min=-35 max=35 ticinter=2.5 labelinter=2
$END-OBJECT
***********
$OBJECT Text font=98 startx=298 starty=329 endx=333 endy=349
White direction=1 alignment=0
"Deg"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=305 starty=23 endx=403 endy=113
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
EEC_NFPct type="FLOAT" width=5 prec=1 label="EEC NF" units="default" 
EEC_N1Pct type="FLOAT" width=5 prec=1 label="EEC N1" units="default" 
EEC_N2Pct type="FLOAT" width=5 prec=1 label="EEC N2" units="default" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=103 startx=328 starty=211 endx=847 endy=277
AutoThrottle_Stat textcolor=Black
Magenta = 0 "NO AUTO THROTTLE CONTROL"
LightGray = 1 "AUTO THROTTLE CONTROL OFF"
Green = 2 "AUTO THROTTLE CONTROL ACTIVE"
BurntOrange = 3 "AUTO THROTTLE PLA IN CONTROL"
Yellow = 4 "AUTO THROTTLE TRA IN CONTROL"
Orange = 5 "AUTO THROTTLE TRA IN CONTROL"
$END-OBJECT
***********
$OBJECT Switch font=98 startx=375 starty=410 endx=500 endy=520
TOGGLE RunInHPC_TS onlabel="Run-In\nHPC ON" offlabel="Run-In\nHPC OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Line font=0 startx=412 starty=0 endx=414 endy=180
linewidth=2 linecolor=DarkGray
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=416 starty=71 endx=881 endy=72
linewidth=1 linecolor=DarkGray
shading=0
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=420 starty=520 endx=630 endy=755
parameter=ECM_EECGndTstPwr_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="EEC GND PWR"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$INITCALC
EECPwrChA_O:	ON
EECPwrChB_O:	ON
PHMUPwrON_O:	ON
EECPwrDelTmr:Sec	0.0
EECPwrDelTmr_F:	ON
dummy:	storeevent ("EEC Power ON...")
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Blue
$INITCALC
dummy:	storeevent ("EEC Power OFF...")
$END-CALC
$CALC
EECPwrChA_O:	OFF
EECPwrChB_O:	OFF
PHMUPwrON_O:	OFF
EECPwrDelTmr_F:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=420 starty=755 endx=630 endy=990
parameter=ECM_CowlAI_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="COWL A/I"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Yellow
$INTERLOCK
SWActive
$END-INTERLOCK
$END-STATE
$STATE 0
label="OFF"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT String font=103 startx=424 starty=8 endx=872 endy=38
AutoThrottle_Stat labelspace=10 label="AUTO TRA Status:" labelcolor=White stringcolor=Magenta parambox=0 paramboxcolor=Black shading=0
Magenta = 0 "Not Active"
White = 1 "Manual"
Green = 2 "Active"
BurntOrange = 3 "Automatic PLA"
Yellow = 4 "Automatic TLA"
Orange = 5 "Automatic TLA"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=440 starty=102 endx=631 endy=171
labelspace=4 unitspace=1 spacing=1 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
EECCurrChA type="FLOAT" width=5 prec=3 label="CH A" units="default" 
EECCurrChB type="FLOAT" width=5 prec=3 label="CH B" units="default" 
DCCurr_PHMU type="FLOAT" width=5 prec=3 label="PHMU" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=461 starty=78 endx=608 endy=97
Cyan direction=1 alignment=1
"EEC Power Amps"
$END-OBJECT
***********
$OBJECT Text font=100 displayflag=MOT2Low_F startx=474 starty=999 endx=1123 endy=1022
Red direction=1 alignment=0
"MOT BELOW 51.7 DegC DO NOT ACCEL ABOVE GROUND IDLE..."
$END-OBJECT
***********
$OBJECT Switch font=98 startx=500 starty=410 endx=625 endy=520
TOGGLE VibSurvey_TS onlabel="Vib Survey\nON" offlabel="Vib Survey\nOFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
VibSvyTest1_F:	ON
VibSvyTest2_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=625 starty=410 endx=750 endy=520
TOGGLE AccelDecel_TS onlabel="Accel/Decel\nTest ON" offlabel="Accel/Decel\nTest OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=630 starty=520 endx=840 endy=755
parameter=ECM_IGNPwr_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="IGN PWR"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Green
$INTERLOCK
~IgnPwrDisable
$END-INTERLOCK
$INITCALC
DCIgnPwrA_O:	ON
DCIgnPwrB_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Blue
$CALC
DCIgnPwrA_O:	OFF
DCIgnPwrB_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=630 starty=755 endx=840 endy=990
parameter=ECM_IgnCtrl_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="CONT IGN"
$END-PANEL
defaultstate=0
$STATE 1
label="MANUAL"
oncolor=Blue
$INTERLOCK
SWActive
~GIdle_F
$END-INTERLOCK
$END-STATE
$STATE 0
label="NORMAL"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Digital font=98 startx=670 starty=103 endx=861 endy=149
labelspace=4 unitspace=1 spacing=1 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
DCIgnCurrA type="FLOAT" width=5 prec=3 label="IGN A" units="default" 
DCIgnCurrB type="FLOAT" width=5 prec=3 label="IGN B" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=704 starty=77 endx=827 endy=96
Cyan direction=1 alignment=1
"Ignition Amps"
$END-OBJECT
***********
$OBJECT Switch font=98 startx=750 starty=410 endx=875 endy=520
TOGGLE ShapedAccel_TS onlabel="Shaped\nAccel ON" offlabel="Shaped\nAccel OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=840 starty=520 endx=1050 endy=755
parameter=ECM_P2T2PHeat_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="P2/T2 HEAT"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Yellow
$INTERLOCK
SWActive
$END-INTERLOCK
$END-STATE
$STATE 0
label="OFF"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=840 starty=755 endx=1050 endy=990
parameter=ECM_DCPwrTst_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="DC Pwr Test"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Green
$INTERLOCK
(DCPwrTstTmr < 5.0)
~EngineRunning
$END-INTERLOCK
$END-STATE
$STATE 0
label="OFF"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=875 starty=410 endx=1000 endy=520
TOGGLE AcceptT9_TS onlabel="Acceptance\nT9 ON" offlabel="Acceptance\nT9 OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
CoolDown_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Line font=0 startx=879 starty=0 endx=881 endy=179
linewidth=2 linecolor=DarkGray
shading=0
$END-OBJECT
***********
$OBJECT Digital font=101 startx=885 starty=217 endx=1297 endy=277
labelspace=6 unitspace=1 spacing=1 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
TRAMxPwrStop type="FLOAT" width=6 prec=1 label="Max Stop:" units="Deg" 
TRA_Rate type="FLOAT" width=6 prec=3 label="TRA Rate:" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=896 starty=27 endx=1239 endy=177
labelspace=6 unitspace=1 spacing=1 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
EEC_N1C2D type="FLOAT" width=6 prec=0 label="N1C2D" units="default" 
EEC_N2C2D type="FLOAT" width=6 prec=0 label="N2C2D" units="default" 
TOILAC type="FLOAT" width=6 prec=0 label="MOT" units="default" 
POILAC type="FLOAT" width=6 prec=1 label="MOP" units="default" 
OILQ type="FLOAT" width=6 prec=1 label="OIL QTY" units="default" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=991 starty=2 endx=1151 endy=22
Cyan direction=1 alignment=1
"QEC INDICATION"
$END-OBJECT
***********
$OBJECT Switch font=98 startx=1000 starty=410 endx=1127 endy=520
TOGGLE VibSvyOffical_TS onlabel="Vib Survey\nOffical ON" offlabel="Vib Survey\nOffical OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
VibSvyTest1_F:	OFF
VibSvyTest2_F:	ON
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=103 startx=1050 starty=520 endx=1252 endy=755
TOGGLE AutoTLAEnable_TS onlabel="DISABLE\nTRA Auto\nThrottle" offlabel="ENABLE\nTRA Auto\nThrottle" offcolor=Orange oncolor=Yellow 
$RELEASE
dummy:	startautotest(AutoTLAEnable_ATP)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=1050 starty=755 endx=1252 endy=814
TOGGLE PB_AutoStart_TB onlabel="Auto Start" offlabel="Auto Start" offcolor=Cyan oncolor=Green 
$RELEASE
PB_ManStart_TB:	OFF
PB_DryCrank_TB:	OFF
PB_WetCrank_TB:	OFF
PB_Stage:	0
StageTmr_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=1050 starty=814 endx=1252 endy=873
TOGGLE PB_ManStart_TB onlabel="Manual Start" offlabel="Manual Start" offcolor=Cyan oncolor=Green 
$RELEASE
PB_AutoStart_TB:	OFF
PB_DryCrank_TB:	OFF
PB_WetCrank_TB:	OFF
PB_Stage:	0
StageTmr_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=1050 starty=873 endx=1252 endy=932
TOGGLE PB_DryCrank_TB onlabel="Dry Crank" offlabel="Dry Crank" offcolor=Cyan oncolor=Green 
$RELEASE
PB_AutoStart_TB:	OFF
PB_ManStart_TB:	OFF
PB_WetCrank_TB:	OFF
PB_Stage:	0
StageTmr_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=1050 starty=932 endx=1252 endy=990
TOGGLE PB_WetCrank_TB onlabel="Wet Crank" offlabel="Wet Crank" offcolor=Cyan oncolor=Green 
$RELEASE
PB_AutoStart_TB:	OFF
PB_ManStart_TB:	OFF
PB_DryCrank_TB:	OFF
PB_Stage:	0
StageTmr_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=1125 starty=300 endx=1252 endy=410
MOMENTARY SetMnMxStops_S onlabel="Set\nMin/Max\nStops" offlabel="Set\nMin/Max\nStops" offcolor=Orange oncolor=Green 
$RELEASE
TRAMnIdleStop:deg	-14.0
TRAMnIdleStopMx:deg	(TRAMnIdleStop + 0.5)
TRAMnIdleStopMn:deg	(TRAMnIdleStop - 1.0)
TRAMnIdleStopSet_F:	ON
TRAMxPwrStop:deg	TLA_Takeoff
TRAMxPwrStopMx:deg	(TRAMxPwrStop + 1.0)
TRAMxPwrStopMn:deg	(TRAMxPwrStop - 0.2)
TRAMxPwrStopSet_F:	ON
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=1125 starty=410 endx=1252 endy=520
TOGGLE CoolDown_TS onlabel="Cool Down\nProcedure" offlabel="Cool Down\nProcedure" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
WarmUp_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
VibSvyOffical_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Box font=101 startx=1253 starty=3 endx=1914 endy=989
style=1
linewidth=3 linecolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1260 starty=10 endx=1475 endy=105
EECLOP_Stat textcolor=Black
Magenta = 0 "Oil Press\nSwitch UNK"
Red = 1 "Oil Press\nLOW"
Green = 2 "Oil Press\nOK"
Red = 3 "Oil Press\nSwitch BAD"
Magenta = 4 "Oil Press\nSwitch INVALID"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1260 starty=105 endx=1475 endy=200
OilFBP_Stat textcolor=Black
Magenta = 0 "Oil Filter\nBy-Pass UNK"
Green = 1 "Oil Filter\nBy-Pass OK"
Yellow = 2 "Oil Filter\nImpend By-Pass"
Red = 3 "Oil Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1260 starty=200 endx=1475 endy=295
TOilAC_Stat textcolor=Black
Yellow = 4 "Oil Temp\nLOW NO ACCEL"
Red = 3 "Oil Temp\nHigh > Max"
Yellow = 2 "Oil Temp\nHigh"
Green = 1 "Oil Temp\nOk"
Magenta = 0 "Oil Temp\nUNK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1260 starty=295 endx=1475 endy=390
FuelFBP_Stat textcolor=Black
Magenta = 0 "Fuel Filter\nBy-Pass UNK"
Green = 1 "Fuel Filter\nBy-Pass OK"
Yellow = 2 "Fuel Filter\nImpend By-Pass"
Red = 3 "Fuel Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1260 starty=390 endx=1475 endy=485
IDGOilFltrClg_I textcolor=Black
Green = 0 "IDG OIL Filter\nOK"
Yellow = 1 "IDG OIL Filter\nClogged"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1260 starty=485 endx=1475 endy=580
DSUFault_Stat textcolor=Black
BurntOrange = 0 "DSU Fault Check\nSoftware NOT Active"
LightGray = 1 "DSU Fault Check\nGND PWR OFF"
Red = 2 "DSU Fault Check\nFAULT"
Green = 3 "Test DSU\nCheck Valid"
Green = 4 "Customer DSU\nCheck Valid"
Yellow = 5 "DSU Fault Check\nUNK"
$END-OBJECT
***********
$OBJECT Box font=101 startx=1260 starty=584 endx=1473 endy=982
style=1
linewidth=3 linecolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Switch font=104 startx=1266 starty=630 endx=1464 endy=750
TOGGLE ECM_OpTimer_TS onlabel="Stop" offlabel="Start" offcolor=LightGray oncolor=Cyan 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=104 startx=1266 starty=755 endx=1464 endy=875
MOMENTARY ECM_OpTimerRst_MS onlabel="Reset" offlabel="Reset" offcolor=DarkGray oncolor=Green 
$RELEASE
OpTimer:Sec	0.0
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1292 starty=900 endx=1436 endy=962
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
OpTimer type="HOURS" width=8 prec=0 
OpTimer type="SECONDS" width=8 prec=0 
$END-OBJECT
***********
$OBJECT Text font=103 startx=1324 starty=596 endx=1410 endy=626
Cyan direction=1 alignment=0
"TIMER"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1445 starty=997 endx=1650 endy=1024
labelspace=7 unitspace=1 spacing=2 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=10 endx=1690 endy=105
HPSOV_Stat textcolor=Black
BurntOrange = 0 "Software\nNot Active"
DarkGray = 1 "Fuel Valve\nClosed"
Green = 2 "Fuel Valve\nOpen"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=105 endx=1690 endy=200
FireDetection_Stat textcolor=Black
Green = 0 "Under Cowl\nTemp Normal"
Red = 1 "Fire Warning\n>>FIRE<<"
Green = 2 "Fire Warning\nCont Tst PASSED"
Yellow = 3 "Fire Warning\nCont Tst FAULT"
Green = 4 "Fire Warning\nGnd Tst PASSED"
Yellow = 5 "Fire Warning\nGnd Tst FAULT"
BurntOrange = 6 "Fire Warning\nUNKNOWN"
Green = 7 "Under Cowl\nTemp Normal"
Yellow = 8 "Under Cowl\nTemp WARNING"
Red = 9 "Under Cowl\nTemp >>FIRE<<"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=200 endx=1690 endy=295
FuelSuppReg_O textcolor=Black
Red = 0 "Fuel Supply\nPressure Low"
Green = 1 "Fuel Supply\nPressure OK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=295 endx=1690 endy=390
EECITT_Stat textcolor=Black
Magenta = 0 "ITT Limit\nUNK"
Green = 1 "ITT Limit\nOK"
Yellow = 2 "ITT Amber Lim\nExceeded"
Red = 3 "ITT Red Limit\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=390 endx=1690 endy=485
EECN1_Stat textcolor=Black
Magenta = 0 "N1 RedLine\nUNK"
Green = 1 "N1 RedLine\nOK"
Red = 2 "N1 RedLine\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=485 endx=1690 endy=580
EECN2_Stat textcolor=Black
Magenta = 0 "N2 RedLine\nUNK"
Green = 1 "N2 RedLine\nOK"
Red = 2 "N2 RedLine\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=580 endx=1690 endy=675
DSUPNCk_Stat textcolor=Black
BurntOrange = 0 "DSU P/N Check\nSoftware NOT Active"
LightGray = 1 "DSU P/N Check\nGND PWR OFF"
Green = 2 "Test DSU\nP/N Check OK"
Red = 3 "Test DSU\nP/N Check ERROR"
Green = 4 "Customer DSU\nP/N Check OK"
Red = 5 "Customer DSU\nP/N Check ERROR"
BurntOrange = 6 "DSU P/N Check\nStatus UNK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=675 endx=1690 endy=770
BowedROvrCrk_F textcolor=Black
Green = 0 "Bowed Rotor\nNOT Over Crank"
Yellow = 1 "Bowed Rotor\nOver Crank"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1475 starty=770 endx=1690 endy=865
ChAInCtrl_F textcolor=Black
DarkGray = 0 "A channel\nnot in control"
Green = 1 "A channel\nin control"
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=1475 starty=865 endx=1690 endy=983
parameter=ECM_EECResetChA_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=Black
defaultstate=0
$STATE 1
label="EEC ChA\nRESET"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("EEC Reset ChA")
$END-CALC
$END-STATE
$STATE 0
label="RESET\nEEC ChA"
oncolor=DarkGray
$END-STATE
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=10 endx=1905 endy=105
Adapter_stat textcolor=Black
Red = 0 "Adapter NOT\nConnected"
Red = 1.0 "Duct Set DL-15\nInvalid"
Green = 2.0 "Duct Set DL-15\nValid"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=105 endx=1905 endy=200
StrtInPrgs_F textcolor=Black
Green = 0 "SAV Closed"
Yellow = 1 "SAV Open"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=200 endx=1905 endy=295
ChipDetected_F textcolor=Black
Yellow = 1 "Oil Sys Chip\nDetected"
Green = 0 "Oil Sys Chip\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=295 endx=1905 endy=390
EECEngRunning textcolor=Black
Yellow = 0 "Engine\n< IDLE"
Green = 1 "Engine\n>= IDLE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=390 endx=1905 endy=485
InitOilService_F textcolor=Black
Red = 0 "Perform Initial\nOil Service"
Green = 1 "Initial Oil\nService Complete"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=485 endx=1905 endy=580
STLIM textcolor=Black
Green = 0 "Starter Duty\nCycle OK"
Yellow = 1 "Starter Duty\nCycle LIMIT"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=580 endx=1905 endy=675
BLOWOUT textcolor=Black
Green = 0 "NO Flame Out\nDetected"
Red = 1 "Flame OUT\nDetected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=675 endx=1905 endy=770
EngStall_F textcolor=Black
Green = 0 "NO Stall\nDetected"
Red = 1 "Stall\nDetected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1690 starty=770 endx=1905 endy=865
ChBInCtrl_F textcolor=Black
DarkGray = 0 "B channel\nnot in control"
Green = 1 "B channel\nin control"
$END-OBJECT
***********
$OBJECT Buttonobj font=103 startx=1690 starty=865 endx=1905 endy=983
parameter=ECM_EECResetChB_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=Black
defaultstate=0
$STATE 1
label="EEC ChB\nRESET"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("EEC Reset ChB")
$END-CALC
$END-STATE
$STATE 0
label="RESET\nEEC ChB"
oncolor=DarkGray
$END-STATE
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1693 starty=997 endx=1898 endy=1024
labelspace=3 unitspace=1 spacing=2 labelcolor=White parambox=1 paramboxcolor=DarkGray shading=1
StageTmrLim type="SECONDS" width=8 prec=0 label="Limit:" units="default" 
$END-OBJECT
***********
$END-DISPLAY

