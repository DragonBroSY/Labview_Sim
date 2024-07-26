$DISPLAY "Trim Balance Info" background=DarkGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Line font=101 startx=16 starty=658 endx=1201 endy=660
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=98 startx=31 starty=687 endx=178 endy=711
FanWeight1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=31 starty=719 endx=178 endy=743
FanWeight2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=31 starty=752 endx=178 endy=776
FanWeight3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=31 starty=784 endx=178 endy=808
FanWeight4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=31 starty=816 endx=178 endy=840
FanWeight5 labelspace=2 label="#5" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=45 starty=662 endx=238 endy=682
Blue direction=1 alignment=0
"Fan Spring Wts    Loc"
$END-OBJECT
***********
$OBJECT Box font=101 startx=47 starty=83 endx=333 endy=576
style=2
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT String font=97 startx=63 starty=451 endx=293 endy=474
VibFNFPkTime labelspace=6 label="Time:" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=97 startx=64 starty=222 endx=311 endy=418
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
$OBJECT String font=97 startx=64 starty=423 endx=289 endy=446
VibFNFPkDate labelspace=6 label="Date:" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Button font=100 startx=73 starty=493 endx=296 endy=553
TOGGLE ResetPeakTBData_TB setvalue=-1 onlabel="Reset Peak TB Data" offlabel="Reset Peak TB Data" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=98 startx=97 starty=201 endx=216 endy=221
Yellow direction=1 alignment=0
"NF:         IMC"
$END-OBJECT
***********
$OBJECT Text font=103 startx=101 starty=104 endx=292 endy=194
Blue direction=1 alignment=1
"Peak"
"Trim Balance"
"Vibration Info "
$END-OBJECT
***********
$OBJECT Text font=100 startx=178 starty=638 endx=393 endy=661
Magenta direction=1 alignment=0
"FINAL FAN WEIGHTS"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=210 starty=688 endx=232 endy=848
labelspace=0 unitspace=0 spacing=8 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FanWeightLoc1 type="FLOAT" width=2 prec=0 
FanWeightLoc2 type="FLOAT" width=2 prec=0 
FanWeightLoc3 type="FLOAT" width=2 prec=0 
FanWeightLoc4 type="FLOAT" width=2 prec=0 
FanWeightLoc5 type="FLOAT" width=2 prec=0 
$END-OBJECT
***********
$OBJECT Text font=98 startx=260 starty=812 endx=598 endy=872
Yellow direction=1 alignment=1
"NOTE: USE the Inputwindow TrimBal"
"to Change Final Trim Balance"
"Weights/Rivets and Locations."
$END-OBJECT
***********
$OBJECT String font=98 startx=281 starty=687 endx=413 endy=711
FanRivet1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=281 starty=715 endx=413 endy=739
FanRivet2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=281 starty=744 endx=413 endy=768
FanRivet3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=281 starty=772 endx=413 endy=796
FanRivet4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=288 starty=662 endx=534 endy=682
Blue direction=1 alignment=0
"Fan Rivet Wts       Location"
$END-OBJECT
***********
$OBJECT Text font=2 startx=363 starty=439 endx=435 endy=471
Yellow direction=1 alignment=2
"  Best->"
"Solution"
$END-OBJECT
***********
$OBJECT Text font=100 startx=375 starty=566 endx=1173 endy=589
Yellow direction=1 alignment=0
"NOTE: DO NOT USE THE CENTER HOLES ON EACH TAB FOR SPRING WEIGHTS"
$END-OBJECT
***********
$OBJECT Text font=103 startx=413 starty=142 endx=783 endy=172
Blue direction=1 alignment=1
"Trim Balance Vibration Info "
$END-OBJECT
***********
$OBJECT Box font=101 startx=422 starty=16 endx=789 endy=74
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT String font=98 startx=432 starty=687 endx=562 endy=711
FanRivetLoc1 labelspace=0 label="Fan Rivet Wt #1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=432 starty=715 endx=562 endy=739
FanRivetLoc2 labelspace=0 label="Fan Rivet Wt #2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=432 starty=744 endx=562 endy=768
FanRivetLoc3 labelspace=0 label="Fan Rivet Wt #3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=432 starty=772 endx=562 endy=796
FanRivetLoc4 labelspace=0 label="Fan Rivet Wt #4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=97 startx=437 starty=204 endx=700 endy=288
labelspace=6 unitspace=2 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_VIBFNF type="FLOAT" width=5 prec=2 label="NF Amp" 
FANWGT type="FLOAT" width=5 prec=0 label="Magnitude" units="default" 
FANANG type="FLOAT" width=5 prec=0 label="Angle" units="default" 
$END-OBJECT
***********
$OBJECT Button font=98 startx=445 starty=594 endx=748 endy=658
PHASE CopyFinalFanWts_ATP setvalue=-1 onlabel="Copy As Received Weights\nto Final Fan Weights" offlabel="Copy As Received Weights\nto Final Fan Weights" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=104 startx=452 starty=26 endx=757 endy=65
Orange direction=1 alignment=0
"Trim Balance Info"
$END-OBJECT
***********
$OBJECT Button font=100 startx=455 starty=500 endx=733 endy=564
PHASE storeTrimBalData_ATP setvalue=-1 onlabel="Store Performance\nTrim Balance Data" offlabel="Store Performance\nTrim Balance Data" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT String font=97 startx=458 starty=354 endx=520 endy=373
BandA_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band A"
Black = OFF "Band A"
$END-OBJECT
***********
$OBJECT String font=97 startx=458 starty=382 endx=517 endy=401
BandB_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band B"
Black = OFF "Band B"
$END-OBJECT
***********
$OBJECT String font=97 startx=458 starty=411 endx=518 endy=430
BandC_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band C"
Black = OFF "Band C"
$END-OBJECT
***********
$OBJECT String font=97 startx=458 starty=439 endx=519 endy=458
BandD_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Band D"
Black = OFF "Band D"
$END-OBJECT
***********
$OBJECT String font=97 startx=458 starty=468 endx=519 endy=487
BandO_F labelspace=0 label="" labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=Black shading=0
Yellow = ON "Other"
Black = OFF "Other"
$END-OBJECT
***********
$OBJECT Text font=98 startx=470 starty=183 endx=701 endy=203
Yellow direction=1 alignment=0
"NF:         IMC      P-Flange"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=529 starty=351 endx=584 endy=491
labelspace=0 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANWGT_A type="FLOAT" width=5 prec=0 label="Band A" 
FANWGT_B type="FLOAT" width=5 prec=0 label="Band B" 
FANWGT_C type="FLOAT" width=5 prec=0 label="Band C" 
FANWGT_D type="FLOAT" width=5 prec=0 label="Band D" 
FANWGT_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=536 starty=318 endx=653 endy=350
Yellow direction=1 alignment=0
" Mag    Angle"
"OZ-IN    Deg"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=601 starty=351 endx=656 endy=491
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
FANANG_A type="FLOAT" width=5 prec=0 label="Band A" 
FANANG_B type="FLOAT" width=5 prec=0 label="Band B" 
FANANG_C type="FLOAT" width=5 prec=0 label="Band C" 
FANANG_D type="FLOAT" width=5 prec=0 label="Band D" 
FANANG_O type="FLOAT" width=5 prec=0 label="Other" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=606 starty=660 endx=608 endy=901
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=97 startx=629 starty=203 endx=748 endy=227
labelspace=0 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_VIBRNF type="FLOAT" width=5 prec=2 units="default" 
$END-OBJECT
***********
$OBJECT String font=98 startx=632 starty=687 endx=779 endy=711
ARFanWeight1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=632 starty=719 endx=779 endy=743
ARFanWeight2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=632 starty=752 endx=779 endy=776
ARFanWeight3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=632 starty=784 endx=779 endy=808
ARFanWeight4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=632 starty=816 endx=779 endy=840
ARFanWeight5 labelspace=2 label="#5" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=646 starty=662 endx=839 endy=682
Blue direction=1 alignment=0
"Fan Spring Wts    Loc"
$END-OBJECT
***********
$OBJECT Digital font=97 startx=677 starty=435 endx=967 endy=459
labelspace=11 unitspace=1 spacing=1 labelcolor=Magenta parambox=2 paramboxcolor=Black shading=-2
FANWGT_oz type="FLOAT" width=6 prec=3 label="Band D OZ-IN / 8 =" units="OZ" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=692 starty=464 endx=1223 endy=496
Yellow direction=1 alignment=0
"Use the chart above to calculate the weights needed."
"DO NOT exceed 5 weights including the center rivet weights."
$END-OBJECT
***********
$OBJECT Text font=98 startx=760 starty=512 endx=1116 endy=552
Yellow direction=1 alignment=1
"NOTE: FOR BEST POSSIBLE SOLUTION"
"USE BAND D DATA ONLY"
$END-OBJECT
***********
$OBJECT Text font=100 startx=781 starty=637 endx=1069 endy=660
Magenta direction=1 alignment=0
"AS RECEIVED FAN WEIGHTS"
$END-OBJECT
***********
$OBJECT Text font=97 startx=788 starty=408 endx=980 endy=427
Yellow direction=1 alignment=0
"Total TB Weight in oz."
$END-OBJECT
***********
$OBJECT Digital font=98 startx=811 starty=688 endx=833 endy=848
labelspace=0 unitspace=0 spacing=8 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
ARFanWeightLoc1 type="FLOAT" width=2 prec=0 
ARFanWeightLoc2 type="FLOAT" width=2 prec=0 
ARFanWeightLoc3 type="FLOAT" width=2 prec=0 
ARFanWeightLoc4 type="FLOAT" width=2 prec=0 
ARFanWeightLoc5 type="FLOAT" width=2 prec=0 
$END-OBJECT
***********
$OBJECT Box font=101 startx=836 starty=81 endx=1184 endy=401
style=3
linewidth=2 linecolor=Cyan
boxcolor=White
shading=2
$END-OBJECT
***********
$OBJECT Text font=97 startx=852 starty=97 endx=1167 endy=382
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
$OBJECT Text font=2 startx=858 starty=878 endx=1191 endy=894
Red direction=1 alignment=0
"NOTE: DO NOT REMOVE HUB RIVET WEIGHTS"
$END-OBJECT
***********
$OBJECT String font=98 startx=882 starty=687 endx=1014 endy=711
ARFanRivet1 labelspace=2 label="#1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=882 starty=715 endx=1014 endy=739
ARFanRivet2 labelspace=2 label="#2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=882 starty=744 endx=1014 endy=768
ARFanRivet3 labelspace=2 label="#3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=882 starty=772 endx=1014 endy=796
ARFanRivet4 labelspace=2 label="#4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=882 starty=824 endx=1186 endy=848
HubRivetLoc1 labelspace=10 label="Hub Rivet Wt #1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=882 starty=851 endx=1186 endy=875
HubRivetLoc2 labelspace=10 label="Hub Rivet Wt #2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=888 starty=803 endx=1138 endy=823
Blue direction=1 alignment=0
"Hub Rivet Wts       Location"
$END-OBJECT
***********
$OBJECT Text font=98 startx=889 starty=664 endx=1135 endy=684
Blue direction=1 alignment=0
"Fan Rivet Wts       Location"
$END-OBJECT
***********
$OBJECT String font=98 startx=1056 starty=688 endx=1186 endy=712
ARFanRivetLoc1 labelspace=0 label="Fan Rivet Wt #1" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1056 starty=716 endx=1186 endy=740
ARFanRivetLoc2 labelspace=0 label="Fan Rivet Wt #2" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1056 starty=745 endx=1186 endy=769
ARFanRivetLoc3 labelspace=0 label="Fan Rivet Wt #3" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=98 startx=1056 starty=773 endx=1186 endy=797
ARFanRivetLoc4 labelspace=0 label="Fan Rivet Wt #4" labelcolor=Black stringcolor=White parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$END-DISPLAY

