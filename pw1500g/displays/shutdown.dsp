$DISPLAY "Shutdown" background=Charcoal editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
ResetShutDown_S:	ON
ITTStopTmr_F:	ON
$END-CALC
$CALC
dummy:	0
#if	ResetShutDown_S
N1RnDnAtStop:RPM	0.0
N2RnDnAtStop:RPM	0.0
N1RnDnTmr:Sec	0.0
N2RnDnTmr:Sec	0.0
N1RUNDWNTM:Sec	0.0
N2RUNDWNTM:Sec	0.0
ITTAtStop:DegC	0.0
TimeAtStop:	concat ("" "")
DateAtStop:	concat ("" "")
N1RnDnTmr_F:	OFF
N2RnDnTmr_F:	OFF
N1RnDnTmrMan_F:	OFF
N2RnDnTmrMan_F:	OFF
ITTStopTmr_F:	ON
ITTStopTmr:	0.0
LatchRunMode:	OFF
StopStage:	0
StopStageTxt:	concat ("" "Stop Reset.")
ResetShutDown_S:	OFF
#endif	
#if	(N1RnDnTmr_F & (N1Pct < 5.0))
N1RnDnAtStop:RPM	N1I
N1RnDnTmr_F:	OFF
#elseif	(N1RnDnTmrMan_F & (N1RnDnSwitch | (N1RUNDWNTM > 600.0)))
N1RnDnTmrMan_F:	OFF
N1RnDnSwitch:	OFF
#endif	
#if	(N2RnDnTmr_F & (N2Pct < 5.0))
N2RnDnAtStop:RPM	N2I
N2RnDnTmr_F:	OFF
#elseif	(N2RnDnTmrMan_F & (N2RnDnSwitch | (N2RUNDWNTM > 600.0)))
N2RnDnTmrMan_F:	OFF
N2RnDnSwitch:	OFF
#endif	
#if	(~ECM_FuelCtrl_TB & ~LatchRunMode & RunMode)
StopStage:	1
StopStageTxt:	concat ("" "Engine Shutdown.")
ITTAtStop:DegC	PrevITTatStop
ITTStopTmr_F:	OFF
TimeAtStop:	concat ("" SysReportTime)
DateAtStop:	concat ("" SysDate)
N2RnDnTmr_F:	ON
N1RnDnTmr_F:	ON
N2RnDnTmrMan_F:	ON
N1RnDnTmrMan_F:	ON
LatchRunMode:	ON
dummy:	storeevent ("StopData: %vStoreStopData + 1, Engine Shutdown (Started): EGT %vITTAtStop ")
#elseif	(~N1RnDnTmr_F & ~N2RnDnTmr_F & ~ECM_FuelCtrl_TB & LatchRunMode)
StopStage:	2
StopStageTxt:	concat ("" "N1 and N2 < 5% Shutdown, Saving Data.")
StoreStopData:	(StoreStopData + 1)
LatchRunMode:	OFF
#endif	
#if	((ITTStopTmr > 1.0) & ITTStopTmr_F)
PrevITTatStop:	PrevITTatStop1
PrevITTatStop1:	EEC_ITT
ITTStopTmr:	0.0
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Line font=101 startx=5 starty=854 endx=1222 endy=855
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT String font=92 startx=16 starty=828 endx=281 endy=851
StopStageTxt labelspace=7 label="Information:" labelcolor=White stringcolor=Yellow parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Box font=1 startx=152 starty=87 endx=1089 endy=771
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=152 starty=614 endx=1086 endy=620
linewidth=2 linecolor=Charcoal
shading=-2
$END-OBJECT
***********
$OBJECT Line font=101 startx=153 starty=347 endx=1087 endy=353
linewidth=2 linecolor=Charcoal
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=104 startx=181 starty=426 endx=736 endy=585
labelspace=9 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N2PctS type="FLOAT" width=5 prec=1 label="N2" units="default" 
N2RnDnTmr type="SECONDS" width=8 prec=0 label="N2 CDT at 5%" units="default" 
N2RUNDWNTM type="SECONDS" width=8 prec=0 label="N2 CDT Manual" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=104 startx=181 starty=646 endx=847 endy=752
labelspace=12 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_ITT type="FLOAT" width=5 prec=0 label="ITT" units="default" 
ITTAtStop type="FLOAT" width=5 prec=0 label="ITT Peak at Shutdown" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=104 startx=182 starty=156 endx=737 endy=315
labelspace=9 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1PctS type="FLOAT" width=5 prec=1 label="N1" units="default" 
N1RnDnTmr type="SECONDS" width=8 prec=0 label="N1 CDT at 5%" units="default" 
N1RUNDWNTM type="SECONDS" width=8 prec=0 label="N1 CDT Manual" units="default" 
$END-OBJECT
***********
$OBJECT String font=101 startx=208 starty=787 endx=482 endy=814
DateAtStop labelspace=6 label="Stop Date:" labelcolor=White stringcolor=Yellow parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=414 starty=12 endx=844 endy=69
style=2
boxcolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=414 starty=100 endx=777 endy=139
Blue direction=1 alignment=0
"N1 Coast Down Time"
$END-OBJECT
***********
$OBJECT Text font=96 startx=423 starty=367 endx=786 endy=406
Blue direction=1 alignment=0
"N2 Coast Down Time"
$END-OBJECT
***********
$OBJECT Text font=104 startx=436 starty=23 endx=817 endy=62
BurntOrange direction=1 alignment=0
"SHUT DOWN DISPLAY"
$END-OBJECT
***********
$OBJECT String font=101 startx=679 starty=786 endx=960 endy=813
TimeAtStop labelspace=6 label="Stop Time:" labelcolor=White stringcolor=Yellow parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Switch font=100 startx=817 starty=519 endx=1067 endy=586
TOGGLE N2RnDnSwitch onlabel="Stop N2 Manual CDT" offlabel="Stop N2 Manual CDT" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=818 starty=257 endx=1068 endy=324
TOGGLE N1RnDnSwitch onlabel="Stop N1 Manual CDT" offlabel="Stop N1 Manual CDT" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=101 startx=823 starty=666 endx=1073 endy=728
TOGGLE ResetShutDown_S onlabel="Reset" offlabel="Reset" offcolor=DarkGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$END-DISPLAY

