$DISPLAY "Critical" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$MSGQ
$STOREDISPLAY Append
$OBJECT Line font=101 startx=0 starty=564 endx=1031 endy=567
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=0 starty=758 endx=1025 endy=761
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Bar font=101 startx=5 starty=225 endx=867 endy=281
labelspace=5 unitspace=0 labelcolor=Black length=589 \
height=16 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
N2PctS label="N2" units="(%)" min=0 max=110 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=5 starty=456 endx=951 endy=512
labelspace=5 unitspace=0 labelcolor=Black length=650 \
height=15 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
TOILAC label="Oil Temp" units="default" min=-50 max=200 ticinter=10 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=5 starty=511 endx=928 endy=567
labelspace=5 unitspace=0 labelcolor=Black length=650 \
height=15 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
OILQ label="Oil QTY" units="default" min=0 max=26 ticinter=1 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=6 starty=60 endx=958 endy=116
labelspace=5 unitspace=0 labelcolor=Black length=750 \
height=15 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
EEC_ITT label="ITT" min=0 max=1200 ticinter=50 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=6 starty=169 endx=868 endy=225
labelspace=5 unitspace=0 labelcolor=Black length=589 \
height=16 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
N1PctS label="N1" units="(%)" min=0 max=110 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=6 starty=280 endx=958 endy=336
labelspace=5 unitspace=0 labelcolor=Black length=750 \
height=15 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
WfI label="Wf" min=0 max=8000 ticinter=250 labelinter=4
$END-OBJECT
***********
$OBJECT Bar font=101 startx=6 starty=338 endx=1180 endy=394
labelspace=5 unitspace=1 labelcolor=Black length=750 \
height=15 format=12.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
FNTR2 label="FNTR2" units="Lbs." min=0 max=26000 ticinter=1000 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=6 starty=397 endx=954 endy=453
labelspace=5 unitspace=0 labelcolor=Black length=652 \
height=15 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
POILAC label="MOP" units="default" min=0 max=210 ticinter=10 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=7 starty=113 endx=869 endy=169
labelspace=5 unitspace=0 labelcolor=Black length=589 \
height=16 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
NFPctS label="NFan" units="(%)" min=0 max=110 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=16 starty=35 endx=1187 endy=39
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=101 startx=20 starty=5 endx=197 endy=36
SerialNum labelspace=2 label="SN:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=DarkGray shading=-2
$END-OBJECT
***********
$OBJECT Digital font=97 startx=26 starty=765 endx=423 endy=873
labelspace=13 unitspace=1 spacing=4 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SigOilConsRateNG type="FLOAT" width=7 prec=3 label="Oil Consumption:" units="default" 
N2C2D type="FLOAT" width=7 prec=0 label="N2C2D:" units="default" 
AOP type="FLOAT" width=7 prec=0 label="FGB Aux MOP:" units="default" 
CowlAITemp type="FLOAT" width=7 prec=0 label="Cowl AI Temp:" units="default" 
$END-OBJECT
***********
$OBJECT Bar font=100 startx=27 starty=590 endx=503 endy=746
labelspace=5 unitspace=0 labelcolor=Black length=250 \
height=10 format=5.2 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
VibFNF label="Vib NFan" units="default" min=0 max=1.6 ticinter=0.2 labelinter=2
VibFN1 label="Vib N1" units="default" min=0 max=1.6 ticinter=0.2 labelinter=2
VibFN2 label="Vib N2" units="default" min=0 max=1.6 ticinter=0.2 labelinter=2
$END-OBJECT
***********
$OBJECT Text font=2 startx=229 starty=573 endx=301 endy=589
Blue direction=1 alignment=0
"E-Flange"
$END-OBJECT
***********
$OBJECT String font=101 startx=230 starty=5 endx=458 endy=32
DashNumber labelspace=3 label="Type:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=466 starty=774 endx=709 endy=802
labelspace=5 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2D type="FLOAT" width=6 prec=0 label="N1C2D:" units="default" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=511 starty=566 endx=514 endy=757
linewidth=3 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Bar font=100 startx=530 starty=590 endx=1006 endy=746
labelspace=5 unitspace=0 labelcolor=Black length=250 \
height=10 format=5.2 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
VibRNF label="Vib NFan" units="default" min=0 max=1.6 ticinter=0.2 labelinter=2
VibRN1 label="Vib N1" units="default" min=0 max=1.6 ticinter=0.2 labelinter=2
VibRN2 label="Vib N2" units="default" min=0 max=1.6 ticinter=0.2 labelinter=2
$END-OBJECT
***********
$OBJECT String font=101 startx=535 starty=5 endx=718 endy=36
strAdapter labelspace=2 label="" labelcolor=Blue stringcolor=Blue parambox=0 paramboxcolor=DarkGray shading=-2
$END-OBJECT
***********
$OBJECT Text font=2 startx=709 starty=573 endx=781 endy=589
Blue direction=1 alignment=0
"P-Flange"
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=784 starty=770 endx=989 endy=858
EngStall_F textcolor=Black
DarkGray = 0 "No Engine Stall\nDetected"
Red = 1 "Engine Stall\nDetected"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=880 starty=113 endx=955 endy=278
labelspace=0 unitspace=0 spacing=24 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
NFS type="FLOAT" width=5 prec=0 
N1S type="FLOAT" width=5 prec=0 
N2S type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=98 startx=916 starty=39 endx=1045 endy=59
Blue direction=1 alignment=0
"Obs         Corr"
$END-OBJECT
***********
$OBJECT Text font=101 displayflag=Met4_F startx=936 starty=370 endx=1211 endy=451
Red direction=1 alignment=1
"MET4 PBAR / RELHUM"
"NOT SCANNING"
"Please Reboot"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=950 starty=451 endx=1230 endy=491
UnderCowl_Stat textcolor=Black
Green = 0 ""
Yellow = 1 ""
Red = 2 ""
$END-OBJECT
***********
$OBJECT String font=2 startx=963 starty=464 endx=1035 endy=480
TNFDLMsg labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=2 paramboxcolor=Green shading=0
$END-OBJECT
***********
$OBJECT Digital font=101 startx=984 starty=58 endx=1174 endy=333
labelspace=0 unitspace=1 spacing=24 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
T45OP45C type="FLOAT" width=5 prec=0 units="default" 
NFS type="FLOAT" width=5 prec=0 units="default" 
N1C2D type="FLOAT" width=5 prec=0 units="default" 
N2C2D type="FLOAT" width=5 prec=0 units="default" 
WFPLHCR2 type="FLOAT" width=5 prec=0 units="default" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=990 starty=770 endx=1195 endy=858
BLOWOUT textcolor=Black
DarkGray = 0 "No Flame Out\nDetected"
Red = 1 "Flame Out\nDetected"
$END-OBJECT
***********
$OBJECT Box font=1 startx=1017 starty=498 endx=1190 endy=765
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Digital font=2 startx=1025 starty=507 endx=1189 endy=597
labelspace=6 unitspace=0 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PLA_Actual type="FLOAT" width=6 prec=2 label="PLA" units="default" 
TRA_Actual type="FLOAT" width=6 prec=2 label="TRA ACT" units="Deg" 
EEC_TLA type="FLOAT" width=6 prec=2 label="TLA EEC" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1037 starty=597 endx=1195 endy=629
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SysTime type="HOURS" width=8 prec=0 label="Time" units="" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1037 starty=657 endx=1195 endy=689
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StableEngTmr type="HOURS" width=8 prec=0 label="Stable Time" units="" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=1046 starty=700 endx=1159 endy=723
Black direction=1 alignment=0
"Stable Time"
$END-OBJECT
***********
$OBJECT Text font=100 startx=1077 starty=632 endx=1126 endy=655
Black direction=1 alignment=0
"Time"
$END-OBJECT
***********
$OBJECT Text font=2 startx=1086 starty=48 endx=1149 endy=64
Blue direction=1 alignment=0
"EEC ITT"
$END-OBJECT
***********
$HELP
"Notes:"
""
"ITT Obs is EEC ITT (Deg C)(whichever channel is in control, A_ITT or B_ITT).  "
"The Corrected value is T45OP45 (Deg F) value corrected per manual."
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
""
$END-HELP
$END-DISPLAY

