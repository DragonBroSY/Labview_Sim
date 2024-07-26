$DISPLAY "Fire Detection" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=101 startx=95 starty=171 endx=616 endy=696
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=1 startx=135 starty=240 endx=375 endy=700
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
$OBJECT Text font=101 startx=242 starty=177 endx=499 endy=204
Blue direction=1 alignment=1
"UNDER COWL TEMPS"
$END-OBJECT
***********
$OBJECT Text font=100 startx=306 starty=210 endx=457 endy=233
Blue direction=1 alignment=0
"LEFT     RIGHT"
$END-OBJECT
***********
$OBJECT Digital font=1 startx=384 starty=239 endx=579 endy=699
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
$OBJECT Box font=101 startx=390 starty=7 endx=856 endy=86
style=1
linewidth=4 linecolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=102 startx=431 starty=34 endx=824 endy=63
Blue direction=1 alignment=1
"UNDER COWL TEMPERATURES"
$END-OBJECT
***********
$OBJECT StatusIndicator font=98 startx=455 starty=722 endx=795 endy=782
FireDetection_Stat textcolor=Black
Green = 0 "Under Cowl Temp NORMAL"
Green = 7 "Under Cowl Temp NORMAL"
Yellow = 8 "Under Cowl Temp WARNING"
Red = 9 "Under Cowl Temp >>FIRE<<"
$END-OBJECT
***********
$OBJECT Box font=101 startx=638 starty=171 endx=1151 endy=696
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=1 startx=646 starty=237 endx=826 endy=674
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
$OBJECT Text font=101 startx=727 starty=176 endx=1094 endy=203
Blue direction=1 alignment=1
"DISABLE UNDER COWL TEMPS"
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=233 endx=930 endy=278
TOGGLE TNFDLFUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=278 endx=930 endy=323
TOGGLE TNFDLFML_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=323 endx=930 endy=368
TOGGLE TNFDLFLL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=368 endx=930 endy=413
TOGGLE TNFDLMUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=413 endx=930 endy=458
TOGGLE TNFDLMLL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=458 endx=930 endy=503
TOGGLE TNFDLAUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=503 endx=930 endy=548
TOGGLE TNFDLALL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=548 endx=930 endy=593
TOGGLE TNFDLBUL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=593 endx=930 endy=638
TOGGLE TNFDLBLL_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=825 starty=638 endx=930 endy=683
TOGGLE TNFDLFUT_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Text font=100 startx=842 starty=207 endx=1084 endy=230
Blue direction=1 alignment=0
"LEFT                  RIGHT"
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=233 endx=1112 endy=278
TOGGLE TNFDLFUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=278 endx=1112 endy=323
TOGGLE TNFDLFMR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=323 endx=1112 endy=368
TOGGLE TNFDLFLR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=368 endx=1112 endy=413
TOGGLE TNFDLMUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=413 endx=1112 endy=458
TOGGLE TNFDLMLR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=458 endx=1112 endy=503
TOGGLE TNFDLAUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=503 endx=1112 endy=548
TOGGLE TNFDLALR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=548 endx=1112 endy=593
TOGGLE TNFDLBUR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=593 endx=1112 endy=638
TOGGLE TNFDLBLR_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=97 startx=1007 starty=638 endx=1112 endy=683
TOGGLE TNFDLAUT_F setvalue=-1 onlabel="Disabled" offlabel="Enabled" \
labelcolor=Black oncolor=Magenta offcolor=LightGray
$END-OBJECT
***********
$END-DISPLAY

