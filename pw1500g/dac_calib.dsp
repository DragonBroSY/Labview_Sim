$DISPLAY "DAC Calib" background=Charcoal editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$MSGQ
$STOREDISPLAY Overwrite
$OBJECT Digital font=1 startx=325 starty=180 endx=760 endy=477
labelspace=15 unitspace=1 spacing=8 labelcolor=White parambox=2 paramboxcolor=Black shading=-1
PLA_Handle type="FLOAT" width=10 prec=6 label="default" units="default" 
PLA1 type="FLOAT" width=10 prec=6 label="default" units="VDC" 
PLA2 type="FLOAT" width=10 prec=6 label="default" units="VDC" 
PLA3 type="FLOAT" width=10 prec=6 label="default" units="VDC" 
PLA4 type="FLOAT" width=10 prec=6 label="default" units="VDC" 
PLAHigh type="FLOAT" width=10 prec=6 label="default" units="VDC" 
PLALow type="FLOAT" width=10 prec=6 label="default" units="VDC" 
DACSlope type="FLOAT" width=10 prec=6 label="default" 
DACOffset type="FLOAT" width=10 prec=6 label="default" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=365 starty=25 endx=711 endy=123
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Button font=101 displayflag=EngineNotRunning startx=378 starty=547 endx=735 endy=638
PHASE DACCalib_ATP setvalue=-1 onlabel="Auto Throttle\nCalibration Started" offlabel="Start\nAuto Throttle Calibration" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Text font=104 startx=391 starty=33 endx=669 endy=111
Blue direction=1 alignment=1
"Auto Throttle"
"DAC Calibration"
$END-OBJECT
***********
$HELP
"============ DAC Calibrate display.  This display    ================"
"============ is used during a DAC calibrate.  This   ================"
"============ procedure is used to generate a curve   ================"
"============ for the DAC -> Power Lever conversion.  ================"
"============ Use the auto test procedure and enter   ================"
"============ the slope and offset into the           ================"
"============ initialization calcs files.             ================"
""
""
""
""
""
""
$END-HELP
$END-DISPLAY

