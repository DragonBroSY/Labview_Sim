$DISPLAY "Misc Performance Points" background=NewGreen editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Button font=103 startx=30 starty=650 endx=240 endy=750
PHASE storeStaticBitCk_ATP setvalue=-1 onlabel="Zero Drift" offlabel="Zero Drift" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=103 startx=250 starty=650 endx=470 endy=750
PHASE storeMIdle_ATP setvalue=-1 onlabel="Minimum Idle" offlabel="Minimum Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Box font=1 startx=425 starty=208 endx=876 endy=481
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=1 startx=427 starty=262 endx=877 endy=262
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=104 startx=442 starty=307 endx=865 endy=469
labelspace=6 unitspace=2 spacing=11 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
N1Pct type="FLOAT" width=6 prec=1 label="N1 Pct" units="default" 
N2Pct type="FLOAT" width=6 prec=1 label="N2 Pct" units="default" 
$END-OBJECT
***********
$OBJECT Box font=1 startx=464 starty=40 endx=822 endy=183
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Button font=103 startx=480 starty=650 endx=700 endy=750
PHASE storeAIdle_ATP setvalue=-1 onlabel="Approach Idle" offlabel="Approach Idle" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Text font=104 startx=481 starty=70 endx=571 endy=148
Black direction=1 alignment=0
"ITT"
"DegC"
$END-OBJECT
***********
$OBJECT Box font=1 startx=518 starty=509 endx=793 endy=548
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Digital font=1 startx=552 starty=518 endx=777 endy=542
labelspace=5 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=0
SysTime type="HOURS" width=8 prec=0 label="Time:" units="" 
$END-OBJECT
***********
$OBJECT Text font=104 startx=573 starty=218 endx=761 endy=257
Black direction=1 alignment=0
"Observed  "
$END-OBJECT
***********
$OBJECT Line font=1 startx=602 starty=41 endx=602 endy=177
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=103 startx=653 starty=57 endx=781 endy=87
Black direction=1 alignment=0
"Observed"
$END-OBJECT
***********
$OBJECT Digital font=104 startx=653 starty=111 endx=779 endy=155
labelspace=0 unitspace=0 spacing=1 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
EEC_ITT type="FLOAT" width=6 prec=1 label="" units="" 
$END-OBJECT
***********
$OBJECT Button font=103 startx=710 starty=650 endx=959 endy=750
PHASE storeTOATB_ATP setvalue=-1 onlabel="TO\nAfter Trimbal" offlabel="TO\nAfter Trimbal" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=103 startx=970 starty=650 endx=1180 endy=750
PHASE storeReverse_ATP setvalue=-1 onlabel="Reverse" offlabel="Reverse" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$HELP
"This is the help for the Engine Start display"
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
""
""
""
""
""
""
$END-HELP
$END-DISPLAY

