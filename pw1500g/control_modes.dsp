$DISPLAY "Control Modes" background=Black editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Overwrite
$OBJECT Switch font=1 startx=15 starty=414 endx=192 endy=504
TOGGLE TrimInc_t onlabel="Trim\nResolution" offlabel="Trim\nResolution" offcolor=Green oncolor=Green 
$RELEASE
#if	(Trim_Increment = 0.5)
Trim_Increment:%	0.25
#elseif	(Trim_Increment = 0.25)
Trim_Increment:%	0.1
#elseif	(Trim_Increment = 0.1)
Trim_Increment:%	0.5
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=0 startx=20 starty=20 endx=322 endy=100
TOGGLE FNControl_TB onlabel="FN Control\nActive" offlabel="FN Control\nInActive" offcolor=Red oncolor=Green 
$RELEASE
#if	FNControl_TB
CtrlMode:	FNCtrlMode
N1Control_TB:	OFF
TRAControl_TB:	OFF
#else	
CtrlMode:	0
FNControl_TB:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=0 startx=20 starty=120 endx=322 endy=200
TOGGLE N1Control_TB onlabel="N1 Control\nActive" offlabel="N1 Control\nInActive" offcolor=Red oncolor=Green 
$RELEASE
#if	N1Control_TB
CtrlMode:	N1CtrlMode
FNControl_TB:	OFF
TRAControl_TB:	OFF
#else	
CtrlMode:	0
N1Control_TB:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=0 startx=20 starty=215 endx=322 endy=295
TOGGLE TRAControl_TB onlabel="PLA Control\nActive" offlabel="PLA Control\nInActive" offcolor=Red oncolor=Green 
$RELEASE
#if	TRAControl_TB
CtrlMode:	TRACtrlMode
FNControl_TB:	OFF
N1Control_TB:	OFF
#else	
CtrlMode:	0
TRAControl_TB:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=1 startx=30 starty=308 endx=160 endy=398
TOGGLE TrimPlus_t onlabel="Trim +" offlabel="Trim +" offcolor=Green oncolor=Green 
$RELEASE
#if	AutoThrottle_F
N1_Targ:RPM	(N1_Targ + Trim_Increment)
FN_Targ:Lbs	(FN_Targ + Trim_Increment)
EPR_Targ:ratio	(EPR_Targ + (Trim_Increment * 0.015))
TRA_Targ:ratio	(TRA_Targ + (Trim_Increment * 0.015))
dummy:	storeevent("Trim Plus Event")
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=1 startx=210 starty=430 endx=600 endy=454
labelspace=15 unitspace=2 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
Trim_Increment type="FLOAT" width=8 prec=3 label="Trim Increment" units="default" 
$END-OBJECT
***********
$OBJECT String font=1 startx=216 starty=477 endx=561 endy=500
AutoThrottle_F labelspace=17 label="Throttle Mode" labelcolor=Green stringcolor=White parambox=0 paramboxcolor=Black shading=0
White = 0 "Manual"
Yellow = 1 "Auto"
$END-OBJECT
***********
$OBJECT Switch font=1 startx=220 starty=308 endx=356 endy=398
TOGGLE TrimMinus_t onlabel="Trim -" offlabel="Trim -" offcolor=Green oncolor=Green 
$RELEASE
#if	AutoThrottle_F
N1_Targ:RPM	(N1_Targ - Trim_Increment)
FN_Targ:Lbs	(FN_Targ - Trim_Increment)
EPR_Targ:ratio	(EPR_Targ - (Trim_Increment * 0.015))
TRA_Targ:ratio	(TRA_Targ - (Trim_Increment * 0.015))
dummy:	storeevent("Trim Minus Event")
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=1 startx=499 starty=27 endx=949 endy=339
labelspace=15 unitspace=1 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
TLA_Targ type="FLOAT" width=9 prec=2 label="default" units="default" 
TRA_Targ type="FLOAT" width=9 prec=2 label="default" units="default" 
TRA_Actual type="FLOAT" width=9 prec=2 label="default" units="default" 
TRA_Diff type="FLOAT" width=9 prec=2 label="default" units="default" 
TRA_CmdMx type="FLOAT" width=9 prec=2 label="default" units="default" 
TRA_Cmd type="FLOAT" width=9 prec=0 label="default" units="default" 
TRA_CmdMn type="FLOAT" width=9 prec=2 label="default" units="default" 
EPR_Targ type="FLOAT" width=9 prec=3 label="default" units="default" 
N1_Targ type="FLOAT" width=9 prec=0 label="default" units="default" 
DAC_PLA_Voltage type="FLOAT" width=9 prec=3 label="default" units="default" 
PLA_Handle type="FLOAT" width=9 prec=3 label="default" units="default" 
DACSlope type="FLOAT" width=9 prec=4 label="default" units="default" 
DACOffset type="FLOAT" width=9 prec=4 label="default" units="default" 
$END-OBJECT
***********
$HELP
"============ Control modes display.  This display    ================"
"============ shows various params associated with    ================"
"============ the auto throttle system.               ================"
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

