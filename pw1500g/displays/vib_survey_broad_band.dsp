$DISPLAY "Vib Survey Broad Band" background=LightGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Digital font=103 startx=30 starty=500 endx=110 endy=535
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRBB type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=101 startx=30 starty=544 endx=106 endy=571
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=31 starty=153 endx=111 endy=188
labelspace=0 unitspace=1 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-2
VibFBB type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=101 startx=32 starty=199 endx=108 endy=226
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=103 startx=32 starty=332 endx=118 endy=362
Blue direction=1 alignment=0
"Accel/"
$END-OBJECT
***********
$OBJECT Text font=103 startx=33 starty=356 endx=158 endy=386
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Text font=103 startx=34 starty=456 endx=118 endy=486
Black direction=1 alignment=0
"Vib PF"
$END-OBJECT
***********
$OBJECT Text font=103 startx=36 starty=115 endx=116 endy=145
Black direction=1 alignment=0
"Vib IC"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=127 starty=49 endx=1191 endy=323
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 274 40 1034 500 2 ABOVE BELOW 0 11000 Black 0.000000
$YAXIS VibFBB 40 0 274 0.25 1 RIGHT LEFT 0 2 Black 0 1.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "" 0 0 1 8
$TABLE-PLOT Green
VibFBBMx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibFBBRMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Vibration Survay Broad Band    $DashNumber     $SerialNum   $SysReportTime    " 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=130 starty=377 endx=1183 endy=651
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N1S 274 40 1023 500 2 ABOVE BELOW 0 11000 Black 0.000000
$YAXIS VibRBB 40 0 274 0.25 1 RIGHT LEFT 0 2 Black 0 1.000000
$COLOR
Blue
Magenta
$END-COLOR
$HC-LINETYPE "" 0 0 1 8
$TABLE-PLOT Green
VibRBBMx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
VibRBBRMx_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Digital font=103 startx=477 starty=682 endx=723 endy=717
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1S type="FLOAT" width=6 prec=0 label="N1  " units="RPM" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=490 starty=727 endx=697 endy=743
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Text font=104 startx=503 starty=9 endx=699 endy=48
Blue direction=1 alignment=0
"Broad Band"
$END-OBJECT
***********
$OBJECT Text font=2 startx=518 starty=748 endx=671 endy=764
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
""
""
""
""
$END-HELP
$END-DISPLAY

