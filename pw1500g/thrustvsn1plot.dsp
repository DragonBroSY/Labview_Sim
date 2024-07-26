$DISPLAY "ThrustVSN1Plot" background=LightGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Digital font=103 startx=24 starty=257 endx=104 endy=449
labelspace=0 unitspace=0 spacing=30 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FNvsN1HighFN type="FLOAT" width=5 prec=0 
FNTR2D type="FLOAT" width=5 prec=0 
FNvsN1LowFN type="FLOAT" width=5 prec=0 
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
$OBJECT Text font=100 startx=32 starty=296 endx=100 endy=319
Blue direction=1 alignment=0
"FNTR2"
$END-OBJECT
***********
$OBJECT Text font=101 startx=42 starty=423 endx=84 endy=450
Black direction=1 alignment=0
"Lbs"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=134 starty=26 endx=1250 endy=719
$TYPE REALTIMEPOINT
$LINE_WIDTH 1
$XAXIS N1C2_SLS 660 40 1084 125 2 ABOVE BELOW 7000 11000 Black 10000.000000
$YAXIS FNTR2D 40 20 660 500 2 RIGHT LEFT 10000 25000 Black 0 7000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
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
$OBJECT Text font=2 startx=258 starty=738 endx=402 endy=754
Red direction=1 alignment=0
"High Thrust Line"
$END-OBJECT
***********
$OBJECT Text font=2 startx=261 starty=755 endx=396 endy=771
Green direction=1 alignment=0
"Low Thrust Line"
$END-OBJECT
***********
$OBJECT Text font=104 startx=490 starty=11 endx=830 endy=50
Blue direction=1 alignment=0
"FNTR2 vs N1C2 SLS"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=533 starty=737 endx=854 endy=772
labelspace=5 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2_SLS type="FLOAT" width=6 prec=0 label="N1C2 SLS" units="default" 
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
$END-HELP
$END-DISPLAY

