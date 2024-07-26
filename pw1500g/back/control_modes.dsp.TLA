$DISPLAY "Control Modes" background=Black editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Overwrite
$OBJECT Switch font=0 startx=20 starty=20 endx=322 endy=100
TOGGLE EPRControl_TB onlabel="EPR Control\nActive" offlabel="EPR Control\nInActive" offcolor=Red oncolor=Green 
$RELEASE
#if	EPRControl_TB
ControlMode:	EPRControlMode
N1Control_TB:	OFF
TLAControl_TB:	OFF
#else	
ControlMode:	0
EPRControl_TB:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=0 startx=20 starty=120 endx=322 endy=200
TOGGLE N1Control_TB onlabel="N1 Control\nActive" offlabel="N1 Control\nInActive" offcolor=Red oncolor=Green 
$RELEASE
#if	N1Control_TB
ControlMode:	N1ControlMode
EPRControl_TB:	OFF
TLAControl_TB:	OFF
#else	
ControlMode:	0
N1Control_TB:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=0 startx=20 starty=215 endx=322 endy=295
TOGGLE TLAControl_TB onlabel="PLA Control\nActive" offlabel="PLA Control\nInActive" offcolor=Red oncolor=Green 
$RELEASE
#if	TLAControl_TB
ControlMode:	TLAControlMode
EPRControl_TB:	OFF
N1Control_TB:	OFF
#else	
ControlMode:	0
TLAControl_TB:	OFF
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=1 startx=28 starty=414 endx=156 endy=504
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
$OBJECT Switch font=1 startx=30 starty=308 endx=160 endy=398
TOGGLE TrimPlus_t onlabel="Trim +" offlabel="Trim +" offcolor=Green oncolor=Green 
$RELEASE
#if	AutoThrottle_F
N1_Target:RPM	(N1_Target + Trim_Increment)
EPR_Target:ratio	(EPR_Target + (Trim_Increment * 0.015))
PLA_Target:ratio	(PLA_Target + (Trim_Increment * 0.015))
dummy:			storeevent("Trim Plus Event")
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT String font=1 startx=197 starty=487 endx=509 endy=519
AutoThrottle_F labelspace=20 label="Throttle Mode" labelcolor=Green stringcolor=White parambox=0 paramboxcolor=Black shading=0
White = 0 "Manual"
White = 1 "Auto  "
$END-OBJECT
***********
$OBJECT Digital font=1 startx=210 starty=430 endx=726 endy=494
labelspace=18 unitspace=10 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
Trim_Increment type="FLOAT" width=8 prec=2 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Switch font=1 startx=220 starty=308 endx=366 endy=398
TOGGLE TrimMinus_t onlabel="Trim -" offlabel="Trim -" offcolor=Green oncolor=Green 
$RELEASE
#if	AutoThrottle_F
N1_Target:RPM		(N1_Target - Trim_Increment)
EPR_Target:ratio	(EPR_Target - (Trim_Increment * 0.015))
PLA_Target:ratio	(PLA_Target - (Trim_Increment * 0.015))
dummy:			storeevent("Trim Minus Event")
#endif	
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=1 startx=488 starty=20 endx=1178 endy=308
labelspace=20 unitspace=10 spacing=1 labelcolor=White parambox=0 paramboxcolor=Black shading=0
TLA_Targ type="FLOAT" width=9 prec=2 label="default" units="default" 
TLA_Actual type="FLOAT" width=9 prec=2 label="default" units="default" 
TLA_Diff type="FLOAT" width=9 prec=2 label="default" units="default" 
TLA_CmdMx type="FLOAT" width=9 prec=2 label="default" units="default" 
TLA_Cmd type="FLOAT" width=9 prec=0 label="default" units="default" 
TLA_CmdMn type="FLOAT" width=9 prec=2 label="default" units="default" 
EPR_Target type="FLOAT" width=9 prec=3 label="default" units="default" 
N1_Target type="FLOAT" width=9 prec=0 label="default" units="default" 
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
$END-HELP
$END-DISPLAY

