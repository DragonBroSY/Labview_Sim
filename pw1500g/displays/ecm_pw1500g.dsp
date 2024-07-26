$DISPLAY "ECM PW1500G" background=Charcoal editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Line font=101 startx=0 starty=203 endx=862 endy=204
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=TRAMxPwrStopSet_F startx=0 starty=240 endx=115 endy=305
TOGGLE GoToMxPwrStop_TS onlabel="GoTo Max\nPWR Stop" offlabel="GoTo Max\nPWR Stop" offcolor=LightGray oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
BowedRotor_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=TRAMnIdleStopSet_F startx=0 starty=305 endx=115 endy=370
TOGGLE GoToMnIdleStop_TS onlabel="GoTo Min\nIdle Stop" offlabel="GoTo Min\nIdle Stop" offcolor=LightGray oncolor=Green 
$RELEASE
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
BowedRotor_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=TRAMxPwrStopSet_F startx=0 starty=370 endx=115 endy=435
MOMENTARY IncreaseTRA_MS onlabel="Increase" offlabel="Increase" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=TRAMnIdleStopSet_F startx=0 starty=435 endx=115 endy=500
MOMENTARY DecreaseTRA_MS onlabel="Decrease" offlabel="Decrease" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Line font=0 startx=0 starty=514 endx=863 endy=516
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=0 starty=520 endx=155 endy=665
parameter=ECM_IdleCtrl_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="IDLE CONTROL"
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
$OBJECT Buttonobj font=98 startx=0 starty=665 endx=155 endy=810
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
$OBJECT Switch font=98 displayflag=FALSE startx=0 starty=810 endx=155 endy=850
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
$OBJECT Line font=101 startx=1 starty=902 endx=1203 endy=903
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Text font=92 startx=4 starty=877 endx=154 endy=902
Yellow direction=1 alignment=0
"Instructions:"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=5 starty=23 endx=248 endy=168
labelspace=4 unitspace=1 spacing=4 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
EEC_NF type="FLOAT" width=6 prec=0 label="NFan" units="default" 
EEC_N1 type="FLOAT" width=6 prec=0 label="N1" units="default" 
EEC_N2 type="FLOAT" width=6 prec=0 label="N2" units="default" 
EEC_ITT type="FLOAT" width=6 prec=1 label="ITT" units="default" 
EEC_WF type="FLOAT" width=6 prec=0 label="Wf" units="default" 
$END-OBJECT
***********
$OBJECT String font=90 displayflag=PB_StartCrank_F startx=6 starty=854 endx=288 endy=874
PB_StageTxt labelspace=10 label="Push Button Info:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Line font=0 startx=8 starty=180 endx=862 endy=181
linewidth=1 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Text font=2 startx=10 starty=378 endx=91 endy=426
Yellow direction=1 alignment=1
"MAX POWER"
"STOP"
"NOT SET"
$END-OBJECT
***********
$OBJECT String font=89 startx=12 starty=184 endx=240 endy=203
CtrlLoopTxt labelspace=8 label="Control Loop:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Digital font=98 startx=12 starty=209 endx=231 endy=232
labelspace=6 unitspace=0 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
TRAMxPwrStop type="FLOAT" width=6 prec=2 label="Max Stop:" units="default" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=15 starty=443 endx=87 endy=491
Yellow direction=1 alignment=1
"MIN IDLE"
"STOP"
"NOT SET"
$END-OBJECT
***********
$OBJECT Text font=98 startx=91 starty=2 endx=229 endy=22
Cyan direction=1 alignment=0
"OBS EEC DATA"
$END-OBJECT
***********
$OBJECT Button font=2 startx=129 starty=296 endx=219 endy=346
RADIO TRA_SpeedCtrl_RB setvalue=3 onlabel="Fast\n10 Sec" offlabel="Fast\n10 Sec" \
labelcolor=Blue oncolor=Yellow offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=129 starty=345 endx=219 endy=395
RADIO TRA_SpeedCtrl_RB setvalue=2 onlabel="Medium\n30 Sec" offlabel="Medium\n30 Sec" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=129 starty=394 endx=219 endy=444
RADIO TRA_SpeedCtrl_RB setvalue=1 onlabel="Slow\n60 Sec" offlabel="Slow\n60 Sec" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=129 starty=443 endx=219 endy=493
RADIO TRA_SpeedCtrl_RB setvalue=0 onlabel="Fine\n600 Sec" offlabel="Fine\n600 Sec" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=2 startx=130 starty=248 endx=220 endy=298
RADIO TRA_SpeedCtrl_RB setvalue=4 onlabel="S Fast\n1 Sec" offlabel="S Fast\n1 Sec" \
labelcolor=Blue oncolor=Yellow offcolor=DarkGray
$END-OBJECT
***********
$OBJECT String font=92 displayflag=StartOS_TS startx=134 starty=875 endx=270 endy=900
EM_StageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmAccelDecel_F startx=137 starty=875 endx=273 endy=900
AccelStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ES_Stage_F startx=137 starty=877 endx=273 endy=902
ES_StageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmMopTst_TB startx=137 starty=878 endx=273 endy=903
MOPTstStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmVibSurvey_TB startx=138 starty=874 endx=274 endy=899
VibSvyStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmWarmUp_F startx=139 starty=875 endx=275 endy=900
WarmUpStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmCoolDown_F startx=139 starty=875 endx=275 endy=900
CoolDnStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=RunInHPC_TS startx=139 starty=877 endx=275 endy=902
RunInStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=AcceptT9_TS startx=140 starty=876 endx=276 endy=901
AcceptStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmCorrelation_TB startx=140 starty=877 endx=276 endy=902
CorrStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ShapedAccel_TS startx=140 starty=877 endx=276 endy=902
ShapedStageTxt labelspace=0 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=155 starty=520 endx=305 endy=810
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
$OBJECT Switch font=98 displayflag=FALSE startx=155 starty=810 endx=310 endy=850
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
$OBJECT StatusIndicator font=97 startx=221 starty=206 endx=584 endy=257
AutoThrottle_Stat textcolor=Black
Magenta = 0 "NO AUTO THROTTLE CONTROL"
LightGray = 1 "AUTO THROTTLE CONTROL OFF"
Green = 2 "AUTO THROTTLE CONTROL ACTIVE"
BurntOrange = 3 "AUTO THROTTLE PLA IN CONTROL"
Yellow = 4 "AUTO THROTTLE TRA IN CONTROL"
Orange = 5 "AUTO THROTTLE TRA IN CONTROL"
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=230 starty=360 endx=355 endy=435
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
$OBJECT Switch font=98 startx=231 starty=437 endx=356 endy=512
TOGGLE VibSurvey_TS onlabel="Vib Survey\nON" offlabel="Vib Survey\nOFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
VibSvyOffical_TS:	OFF
VibSvyTest1_F:	ON
VibSvyTest2_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=232 starty=361 endx=357 endy=436
TOGGLE RunInHPC_TS onlabel="Run-In\nHPC ON" offlabel="Run-In\nHPC OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Bar font=98 startx=234 starty=259 endx=861 endy=357
labelspace=9 unitspace=0 labelcolor=White length=350 \
height=15 format=6.3 ticpos=BELOW dir=0 shading=-1 spacing=2 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=3
TRA_Actual label="TRA Actual" units="Deg" min=-35 max=35 ticinter=5 labelinter=2
TRA_Cmd label="TRA Command" units="Deg" min=-35 max=35 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Digital font=100 startx=238 starty=22 endx=336 endy=109
labelspace=0 unitspace=1 spacing=4 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
EEC_NFPct type="FLOAT" width=5 prec=1 label="EEC NF" units="default" 
EEC_N1Pct type="FLOAT" width=5 prec=1 label="EEC N1" units="default" 
EEC_N2Pct type="FLOAT" width=5 prec=1 label="EEC N2" units="default" 
$END-OBJECT
***********
$OBJECT Text font=100 displayflag=MOT2Low_F startx=254 starty=820 endx=903 endy=843
Red direction=1 alignment=0
"MOT BELOW 49.0 DegC DO NOT ACCEL ABOVE GROUND IDLE..."
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=305 starty=520 endx=450 endy=665
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
$OBJECT Buttonobj font=98 startx=305 starty=665 endx=450 endy=810
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
$CALC
ACIgnPwrA_O:	OFF
ACIgnPwrB_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=310 starty=810 endx=465 endy=850
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
$OBJECT Line font=0 startx=353 starty=0 endx=355 endy=180
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Switch font=98 startx=355 starty=360 endx=480 endy=435
TOGGLE Correlation_TS onlabel="Correlation\nProcedure" offlabel="Correlation\nProcedure" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=356 starty=437 endx=481 endy=512
TOGGLE AccelDecel_TS onlabel="Accel/Decel\nTest ON" offlabel="Accel/Decel\nTest OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
AcceptT9_TS:	OFF
ShapedAccel_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=100 startx=369 starty=28 endx=650 endy=173
labelspace=6 unitspace=1 spacing=4 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
N1C2D type="FLOAT" width=6 prec=0 label="N1C2D" units="default" 
N2C2D type="FLOAT" width=6 prec=0 label="N2C2D" units="default" 
TOILAC type="FLOAT" width=6 prec=0 label="MOT" units="default" 
POILAC type="FLOAT" width=6 prec=1 label="MOP" units="default" 
OILQ type="FLOAT" width=6 prec=1 label="OIL QTY" units="default" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=406 starty=2 endx=566 endy=22
Cyan direction=1 alignment=1
"QEC INDICATION"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=450 starty=520 endx=590 endy=665
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
ACIgnPwrA_O:	ON
ACIgnPwrB_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Blue
$CALC
ACIgnPwrA_O:	OFF
ACIgnPwrB_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=450 starty=665 endx=590 endy=810
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
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Blue
$CALC
EECPwrChA_O:	OFF
EECPwrChB_O:	OFF
PHMUPwrON_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Switch font=98 displayflag=FALSE startx=465 starty=810 endx=620 endy=850
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
$OBJECT Switch font=98 startx=480 starty=360 endx=605 endy=435
TOGGLE CoolDown_TS onlabel="Cool Down\nProcedure" offlabel="Cool Down\nProcedure" offcolor=Cyan oncolor=Yellow 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
AcceptT9_TS:	OFF
ShapedAccel_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=481 starty=437 endx=606 endy=512
TOGGLE ShapedAccel_TS onlabel="Shaped\nAccel ON" offlabel="Shaped\nAccel OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=98 startx=589 starty=231 endx=893 endy=254
labelspace=6 unitspace=1 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
TRA_Rate type="FLOAT" width=6 prec=3 label="TRA Rate:" units="default" 
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=590 starty=520 endx=730 endy=665
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
$OBJECT Buttonobj font=98 startx=590 starty=665 endx=730 endy=810
parameter=ECM_DCPwrTst_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="DC PWR TEST"
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
$OBJECT Switch font=98 startx=605 starty=360 endx=730 endy=435
TOGGLE WarmUp_TS onlabel="Warm Up\nProcedure" offlabel="Warm Up\nProcedure" offcolor=Cyan oncolor=Yellow 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=606 starty=437 endx=731 endy=512
TOGGLE AcceptT9_TS onlabel="Acceptance\nT9 ON" offlabel="Acceptance\nT9 OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
VibSurvey_TS:	OFF
VibSvyOffical_TS:	OFF
ShapedAccel_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT String font=100 startx=613 starty=207 endx=798 endy=230
AutoThrottle_Stat labelspace=4 label="Status:" labelcolor=White stringcolor=Magenta parambox=0 paramboxcolor=Black shading=0
Magenta = 0 "Not Active"
White = 1 "Manual"
Green = 2 "Active"
BurntOrange = 3 "Automatic PLA"
Yellow = 4 "Automatic TLA"
Orange = 5 "Automatic TLA"
$END-OBJECT
***********
$OBJECT Line font=0 startx=640 starty=0 endx=642 endy=179
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Digital font=12 startx=665 starty=126 endx=830 endy=170
labelspace=6 unitspace=1 spacing=3 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
DCIgnCurrA type="FLOAT" width=5 prec=3 label="IGN A" units="default" 
DCIgnCurrB type="FLOAT" width=5 prec=3 label="IGN B" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=12 startx=674 starty=27 endx=828 endy=90
labelspace=5 unitspace=1 spacing=2 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
EECCurrChA type="FLOAT" width=5 prec=3 label="CH A" units="default" 
EECCurrChB type="FLOAT" width=5 prec=3 label="CH B" units="default" 
DCCurr_PHMU type="FLOAT" width=5 prec=3 label="PHMU" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=684 starty=5 endx=831 endy=24
Cyan direction=1 alignment=1
"EEC Power Amps"
$END-OBJECT
***********
$OBJECT Text font=97 startx=689 starty=101 endx=812 endy=120
Cyan direction=1 alignment=1
"Ignition Amps"
$END-OBJECT
***********
$OBJECT Switch font=98 startx=730 starty=360 endx=855 endy=435
TOGGLE AutoTLAEnable_TS onlabel="DISABLE\nTLA Auto\nThrottle" offlabel="ENABLE\nTLA Auto\nThrottle" offcolor=Orange oncolor=Yellow 
$RELEASE
dummy:	startautotest(AutoTLAEnable_ATP)
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=98 startx=730 starty=437 endx=855 endy=512
TOGGLE VibSvyOffical_TS onlabel="Vib Survey\nOffical ON" offlabel="Vib Survey\nOffical OFF" offcolor=Cyan oncolor=Green 
$RELEASE
GoToMnIdleStop_TS:	OFF
GoToMxPwrStop_TS:	OFF
RunInHPC_TS:	OFF
AccelDecel_TS:	OFF
ShapedAccel_TS:	OFF
AcceptT9_TS:	OFF
CoolDown_TS:	OFF
WarmUp_TS:	OFF
Correlation_TS:	OFF
VibSurvey_TS:	OFF
VibSvyTest1_F:	OFF
VibSvyTest2_F:	ON
$END-RELEASE
$END-OBJECT
***********
$OBJECT Box font=101 startx=732 starty=514 endx=862 endy=809
style=1
linewidth=4 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Switch font=100 startx=739 starty=649 endx=857 endy=745
MOMENTARY ECM_OpTimerRst_MS onlabel="Reset" offlabel="Reset" offcolor=DarkGray oncolor=Green 
$RELEASE
OpTimer:Sec	0.0
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=740 starty=555 endx=857 endy=646
TOGGLE ECM_OpTimer_TS onlabel="Stop" offlabel="Start" offcolor=LightGray oncolor=Cyan 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=99 startx=754 starty=750 endx=862 endy=794
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
OpTimer type="HOURS" width=8 prec=0 
OpTimer type="SECONDS" width=8 prec=0 
$END-OBJECT
***********
$OBJECT Text font=100 startx=766 starty=528 endx=831 endy=551
Cyan direction=1 alignment=0
"TIMER"
$END-OBJECT
***********
$OBJECT Line font=0 startx=861 starty=0 endx=863 endy=810
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=0 endx=1030 endy=74
EECLOP_Stat textcolor=Black
Magenta = 0 "Oil Press\nSwitch UNK"
Red = 1 "Oil Press\nLOW"
Green = 2 "Oil Press\nOK"
Red = 3 "Oil Press\nSwitch BAD"
Magenta = 4 "Oil Press\nSwitch INVALID"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=74 endx=1030 endy=148
OilFBP_Stat textcolor=Black
Magenta = 0 "Oil Filter\nBy-Pass UNK"
Green = 1 "Oil Filter\nBy-Pass OK"
Yellow = 2 "Oil Filter\nImpend By-Pass"
Red = 3 "Oil Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=148 endx=1030 endy=222
TOilAC_Stat textcolor=Black
Yellow = 4 "Oil Temp\nLOW NO ACCEL"
Red = 3 "Oil Temp\nHigh > Max"
Yellow = 2 "Oil Temp\nHigh"
Green = 1 "Oil Temp\nOk"
Magenta = 0 "Oil Temp\nUNK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=222 endx=1030 endy=296
FuelFBP_Stat textcolor=Black
Magenta = 0 "Fuel Filter\nBy-Pass UNK"
Green = 1 "Fuel Filter\nBy-Pass OK"
Yellow = 2 "Fuel Filter\nImpend By-Pass"
Red = 3 "Fuel Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=296 endx=1030 endy=370
EECITT_Stat textcolor=Black
Magenta = 0 "ITT Limit\nUNK"
Green = 1 "ITT Limit\nOK"
Yellow = 2 "ITT Amber Lim\nExceeded"
Red = 3 "ITT Red Limit\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=370 endx=1030 endy=444
EECN1_Stat textcolor=Black
Magenta = 0 "N1 RedLine\nUNK"
Green = 1 "N1 RedLine\nOK"
Red = 2 "N1 RedLine\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=444 endx=1030 endy=518
EECN2_Stat textcolor=Black
Magenta = 0 "N2 RedLine\nUNK"
Green = 1 "N2 RedLine\nOK"
Red = 2 "N2 RedLine\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=518 endx=1030 endy=592
IDGOilFltrClg_I textcolor=Black
Green = 0 "IDG OIL Filter\nOK"
Yellow = 1 "IDG OIL Filter\nClogged"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=592 endx=1030 endy=666
CowlAI_Stat textcolor=Black
Magenta = 0 "Cowl A/I\nUNK"
Magenta = 1 "Cowl A/I OFF\nIn-Transit"
Magenta = 2 "Cowl A/I ON\nIn-Transit"
Yellow = 3 "Cowl A/I ON\nValve OPEN"
Green = 4 "Cowl A/I OFF\nValve CLOSED"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=666 endx=1030 endy=740
ChAInCtrl_F textcolor=Black
DarkGray = 0 "A channel\nnot in control"
Green = 1 "A channel\nin control"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=865 starty=740 endx=1030 endy=810
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
EEC_CHA_ADepwr_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="RESET\nEEC ChA"
oncolor=DarkGray
$CALC
EEC_CHA_ADepwr_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Digital font=98 startx=898 starty=814 endx=1168 endy=862
labelspace=8 unitspace=1 spacing=2 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
StageTmrLim type="SECONDS" width=8 prec=0 label="          Limit:" units="default" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=0 endx=1195 endy=74
HPSOV_Stat textcolor=Black
BurntOrange = 0 "Software\nNot Active"
DarkGray = 1 "Fuel Valve\nClosed"
Green = 2 "Fuel Valve\nOpen"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=74 endx=1195 endy=148
Adapter_stat textcolor=Black
Yellow = 0 "Adapter NOT\nConnected"
Red = 1 "Adapter Set\nInvalid"
Green = 2 "Adapter Set\nValid"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=148 endx=1195 endy=222
ChipDetected_F textcolor=Black
Yellow = 1 "Oil Sys Chip\nDetected"
Green = 0 "Oil Sys Chip\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=222 endx=1195 endy=296
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
$OBJECT StatusIndicator font=2 startx=1030 starty=296 endx=1195 endy=370
StrtInPrgs_F textcolor=Black
Green = 0 "SAV Closed"
Yellow = 1 "SAV Open"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=370 endx=1195 endy=444
EECEngRunning textcolor=Black
Yellow = 0 "Engine\n< IDLE"
Green = 1 "Engine\n>= IDLE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=444 endx=1195 endy=518
InitOilService_F textcolor=Black
Red = 0 "Perform Initial\nOil Service"
Green = 1 "Initial Oil\nService OK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=518 endx=1195 endy=592
STLIM textcolor=Black
Green = 0 "Starter Duty\nCycle OK"
Yellow = 1 "Starter Duty\nCycle LIMIT"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=592 endx=1195 endy=666
BowedROvrCrk_F textcolor=Black
Green = 0 "Bowed Rotor\nNOT Over Crank"
Yellow = 1 "Bowed Rotor\nOver Crank"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=666 endx=1195 endy=740
ChBInCtrl_F textcolor=Black
DarkGray = 0 "B channel\nnot in control"
Green = 1 "B channel\nin control"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=1030 starty=740 endx=1195 endy=810
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
EEC_CHB_ADepwr_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="RESET\nEEC ChB"
oncolor=DarkGray
$CALC
EEC_CHB_ADepwr_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$END-DISPLAY

