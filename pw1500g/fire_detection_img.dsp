$DISPLAY "Fire Detection Img" background=DarkGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Image font=101 startx=340 starty=137 endx=929 endy=417
PW1500G_Side.gif 
$END-OBJECT
***********
$OBJECT Image font=101 startx=341 starty=414 endx=930 endy=694
PW1500G_Side_R.gif 
$END-OBJECT
***********
$OBJECT Box font=101 startx=415 starty=7 endx=870 endy=74
style=1
linewidth=4 linecolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=102 startx=447 starty=27 endx=840 endy=56
Blue direction=1 alignment=1
"UNDER COWL TEMPERATURES"
$END-OBJECT
***********
$OBJECT StatusIndicator font=98 startx=460 starty=760 endx=800 endy=820
FireDetection_Stat textcolor=Black
Green = 0 "Under Cowl Temp NORMAL"
Green = 7 "Under Cowl Temp NORMAL"
Yellow = 8 "Under Cowl Temp WARNING"
Red = 9 "Under Cowl Temp >>FIRE<<"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=468 starty=514 endx=537 endy=584
labelspace=3 unitspace=0 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLBUR05 type="FLOAT" width=4 prec=0 label="BAC UPR" 
TNFDLBLR04 type="FLOAT" width=4 prec=0 label="BAC LOW" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=493 starty=240 endx=543 endy=263
Blue direction=1 alignment=0
"LEFT"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=513 starty=480 endx=549 endy=620
labelspace=0 unitspace=0 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUR09 type="FLOAT" width=4 prec=0 label="AFT UPR" 
TNFDLBUR05 type="FLOAT" width=0 prec=0 
TNFDLBLR04 type="FLOAT" width=0 prec=0 
TNFDLALR03 type="FLOAT" width=4 prec=0 label="AFT LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=524 starty=433 endx=560 endy=454
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUT11 type="FLOAT" width=4 prec=0 label="AFT UPR" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=570 starty=479 endx=606 endy=500
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMUR08 type="FLOAT" width=4 prec=0 label="MID UPR" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=572 starty=583 endx=608 endy=604
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMLR02 type="FLOAT" width=4 prec=0 label="MID LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=597 starty=203 endx=633 endy=359
labelspace=0 unitspace=0 spacing=32 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUL03 type="FLOAT" width=4 prec=0 label="FWD UPR" 
TNFDLFML02 type="FLOAT" width=4 prec=0 label="FWD MID" 
TNFDLFLL01 type="FLOAT" width=4 prec=0 label="FWD LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=608 starty=150 endx=644 endy=171
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUT10 type="FLOAT" width=4 prec=0 label="TOP FWD" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=613 starty=435 endx=649 endy=456
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUT10 type="FLOAT" width=4 prec=0 label="FWD TOP" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=629 starty=478 endx=665 endy=634
labelspace=0 unitspace=0 spacing=32 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUR07 type="FLOAT" width=4 prec=0 label="FWD UPR" 
TNFDLFMR06 type="FLOAT" width=4 prec=0 label="FWD MID" 
TNFDLFLR01 type="FLOAT" width=4 prec=0 label="FWD LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=660 starty=307 endx=696 endy=328
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMLL09 type="FLOAT" width=4 prec=0 label="LOWER MID" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=664 starty=201 endx=700 endy=222
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMUL04 type="FLOAT" width=4 prec=0 label="UPPER MID" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=699 starty=232 endx=768 endy=312
labelspace=3 unitspace=0 spacing=20 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLBUL06 type="FLOAT" width=4 prec=0 label="BAC" 
TNFDLBLL07 type="FLOAT" width=4 prec=0 label="BAC" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=708 starty=150 endx=744 endy=171
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUT11 type="FLOAT" width=4 prec=0 label="Top AFT" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=716 starty=522 endx=782 endy=545
Blue direction=1 alignment=0
"RIGHT"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=721 starty=202 endx=757 endy=342
labelspace=0 unitspace=0 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUL05 type="FLOAT" width=4 prec=0 
TNFDLBUL06 type="FLOAT" width=0 prec=0 
TNFDLBLL07 type="FLOAT" width=0 prec=0 
TNFDLALL08 type="FLOAT" width=4 prec=0 
$END-OBJECT
***********
$END-DISPLAY

