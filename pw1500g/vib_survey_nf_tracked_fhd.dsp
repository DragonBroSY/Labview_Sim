$DISPLAY "Vib Survey NF Tracked FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Digital font=103 startx=20 starty=197 endx=100 endy=232
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=20 starty=539 endx=100 endy=574
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNF type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=101 startx=22 starty=242 endx=98 endy=269
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=23 starty=155 endx=103 endy=185
Black direction=1 alignment=0
"Vib IC"
$END-OBJECT
***********
$OBJECT Text font=101 startx=24 starty=591 endx=100 endy=618
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=25 starty=369 endx=111 endy=399
Blue direction=1 alignment=0
"Accel/"
$END-OBJECT
***********
$OBJECT Text font=103 startx=26 starty=393 endx=99 endy=423
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Text font=103 startx=26 starty=497 endx=110 endy=527
Black direction=1 alignment=0
"Vib EF"
$END-OBJECT
***********
$OBJECT Text font=2 startx=57 starty=825 endx=264 endy=841
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=75 starty=844 endx=228 endy=860
Green direction=1 alignment=0
"Acceptance Limits"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=122 starty=26 endx=1819 endy=411
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS NFS 349 40 1650 125 2 ABOVE BELOW 0 3500 Black 0.000000
$YAXIS VibFNF 40 20 349 0.25 1 RIGHT LEFT 0 2 Black 0 0.000000
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
"Vibration Survey   $EngNameNew   SN: $SerialNum     $SysReportTime   $SysReportDate" 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=123 starty=400 endx=1835 endy=789
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 356 40 1665 125 2 ABOVE BELOW 0 3500 Black 0.000000
$YAXIS VibRN1 40 20 356 0.25 1 RIGHT LEFT 0 2 Black 0 0.000000
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
$OBJECT Text font=104 startx=809 starty=6 endx=1100 endy=45
Blue direction=1 alignment=0
"Fan (NF) Tracked"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=834 starty=794 endx=1064 endy=829
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
NFS type="FLOAT" width=5 prec=0 label="NF" units="default" 
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

