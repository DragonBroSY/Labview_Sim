$DISPLAY "Weather" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Text font=2 startx=8 starty=513 endx=62 endy=529
Magenta direction=1 alignment=0
"RelHum"
$END-OBJECT
***********
$OBJECT Plot font=101 startx=10 starty=522 endx=365 endy=772
$TYPE REALTIMEPOINT
$LINE_WIDTH 1
$XAXIS CITDegC 220 40 325 2.5 2 ABOVE BELOW -20 35 Black 0.000000
$YAXIS RelHum 40 20 220 5 2 RIGHT LEFT 0 100 Black 0 -20.000000
$COLOR
White X
$END-COLOR
$TABLE-PLOT Red
MaxRelHumLim_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Digital font=100 startx=19 starty=365 endx=350 endy=397
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PBarPSIA_House type="FLOAT" width=7 prec=4 label="Standby-PBar:" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=20 starty=50 endx=465 endy=114
labelspace=13 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SHum type="FLOAT" width=7 prec=5 label="Specific Humidity Obs:" units="default" 
SpHumCorrLim type="FLOAT" width=7 prec=5 label="Specific Humidity Limit:" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=20 starty=125 endx=358 endy=189
labelspace=12 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
RelHum1 type="FLOAT" width=6 prec=2 label="Relative Humidity #1" units="default" 
RelHum2 type="FLOAT" width=6 prec=2 label="Relative Humidity #2" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=20 starty=324 endx=351 endy=356
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PBar2 type="FLOAT" width=7 prec=4 label="Barometer #" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=21 starty=210 endx=352 endy=306
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PressAlt type="FLOAT" width=7 prec=1 label="Altitude    #" units="default" 
PBar1 type="FLOAT" width=7 prec=4 label="Barometer #" units="default" 
PBarHgA type="FLOAT" width=7 prec=4 label="Barometer #" units="default" 
$END-OBJECT
***********
$OBJECT Text font=97 startx=90 starty=510 endx=289 endy=548
Blue direction=1 alignment=1
"Max Relative Humidity"
"Limit (RR)"
$END-OBJECT
***********
$OBJECT Text font=2 startx=138 starty=769 endx=210 endy=785
Magenta direction=1 alignment=0
"CIT DegC"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=148 starty=324 endx=160 endy=356
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
OtherCellNum type="FLOAT" width=1 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=149 starty=210 endx=161 endy=306
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
CellNum type="FLOAT" width=1 prec=0 
CellNum type="FLOAT" width=1 prec=0 
CellNum type="FLOAT" width=1 prec=0 
$END-OBJECT
***********
$OBJECT Text font=155 startx=212 starty=569 endx=324 endy=581
Red direction=1 alignment=0
"NOT Acceptable"
$END-OBJECT
***********
$OBJECT Text font=101 startx=300 starty=125 endx=913 endy=746
Black direction=1 alignment=0
"                                      N"
""
""
"        NW                                                     NE"
""
""
""
""
""
""
""
"W                                                                        E"
""
""
""
""
""
""
""
"        SW                                                      SE"
""
""
"                                      S"
$END-OBJECT
***********
$OBJECT Plot font=101 startx=302 starty=142 endx=910 endy=739
$TYPE REALTIMEPOINT
$LINE_WIDTH 3
$XAXIS WindDirX 293 40 578 20 2 ABOVE BELOW -180 180 DarkGray 0.000000
$YAXIS WindDirY 309 20 567 20 1 RIGHT LEFT -180 180 DarkGray 0 0.000000
$COLOR
White O
White O
$END-COLOR
$TABLE-PLOT Green
360DegreesPlus_T
$END-TABLE-PLOT
$TABLE-PLOT Green
360DegreesNeg_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT String font=101 startx=379 starty=10 endx=628 endy=37
iWindDir labelspace=9 label="Wind Direction:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Black = 0 "N"
Black = 1 "NE"
Black = 2 "E"
Black = 3 "SE"
Black = 4 "S"
Black = 5 "SW"
Black = 6 "W"
Black = 7 "NW"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=478 starty=50 endx=785 endy=78
labelspace=9 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
WindVel_s type="FLOAT" width=5 prec=1 label="     Wind Speed:" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=633 starty=12 endx=859 endy=40
labelspace=2 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
WindDir_s type="FLOAT" width=3 prec=0 label="@" units="Degrees" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=852 starty=529 endx=924 endy=545
Magenta direction=1 alignment=0
"DewPoint"
$END-OBJECT
***********
$OBJECT Plot font=101 startx=856 starty=553 endx=1227 endy=753
$TYPE REALTIMEPOINT
$LINE_WIDTH 1
$XAXIS OATDegF 200 40 341 5 2 ABOVE BELOW -10 100 Black -20.000000
$YAXIS DewPtF 67 0 200 5 2 RIGHT LEFT -20 90 Black 0 0.000000
$COLOR
White X
$END-COLOR
$TABLE-PLOT Red
MaxDewPointLim_T
$END-TABLE-PLOT
$END-YAXIS
$HARDCOPYPLOT 1 0 QUANTITY=1
$END-HARDCOPYPLOT
$END-OBJECT
***********
$OBJECT Digital font=100 startx=915 starty=48 endx=1165 endy=208
labelspace=5 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
OATDegC1 type="FLOAT" width=5 prec=1 label="OAT" units="default" 
DewPtC type="FLOAT" width=5 prec=2 label="Dew PT" units="default" 
dummy type="FLOAT" width=0 prec=0 
OATDegF1 type="FLOAT" width=5 prec=1 label="OAT" units="default" 
DewPtF type="FLOAT" width=5 prec=2 label="Dew PT" units="default" 
$END-OBJECT
***********
$OBJECT Text font=155 startx=923 starty=569 endx=1035 endy=581
Red direction=1 alignment=0
"NOT Acceptable"
$END-OBJECT
***********
$OBJECT Text font=97 startx=937 starty=527 endx=1155 endy=546
Blue direction=1 alignment=1
"Max Dewpoint Limit (PW)"
$END-OBJECT
***********
$OBJECT Text font=2 startx=994 starty=777 endx=1066 endy=793
Magenta direction=1 alignment=0
"OAT DegF"
$END-OBJECT
***********
$END-DISPLAY

