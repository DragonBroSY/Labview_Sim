$DISPLAY "ECM PW1100G" background=Charcoal editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Line font=101 startx=0 starty=203 endx=862 endy=204
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Line font=0 startx=0 starty=514 endx=863 endy=516
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=0 starty=514 endx=123 endy=809
style=1
linewidth=4 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Digital font=2 displayflag=TLAMxPwrStopSet_F startx=7 starty=209 endx=182 endy=228
labelspace=7 unitspace=1 spacing=1 labelcolor=Cyan parambox=2 paramboxcolor=Black shading=-1
TLAMxPwrStop type="FLOAT" width=6 prec=2 label="Max Stop:" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=100 startx=7 starty=555 endx=118 endy=646
TOGGLE ECM_OpTimer_TS onlabel="Stop" offlabel="Start" offcolor=LightGray oncolor=Cyan 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=7 starty=649 endx=118 endy=745
MOMENTARY ECM_OpTimerRst_MS onlabel="Reset" offlabel="Reset" offcolor=DarkGray oncolor=Green 
$RELEASE
OpTimer:Sec	0.0
$END-RELEASE
$END-OBJECT
***********
$OBJECT Line font=0 startx=8 starty=180 endx=861 endy=182
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Switch font=2 displayflag=TLAMxPwrStopSet_F startx=10 starty=235 endx=120 endy=300
TOGGLE TLAMxPwrStop_TS onlabel="GoTo Max\nPower Stop" offlabel="GoTo Max\nPower Stop" offcolor=LightGray oncolor=Green 
$END-OBJECT
***********
$OBJECT Switch font=2 displayflag=TLAMnIdleStopSet_F startx=10 starty=300 endx=120 endy=365
TOGGLE TLAMnIdleStop_TS onlabel="GoTo Min\nIdle Stop" offlabel="GoTo Min\nIdle Stop" offcolor=LightGray oncolor=Green 
$END-OBJECT
***********
$OBJECT Switch font=114 displayflag=TLAMxPwrStopSet_F startx=10 starty=370 endx=120 endy=435
MOMENTARY IncreaseTLA_MS onlabel="Increase" offlabel="Increase" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Switch font=114 displayflag=TLAMnIdleStopSet_F startx=10 starty=435 endx=120 endy=500
MOMENTARY DecreaseTLA_MS onlabel="Decrease" offlabel="Decrease" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$PUSH
$END-PUSH
$END-OBJECT
***********
$OBJECT Line font=101 startx=10 starty=814 endx=1165 endy=815
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=89 startx=12 starty=184 endx=240 endy=203
CtrlLoopTxt labelspace=8 label="Control Loop:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Digital font=99 startx=15 starty=750 endx=123 endy=794
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
OpTimer type="HOURS" width=8 prec=0 
OpTimer type="SECONDS" width=8 prec=0 
$END-OBJECT
***********
$OBJECT String font=92 displayflag=ArmRunInHPC_TB startx=17 starty=818 endx=301 endy=843
RunInStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT String font=92 startx=18 starty=818 endx=242 endy=843
StageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Text font=2 startx=24 starty=244 endx=105 endy=292
Yellow direction=1 alignment=1
"MAX POWER"
"STOP"
"NOT SET"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=27 starty=24 endx=308 endy=169
labelspace=6 unitspace=1 spacing=4 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
EEC_N1Pct type="FLOAT" width=6 prec=1 label="N1" units="default" 
EEC_N2Pct type="FLOAT" width=6 prec=1 label="N2" units="default" 
EEC_NFPct type="FLOAT" width=6 prec=1 label="NFan" units="default" 
EEC_EGT type="FLOAT" width=6 prec=1 label="EGT" units="default" 
EEC_WF type="FLOAT" width=6 prec=0 label="Fuel Flow" units="default" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=27 starty=528 endx=92 endy=551
Cyan direction=1 alignment=0
"TIMER"
$END-OBJECT
***********
$OBJECT Text font=2 startx=28 starty=308 endx=100 endy=356
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
$OBJECT Button font=114 startx=130 starty=245 endx=220 endy=295
RADIO TLA_SpeedCtrl_RB setvalue=3 onlabel="Fast" offlabel="Fast" \
labelcolor=Blue oncolor=Yellow offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=114 startx=130 starty=310 endx=220 endy=360
RADIO TLA_SpeedCtrl_RB setvalue=2 onlabel="Medium" offlabel="Medium" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=114 startx=130 starty=375 endx=220 endy=425
RADIO TLA_SpeedCtrl_RB setvalue=1 onlabel="Slow" offlabel="Slow" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Button font=114 startx=130 starty=440 endx=220 endy=490
RADIO TLA_SpeedCtrl_RB setvalue=0 onlabel="Fine" offlabel="Fine" \
labelcolor=Blue oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=130 starty=520 endx=285 endy=665
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
$END-INTERLOCK
$END-STATE
$STATE 0
label="MINIMUM"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=130 starty=665 endx=285 endy=810
parameter=ECM_FuelCtrl_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Master Lever"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Green
$INTERLOCK
SWActive
~EFSO_I
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("Master Lever ON")
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Red
$INITCALC
dummy:	storeevent ("Master Lever OFF")
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Switch font=114 startx=230 starty=365 endx=355 endy=435
TOGGLE ReverseEnable_TS onlabel="Reverse\nEnabled" offlabel="Enable\nReverse" offcolor=Orange oncolor=Yellow 
$RELEASE
#if	(ReverseEnable_TS)
ReverseEnable_F:	ON
#else	
ReverseEnable_F:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=97 startx=230 starty=435 endx=355 endy=505
TOGGLE RunInT4_HPC_TS onlabel="Run-In T4\nHPC ON" offlabel="Run-In T4\nHPC OFF" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Box font=101 startx=234 starty=210 endx=569 endy=243
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Bar font=97 startx=234 starty=259 endx=849 endy=355
labelspace=9 unitspace=0 labelcolor=White length=350 \
height=15 format=6.3 ticpos=BELOW dir=0 shading=-1 spacing=2 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=3
TLA_Actual label="TLA Actual" units="Deg" min=-40 max=90 ticinter=10 labelinter=2
TLA_Cmd label="TLA Command" units="Deg" min=-40 max=90 ticinter=10 labelinter=2
$END-OBJECT
***********
$OBJECT Box font=101 displayflag=AutoPL_I startx=235 starty=209 endx=570 endy=242
style=2
boxcolor=Yellow
shading=2
$END-OBJECT
***********
$OBJECT Text font=100 displayflag=MOT2Low_F startx=254 starty=820 endx=903 endy=843
Red direction=1 alignment=0
"MOT BELOW 51.7 DegC DO NOT ACCEL ABOVE GROUND IDLE..."
$END-OBJECT
***********
$OBJECT Text font=100 startx=255 starty=217 endx=544 endy=240
Blue direction=1 alignment=0
"AUTO THROTTLE CONTROL"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=285 starty=520 endx=440 endy=810
parameter=ECM_ModeSel_RB type=RADIO
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Mode Selector"
$END-PANEL
defaultstate=0
$STATE 2
label="IGN/START"
oncolor=Blue
$INTERLOCK
SWActive
~IgnPwrDisable
~RunMode
$END-INTERLOCK
$END-STATE
$STATE 1
label="CRANK"
oncolor=Blue
$INTERLOCK
SWActive
$END-INTERLOCK
$END-STATE
$STATE 0
label="NORMAL"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Line font=0 startx=317 starty=0 endx=319 endy=180
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Switch font=114 startx=355 starty=365 endx=480 endy=435
TOGGLE TLAOverRide_TS onlabel="Max Stop\nOverridden" offlabel="Override\nMax Stop" offcolor=Orange oncolor=Red 
$RELEASE
#if	TLAOverRide_TS
TLAOverRideTmr:Sec	0.0
dummy:	storeevent ("TLA OverRide ARMED")
#else	
TLAOverRideTmr:Sec	0.0
dummy:	storeevent ("TLA OverRide DISARMED")
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=114 startx=355 starty=435 endx=480 endy=505
TOGGLE BrkInT5_HPT_TS onlabel="Break-In T5\nHPT ON" offlabel="Break-In T5\nHPT OFF" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=358 starty=27 endx=639 endy=172
labelspace=6 unitspace=1 spacing=4 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
N1C2D type="FLOAT" width=6 prec=1 label="N1C2D" units="default" 
N2C2D type="FLOAT" width=6 prec=1 label="N2C2D" units="default" 
TOILAC type="FLOAT" width=6 prec=0 label="MOT" units="default" 
POILAC type="FLOAT" width=6 prec=1 label="MOP" units="default" 
OILQ type="FLOAT" width=6 prec=1 label="OIL QTY" units="default" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=397 starty=2 endx=557 endy=22
Cyan direction=1 alignment=1
"QEC INDICATION"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=440 starty=520 endx=580 endy=665
parameter=ECM_EECGndTstPwr_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="EEC Gnd Pwr"
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
$OBJECT Buttonobj font=98 startx=440 starty=665 endx=580 endy=810
parameter=ECM_ManStart_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Manual Start"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Blue
$INTERLOCK
SWActive
(ECM_EECGndTstPwr_TB > 0)
~RunMode
$END-INTERLOCK
$END-STATE
$STATE 0
label="OFF"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Switch font=114 startx=480 starty=365 endx=605 endy=435
MOMENTARY SetMaxPwrStop_S onlabel="Set Max\nPower Stop" offlabel="Set Max\nPower Stop" offcolor=Orange oncolor=Green 
$RELEASE
TLAMxPwrStop:deg	TLA_Actual
TLAMxPwrStopMx:deg	(TLAMxPwrStop + TLATargBand)
TLAMxPwrStopMn:deg	(TLAMxPwrStop - TLATargBand)
TLAMxPwrStopSet_F:	ON
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=114 startx=480 starty=435 endx=605 endy=505
TOGGLE VibSurvey_TS onlabel="Vib Survey\nON" offlabel="Vib Survey\nOFF" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=580 starty=520 endx=720 endy=665
parameter=ECM_IgnPwr_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Ign Pwr"
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
$OBJECT Buttonobj font=98 startx=580 starty=665 endx=720 endy=810
parameter=ECM_IgnCtrl_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Ignition"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$END-STATE
$STATE 0
label="AUTO"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Digital font=97 startx=595 starty=231 endx=874 endy=253
labelspace=6 unitspace=1 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
TLA_Rate type="FLOAT" width=5 prec=3 label="TLA Rate:" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=114 startx=605 starty=365 endx=730 endy=435
MOMENTARY SetMnIdleStop_S onlabel="Set Min\nIdle Stop" offlabel="Set Min\nIdle Stop" offcolor=Orange oncolor=Green 
$RELEASE
TLAMnIdleStop:deg	TLA_Actual
TLAMnIdleStopMx:deg	(TLAMnIdleStop + TLATargBand)
TLAMnIdleStopMn:deg	(TLAMnIdleStop - TLATargBand)
TLAMnIdleStopSet_F:	ON
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=114 startx=605 starty=435 endx=730 endy=505
TOGGLE AcceptT9_TS onlabel="Acceptance\nT9 ON" offlabel="Acceptance\nT9 OFF" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT String font=100 startx=613 starty=207 endx=798 endy=230
AutoThrottle_Stat labelspace=4 label="Status:" labelcolor=White stringcolor=Magenta parambox=0 paramboxcolor=Black shading=0
Magenta = 0 "Not Active"
White = 1 "OFF"
Yellow = 2 "Manual"
Cyan = 3 "Automatic"
$END-OBJECT
***********
$OBJECT Line font=0 startx=640 starty=0 endx=642 endy=179
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Digital font=12 startx=675 starty=23 endx=829 endy=86
labelspace=5 unitspace=1 spacing=2 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
EECCurrChA type="FLOAT" width=5 prec=3 label="CH A" units="default" 
EECCurrChB type="FLOAT" width=5 prec=3 label="CH B" units="default" 
DCCurr_PHMU type="FLOAT" width=5 prec=3 label="PHMU" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=12 startx=676 starty=125 endx=830 endy=169
labelspace=5 unitspace=1 spacing=3 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
ACIgnCurrA type="FLOAT" width=5 prec=3 label="CH A" units="default" 
ACIgnCurrB type="FLOAT" width=5 prec=3 label="CH B" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=684 starty=5 endx=831 endy=24
Cyan direction=1 alignment=1
"EEC Power Amps"
$END-OBJECT
***********
$OBJECT Text font=97 startx=696 starty=104 endx=819 endy=123
Cyan direction=1 alignment=1
"Ignition Amps"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=720 starty=520 endx=860 endy=665
parameter=ECM_P2T2ProbeHeat_TB type=TOGGLE
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
$OBJECT Buttonobj font=98 startx=720 starty=665 endx=860 endy=810
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
$OBJECT Switch font=97 startx=730 starty=365 endx=855 endy=435
TOGGLE AutoPLEnable_O onlabel="Auto\nThrottle\nENABLED" offlabel="Auto\nThrottle\nDISABLED" offcolor=Orange oncolor=Green 
$END-OBJECT
***********
$OBJECT Switch font=114 startx=730 starty=435 endx=855 endy=505
TOGGLE TC_Auto_9_TS onlabel="Auto 9\nON" offlabel="Auto 9\nOFF" offcolor=Cyan oncolor=Green 
$END-OBJECT
***********
$OBJECT Line font=0 startx=861 starty=0 endx=863 endy=677
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=863 starty=675 endx=1199 endy=677
linewidth=2 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=0 endx=1030 endy=75
EECLOP_Stat textcolor=Black
Magenta = 0 "Oil Press\nSwitch UNK"
Red = 1 "Oil Press\nLOW"
Green = 2 "Oil Press\nOK"
Red = 3 "Oil Press\nSwitch BAD"
Magenta = 4 "Oil Press\nSwitch INVALID"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=75 endx=1030 endy=150
OilFBP_Stat textcolor=Black
Magenta = 0 "Oil Filter\nBy-Pass UNK"
Green = 1 "Oil Filter\nBy-Pass OK"
Yellow = 2 "Oil Filter\nImpend By-Pass"
Red = 3 "Oil Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=150 endx=1030 endy=225
TOilAC_Stat textcolor=Black
Yellow = 4 "Oil Temp\nLOW NO ACCEL"
Red = 3 "Oil Temp\nHigh > Max"
Yellow = 2 "Oil Temp\nHigh"
Green = 1 "Oil Temp\nOk"
Magenta = 0 "Oil Temp\nUNK"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=225 endx=1030 endy=300
FuelFBP_Stat textcolor=Black
Magenta = 0 "Fuel Filter\nBy-Pass UNK"
Green = 1 "Fuel Filter\nBy-Pass OK"
Yellow = 2 "Fuel Filter\nImpend By-Pass"
Red = 3 "Fuel Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=300 endx=1030 endy=375
EECEGT_Stat textcolor=Black
Magenta = 0 "EGT Limit\nUNK"
Green = 1 "EGT Limit\nOK"
Yellow = 2 "EGT Amber Lim\nExceeded"
Red = 3 "EGT Red Limit\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=375 endx=1030 endy=450
EECN1_Stat textcolor=Black
Magenta = 0 "N1 RedLine\nUNK"
Green = 1 "N1 RedLine\nOK"
Red = 2 "N1 RedLine\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=450 endx=1030 endy=525
EECN2_Stat textcolor=Black
Magenta = 0 "N2 RedLine\nUNK"
Green = 1 "N2 RedLine\nOK"
Red = 2 "N2 RedLine\nExceeded"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=525 endx=1030 endy=600
IDGOilFltrClg_I textcolor=Black
Green = 0 "IDG OIL Filter\nOK"
Yellow = 1 "IDG OIL Filter\nClogged"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=865 starty=600 endx=1030 endy=675
ChAInCtrl_F textcolor=Black
DarkGray = 0 "A channel\nnot in control"
Green = 1 "A channel\nin control"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=865 starty=680 endx=1030 endy=755
parameter=ECM_MLResetChA_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=Black
defaultstate=0
$STATE 1
label="Master Lever\nReset A"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$INITCALC
MLResetCHA_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="Master Lever\nReset A"
oncolor=DarkGray
$INITCALC
MLResetCHA_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Digital font=98 startx=915 starty=758 endx=1185 endy=806
labelspace=8 unitspace=1 spacing=2 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
StageTmr type="SECONDS" width=8 prec=0 label="Stage Timer:" units="default" 
StageTmrLim type="SECONDS" width=8 prec=0 label="          Limit:" units="default" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=0 endx=1195 endy=75
HPSOV_Stat textcolor=Black
BurntOrange = 0 "Software\nNot Active"
DarkGray = 1 "Fuel Valve\nClosed"
Green = 2 "Fuel Valve\nOpen"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=75 endx=1195 endy=150
AdaptcountTotal textcolor=Black
Yellow = 0 "Adapter NOT\nConnected"
Green = 5.0 "Adapter Set\nValid"
Red = 16.0 "Adapter Set\nInvalid"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=150 endx=1195 endy=225
ChipDetected_F textcolor=Black
Yellow = 1 "Oil Sys Chip\nDetected"
Green = 0 "Oil Sys Chip\nNOT Detected"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=225 endx=1195 endy=300
FireDetection_Stat textcolor=Black
Yellow = -1 "Fire Warning\n>>FAULT<<"
Green = 0 "Fire Warning\nNormal"
Red = 1 "Fire Warning\n>>FIRE<<"
Green = 2 "Fire Warning\nCont Tst PASSED"
Yellow = 3 "Fire Warning\nCont Tst FAULT"
Green = 4 "Fire Warning\nGnd Tst PASSED"
Yellow = 5 "Fire Warning\nGnd Tst FAULT"
BurntOrange = 6 "Fire Warning\nUNKNOWN"
Magenta = 7 "Fire Warning\nDISABLED"
Yellow = 8 "Under Cowl\nTemp WARNING"
Red = 9 "Under Cowl\nTemp FIRE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=300 endx=1195 endy=375
StrtInPrgs_F textcolor=Black
Green = 0 "SAV Closed"
Yellow = 1 "SAV Open"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=375 endx=1195 endy=450
EECEngRunning textcolor=Black
Yellow = 0 "Engine\n< IDLE"
Green = 1 "Engine\n>= IDLE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=450 endx=1195 endy=525
dummy textcolor=Black
DarkGray = 0 "SPARE"
DarkGray = 1 "SPARE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=525 endx=1195 endy=600
dummy textcolor=Black
DarkGray = 0 "SPARE"
DarkGray = 1 "SPARE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1030 starty=600 endx=1195 endy=675
ChBInCtrl_F textcolor=Black
DarkGray = 0 "B channel\nnot in control"
Green = 1 "B channel\nin control"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=1030 starty=680 endx=1195 endy=755
parameter=ECM_MLResetChB_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=Black
defaultstate=0
$STATE 1
label="Master Lever\nReset B"
oncolor=Green
$INTERLOCK
SWActive
$END-INTERLOCK
$INITCALC
MLResetChB_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="Master Lever\nReset B"
oncolor=DarkGray
$INITCALC
MLResetChB_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$END-DISPLAY

