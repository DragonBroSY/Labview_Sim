$DISPLAY "Vib Survey NF Tracked" background=LightGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Digital font=103 startx=20 starty=150 endx=100 endy=185
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=20 starty=481 endx=100 endy=516
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=101 startx=22 starty=195 endx=98 endy=222
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=23 starty=108 endx=103 endy=138
Black direction=1 alignment=0
"Vib IC"
$END-OBJECT
***********
$OBJECT Text font=101 startx=24 starty=533 endx=100 endy=560
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=26 starty=439 endx=110 endy=469
Black direction=1 alignment=0
"Vib EF"
$END-OBJECT
***********
$OBJECT Text font=103 startx=31 starty=334 endx=117 endy=364
Blue direction=1 alignment=0
"Accel/"
$END-OBJECT
***********
$OBJECT Text font=103 startx=32 starty=358 endx=157 endy=388
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=122 starty=46 endx=1186 endy=320
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS NFS 274 40 1034 125 2 ABOVE BELOW 0 3500 Black 0.000000
$YAXIS VibFNF 40 0 274 0.25 1 RIGHT LEFT 0 2 Black 0 0.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Green
VibFNFMx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibFNFRMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Vibration Survey   $DashNumber   SN: $SerialNum     $SysReportTime   $SysReportDate" 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=123 starty=374 endx=1187 endy=648
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 274 40 1034 125 2 ABOVE BELOW 0 3500 Black 0.000000
$YAXIS VibRN1 40 0 274 0.25 1 RIGHT LEFT 0 2 Black 0 0.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Green
VibRNFMx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibRNFRMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=104 startx=441 starty=6 endx=732 endy=45
Blue direction=1 alignment=0
"Fan (NF) Tracked"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=477 starty=679 endx=707 endy=714
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
NFS type="FLOAT" width=5 prec=0 label="NF" units="default" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=482 starty=725 endx=689 endy=741
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=500 starty=744 endx=653 endy=760
Green direction=1 alignment=0
"Acceptance Limits"
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
$END-HELP
$END-DISPLAY

