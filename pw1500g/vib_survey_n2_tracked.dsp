$DISPLAY "Vib Survey N2 Tracked" background=LightGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Digital font=103 startx=20 starty=480 endx=100 endy=515
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=103 startx=25 starty=441 endx=109 endy=471
Black direction=1 alignment=0
"Vib EF"
$END-OBJECT
***********
$OBJECT Text font=101 startx=28 starty=529 endx=104 endy=556
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=29 starty=330 endx=115 endy=360
Blue direction=1 alignment=0
"Accel/"
$END-OBJECT
***********
$OBJECT Text font=103 startx=30 starty=354 endx=155 endy=384
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=31 starty=153 endx=111 endy=188
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=103 startx=33 starty=108 endx=113 endy=138
Black direction=1 alignment=0
"Vib IC"
$END-OBJECT
***********
$OBJECT Text font=101 startx=33 starty=201 endx=109 endy=228
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=124 starty=372 endx=1156 endy=656
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 284 40 1002 500 2 ABOVE BELOW 12000 25000 Black 0.000000
$YAXIS VibRN2 40 0 284 0.25 1 RIGHT LEFT 0 2 Black 0 12000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Red
VibRN2RMx_T
$END-TABLE-PLOT
$TABLE-PLOT Green
VibRN2Mx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=127 starty=50 endx=1155 endy=324
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 274 40 998 500 2 ABOVE BELOW 12000 25000 Black 0.000000
$YAXIS VibFN2 40 0 274 0.25 1 RIGHT LEFT 0 2 Black 0 12000.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Red
VibFN2RMx_T
$END-TABLE-PLOT
$TABLE-PLOT Green
VibFN2Mx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Vibration Survey   $DashNumber   SN: $SerialNum     $SysReportTime   $SysReportDate" 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=2 startx=463 starty=736 endx=670 endy=752
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=477 starty=680 endx=723 endy=715
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N2S type="FLOAT" width=6 prec=0 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=482 starty=753 endx=635 endy=769
Green direction=1 alignment=0
"Acceptance Limits"
$END-OBJECT
***********
$OBJECT Text font=104 startx=500 starty=9 endx=698 endy=48
Blue direction=1 alignment=0
"N2 Tracked"
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
$END-HELP
$END-DISPLAY

