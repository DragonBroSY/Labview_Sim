$DISPLAY "MOP Test Plot" background=DarkGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Digital font=101 startx=32 starty=374 endx=92 endy=406
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
POILAC type="FLOAT" width=4 prec=0 label="MOP Corrected:" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=41 starty=343 endx=87 endy=458
White direction=1 alignment=0
"MOP"
""
""
"Corr"
"PSIG"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=123 starty=111 endx=1085 endy=650
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$SPOT-PARAM POILAC
$LINE_WIDTH 1
$XAXIS N2PctS 539 40 932 2.5 2 BELOW BELOW 50 100 White 50.000000
$YAXIS POILAC 40 0 539 10 2 LEFT LEFT 50 275 White 0 50.000000
$COLOR
Magenta
$END-COLOR
$HC-LINETYPE "(null)" 0 0 1 8
$TABLE-PLOT Green
MOPAccMx_T
$END-TABLE-PLOT
$TABLE-PLOT Green
MOPExpMn_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Engine Type: $EngName" 100 820
"Serial Number: $SerialNum" 100 840
"Delta Air Lines, Inc." 500 820
"MOP Test Plot" 500 840
"$SysReportTime" 900 820
"$CustomerName" 900 840
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=2 startx=161 starty=751 endx=386 endy=767
Green direction=1 alignment=0
"Min/Max Acceptance Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=208 starty=714 endx=334 endy=730
Blue direction=1 alignment=0
"Max Safe Limit"
$END-OBJECT
***********
$OBJECT Text font=2 startx=208 starty=734 endx=334 endy=750
Red direction=1 alignment=0
"Min Safe Limit"
$END-OBJECT
***********
$OBJECT Box font=101 startx=280 starty=15 endx=893 endy=82
style=2
boxcolor=Cyan
shading=3
$END-OBJECT
***********
$OBJECT Text font=103 startx=317 starty=35 endx=872 endy=65
BurntOrange direction=1 alignment=0
"MAIN OIL PRESSURE ACCEPTANCE LIMITS"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=478 starty=707 endx=668 endy=739
labelspace=3 unitspace=1 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-2
N2PctS type="FLOAT" width=5 prec=1 label="N2" units="default" 
$END-OBJECT
***********
$END-DISPLAY

