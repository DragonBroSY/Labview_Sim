$DISPLAY "Final Performance Plot" background=White loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Text font=97 startx=7 starty=300 endx=23 endy=395
Black direction=0 alignment=0
"N2C2D"
$END-OBJECT
***********
$OBJECT Text font=97 startx=8 starty=498 endx=24 endy=650
Black direction=0 alignment=0
"WFPLHCR2"
$END-OBJECT
***********
$OBJECT Text font=97 startx=12 starty=84 endx=28 endy=160
Black direction=0 alignment=0
"TSFC"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=37 starty=29 endx=370 endy=752
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$LINE_WIDTH 1
$XAXIS N1C2D 723 40 299 500 2 ABOVE BELOW 5000 10000 Blue 5000.000000
$YAXIS TSFCPLHC 40 0 223 0.025 2 RIGHT LEFT 0.3 0.7 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$END-YAXIS
$YAXIS N2C2D 40 240 456 500 2 RIGHT LEFT 11000 22000 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$TABLE-PLOT Red
N2C2DMax_T
$END-TABLE-PLOT
$END-YAXIS
$YAXIS WFPLHCR2 40 480 723 500 2 RIGHT LEFT 5000 14500 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "" 0 0 1 8
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
"Engine Type: $DashNumber" 100 820
"Delta Air Lines, Inc." 450 820
"$CustomerName" 900 820
"Serial Number: $SerialNum" 100 835
"Performance Plot" 450 835
"$SysReportTime" 900 835
"$SysReportDate" 900 850
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=100 startx=189 starty=776 endx=259 endy=799
Black direction=1 alignment=0
"N1C2D"
$END-OBJECT
***********
$OBJECT Text font=97 startx=387 starty=560 endx=403 endy=693
Black direction=0 alignment=0
"T49OP49"
$END-OBJECT
***********
$OBJECT Text font=97 startx=389 starty=299 endx=405 endy=432
Black direction=0 alignment=0
"T45OP45"
$END-OBJECT
***********
$OBJECT Text font=97 startx=390 starty=69 endx=406 endy=202
Black direction=0 alignment=0
"T25OP25"
$END-OBJECT
***********
$OBJECT Plot font=1 startx=399 starty=29 endx=786 endy=747
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$LINE_WIDTH 1
$XAXIS N1C2D 718 40 357 500 2 ABOVE BELOW 5000 10000 Blue 350.000000
$YAXIS T25OP25C 40 0 226 10 2 RIGHT LEFT 50 300 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$END-YAXIS
$YAXIS T45OP45C 40 240 462 10 2 RIGHT LEFT 450 620 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$END-YAXIS
$YAXIS T49OP49C 40 480 718 10 2 RIGHT LEFT 350 620 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$END-YAXIS
$HARDCOPYPLOT 5 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=100 startx=541 starty=773 endx=611 endy=796
Black direction=1 alignment=0
"N1C2D"
$END-OBJECT
***********
$OBJECT Text font=97 startx=783 starty=304 endx=799 endy=380
Black direction=0 alignment=0
"N1C2D"
$END-OBJECT
***********
$OBJECT Text font=97 startx=797 starty=50 endx=813 endy=145
Black direction=0 alignment=0
"T3OP3"
$END-OBJECT
***********
$OBJECT Text font=97 startx=800 starty=615 endx=816 endy=691
Black direction=0 alignment=0
"MOP "
$END-OBJECT
***********
$OBJECT Plot font=1 startx=808 starty=536 endx=1191 endy=746
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$LINE_WIDTH 1
$XAXIS EEC_N2 210 40 352 1000 2 ABOVE BELOW 14000 25000 Blue 60.000000
$YAXIS POILAC 40 0 210 20 2 RIGHT LEFT 60 320 Blue 0 14000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "" 0 0 1 8
$TABLE-PLOT Red
MOPExpMx_T
$END-TABLE-PLOT
$TABLE-PLOT Red
MOPExpMn_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=809 starty=278 endx=1193 endy=498
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$LINE_WIDTH 1
$XAXIS FNTR2 219 40 354 2000 2 ABOVE BELOW 15000 25000 Blue 5000.000000
$YAXIS N1C2D 40 0 219 500 2 RIGHT LEFT 5000 12000 Blue 0 15000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$END-YAXIS
$HARDCOPYPLOT 5 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Plot font=1 startx=812 starty=24 endx=1199 endy=226
$TYPE PERFORMANCE
$PERFORMANCE
$POINTS BandA BandB BandC BandD
$LINE_WIDTH 1
$XAXIS N1C2D 202 40 357 500 2 ABOVE BELOW 5000 10000 Blue 350.000000
$YAXIS T3OP3C 40 0 202 10 2 RIGHT LEFT 350 620 Blue 0 5000.000000
$COLOR
Blue
$END-COLOR
$HC-LINETYPE "None" 0 0 1 8
$END-YAXIS
$HARDCOPYPLOT 5 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Text font=100 startx=966 starty=524 endx=1034 endy=547
Black direction=1 alignment=0
"FNTR2"
$END-OBJECT
***********
$OBJECT Text font=100 startx=974 starty=252 endx=1044 endy=275
Black direction=1 alignment=0
"N1C2D"
$END-OBJECT
***********
$OBJECT Text font=100 startx=1002 starty=775 endx=1029 endy=798
Black direction=1 alignment=0
"N2"
$END-OBJECT
***********
$END-DISPLAY

