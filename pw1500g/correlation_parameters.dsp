$DISPLAY "Correlation Parameters" background=LightGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=101 startx=9 starty=0 endx=709 endy=811
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=10 starty=342 endx=708 endy=344
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=11 starty=577 endx=709 endy=579
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=44 starty=36 endx=337 endy=336
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
$OBJECT Bar font=97 startx=45 starty=597 endx=557 endy=796
labelspace=4 unitspace=1 labelcolor=Black length=155 \
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
$OBJECT Bar font=97 startx=47 starty=365 endx=559 endy=564
labelspace=4 unitspace=1 labelcolor=Black length=155 \
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
$OBJECT Digital font=101 startx=50 starty=859 endx=150 endy=959
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=101 startx=177 starty=5 endx=554 endy=32
Blue direction=1 alignment=1
"PT2    Bellmouth Probes     PS2"
$END-OBJECT
***********
$OBJECT Text font=97 startx=207 starty=349 endx=453 endy=368
Blue direction=1 alignment=1
"PS2 % Diff Bellmouth Probes"
$END-OBJECT
***********
$OBJECT Text font=97 startx=217 starty=581 endx=466 endy=600
Blue direction=1 alignment=1
"PT2 % Diff Bellmouth Probes"
$END-OBJECT
***********
$OBJECT Line font=101 startx=350 starty=33 endx=352 endy=342
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=371 starty=38 endx=664 endy=338
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
$OBJECT Line font=101 startx=719 starty=676 endx=1139 endy=678
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=721 starty=675 endx=1148 endy=894
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Box font=101 startx=722 starty=7 endx=1151 endy=47
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Box font=101 startx=723 starty=54 endx=1147 endy=677
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=726 starty=534 endx=1146 endy=536
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=729 starty=761 endx=1060 endy=825
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS_270 type="FLOAT" width=7 prec=4 label="PS_270" units="default" 
PS_180_01 type="FLOAT" width=7 prec=4 label="PS180_01" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=731 starty=696 endx=1074 endy=760
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS_0 type="FLOAT" width=8 prec=4 label="PS_0" units="default" 
PS_90 type="FLOAT" width=8 prec=4 label="PS90" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=731 starty=822 endx=1062 endy=886
labelspace=8 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PS_180_02 type="FLOAT" width=7 prec=4 label="PS_180_02" units="default" 
PS_180_03 type="FLOAT" width=7 prec=4 label="PS180_03" units="default" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=745 starty=12 endx=1135 endy=42
Magenta direction=1 alignment=0
"CORRELATION PARAMETERS"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=746 starty=101 endx=1122 endy=517
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
$OBJECT Digital font=100 startx=750 starty=541 endx=1138 endy=701
labelspace=11 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PBarPSIA type="FLOAT" width=7 prec=4 label="PBar" units="default" 
PCellFPSIA type="FLOAT" width=7 prec=4 label="PCell Front" units="default" 
PCellRPSIA type="FLOAT" width=7 prec=4 label="PCell Rear" units="default" 
EEC_P25 type="FLOAT" width=7 prec=4 label="P2.5" units="default" 
dummy type="FLOAT" width=0 prec=0 
$END-OBJECT
***********
$OBJECT Text font=103 startx=760 starty=60 endx=1074 endy=90
Blue direction=1 alignment=0
"TEMPERATURE PROBES"
$END-OBJECT
***********
$OBJECT Text font=113 startx=817 starty=677 endx=985 endy=696
Blue direction=1 alignment=0
"COLLECTOR PROBES"
$END-OBJECT
***********
$END-DISPLAY

