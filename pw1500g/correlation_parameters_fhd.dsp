$DISPLAY "Correlation Parameters FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Digital font=101 startx=50 starty=859 endx=150 endy=959
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=248 starty=7 endx=948 endy=899
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=248 starty=619 endx=946 endy=621
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=250 starty=348 endx=948 endy=350
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Bar font=97 startx=274 starty=380 endx=786 endy=614
labelspace=4 unitspace=1 labelcolor=Black length=190 \
height=10 format=5.3 ticpos=BELOW dir=1 shading=-1 spacing=20 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=2
PS2D_B label="B" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_E label="E" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_H label="H" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_K label="K" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_N label="N" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_Q label="Q" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_T label="T" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
PS2D_W label="W" min=-0.4 max=0.8 ticinter=0.1 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=97 startx=280 starty=653 endx=792 endy=887
labelspace=4 unitspace=1 labelcolor=Black length=190 \
height=10 format=5.3 ticpos=BELOW dir=1 shading=-1 spacing=20 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=2
PS2D_B label="B" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_E label="E" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_H label="H" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_K label="K" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_N label="N" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_Q label="Q" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_T label="T" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
PS2D_W label="W" min=-0.2 max=0.2 ticinter=0.1 labelinter=1
$END-OBJECT
***********
$OBJECT Digital font=100 startx=284 starty=42 endx=577 endy=342
labelspace=6 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
P2_BA type="FLOAT" width=7 prec=4 label="P2-B" units="default" 
P2_EA type="FLOAT" width=7 prec=4 label="P2-E" units="default" 
P2_HA type="FLOAT" width=7 prec=4 label="P2-H" units="default" 
P2_KA type="FLOAT" width=7 prec=4 label="P2-K" units="default" 
P2_NA type="FLOAT" width=7 prec=4 label="P2-N" units="default" 
P2_QA type="FLOAT" width=7 prec=4 label="P2-Q" units="default" 
P2_TA type="FLOAT" width=7 prec=4 label="P2-T" units="default" 
P2_WA type="FLOAT" width=7 prec=4 label="P2-W" units="default" 
P2_Avg type="FLOAT" width=7 prec=4 label="P2-Avg" units="default" 
P2_Spread type="FLOAT" width=7 prec=4 label="Pt2-Spread" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=417 starty=11 endx=794 endy=38
Blue direction=1 alignment=1
"PT2    Bellmouth Probes     PS2"
$END-OBJECT
***********
$OBJECT Text font=97 startx=447 starty=359 endx=693 endy=378
Blue direction=1 alignment=1
"PS2 % Diff Bellmouth Probes"
$END-OBJECT
***********
$OBJECT Text font=97 startx=456 starty=631 endx=705 endy=650
Blue direction=1 alignment=1
"PT2 % Diff Bellmouth Probes"
$END-OBJECT
***********
$OBJECT Line font=101 startx=590 starty=39 endx=592 endy=348
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=611 starty=44 endx=904 endy=344
labelspace=6 unitspace=1 spacing=3 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS2_BA type="FLOAT" width=7 prec=4 label="PS2-B" units="default" 
PS2_EA type="FLOAT" width=7 prec=4 label="PS2-E" units="default" 
PS2_HA type="FLOAT" width=7 prec=4 label="PS2-H" units="default" 
PS2_KA type="FLOAT" width=7 prec=4 label="PS2-K" units="default" 
PS2_NA type="FLOAT" width=7 prec=4 label="PS2-N" units="default" 
PS2_QA type="FLOAT" width=7 prec=4 label="PS2-Q" units="default" 
PS2_TA type="FLOAT" width=7 prec=4 label="PS2-T" units="default" 
PS2_WA type="FLOAT" width=7 prec=4 label="PS2-W" units="default" 
PS2_Avg type="FLOAT" width=7 prec=4 label="PS2-Avg" units="default" 
PS2_Spread type="FLOAT" width=7 prec=4 label="PS2-Spread" units="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=996 starty=4 endx=1425 endy=53
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Box font=101 startx=997 starty=54 endx=1421 endy=898
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=999 starty=672 endx=1419 endy=674
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=1000 starty=534 endx=1420 endy=536
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=95 startx=1012 starty=11 endx=1403 endy=41
BurntOrange direction=1 alignment=0
"CORRELATION PARAMETERS"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1017 starty=542 endx=1405 endy=670
labelspace=11 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PBarPSIA type="FLOAT" width=7 prec=4 label="PBar" units="default" 
PCellFPSIA type="FLOAT" width=7 prec=4 label="PCell Front" units="default" 
PCellRPSIA type="FLOAT" width=7 prec=4 label="PCell Rear" units="default" 
EEC_P25 type="FLOAT" width=7 prec=4 label="P2.5" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1020 starty=101 endx=1396 endy=517
labelspace=11 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
BMT1 type="FLOAT" width=6 prec=2 label="Bellmouth Temp #1" units="default" 
BMT2 type="FLOAT" width=6 prec=2 label="Bellmouth Temp #2" units="default" 
BMT3 type="FLOAT" width=6 prec=2 label="Bellmouth Temp #3" units="default" 
BMT4 type="FLOAT" width=6 prec=2 label="Bellmouth Temp #4" units="default" 
BMT_Avg type="FLOAT" width=6 prec=2 label="BM Temp Average" units="default" 
BMT_Spread type="FLOAT" width=6 prec=2 label="BM Temp Spread" units="default" 
OATDegF type="FLOAT" width=6 prec=2 label="OAT" units="default" 
OATDegC type="FLOAT" width=6 prec=2 label="OAT" units="default" 
CITC_1 type="FLOAT" width=6 prec=2 label="CIT 1" units="default" 
CITC_2 type="FLOAT" width=6 prec=2 label="CIT 2" units="default" 
CITC_3 type="FLOAT" width=6 prec=2 label="CIT 3" units="default" 
CITC_4 type="FLOAT" width=6 prec=2 label="CIT 4" units="default" 
CIT_MaxSpread type="FLOAT" width=6 prec=2 label="CIT Spread" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=1034 starty=60 endx=1348 endy=90
Blue direction=1 alignment=0
"TEMPERATURE PROBES"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1071 starty=701 endx=1414 endy=893
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS_0 type="FLOAT" width=8 prec=4 label="PS 0" units="default" 
PS_90 type="FLOAT" width=8 prec=4 label="PS 90" units="default" 
PS_270 type="FLOAT" width=8 prec=4 label="PS 270" units="default" 
PS_180_01 type="FLOAT" width=8 prec=4 label="PS 180 01" units="default" 
PS_180_02 type="FLOAT" width=8 prec=4 label="PS 180 02" units="default" 
PS_180_03 type="FLOAT" width=8 prec=4 label="PS 180 03" units="default" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=1091 starty=677 endx=1300 endy=700
Blue direction=1 alignment=0
"COLLECTOR PROBES"
$END-OBJECT
***********
$END-DISPLAY

