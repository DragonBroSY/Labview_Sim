$DISPLAY "Thrust vs N1 Plot" background=LightGray editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#C #if (AutotestSaved & startVibSurveyN1_S)
#C dummy startautotest (startVibSurvey)
#C AutotestSaved FALSE
#C #elseif (AutotestSaved & ~startVibSurveyN1_S)
#C dummy startautotest (stopVibSurvey)
#C AutotestSaved FALSE
#C #endif
$END-CALC
$STOREDISPLAY Append
$OBJECT Digital font=103 startx=19 starty=256 endx=99 endy=448
labelspace=0 unitspace=0 spacing=30 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNvsN1HighFN type="FLOAT" width=5 prec=0 
FNTR2D type="FLOAT" width=5 prec=0 
FNvsN1LowFN type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=100 startx=20 starty=294 endx=104 endy=317
Blue direction=1 alignment=0
"FNTR2D"
$END-OBJECT
***********
$OBJECT Text font=98 startx=28 starty=233 endx=102 endy=253
Red direction=1 alignment=0
"High FN"
$END-OBJECT
***********
$OBJECT Text font=98 startx=28 starty=362 endx=97 endy=382
Green direction=1 alignment=0
"Low FN"
$END-OBJECT
***********
$OBJECT Text font=101 startx=42 starty=423 endx=84 endy=450
Black direction=1 alignment=0
"Lbs"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=134 starty=26 endx=1784 endy=785
$TYPE REALTIMEPOINT
$LINE_WIDTH 1
$XAXIS N1C2_SLS 729 40 1620 10 2 ABOVE BELOW 9100 9800 Black 19000.000000
$YAXIS FNTR2D 40 20 729 100 2 RIGHT LEFT 19000 24000 Black 0 9100.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Red
FNvsN1HighFN_T
$END-TABLE-PLOT
$TABLE-PLOT Green
FNvsN1LowFN_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Vibration Survey   $DashNumber   SN: $SerialNum     $SysReportTime   $SysReportDate" 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=2 startx=365 starty=796 endx=509 endy=812
Red direction=1 alignment=0
"High Thrust Line"
$END-OBJECT
***********
$OBJECT Text font=2 startx=368 starty=813 endx=503 endy=829
Green direction=1 alignment=0
"Low Thrust Line"
$END-OBJECT
***********
$OBJECT Box font=101 startx=749 starty=4 endx=1163 endy=60
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Digital font=103 startx=760 starty=798 endx=1081 endy=833
labelspace=5 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2_SLS type="FLOAT" width=6 prec=0 label="N1C2 SLS" units="default" 
$END-OBJECT
***********
$OBJECT Text font=104 startx=767 starty=12 endx=1134 endy=51
BurntOrange direction=1 alignment=0
"FNTR2D vs N1C2 SLS"
$END-OBJECT
***********
$HELP
"This is the help for the Vib Survey display"
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

