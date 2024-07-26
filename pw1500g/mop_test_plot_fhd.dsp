$DISPLAY "MOP Test Plot FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Digital font=101 startx=28 starty=404 endx=88 endy=436
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
POILAC type="FLOAT" width=4 prec=0 label="MOP Corrected:" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=37 starty=373 endx=83 endy=488
White direction=1 alignment=0
"MOP"
""
""
"Corr"
"PSIG"
$END-OBJECT
***********
$OBJECT Text font=2 startx=58 starty=834 endx=283 endy=850
Green direction=1 alignment=0
"Min/Max Acceptance Limits"
$END-OBJECT
***********
$OBJECT Text font=2 startx=105 starty=797 endx=231 endy=813
Blue direction=1 alignment=0
"Max Safe Limit"
$END-OBJECT
***********
$OBJECT Text font=2 startx=105 starty=817 endx=231 endy=833
Red direction=1 alignment=0
"Min Safe Limit"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=123 starty=111 endx=1845 endy=744
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$SPOT-PARAM POILAC
$LINE_WIDTH 1
$XAXIS N2PctS 633 40 1692 1 2 BELOW BELOW 50 100 White 50.000000
$YAXIS POILAC 40 0 633 5 2 LEFT LEFT 50 275 White 0 50.000000
$COLOR
Magenta
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Green
MOPAccMx_T
$END-TABLE-PLOT
$TABLE-PLOT Green
MOPExpMn_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Engine Type: $EngNameNew" 100 820
"Serial Number: $SerialNum" 100 840
"Delta Air Lines, Inc." 500 820
"MOP Test Plot" 500 840
"$SysReportTime" 900 820
"$CustomerName" 900 840
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Box font=101 startx=560 starty=16 endx=1339 endy=83
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=575 starty=32 endx=1318 endy=71
BurntOrange direction=1 alignment=0
"MAIN OIL PRESSURE ACCEPTANCE LIMITS"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=867 starty=788 endx=1057 endy=820
labelspace=3 unitspace=1 spacing=1 labelcolor=White parambox=2 paramboxcolor=Black shading=-2
N2PctS type="FLOAT" width=5 prec=1 label="N2" units="default" 
$END-OBJECT
***********
$END-DISPLAY

