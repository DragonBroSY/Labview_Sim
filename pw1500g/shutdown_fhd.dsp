$DISPLAY "Shutdown FHD" background=Charcoal loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Line font=101 startx=5 starty=854 endx=1864 endy=858
linewidth=2 linecolor=Red
shading=-1
$END-OBJECT
***********
$OBJECT String font=93 startx=16 starty=827 endx=334 endy=855
StopStageTxt labelspace=7 label="Information:" labelcolor=White stringcolor=Yellow parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Box font=1 startx=486 starty=86 endx=1423 endy=770
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=486 starty=613 endx=1420 endy=619
linewidth=2 linecolor=Charcoal
shading=-2
$END-OBJECT
***********
$OBJECT Line font=101 startx=487 starty=346 endx=1421 endy=352
linewidth=2 linecolor=Charcoal
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=104 startx=515 starty=425 endx=1070 endy=584
labelspace=9 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N2PctS type="FLOAT" width=5 prec=1 label="N2" units="default" 
N2RnDnTmr type="SECONDS" width=8 prec=0 label="N2 CDT at 5%" units="default" 
N2RUNDWNTM type="SECONDS" width=8 prec=0 label="N2 CDT Manual" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=104 startx=515 starty=645 endx=1181 endy=751
labelspace=12 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_ITT type="FLOAT" width=5 prec=0 label="ITT" units="default" 
ITTAtStop type="FLOAT" width=5 prec=0 label="ITT Peak at Shutdown" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=104 startx=516 starty=155 endx=1071 endy=314
labelspace=9 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1PctS type="FLOAT" width=5 prec=1 label="N1" units="default" 
N1RnDnTmr type="SECONDS" width=8 prec=0 label="N1 CDT at 5%" units="default" 
N1RUNDWNTM type="SECONDS" width=8 prec=0 label="N1 CDT Manual" units="default" 
$END-OBJECT
***********
$OBJECT String font=101 startx=542 starty=786 endx=816 endy=813
DateAtStop labelspace=6 label="Stop Date:" labelcolor=White stringcolor=Yellow parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=748 starty=11 endx=1178 endy=68
style=2
boxcolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=748 starty=99 endx=1111 endy=138
Blue direction=1 alignment=0
"N1 Coast Down Time"
$END-OBJECT
***********
$OBJECT Text font=96 startx=757 starty=366 endx=1120 endy=405
Blue direction=1 alignment=0
"N2 Coast Down Time"
$END-OBJECT
***********
$OBJECT Text font=104 startx=770 starty=22 endx=1151 endy=61
Black direction=1 alignment=0
"SHUT DOWN DISPLAY"
$END-OBJECT
***********
$OBJECT String font=101 startx=1013 starty=785 endx=1294 endy=812
TimeAtStop labelspace=6 label="Stop Time:" labelcolor=White stringcolor=Yellow parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Switch font=100 startx=1151 starty=518 endx=1401 endy=585
TOGGLE N2RnDnSwitch onlabel="Stop N2 Manual CDT" offlabel="Stop N2 Manual CDT" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=100 startx=1152 starty=256 endx=1402 endy=323
TOGGLE N1RnDnSwitch onlabel="Stop N1 Manual CDT" offlabel="Stop N1 Manual CDT" offcolor=LightGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$OBJECT Switch font=104 startx=1190 starty=678 endx=1408 endy=740
TOGGLE ResetShutDown_S onlabel="Reset" offlabel="Reset" offcolor=DarkGray oncolor=Green 
$RELEASE
$END-RELEASE
$END-OBJECT
***********
$END-DISPLAY

