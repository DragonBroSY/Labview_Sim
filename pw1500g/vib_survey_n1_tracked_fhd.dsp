$DISPLAY "Vib Survey N1 Tracked FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Digital font=103 startx=18 starty=187 endx=98 endy=222
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN1 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=101 startx=20 starty=232 endx=96 endy=259
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=21 starty=145 endx=101 endy=175
Black direction=1 alignment=0
"Vib IC"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=23 starty=585 endx=103 endy=620
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN1 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=103 startx=25 starty=366 endx=111 endy=396
Blue direction=1 alignment=0
"Accel/"
$END-OBJECT
***********
$OBJECT Text font=103 startx=26 starty=390 endx=99 endy=420
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Text font=101 startx=27 starty=637 endx=103 endy=664
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=29 starty=543 endx=113 endy=573
Black direction=1 alignment=0
"Vib EF"
$END-OBJECT
***********
$OBJECT Text font=2 startx=56 starty=826 endx=263 endy=842
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=74 starty=845 endx=227 endy=861
Green direction=1 alignment=0
"Acceptance Limits"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=117 starty=416 endx=1848 endy=797
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 348 40 1684 250 2 ABOVE BELOW 2000 11000 Black 0.000000
$YAXIS VibRN1 40 20 348 0.25 1 RIGHT LEFT 0 2 Black 0 2000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Green
VibRN1Mx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibRN1RMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=122 starty=16 endx=1845 endy=423
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 367 40 1676 250 2 ABOVE BELOW 2000 11000 Black 0.000000
$YAXIS VibFN1 40 20 367 0.25 1 RIGHT LEFT 0 2 Black 0 2000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Green
VibFN1Mx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibFN1RMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Vibration Survey   $EngNameNew   SN: $SerialNum     $SysReportTime   $SysReportDate" 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Digital font=103 startx=771 starty=801 endx=1017 endy=836
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1S type="FLOAT" width=6 prec=0 label="N1" units="default" 
$END-OBJECT
***********
$OBJECT Text font=104 startx=804 starty=3 endx=1002 endy=42
Blue direction=1 alignment=0
"N1 Tracked"
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
$END-HELP
$END-DISPLAY

