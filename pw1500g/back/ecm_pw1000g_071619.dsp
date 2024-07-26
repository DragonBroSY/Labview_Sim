$DISPLAY "ECM PW1000G" background=LightGray editres=MEDRES movegrid=1 resizegrid=1 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=1 startx=0 starty=261 endx=222 endy=518
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Black
shading=2
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=0 starty=690 endx=129 endy=850
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
label="RUN"
oncolor=Green
$INTERLOCK
~EFSO_I
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("Master Lever ON")
$END-CALC
$CALC
FuelOn1_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Blue
$INITCALC
dummy:	storeevent ("Master Lever OFF")
$END-CALC
$CALC
FuelOn1_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Box font=1 startx=1 starty=0 endx=271 endy=176
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Black
shading=2
$END-OBJECT
***********
$OBJECT Box font=1 startx=3 starty=530 endx=126 endy=613
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Black
shading=2
$END-OBJECT
***********
$OBJECT Switch font=103 startx=15 starty=278 endx=204 endy=345
TOGGLE ECM_OpTimer_TS onlabel="Stop" offlabel="Start" offcolor=LightGray oncolor=Cyan 
$RELEASE
#if	ECM_OpTimer_TS
OpTimer_F:	ON
#else	
OpTimer_F:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=103 startx=15 starty=351 endx=204 endy=421
MOMENTARY ECM_OpTmrRst_MS onlabel="Reset" offlabel="Reset" offcolor=DarkGray oncolor=Green 
$RELEASE
OpTimer:	0.0
$END-RELEASE
$END-OBJECT
***********
$OBJECT Text font=97 startx=22 starty=543 endx=105 endy=562
White direction=1 alignment=0
"IGNITION"
$END-OBJECT
***********
$OBJECT Text font=2 startx=23 starty=186 endx=212 endy=202
Blue direction=1 alignment=0
"EEC CTRL LOOP ENGAGED"
$END-OBJECT
***********
$OBJECT Digital font=104 startx=24 starty=28 endx=207 endy=68
labelspace=3 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
N1PctS type="FLOAT" width=4 prec=1 label="N1%" 
$END-OBJECT
***********
$OBJECT String font=97 startx=25 starty=207 endx=209 endy=230
CtrlLoopEngaged labelspace=0 label="Ctrl Loop Engaged:" labelcolor=Black stringcolor=Yellow parambox=2 paramboxcolor=Black shading=-2
Yellow = 0.0 "No Loop Engaged"
Green = 14.0 "N1 Loop"
Green = 15.0 "N2 Loop"
Green = 16.0 "N2 Topping Loop"
Green = 17.0 "PB Topping Loop"
Green = 18.0 "PB Bottoming Loop"
Green = 19.0 "EPR Loop"
Green = 20.0 "Accel Schedule Loop"
Green = 21.0 "Decel Schedule Loop"
$END-OBJECT
***********
$OBJECT Digital font=104 startx=26 starty=69 endx=209 endy=109
labelspace=3 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
N2PctS type="FLOAT" width=4 prec=1 label="N2%" units="" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=26 starty=568 endx=93 endy=602
labelspace=2 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
Ignition_A type="FLOAT" width=5 prec=3 label="A" 
Ignition_B type="FLOAT" width=5 prec=3 label="B" 
$END-OBJECT
***********
$OBJECT Digital font=8 startx=30 starty=469 endx=210 endy=500
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
OpTimer type="HOURS" width=8 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Text font=102 startx=64 starty=426 endx=147 endy=455
White direction=1 alignment=0
"TIMER"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=130 starty=689 endx=260 endy=850
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
label="Approach"
oncolor=Blue
$INTERLOCK
SWActive
RunMode
$END-INTERLOCK
$END-STATE
$STATE 0
label="Minimum"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Box font=1 startx=228 starty=184 endx=1181 endy=518
style=3
linewidth=4 linecolor=DarkGray
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=240 starty=195 endx=420 endy=270
QLOPSw textcolor=Black
Magenta = 0 "Oil Press\nSwitch UNK"
Red = 1 "Oil Press\nLOW"
Green = 2 "Oil Press\nOK"
Red = 3 "Oil Press\nSwitch BAD"
DarkGray = 4 "Oil Press\nSwitch INVALID"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=240 starty=270 endx=420 endy=345
OilFBP_Stat textcolor=Black
Magenta = 0 "Oil Filter\nBy-Pass UNK"
Green = 1 "Oil Filter\nBy-Pass OK"
Yellow = 2 "Oil Filter\nImpend By-Pass"
Red = 3 "Oil Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=240 starty=345 endx=420 endy=420
LowCSDOilPress_I textcolor=Black
DarkGray = 0 "IDG Oil Press\nOK"
Red = 1 "IDG Oil Press\nLOW"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=240 starty=420 endx=420 endy=495
HiCSDOilTmp_I textcolor=Black
DarkGray = 0 "IDG Oil Temp\nOK"
Red = 1 "IDG Oil Temp\nHIGH"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=261 starty=525 endx=401 endy=851
parameter=ECM_ModeSel_RB type=RADIO
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Engine Start"
$END-PANEL
defaultstate=0
$STATE 2
label="Ign/Start"
oncolor=Yellow
$INTERLOCK
~IgnPwrDisable
~StarterCutOut_F
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("IGN/START Selected")
$END-CALC
$END-STATE
$STATE 1
label="Crank"
oncolor=Yellow
$INTERLOCK
~IgnPwrDisable
~StarterCutOut_F
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("CRANK Selected")
$END-CALC
$END-STATE
$STATE 0
label="Normal"
oncolor=Green
$INITCALC
dummy:	storeevent ("NORMAL Selected")
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Box font=1 startx=273 starty=0 endx=604 endy=88
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Black
shading=2
$END-OBJECT
***********
$OBJECT Box font=1 startx=273 starty=90 endx=604 endy=178
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Black
shading=2
$END-OBJECT
***********
$OBJECT Digital font=104 startx=289 starty=27 endx=481 endy=67
labelspace=2 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
T49F type="FLOAT" width=6 prec=0 label="T49" units="" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=293 starty=115 endx=564 endy=152
labelspace=4 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Red shading=-3
FNTR2 type="FLOAT" width=6 prec=0 label="FNTR2" units="Lbs" 
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=400 starty=688 endx=540 endy=851
parameter=ECM_IgnSwitch_RB type=RADIO
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="IGNITER PWR"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Green
$INTERLOCK
~IgnPwrDisable
$END-INTERLOCK
$CALC
ACIgn1_O:	ON
ACIgn2_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Yellow
$CALC
ACIgn1_O:	OFF
ACIgn2_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=420 starty=195 endx=600 endy=270
FuelFBP_Stat textcolor=Black
Magenta = 0 "Fuel Filter\nBy-Pass UNK"
Green = 1 "Fuel Filter\nBy-Pass OK"
Yellow = 2 "Fuel Filter\nImpend By-Pass"
Red = 3 "Fuel Filter\nBy-Pass"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=420 starty=270 endx=600 endy=345
FuelVlvCl_I textcolor=Black
Green = 0 "Fuel Valve\nOpen"
DarkGray = 1 "Fuel Valve\nClosed"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=420 starty=345 endx=600 endy=420
A_354B19 textcolor=Black
DarkGray = 0 "14 Stg Blb\nNormal"
Red = 1 "14 Stg Blb\nFailed Open"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=420 starty=420 endx=600 endy=495
SWActive textcolor=Black
BurntOrange = 0 "Software\nNOT Active"
DarkGray = 1 "Software\nActive"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=539 starty=523 endx=669 endy=685
parameter=ECM_EECGndTstPwr_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="EEC Ground\nTest Power"
$END-PANEL
defaultstate=0
$STATE 1
label="ON"
oncolor=Yellow
$CALC
GndTstPwr_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Green
$CALC
GndTstPwr_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=540 starty=688 endx=669 endy=848
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
~StarterCutOut_F
$END-INTERLOCK
$INITCALC
dummy:	storeevent ("START VALVE Selected OPEN")
$END-CALC
$CALC
StartAir_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="OFF"
oncolor=Green
$CALC
StartAir_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=600 starty=195 endx=780 endy=270
BleedAirReg_I textcolor=Black
DarkGray = 0 "PRSO Valve\nClose"
Yellow = 1 "PRSO Valve\nOpen"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=600 starty=270 endx=780 endy=345
BldAirPress_I textcolor=Black
DarkGray = 0 "Bld Air Press\nClose"
Yellow = 1 "Bld Air Press\nOver-Press"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=600 starty=345 endx=780 endy=420
StartVlvOpen_I textcolor=Black
DarkGray = 0 "Start Valve\nClosed"
Yellow = 1 "Start Valve\nOpen"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=600 starty=420 endx=780 endy=495
AdaptcountTotal textcolor=Black
Yellow = 0.0 "Adapter NOT\nConnected"
Green = 13.0 "Adapter Set\nValid"
Red = 16.0 "Adapter Set\nInvalid"
$END-OBJECT
***********
$OBJECT Box font=1 startx=605 starty=0 endx=1159 endy=177
style=3
linewidth=4 linecolor=DarkGray
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Box font=1 startx=615 starty=10 endx=745 endy=85
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=615 starty=90 endx=745 endy=165
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=625 starty=123 endx=721 endy=163
White direction=1 alignment=0
"IDG OIL"
"IN TEMP C"
$END-OBJECT
***********
$OBJECT Text font=98 startx=626 starty=42 endx=719 endy=82
White direction=1 alignment=0
"OIL PRESS"
"PSID"
$END-OBJECT
***********
$OBJECT Digital font=102 startx=643 starty=14 endx=739 endy=44
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
QECMOP type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=102 startx=643 starty=94 endx=739 endy=124
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
IDGOilIn type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=670 starty=690 endx=799 endy=850
parameter=ECM_BldPilotVlv_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="Bld Pilot Vlv"
$END-PANEL
defaultstate=0
$STATE 1
label="Open"
oncolor=Green
$CALC
BldAirHiStgVlvCl_O:	OFF
BldAirHiStgVlvOp_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="Close"
oncolor=Green
$CALC
BldAirHiStgVlvCl_O:	ON
BldAirHiStgVlvOp_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=671 starty=523 endx=799 endy=685
parameter=ECM_EECCtrlMode_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="EEC Mode"
$END-PANEL
defaultstate=0
$STATE 1
label="Secondary"
oncolor=Yellow
$CALC
EECModeSelCHA_O:	ON
EECModeSelCHB_O:	ON
$END-CALC
$END-STATE
$STATE 0
label="Auto"
oncolor=Green
$CALC
EECModeSelCHA_O:	OFF
EECModeSelCHB_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Box font=1 startx=749 starty=10 endx=879 endy=85
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=749 starty=90 endx=879 endy=166
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=757 starty=58 endx=863 endy=78
White direction=1 alignment=0
"OIL TEMP F"
$END-OBJECT
***********
$OBJECT Text font=98 startx=757 starty=122 endx=874 endy=162
White direction=1 alignment=0
"IDG OIL"
"OUT TEMP C"
$END-OBJECT
***********
$OBJECT Digital font=102 startx=779 starty=94 endx=875 endy=124
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
IDGOilOut type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=102 startx=780 starty=14 endx=875 endy=45
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
TOILAC type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=780 starty=195 endx=960 endy=270
A_270B18 textcolor=Black
Yellow = 1 "EEC ChA Mode\nDroop Mode"
DarkGray = 0 "EEC ChA Mode\nNormal"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=780 starty=270 endx=960 endy=345
B_270B18 textcolor=Black
DarkGray = 0 "EEC ChB Mode\nNormal"
Yellow = 1 "EEC ChB Mode\nDroop Mode"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=780 starty=345 endx=960 endy=420
FireDetection_Stat textcolor=Black
Yellow = -1 "Fire Warning\nFault"
DarkGray = 0 "Fire Warning\nOK"
Red = 1 "Fire Warning\nFIRE"
Green = 2 "Fire Warning\nCont Tst Passed"
Yellow = 3 "Fire Warning\nCont Tst Fault"
Green = 4 "Fire Warning\nGnd Tst Passed"
Yellow = 5 "Fire Warning\nGnd Tst Fault"
BurntOrange = 6 "Fire Warning\nUNK"
Magenta = 7 "Fire Warning\nDISABLED"
Yellow = 8 "Under Cowl\nTemp Warning"
Red = 9 "Under Cowl\nTemp FIRE"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=780 starty=420 endx=960 endy=495
FuelSuppReg_O textcolor=Black
Red = 0 "Fuel Supply\nPressure LOW"
DarkGray = 1 "Fuel Supply\nPressure OK"
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=800 starty=525 endx=929 endy=685
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
$OBJECT Buttonobj font=98 startx=800 starty=690 endx=929 endy=850
parameter=ECM_EECForceFail_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="N2 Droop"
$END-PANEL
defaultstate=0
$STATE 1
label="FAIL N1"
oncolor=Red
$END-STATE
$STATE 0
label="Normal"
oncolor=Green
$END-STATE
$END-OBJECT
***********
$OBJECT Box font=1 startx=883 starty=10 endx=1013 endy=85
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=883 starty=90 endx=1013 endy=165
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=890 starty=58 endx=969 endy=78
White direction=1 alignment=0
"OIL QTY"
$END-OBJECT
***********
$OBJECT Text font=98 startx=891 starty=121 endx=999 endy=161
White direction=1 alignment=0
"NO. 4 SCAV"
"PRESS PSIG"
$END-OBJECT
***********
$OBJECT Digital font=102 startx=909 starty=94 endx=1005 endy=124
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
dummy type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=102 startx=911 starty=14 endx=1007 endy=44
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
OILQ type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=930 starty=521 endx=1059 endy=687
parameter=ECM_Fire_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=DarkGray
defaultstate=0
$STATE 1
label="EEC Fire\nWarning"
oncolor=Red
$INITCALC
EECFireCH1_O:	ON
EECFireCH2_O:	ON
$END-CALC
$FINALCALC
EECFireCH1_O:	OFF
EECFireCH2_O:	OFF
$END-CALC
$END-STATE
$STATE 0
label="EEC Fire\nWarning"
oncolor=DarkGray
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=930 starty=690 endx=1057 endy=850
parameter=ECM_EECThrustRev_TB type=TOGGLE
labelcolor=Black warncolor=Yellow offcolor=LightGray
$PANEL
style=2
boxcolor=DarkGray
shading=2
label="EEC Th Rev"
$END-PANEL
defaultstate=0
$STATE 1
label="Deployed"
oncolor=Red
$CALC
TRDeploySimCH1_O:	ON
TRDeploySimCH2_O:	ON
TRStowedSimCH1_O:	OFF
TRStowedSimCH2_O:	OFF
$END-CALC
$END-STATE
$STATE 0
label="Stowed"
oncolor=Green
$CALC
TRStowedSimCH1_O:	ON
TRStowedSimCH2_O:	ON
TRDeploySimCH1_O:	OFF
TRDeploySimCH2_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=960 starty=195 endx=1160 endy=270
A_276B14 textcolor=Black
Green = 0 "EEC ChA Capability\nOperational"
DarkGray = 1 "EEC ChA Capability\nNot Operational"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=960 starty=270 endx=1160 endy=345
B_276B14 textcolor=Black
Green = 0 "EEC ChB Capability\nOperational"
DarkGray = 1 "EEC ChB Capability\nNot Operational"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=960 starty=345 endx=1160 endy=420
BitDummy textcolor=Black
DarkGray = 0 "EEC ChA Status\nBitDummy"
Green = 1 "EEC ChA Status\nEngaged"
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=960 starty=420 endx=1160 endy=495
BitDummy textcolor=Black
DarkGray = 0 "EEC ChB Status\nBitDummy"
Green = 1 "EEC ChB Status\nEngaged"
$END-OBJECT
***********
$OBJECT Box font=1 startx=1017 starty=10 endx=1147 endy=85
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=1018 starty=88 endx=1148 endy=164
style=2
boxcolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=1023 starty=58 endx=1129 endy=78
White direction=1 alignment=0
"FUEL FLOW"
$END-OBJECT
***********
$OBJECT Text font=98 startx=1023 starty=134 endx=1130 endy=154
White direction=1 alignment=0
"FUEL PRESS"
$END-OBJECT
***********
$OBJECT Digital font=102 startx=1043 starty=14 endx=1139 endy=44
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
QECWf type="FLOAT" width=6 prec=0 label="" units="" 
$END-OBJECT
***********
$OBJECT Digital font=102 startx=1045 starty=92 endx=1141 endy=122
labelspace=0 unitspace=0 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
QECFuelPress type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=1059 starty=522 endx=1199 endy=607
parameter=ECM_EECResetChA_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=DarkGray
defaultstate=0
$STATE 1
label="Channel A\nReset"
oncolor=Green
$INITCALC
EECResetCHA_O:	ON
$END-CALC
$FINALCALC
EECResetCHA_O:	OFF
$END-CALC
$END-STATE
$STATE 0
label="EEC Reset\nChannel A"
oncolor=DarkGray
$INITCALC
EECResetCHA_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=98 startx=1060 starty=606 endx=1199 endy=686
parameter=ECM_EECResetChB_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=DarkGray
defaultstate=0
$STATE 1
label="Channel B\nReset"
oncolor=Green
$INITCALC
EECResetCHB_O:	ON
$END-CALC
$FINALCALC
EECResetCHB_O:	OFF
$END-CALC
$END-STATE
$STATE 0
label="EEC Reset\nChannel B"
oncolor=DarkGray
$INITCALC
EECResetCHB_O:	OFF
$END-CALC
$END-STATE
$END-OBJECT
***********
$OBJECT Buttonobj font=99 startx=1060 starty=690 endx=1199 endy=850
parameter=ECM_IDGDisc_MB type=MOMENTARY
labelcolor=Black warncolor=Yellow offcolor=DarkGray
defaultstate=0
$STATE 1
label="CSD\nDisconnect"
oncolor=Green
$CALC
IDGDisc_O:	ON
$END-CALC
$FINALCALC
IDGDisc_O:	OFF
$END-CALC
$END-STATE
$STATE 0
label="CSD\nDisconnect"
oncolor=DarkGray
$END-STATE
$END-OBJECT
***********
$END-DISPLAY

