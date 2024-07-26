$DISPLAY "Critical FHD" background=DarkGray editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$MSGQ
$STOREDISPLAY Append
$OBJECT Line font=101 startx=0 starty=711 endx=1468 endy=712
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=0 starty=912 endx=1468 endy=913
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Bar font=100 startx=12 starty=743 endx=717 endy=899
labelspace=6 unitspace=0 labelcolor=Black length=460 \
height=20 format=5.2 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
VibFNF label="Vib NFan" units="default" min=0 max=1.6 ticinter=0.1 labelinter=2
VibFN1 label="Vib N1" units="default" min=0 max=1.6 ticinter=0.1 labelinter=2
VibFN2 label="Vib N2" units="default" min=0 max=1.6 ticinter=0.1 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=56 endx=1463 endy=112
labelspace=5 unitspace=1 labelcolor=Black length=1050 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
EEC_ITT corr=T45OP45C label="ITT" units="default" min=0 max=1200 ticinter=25 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=127 endx=1197 endy=183
labelspace=5 unitspace=0 labelcolor=Black length=911 \
height=20 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
NFPctS label="NFan" units="(%)" min=0 max=110 ticinter=2.5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=198 endx=1197 endy=254
labelspace=5 unitspace=0 labelcolor=Black length=911 \
height=20 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
N1PctS label="N1" units="(%)" min=0 max=110 ticinter=2.5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=269 endx=1197 endy=325
labelspace=5 unitspace=0 labelcolor=Black length=911 \
height=20 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
N2PctS label="N2" units="(%)" min=0 max=110 ticinter=2.5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 displayflag=NotRunMode startx=13 starty=340 endx=1440 endy=396
labelspace=5 unitspace=1 labelcolor=Black length=1050 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
EEC_WF corr=WFPLHCR2 label="Wf Qec" units="default" min=0 max=2000 ticinter=50 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 displayflag=RunMode startx=13 starty=340 endx=1417 endy=396
labelspace=5 unitspace=0 labelcolor=Black length=1050 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
WfI corr=WFPLHCR2 label="Wf" units="default" min=0 max=8000 ticinter=250 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=411 endx=1449 endy=467
labelspace=5 unitspace=1 labelcolor=Black length=1050 \
height=20 format=11.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
FNTR2 label="FNTR2" units="Lbs" min=0 max=26000 ticinter=1000 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=482 endx=1359 endy=538
labelspace=5 unitspace=0 labelcolor=Black length=1050 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
POILAC label="MOP" units="default" min=0 max=210 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=553 endx=1359 endy=609
labelspace=5 unitspace=0 labelcolor=Black length=1050 \
height=20 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
TOILAC label="Oil Temp" units="default" min=-50 max=200 ticinter=5 labelinter=2
$END-OBJECT
***********
$OBJECT Bar font=101 startx=13 starty=624 endx=1336 endy=680
labelspace=5 unitspace=0 labelcolor=Black length=1050 \
height=20 format=5.1 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
OILQ label="Oil QTY" units="default" min=0 max=26 ticinter=0.5 labelinter=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=16 starty=34 endx=1909 endy=35
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=101 startx=20 starty=2 endx=197 endy=33
SerialNum labelspace=2 label="SN:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=DarkGray shading=-2
$END-OBJECT
***********
$OBJECT Text font=2 startx=21 starty=42 endx=48 endy=58
Blue direction=1 alignment=0
"EEC"
$END-OBJECT
***********
$OBJECT String font=101 startx=230 starty=2 endx=466 endy=29
EngNameNew labelspace=3 label="Type:" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=2 startx=331 starty=722 endx=403 endy=738
Blue direction=1 alignment=0
"E-Flange"
$END-OBJECT
***********
$OBJECT Line font=101 startx=750 starty=712 endx=751 endy=911
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Bar font=100 startx=763 starty=745 endx=1468 endy=901
labelspace=6 unitspace=0 labelcolor=Black length=460 \
height=20 format=5.2 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=4
VibRNF label="Vib NFan" units="default" min=0 max=1.6 ticinter=0.1 labelinter=2
VibRN1 label="Vib N1" units="default" min=0 max=1.6 ticinter=0.1 labelinter=2
VibRN2 label="Vib N2" units="default" min=0 max=1.6 ticinter=0.1 labelinter=2
$END-OBJECT
***********
$OBJECT String font=101 startx=997 starty=2 endx=1180 endy=33
strAdapter labelspace=2 label="" labelcolor=Blue stringcolor=Blue parambox=0 paramboxcolor=DarkGray shading=-2
$END-OBJECT
***********
$OBJECT Text font=2 startx=1083 starty=724 endx=1155 endy=740
Blue direction=1 alignment=0
"P-Flange"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1187 starty=122 endx=1262 endy=302
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
NFS type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
N1S type="FLOAT" width=5 prec=0 
dummy type="FLOAT" width=0 prec=0 
N2S type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=98 startx=1215 starty=35 endx=1332 endy=55
Blue direction=1 alignment=0
"Obs       Corr"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1270 starty=122 endx=1437 endy=302
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
NFS type="FLOAT" width=5 prec=0 units="default" 
dummy type="FLOAT" width=0 prec=0 
N1C2D type="FLOAT" width=5 prec=0 units="default" 
dummy type="FLOAT" width=0 prec=0 
N2C2D type="FLOAT" width=5 prec=0 units="default" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1467 starty=36 endx=1468 endy=931
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=1481 starty=880 endx=1917 endy=928
UnderCowl_Stat textcolor=Black
Green = 0 ""
Yellow = 1 ""
Red = 2 ""
$END-OBJECT
***********
$OBJECT Bar font=2 startx=1484 starty=837 endx=1904 endy=885
labelspace=10 unitspace=0 labelcolor=Black length=247 \
height=9 format=5.1 ticpos=BELOW dir=0 shading=-1 spacing=5 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=3
StageTmrPct label="Stage Timer:" units="%" min=0 max=140 ticinter=10 labelinter=2
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=1486 starty=386 endx=1691 endy=474
EngStall_F textcolor=Black
DarkGray = 0 "No Engine Stall\nDetected"
Red = 1 "Engine Stall\nDetected"
$END-OBJECT
***********
$OBJECT Box font=1 startx=1488 starty=44 endx=1893 endy=379
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=1490 starty=273 endx=1891 endy=274
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=1491 starty=181 endx=1892 endy=182
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=2 startx=1492 starty=477 endx=1622 endy=555
AutoTLADisable_Stat textcolor=Black
Blue = 2 "Auto TRA\nActive"
Green = 1 "PLA TRA\nIn-Range"
Yellow < 1 "PLA TRA NOT\nIn-Range"
$END-OBJECT
***********
$OBJECT String font=100 startx=1496 starty=892 endx=1606 endy=915
TNFDLMsg labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Green shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1500 starty=197 endx=1907 endy=271
labelspace=10 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SigOilConsRateNG type="FLOAT" width=7 prec=3 label=" Oil Consumption:" units="default" 
CowlAITemp type="FLOAT" width=7 prec=0 label="     Cowl AI Temp:" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1505 starty=301 endx=1879 endy=365
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
AOP type="FLOAT" width=5 prec=1 label="FGB Aux MOP:" units="default" 
OFDP type="FLOAT" width=5 prec=1 label=" Oil Filter Diff:" units="default" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=1509 starty=282 endx=1651 endy=302
Blue direction=1 alignment=0
"FAN GEAR BOX"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1544 starty=58 endx=1864 endy=181
labelspace=6 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
PLA_Actual type="FLOAT" width=6 prec=2 label="PLA" units="default" 
TRA_Actual type="FLOAT" width=6 prec=2 label="TRA ACT" units="Deg" 
EEC_TLA type="FLOAT" width=6 prec=2 label="TLA EEC" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1546 starty=689 endx=1842 endy=833
labelspace=7 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StableEngTmr type="HOURS" width=8 prec=0 label="Stable Time:" 
TotalTestTime type="HOURS" width=8 prec=0 label="   Test Time:" 
SysTime type="HOURS" width=8 prec=0 label="           Time:" 
StageTmr type="HOURS" width=8 prec=0 label="Stage Timer:" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=1557 starty=622 endx=1887 endy=657
labelspace=6 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1C2_SLS type="FLOAT" width=5 prec=0 label="N1C2 SLS:" units="default" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=100 startx=1692 starty=386 endx=1897 endy=474
BLOWOUT textcolor=Black
DarkGray = 0 "No Flame Out\nDetected"
Red = 1 "Flame Out\nDetected"
$END-OBJECT
***********
$OBJECT Text font=100 displayflag=Met4_F startx=1698 starty=479 endx=1865 endy=571
Red direction=1 alignment=1
"MET4"
"PBAR / RELHUM"
"NOT SCANNING"
"Please Reboot"
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

