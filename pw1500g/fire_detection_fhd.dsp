$DISPLAY "Fire Detection FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=101 startx=375 starty=187 endx=896 endy=712
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=1 startx=415 starty=256 endx=655 endy=716
labelspace=12 unitspace=0 spacing=19 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUL03 type="FLOAT" width=4 prec=0 label="FWD U (3)" 
TNFDLFML02 type="FLOAT" width=4 prec=0 label="FWD M (2)" 
TNFDLFLL01 type="FLOAT" width=4 prec=0 label="FWD L (1)" 
TNFDLMUL04 type="FLOAT" width=4 prec=0 label="MID U (4)" 
TNFDLMLL09 type="FLOAT" width=4 prec=0 label="MID L (9)" 
TNFDLAUL05 type="FLOAT" width=4 prec=0 label="AFT U (5)" 
TNFDLALL08 type="FLOAT" width=4 prec=0 label="AFT L (8)" 
TNFDLBUL06 type="FLOAT" width=4 prec=0 label="BAC U (6)" 
TNFDLBLL07 type="FLOAT" width=4 prec=0 label="BAC L (7)" 
TNFDLFUT10 type="FLOAT" width=4 prec=0 label="TOP F/A (10)" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=522 starty=193 endx=779 endy=220
Blue direction=1 alignment=1
"UNDER COWL TEMPS"
$END-OBJECT
***********
$OBJECT Text font=100 startx=586 starty=226 endx=737 endy=249
Blue direction=1 alignment=0
"LEFT     RIGHT"
$END-OBJECT
***********
$OBJECT Box font=101 startx=619 starty=23 endx=1210 endy=91
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=644 starty=37 endx=1180 endy=76
BurntOrange direction=1 alignment=1
"UNDER COWL TEMPERATURES"
$END-OBJECT
***********
$OBJECT Digital font=1 startx=664 starty=255 endx=859 endy=715
labelspace=0 unitspace=0 spacing=19 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TNFDLFUR07 type="FLOAT" width=4 prec=0 label="FWD U" units="DegC (7)" 
TNFDLFMR06 type="FLOAT" width=4 prec=0 label="FWD M" units="DegC (6)" 
TNFDLFLR01 type="FLOAT" width=4 prec=0 label="FWD L" units="DegC (1)" 
TNFDLMUR08 type="FLOAT" width=4 prec=0 label="MID U" units="DegC (8)" 
TNFDLMLR02 type="FLOAT" width=4 prec=0 label="MID L" units="DegC (2)" 
TNFDLAUR09 type="FLOAT" width=4 prec=0 label="MID U" units="DegC (9)" 
TNFDLALR03 type="FLOAT" width=4 prec=0 label="MID L" units="DegC (3)" 
TNFDLBUR05 type="FLOAT" width=4 prec=0 label="BAC U" units="DegC (5)" 
TNFDLBLR04 type="FLOAT" width=4 prec=0 label="BAC L" units="DegC (4)" 
TNFDLAUT11 type="FLOAT" width=4 prec=0 label="TOP A" units="DegC (11)" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=98 startx=735 starty=738 endx=1075 endy=798
FireDetection_Stat textcolor=Black
Green = 0 "Under Cowl Temp NORMAL"
Green = 7 "Under Cowl Temp NORMAL"
Yellow = 8 "Under Cowl Temp WARNING"
Red = 9 "Under Cowl Temp >>FIRE<<"
$END-OBJECT
***********
$OBJECT Box font=101 startx=918 starty=187 endx=1431 endy=712
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=1 startx=926 starty=253 endx=1106 endy=690
Black direction=1 alignment=2
"FWD UPPER:"
""
"FWD MID  :"
""
"FWD LOWER:"
""
"MID UPPER:"
""
"MID LOWER:"
""
"AFT UPPER:"
""
"AFT LOWER:"
""
"BAC UPPER:"
""
"BAC LOWER:"
""
"TOP FWD AFT:"
$END-OBJECT
***********
$OBJECT Text font=101 startx=1007 starty=192 endx=1374 endy=219
Blue direction=1 alignment=1
"DISABLE UNDER COWL TEMPS"
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=249 endx=1210 endy=294
TOGGLE TNFDLFUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=294 endx=1210 endy=339
TOGGLE TNFDLFML_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=339 endx=1210 endy=384
TOGGLE TNFDLFLL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=384 endx=1210 endy=429
TOGGLE TNFDLMUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=429 endx=1210 endy=474
TOGGLE TNFDLMLL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=474 endx=1210 endy=519
TOGGLE TNFDLAUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=519 endx=1210 endy=564
TOGGLE TNFDLALL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=564 endx=1210 endy=609
TOGGLE TNFDLBUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=609 endx=1210 endy=654
TOGGLE TNFDLBLL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1105 starty=654 endx=1210 endy=699
TOGGLE TNFDLFUT_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Text font=100 startx=1122 starty=223 endx=1364 endy=246
Blue direction=1 alignment=0
"LEFT                  RIGHT"
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=249 endx=1392 endy=294
TOGGLE TNFDLFUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=294 endx=1392 endy=339
TOGGLE TNFDLFMR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=339 endx=1392 endy=384
TOGGLE TNFDLFLR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=384 endx=1392 endy=429
TOGGLE TNFDLMUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=429 endx=1392 endy=474
TOGGLE TNFDLMLR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=474 endx=1392 endy=519
TOGGLE TNFDLAUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=519 endx=1392 endy=564
TOGGLE TNFDLALR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=564 endx=1392 endy=609
TOGGLE TNFDLBUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=609 endx=1392 endy=654
TOGGLE TNFDLBLR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1287 starty=654 endx=1392 endy=699
TOGGLE TNFDLAUT_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$END-DISPLAY

