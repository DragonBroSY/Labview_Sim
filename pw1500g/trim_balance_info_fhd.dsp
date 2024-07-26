$DISPLAY "Trim Balance Info FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#if	ResetPeakTBData_TB
VibFNFPkTB:IPS	0.0
VibFNFPkNFTB:RPM	0.0
VibFNFPkN1TB:RPM	0.0
VibFNFPkN2TB:RPM	0.0
FANWGTPk:oz-in	0.0
FANANGPk:Deg	0.0
FANWGTPk_oz:oz	0.0
VibFNFPkTime:	concat ("" "Reset Time")
VibFNFPkDate:	concat ("" "Reset Date")
ResetPeakTBData_TB:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Box font=101 startx=331 starty=110 endx=617 endy=603
style=2
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT String font=97 startx=347 starty=478 endx=577 endy=501
VibFNFPkTime labelspace=6 label="Time:" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=97 startx=348 starty=249 endx=595 endy=445
labelspace=6 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNFPkTB type="FLOAT" width=5 prec=2 label="NF Amp" units="default" 
FANWGTPk type="FLOAT" width=5 prec=0 label="Magnitude" units="default" 
FANANGPk type="FLOAT" width=5 prec=0 label="Angle" units="default" 
FANWGTPk_oz type="FLOAT" width=5 prec=0 label="Total Wt." units="default" 
VibFNFPkNFTB type="FLOAT" width=5 prec=0 label="NF" units="default" 
VibFNFPkN1TB type="FLOAT" width=5 prec=0 label="N1" units="default" 
VibFNFPkN2TB type="FLOAT" width=5 prec=0 label="N2" units="default" 
$END-OBJECT
***********
$OBJECT String font=97 startx=348 starty=450 endx=573 endy=473
VibFNFPkDate labelspace=6 label="Date:" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Line font=101 startx=348 starty=653 endx=1533 endy=655
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Button font=100 startx=357 starty=520 endx=580 endy=580
TOGGLE ResetPeakTBData_TB setvalue=-1 onlabel="Reset Peak TB Data" offlabel="Reset Peak TB Data" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT String font=98 startx=363 starty=682 endx=510 endy=706
FanWeight1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=363 starty=714 endx=510 endy=738
FanWeight2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=363 starty=747 endx=510 endy=771
FanWeight3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=363 starty=779 endx=510 endy=803
FanWeight4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=363 starty=811 endx=510 endy=835
FanWeight5 labelspace=2 label="#5" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=377 starty=657 endx=570 endy=677
Blue direction=1 alignment=0
"Fan Spring Wts    Loc"
$END-OBJECT
***********
$OBJECT Text font=98 startx=381 starty=228 endx=500 endy=248
Yellow direction=1 alignment=0
"NF:         IMC"
$END-OBJECT
***********
$OBJECT Text font=103 startx=385 starty=131 endx=576 endy=221
Blue direction=1 alignment=1
"Peak"
"Trim Balance"
"Vibration Info "
$END-OBJECT
***********
$OBJECT Text font=100 startx=510 starty=633 endx=725 endy=656
Magenta direction=1 alignment=0
"FINAL FAN WEIGHTS"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=542 starty=683 endx=564 endy=843
labelspace=0 unitspace=0 spacing=8 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FanWeightLoc1 type="FLOAT" width=2 prec=0 
FanWeightLoc2 type="FLOAT" width=2 prec=0 
FanWeightLoc3 type="FLOAT" width=2 prec=0 
FanWeightLoc4 type="FLOAT" width=2 prec=0 
FanWeightLoc5 type="FLOAT" width=2 prec=0 
$END-OBJECT
***********
$OBJECT Text font=98 startx=592 starty=807 endx=930 endy=867
Yellow direction=1 alignment=1
"NOTE: USE the Inputwindow TrimBal"
"to Change Final Trim Balance"
"Weights/Rivets and Locations."
$END-OBJECT
***********
$OBJECT String font=98 startx=613 starty=682 endx=745 endy=706
FanRivet1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=613 starty=710 endx=745 endy=734
FanRivet2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=613 starty=739 endx=745 endy=763
FanRivet3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=613 starty=767 endx=745 endy=791
FanRivet4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=620 starty=657 endx=866 endy=677
Blue direction=1 alignment=0
"Fan Rivet Wts       Location"
$END-OBJECT
***********
$OBJECT Text font=2 startx=692 starty=413 endx=764 endy=445
Yellow direction=1 alignment=2
"  Best->"
"Solution"
$END-OBJECT
***********
$OBJECT Text font=103 startx=743 starty=131 endx=1113 endy=161
Blue direction=1 alignment=1
"Trim Balance Vibration Info "
$END-OBJECT
***********
$OBJECT Box font=101 startx=754 starty=11 endx=1121 endy=69
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT String font=98 startx=764 starty=682 endx=894 endy=706
FanRivetLoc1 labelspace=0 label="Fan Rivet Wt #1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=764 starty=710 endx=894 endy=734
FanRivetLoc2 labelspace=0 label="Fan Rivet Wt #2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=764 starty=739 endx=894 endy=763
FanRivetLoc3 labelspace=0 label="Fan Rivet Wt #3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=764 starty=767 endx=894 endy=791
FanRivetLoc4 labelspace=0 label="Fan Rivet Wt #4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=97 startx=767 starty=193 endx=1030 endy=277
labelspace=6 unitspace=2 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_VIBFNF type="FLOAT" width=5 prec=2 label="NF Amp" 
FANWGT type="FLOAT" width=5 prec=0 label="Magnitude" units="default" 
FANANG type="FLOAT" width=5 prec=0 label="Angle" units="default" 
$END-OBJECT
***********
$OBJECT Button font=98 startx=774 starty=568 endx=1077 endy=632
PHASE CopyFinalFanWts_ATP setvalue=-1 onlabel="Copy As Received Weights\nto Final Fan Weights" offlabel="Copy As Received Weights\nto Final Fan Weights" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=96 startx=784 starty=21 endx=1096 endy=60
BurntOrange direction=1 alignment=0
"Trim Balance Info"
$END-OBJECT
***********
$OBJECT Button font=100 startx=784 starty=474 endx=1062 endy=538
PHASE storeTrimBalData_ATP setvalue=-1 onlabel="Store Performance\nTrim Balance Data" offlabel="Store Performance\nTrim Balance Data" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT String font=97 startx=787 starty=328 endx=849 endy=347
BandA_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band A"
Black = OFF "Band A"
$END-OBJECT
***********
$OBJECT String font=97 startx=787 starty=356 endx=846 endy=375
BandB_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band B"
Black = OFF "Band B"
$END-OBJECT
***********
$OBJECT String font=97 startx=787 starty=385 endx=847 endy=404
BandC_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band C"
Black = OFF "Band C"
$END-OBJECT
***********
$OBJECT String font=97 startx=787 starty=413 endx=848 endy=432
BandD_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band D"
Black = OFF "Band D"
$END-OBJECT
***********
$OBJECT String font=97 startx=787 starty=442 endx=848 endy=461
BandO_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Other"
Black = OFF "Other"
$END-OBJECT
***********
$OBJECT Text font=98 startx=800 starty=172 endx=1031 endy=192
Yellow direction=1 alignment=0
"NF:         IMC      P-Flange"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=858 starty=325 endx=913 endy=465
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANWGT_A type="FLOAT" width=5 prec=0 label="Band A" 
FANWGT_B type="FLOAT" width=5 prec=0 label="Band B" 
FANWGT_C type="FLOAT" width=5 prec=0 label="Band C" 
FANWGT_D type="FLOAT" width=5 prec=0 label="Band D" 
FANWGT_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=865 starty=292 endx=982 endy=324
Yellow direction=1 alignment=0
" Mag    Angle"
"OZ-IN    Deg"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=930 starty=325 endx=985 endy=465
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANANG_A type="FLOAT" width=5 prec=0 label="Band A" 
FANANG_B type="FLOAT" width=5 prec=0 label="Band B" 
FANANG_C type="FLOAT" width=5 prec=0 label="Band C" 
FANANG_D type="FLOAT" width=5 prec=0 label="Band D" 
FANANG_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=951 starty=655 endx=953 endy=896
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=97 startx=959 starty=192 endx=1078 endy=216
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_VIBRNF type="FLOAT" width=5 prec=2 units="default" 
$END-OBJECT
***********
$OBJECT String font=98 startx=964 starty=682 endx=1111 endy=706
ARFanWeight1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=964 starty=714 endx=1111 endy=738
ARFanWeight2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=964 starty=747 endx=1111 endy=771
ARFanWeight3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=964 starty=779 endx=1111 endy=803
ARFanWeight4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=964 starty=811 endx=1111 endy=835
ARFanWeight5 labelspace=2 label="#5" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=978 starty=657 endx=1171 endy=677
Blue direction=1 alignment=0
"Fan Spring Wts    Loc"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=1110 starty=377 endx=1400 endy=401
labelspace=11 unitspace=1 spacing=1 labelcolor=Magenta parambox=2 paramboxcolor=Black shading=-2
FANWGT_oz type="FLOAT" width=6 prec=3 label="Band D OZ-IN / 8 =" units="OZ" 
$END-OBJECT
***********
$OBJECT Text font=100 startx=1118 starty=629 endx=1406 endy=652
Magenta direction=1 alignment=0
"AS RECEIVED FAN WEIGHTS"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=1143 starty=683 endx=1165 endy=843
labelspace=0 unitspace=0 spacing=8 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ARFanWeightLoc1 type="FLOAT" width=2 prec=0 
ARFanWeightLoc2 type="FLOAT" width=2 prec=0 
ARFanWeightLoc3 type="FLOAT" width=2 prec=0 
ARFanWeightLoc4 type="FLOAT" width=2 prec=0 
ARFanWeightLoc5 type="FLOAT" width=2 prec=0 
$END-OBJECT
***********
$OBJECT Text font=97 startx=1162 starty=351 endx=1354 endy=370
Yellow direction=1 alignment=0
"Total TB Weight in oz."
$END-OBJECT
***********
$OBJECT Text font=2 startx=1190 starty=873 endx=1523 endy=889
Red direction=1 alignment=0
"NOTE: DO NOT REMOVE HUB RIVET WEIGHTS"
$END-OBJECT
***********
$OBJECT String font=98 startx=1214 starty=682 endx=1346 endy=706
ARFanRivet1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1214 starty=710 endx=1346 endy=734
ARFanRivet2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1214 starty=739 endx=1346 endy=763
ARFanRivet3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1214 starty=767 endx=1346 endy=791
ARFanRivet4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1214 starty=819 endx=1518 endy=843
HubRivetLoc1 labelspace=10 label="Hub Rivet Wt #1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1214 starty=846 endx=1518 endy=870
HubRivetLoc2 labelspace=10 label="Hub Rivet Wt #2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=1220 starty=798 endx=1470 endy=818
Blue direction=1 alignment=0
"Hub Rivet Wts       Location"
$END-OBJECT
***********
$OBJECT Text font=98 startx=1221 starty=659 endx=1467 endy=679
Blue direction=1 alignment=0
"Fan Rivet Wts       Location"
$END-OBJECT
***********
$OBJECT String font=98 startx=1388 starty=683 endx=1518 endy=707
ARFanRivetLoc1 labelspace=0 label="Fan Rivet Wt #1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1388 starty=711 endx=1518 endy=735
ARFanRivetLoc2 labelspace=0 label="Fan Rivet Wt #2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1388 starty=740 endx=1518 endy=764
ARFanRivetLoc3 labelspace=0 label="Fan Rivet Wt #3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1388 starty=768 endx=1518 endy=792
ARFanRivetLoc4 labelspace=0 label="Fan Rivet Wt #4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Box font=101 startx=1481 starty=95 endx=1829 endy=415
style=3
linewidth=2 linecolor=Cyan
boxcolor=White
shading=2
$END-OBJECT
***********
$OBJECT Text font=98 startx=1481 starty=534 endx=1837 endy=574
Yellow direction=1 alignment=1
"NOTE: FOR BEST POSSIBLE SOLUTION"
"USE BAND D DATA ONLY"
$END-OBJECT
***********
$OBJECT Text font=98 startx=1483 starty=585 endx=1856 endy=625
Yellow direction=1 alignment=1
"NOTE: DO NOT USE THE CENTER HOLES"
"ON EACH TAB FOR SPRING WEIGHTS"
$END-OBJECT
***********
$OBJECT Text font=98 startx=1487 starty=424 endx=1803 endy=524
Yellow direction=1 alignment=0
"NOTE: Use the chart above to"
"calculate the weights needed."
""
"NOTE: DO NOT exceed 5 weights"
"including the center rivet weights."
$END-OBJECT
***********
$OBJECT Text font=97 startx=1497 starty=111 endx=1812 endy=396
Magenta direction=1 alignment=0
"         Trim Balance Weights"
""
"                      Actual Wt."
"        P/N              oz            oz-in"
"51A591-01CL1 = 0.236 x 8 = ~1.86"
""
"51A591-01CL2 = 0.474 x 8 = ~3.76"
""
"51A592-01CL1 = 0.710 x 8 = ~5.60"
""
"51A592-01CL2 = 0.955 x 8 = ~7.43"
""
"51A592-01CL3 = 1.204 x 8 = ~9.24"
""
"51A597-01CL1 = 1.603 x 8 = ~12.31"
$END-OBJECT
***********
$END-DISPLAY

