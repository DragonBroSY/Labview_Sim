$DISPLAY "Bowed Rotor Rub-In" background=DarkGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
BRNContinue_F:	~BRContinue_F
#if	(BRStageTmr_F & (BRStageTmr <= BRTmrLimMx))
BRCntDwnTmr:sec	(BRTmrLimMx - BRStageTmr)
#endif	
#if	(BRStartTm >= 86400)
BRStartTm:Sec	(BRStartTm - 86400)
#endif	
#C ***************** Parameters *********************
#C #if (ArmBowedRotor_F & (BowRotStage > 0))
#C dummy: startautotest (BowedRotorRubIn_ATP)
#C #elseif (ArmBowedRotor_F & (BowRotStage = 0))
#C dummy: StoreEvent ("Bowed Rotor Rub-In Procedure (Started)")
#C BowRotStage: 1
#C StageTmr:Sec 0.0
#C StageTmr_F: OFF
#C StepTxt: concat (""
$END-CALC
$STOREDISPLAY Append
$OBJECT String font=92 startx=7 starty=781 endx=291 endy=806
BowRotStageTxt labelspace=7 label="Instructions:" labelcolor=Yellow stringcolor=White parambox=0 paramboxcolor=Black shading=-1
$END-OBJECT
***********
$OBJECT Line font=101 startx=7 starty=807 endx=1222 endy=808
linewidth=1 linecolor=Red
shading=0
$END-OBJECT
***********
$OBJECT Line font=1 startx=15 starty=389 endx=1177 endy=395
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=16 starty=98 endx=1178 endy=104
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=100 startx=21 starty=512 endx=528 endy=608
labelspace=13 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
BRStartTm type="HOURS" width=8 prec=0 label="Bowed Rotor Start Time:" units="HH:MM:SS" 
SysTime type="HOURS" width=8 prec=0 label="                System Time:" units="HH:MM:SS" 
BRCntDwnTmr type="HOURS" width=8 prec=0 label="           Remaining Time:" units="HH:MM:SS" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=24 starty=736 endx=302 endy=766
labelspace=14 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-1
BRPart type="FLOAT" width=1 prec=0 label="Bowed Rotor Rub-In Part:" 
$END-OBJECT
***********
$OBJECT Line font=1 startx=25 starty=482 endx=1187 endy=488
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Bar font=102 startx=43 starty=638 endx=1190 endy=702
labelspace=4 unitspace=0 labelcolor=Black length=885 \
height=25 format=5.0 ticpos=BELOW dir=0 shading=-2 spacing=1 \
ticfont=2 parambox=2 paramboxcolor=Black limitwidth=10
N1C2R target=N1C2AccelTarg label="N1C2R" units="default" min=0 max=7000 ticinter=250 labelinter=2
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=44 starty=274 endx=284 endy=329
BRPart2Sq1 textcolor=Black
LightGray = 0 "Sequence #1 Complete"
Green = 1 "Sequence #1 Complete"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=44 starty=329 endx=284 endy=384
BRPart2Sq2 textcolor=Black
LightGray = 0 "Sequence #2 Complete"
Green = 1 "Sequence #2 Complete"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=45 starty=168 endx=285 endy=223
BRPart1Sq1 textcolor=Black
LightGray = 0 "Sequence #1 Complete"
Green = 1 "Sequence #1 Complete"
$END-OBJECT
***********
$OBJECT String font=101 startx=107 starty=243 endx=526 endy=272
BRPart labelspace=0 label="" labelcolor=Black stringcolor=Blue parambox=1 paramboxcolor=DarkGray shading=-1
Blue = 3 "Bowed Rotor Rub-In Part 2 Timers"
White = 2 "Bowed Rotor Rub-In Part 2 Timers"
Blue = 1 "Bowed Rotor Rub-In Part 2 Timers"
Blue = 0 "Bowed Rotor Rub-In Part 2 Timers"
$END-OBJECT
***********
$OBJECT String font=101 startx=113 starty=114 endx=532 endy=143
BRPart labelspace=0 label="" labelcolor=Black stringcolor=Blue parambox=1 paramboxcolor=DarkGray shading=-1
Blue = 3 "Bowed Rotor Rub-In Part 1 Timers"
Blue = 2 "Bowed Rotor Rub-In Part 1 Timers"
Magenta = 1 "Bowed Rotor Rub-In Part 1 Timers"
Blue = 0 "Bowed Rotor Rub-In Part 1 Timers"
$END-OBJECT
***********
$OBJECT Text font=2 startx=274 starty=411 endx=445 endy=427
Yellow direction=1 alignment=0
"Limit: 290-310 DegC"
$END-OBJECT
***********
$OBJECT Digital font=98 startx=287 starty=294 endx=607 endy=404
labelspace=5 unitspace=0 spacing=31 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
BRPart2Tm1 type="HOURS" width=8 prec=0 label="Timer 1:" units="HH:MM:SS" 
BRPart2Tm2 type="HOURS" width=8 prec=0 label="Timer 2:" units="HH:MM:SS" 
$END-OBJECT
***********
$OBJECT Digital font=98 startx=294 starty=181 endx=614 endy=236
labelspace=5 unitspace=0 spacing=31 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
BRPart1Tm1 type="HOURS" width=8 prec=0 label="Timer 1:" units="HH:MM:SS" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=309 starty=272 endx=579 endy=288
Yellow direction=1 alignment=0
"Limit: 0:55:00 - 1:05:00 Hours"
$END-OBJECT
***********
$OBJECT Text font=2 startx=315 starty=152 endx=585 endy=168
Yellow direction=1 alignment=0
"Limit: 0:35:00 - 0:45:00 Hours"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=317 starty=736 endx=443 endy=762
labelspace=6 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-1
BRSeqNo type="FLOAT" width=1 prec=0 label="Sequence:" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=343 starty=13 endx=902 endy=81
style=2
boxcolor=Cyan
shading=4
$END-OBJECT
***********
$OBJECT Text font=104 startx=358 starty=28 endx=886 endy=67
BurntOrange direction=1 alignment=0
"Bowed Rotor Rub-In Procedure"
$END-OBJECT
***********
$OBJECT Box font=101 displayflag=BRNContinue_F startx=540 starty=525 endx=690 endy=590
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=101 displayflag=BRNContinue_F startx=562 starty=543 endx=673 endy=570
LightGray direction=1 alignment=0
"Continue"
$END-OBJECT
***********
$OBJECT Line font=101 startx=612 starty=101 endx=618 endy=488
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT StatusIndicator font=101 startx=636 starty=564 endx=1048 endy=627
ArmBowedRotor_F textcolor=Black
LightGray = 0 "Bowed Rotor Rub-In Not Active"
Green = 1 "Bowed Rotor Rub-In Active"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=656 starty=189 endx=896 endy=244
BRPart3Sq1 textcolor=Black
LightGray = 0 "Sequence #1 Complete"
Green = 1 "Sequence #1 Complete"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=656 starty=244 endx=896 endy=299
BRPart3Sq2 textcolor=Black
LightGray = 0 "Sequence #2 Complete"
Green = 1 "Sequence #2 Complete"
$END-OBJECT
***********
$OBJECT StatusIndicator font=97 startx=656 starty=299 endx=896 endy=354
BRPart3Sq3 textcolor=Black
LightGray = 0 "Sequence #3 Complete"
Green = 1 "Sequence #3 Complete"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=704 starty=404 endx=1066 endy=482
labelspace=5 unitspace=1 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_ITT type="FLOAT" width=7 prec=1 label="ITT" units="default" 
N1C2R type="FLOAT" width=7 prec=1 label="N1C2R" units="default" 
$END-OBJECT
***********
$OBJECT String font=101 startx=705 starty=139 endx=1124 endy=168
BRPart labelspace=0 label="" labelcolor=Black stringcolor=Blue parambox=1 paramboxcolor=Charcoal shading=-1
Magenta = 3 "Bowed Rotor Rub-In Part 3 Timers"
Blue < 3 "Bowed Rotor Rub-In Part 3 Timers"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=748 starty=715 endx=1217 endy=779
labelspace=11 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
StageTmr type="SECONDS" width=8 prec=0 label="           Stage Timer:" units="default" 
BRStageTmr type="HOURS" width=8 prec=0 label="Bowed Rotor Timer:" units="HH:MM:SS" 
$END-OBJECT
***********
$OBJECT Switch font=101 displayflag=BRContinue_F startx=762 starty=495 endx=912 endy=560
TOGGLE BRContinue_TS onlabel="Continue" offlabel="Continue" offcolor=Cyan oncolor=Green 
$RELEASE
BRStageTmr_F:	OFF
$END-RELEASE
$END-OBJECT
***********
$OBJECT Digital font=98 startx=901 starty=206 endx=1221 endy=371
labelspace=5 unitspace=0 spacing=31 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
BRPart3Tm1 type="HOURS" width=8 prec=0 label="Timer 1:" units="HH:MM:SS" 
BRPart3Tm2 type="HOURS" width=8 prec=0 label="Timer 2:" units="HH:MM:SS" 
BRPart3Tm3 type="HOURS" width=8 prec=0 label="Timer 3:" units="HH:MM:SS" 
$END-OBJECT
***********
$OBJECT Text font=2 startx=915 starty=177 endx=1185 endy=193
Yellow direction=1 alignment=0
"Limit: 1:55:00 - 2:05:00 Hours"
$END-OBJECT
***********
$HELP
"Bowed Rotor Rub-In Procedure Help"
""
"To Start the procedure select Bowed Rotor Rub-In Procedure on the ECM display."
"Once the Procedure is started, Start the Engine and follow the Instructions"
"at the bottom on the ECM or Bowed Rotor Rub-In Displays."
""
"Press the Continue Button to Stop the Timer and continue with the Test."
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

