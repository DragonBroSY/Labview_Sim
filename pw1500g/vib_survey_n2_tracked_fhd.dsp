$DISPLAY "Vib Survey N2 Tracked FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Text font=103 startx=17 starty=367 endx=103 endy=397
Blue direction=1 alignment=0
"Accel/"
$END-OBJECT
***********
$OBJECT Text font=103 startx=18 starty=391 endx=91 endy=421
Magenta direction=1 alignment=0
"Decel"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=22 starty=562 endx=102 endy=597
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=26 starty=194 endx=106 endy=229
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN2 type="FLOAT" width=5 prec=2 
$END-OBJECT
***********
$OBJECT Text font=103 startx=27 starty=523 endx=111 endy=553
Black direction=1 alignment=0
"Vib EF"
$END-OBJECT
***********
$OBJECT Text font=103 startx=28 starty=149 endx=108 endy=179
Black direction=1 alignment=0
"Vib IC"
$END-OBJECT
***********
$OBJECT Text font=101 startx=28 starty=242 endx=104 endy=269
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=101 startx=30 starty=611 endx=106 endy=638
Black direction=1 alignment=0
"IPS SA"
$END-OBJECT
***********
$OBJECT Text font=2 startx=67 starty=826 endx=274 endy=842
Red direction=1 alignment=0
"Max Safe Running Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=86 starty=843 endx=239 endy=859
Green direction=1 alignment=0
"Acceptance Limits"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=125 starty=395 endx=1843 endy=797
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 369 40 1669 500 2 ABOVE BELOW 12000 25000 Black 0.000000
$YAXIS VibRN2 40 20 369 0.25 1 RIGHT LEFT 0 2 Black 0 12000.000000
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
$OBJECT Plot font=1 startx=127 starty=17 endx=1850 endy=412
$TYPE VIBSURVEY
$LINE_WIDTH 1
$XAXIS N2S 358 40 1674 500 2 ABOVE BELOW 12000 25000 Black 0.000000
$YAXIS VibFN2 40 20 358 0.25 1 RIGHT LEFT 0 2 Black 0 12000.000000
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
"Vibration Survey   $EngNameNew   SN: $SerialNum     $SysReportTime   $SysReportDate" 0 0
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Digital font=103 startx=796 starty=808 endx=1042 endy=843
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N2S type="FLOAT" width=6 prec=0 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT Text font=104 startx=849 starty=8 endx=1047 endy=47
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
""
$END-HELP
$END-DISPLAY

