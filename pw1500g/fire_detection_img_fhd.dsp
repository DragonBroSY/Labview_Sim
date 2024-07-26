$DISPLAY "Fire Detection Img FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Image font=101 startx=584 starty=153 endx=1173 endy=433
PW1500G_Side.gif 
$END-OBJECT
***********
$OBJECT Image font=101 startx=585 starty=430 endx=1174 endy=710
PW1500G_Side_R.gif 
$END-OBJECT
***********
$OBJECT Box font=101 startx=601 starty=23 endx=1184 endy=90
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=622 starty=36 endx=1158 endy=75
BurntOrange direction=1 alignment=1
"UNDER COWL TEMPERATURES"
$END-OBJECT
***********
$OBJECT StatusIndicator font=98 startx=704 starty=776 endx=1044 endy=836
FireDetection_Stat textcolor=Black
Green = 0 "Under Cowl Temp NORMAL"
Green = 7 "Under Cowl Temp NORMAL"
Yellow = 8 "Under Cowl Temp WARNING"
Red = 9 "Under Cowl Temp >>FIRE<<"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=712 starty=530 endx=781 endy=600
labelspace=3 unitspace=0 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLBUR05 type="FLOAT" width=4 prec=0 label="BAC UPR" 
TNFDLBLR04 type="FLOAT" width=4 prec=0 label="BAC LOW" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=737 starty=256 endx=787 endy=279
Blue direction=1 alignment=0
"LEFT"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=757 starty=496 endx=793 endy=636
labelspace=0 unitspace=0 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUR09 type="FLOAT" width=4 prec=0 label="AFT UPR" 
TNFDLBUR05 type="FLOAT" width=0 prec=0 
TNFDLBLR04 type="FLOAT" width=0 prec=0 
TNFDLALR03 type="FLOAT" width=4 prec=0 label="AFT LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=768 starty=449 endx=804 endy=470
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUT11 type="FLOAT" width=4 prec=0 label="AFT UPR" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=814 starty=495 endx=850 endy=516
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMUR08 type="FLOAT" width=4 prec=0 label="MID UPR" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=816 starty=599 endx=852 endy=620
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMLR02 type="FLOAT" width=4 prec=0 label="MID LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=841 starty=219 endx=877 endy=375
labelspace=0 unitspace=0 spacing=32 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUL03 type="FLOAT" width=4 prec=0 label="FWD UPR" 
TNFDLFML02 type="FLOAT" width=4 prec=0 label="FWD MID" 
TNFDLFLL01 type="FLOAT" width=4 prec=0 label="FWD LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=852 starty=166 endx=888 endy=187
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUT10 type="FLOAT" width=4 prec=0 label="TOP FWD" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=857 starty=451 endx=893 endy=472
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUT10 type="FLOAT" width=4 prec=0 label="FWD TOP" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=873 starty=494 endx=909 endy=650
labelspace=0 unitspace=0 spacing=32 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUR07 type="FLOAT" width=4 prec=0 label="FWD UPR" 
TNFDLFMR06 type="FLOAT" width=4 prec=0 label="FWD MID" 
TNFDLFLR01 type="FLOAT" width=4 prec=0 label="FWD LOW" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=904 starty=323 endx=940 endy=344
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMLL09 type="FLOAT" width=4 prec=0 label="LOWER MID" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=908 starty=217 endx=944 endy=238
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLMUL04 type="FLOAT" width=4 prec=0 label="UPPER MID" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=943 starty=248 endx=1012 endy=328
labelspace=3 unitspace=0 spacing=20 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLBUL06 type="FLOAT" width=4 prec=0 label="BAC" 
TNFDLBLL07 type="FLOAT" width=4 prec=0 label="BAC" 
$END-OBJECT
***********
$OBJECT Digital font=2 startx=952 starty=166 endx=988 endy=187
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUT11 type="FLOAT" width=4 prec=0 label="Top AFT" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=960 starty=538 endx=1026 endy=561
Blue direction=1 alignment=0
"RIGHT"
$END-OBJECT
***********
$OBJECT Digital font=2 startx=965 starty=218 endx=1001 endy=358
labelspace=0 unitspace=0 spacing=15 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLAUL05 type="FLOAT" width=4 prec=0 
TNFDLBUL06 type="FLOAT" width=0 prec=0 
TNFDLBLL07 type="FLOAT" width=0 prec=0 
TNFDLALL08 type="FLOAT" width=4 prec=0 
$END-OBJECT
***********
$END-DISPLAY

