$DISPLAY "EEC System Fault Bits FHD" background=LightGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=101 startx=13 starty=78 endx=70 endy=104
style=1
linewidth=3 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=13 starty=151 endx=70 endy=174
style=1
linewidth=3 linecolor=Charcoal
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=13 starty=215 endx=70 endy=241
style=1
linewidth=3 linecolor=Magenta
shading=0
$END-OBJECT
***********
$OBJECT Text font=100 startx=26 starty=82 endx=57 endy=105
Green direction=1 alignment=0
"1 1"
$END-OBJECT
***********
$OBJECT Text font=100 startx=26 starty=153 endx=57 endy=176
Green direction=1 alignment=0
"1 1"
$END-OBJECT
***********
$OBJECT Text font=100 startx=26 starty=220 endx=57 endy=243
Green direction=1 alignment=0
"1 1"
$END-OBJECT
***********
$OBJECT Text font=100 startx=26 starty=276 endx=57 endy=299
Red direction=1 alignment=0
"1 1"
$END-OBJECT
***********
$OBJECT Text font=97 startx=80 starty=83 endx=249 endy=121
Blue direction=1 alignment=0
"Blue boxes Indicate"
"nusiance bits"
$END-OBJECT
***********
$OBJECT Text font=97 startx=80 starty=153 endx=257 endy=191
Black direction=1 alignment=0
"Black boxes Indicate"
"Status bits"
$END-OBJECT
***********
$OBJECT Text font=97 startx=80 starty=219 endx=282 endy=257
Magenta direction=1 alignment=0
"Magenta boxes indicate"
"Warning nusiance bits"
$END-OBJECT
***********
$OBJECT Text font=97 startx=80 starty=277 endx=247 endy=315
Red direction=1 alignment=0
"Red Warning bits"
"MUST be Corrected"
$END-OBJECT
***********
$OBJECT Box font=101 startx=325 starty=75 endx=1542 endy=872
style=3
linewidth=2 linecolor=Cyan
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=330 starty=129 endx=1539 endy=131
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=97 startx=331 starty=87 endx=405 endy=125
Yellow direction=1 alignment=2
"Label:"
"Channel:"
$END-OBJECT
***********
$OBJECT Line font=101 startx=332 starty=473 endx=1538 endy=474
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=359 starty=139 endx=428 endy=861
labelspace=3 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_350B11 type="FLOAT" width=1 prec=0 label="11" 
A1_350B12 type="FLOAT" width=1 prec=0 label="12" 
A1_350B13 type="FLOAT" width=1 prec=0 label="13" 
A1_350B14 type="FLOAT" width=1 prec=0 label="14" 
A1_350B15 type="FLOAT" width=1 prec=0 label="15" 
A1_350B16 type="FLOAT" width=1 prec=0 label="16" 
A1_350B17 type="FLOAT" width=1 prec=0 label="17" 
A1_350B18 type="FLOAT" width=1 prec=0 label="18" 
A1_350B19 type="FLOAT" width=1 prec=0 label="19" 
A1_350B20 type="FLOAT" width=1 prec=0 label="20" 
A1_350B21 type="FLOAT" width=1 prec=0 label="21" 
A1_350B22 type="FLOAT" width=1 prec=0 label="22" 
A1_350B23 type="FLOAT" width=1 prec=0 label="23" 
A1_350B24 type="FLOAT" width=1 prec=0 label="24" 
A1_350B25 type="FLOAT" width=1 prec=0 label="25" 
A1_350B26 type="FLOAT" width=1 prec=0 label="26" 
A1_350B27 type="FLOAT" width=1 prec=0 label="27" 
A1_350B28 type="FLOAT" width=1 prec=0 label="28" 
A1_350B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=403 starty=80 endx=404 endy=867
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=407 starty=781 endx=454 endy=810
style=1
linewidth=3 linecolor=Magenta
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=407 starty=818 endx=454 endy=847
style=1
linewidth=3 linecolor=Magenta
shading=0
$END-OBJECT
***********
$OBJECT Text font=2 startx=416 starty=110 endx=1334 endy=126
Blue direction=1 alignment=0
"A B    A B    A B    A B    A B    A B    A B                   A B    A B    A B    A B    A B    A B"
$END-OBJECT
***********
$OBJECT Text font=2 startx=417 starty=90 endx=1335 endy=106
Magenta direction=1 alignment=0
"350    351    352    353    354    355    357                   360    361    362    363    366    XXX"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=435 starty=139 endx=447 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_350B11 type="FLOAT" width=1 prec=0 label="11" 
B1_350B12 type="FLOAT" width=1 prec=0 label="12" 
B1_350B13 type="FLOAT" width=1 prec=0 label="13" 
B1_350B14 type="FLOAT" width=1 prec=0 label="14" 
B1_350B15 type="FLOAT" width=1 prec=0 label="15" 
B1_350B16 type="FLOAT" width=1 prec=0 label="16" 
B1_350B17 type="FLOAT" width=1 prec=0 label="17" 
B1_350B18 type="FLOAT" width=1 prec=0 label="18" 
B1_350B19 type="FLOAT" width=1 prec=0 label="19" 
B1_350B20 type="FLOAT" width=1 prec=0 label="20" 
B1_350B21 type="FLOAT" width=1 prec=0 label="21" 
B1_350B22 type="FLOAT" width=1 prec=0 label="22" 
B1_350B23 type="FLOAT" width=1 prec=0 label="23" 
B1_350B24 type="FLOAT" width=1 prec=0 label="24" 
B1_350B25 type="FLOAT" width=1 prec=0 label="25" 
B1_350B26 type="FLOAT" width=1 prec=0 label="26" 
B1_350B27 type="FLOAT" width=1 prec=0 label="27" 
B1_350B28 type="FLOAT" width=1 prec=0 label="28" 
B1_350B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=460 starty=80 endx=461 endy=867
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=479 starty=139 endx=491 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_351B11 type="FLOAT" width=1 prec=0 label="11" 
A1_351B12 type="FLOAT" width=1 prec=0 label="12" 
A1_351B13 type="FLOAT" width=1 prec=0 label="13" 
A1_351B14 type="FLOAT" width=1 prec=0 label="14" 
A1_351B15 type="FLOAT" width=1 prec=0 label="15" 
A1_351B16 type="FLOAT" width=1 prec=0 label="16" 
A1_351B17 type="FLOAT" width=1 prec=0 label="17" 
A1_351B18 type="FLOAT" width=1 prec=0 label="18" 
A1_351B19 type="FLOAT" width=1 prec=0 label="19" 
A1_351B20 type="FLOAT" width=1 prec=0 label="20" 
A1_351B21 type="FLOAT" width=1 prec=0 label="21" 
A1_351B22 type="FLOAT" width=1 prec=0 label="22" 
A1_351B23 type="FLOAT" width=1 prec=0 label="23" 
A1_351B24 type="FLOAT" width=1 prec=0 label="24" 
Bitdummy type="FLOAT" width=1 prec=0 label="25" 
A1_351B26 type="FLOAT" width=1 prec=0 label="26" 
A1_351B27 type="FLOAT" width=1 prec=0 label="27" 
A1_351B28 type="FLOAT" width=1 prec=0 label="28" 
A1_351B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=498 starty=139 endx=510 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_351B11 type="FLOAT" width=1 prec=0 label="11" 
B1_351B12 type="FLOAT" width=1 prec=0 label="12" 
B1_351B13 type="FLOAT" width=1 prec=0 label="13" 
B1_351B14 type="FLOAT" width=1 prec=0 label="14" 
B1_351B15 type="FLOAT" width=1 prec=0 label="15" 
B1_351B16 type="FLOAT" width=1 prec=0 label="16" 
B1_351B17 type="FLOAT" width=1 prec=0 label="17" 
B1_351B18 type="FLOAT" width=1 prec=0 label="18" 
B1_351B19 type="FLOAT" width=1 prec=0 label="19" 
B1_351B20 type="FLOAT" width=1 prec=0 label="20" 
B1_351B21 type="FLOAT" width=1 prec=0 label="21" 
B1_351B22 type="FLOAT" width=1 prec=0 label="22" 
B1_351B23 type="FLOAT" width=1 prec=0 label="23" 
B1_351B24 type="FLOAT" width=1 prec=0 label="24" 
Bitdummy type="FLOAT" width=1 prec=0 label="25" 
B1_351B26 type="FLOAT" width=1 prec=0 label="26" 
B1_351B27 type="FLOAT" width=1 prec=0 label="27" 
B1_351B28 type="FLOAT" width=1 prec=0 label="28" 
B1_351B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=523 starty=80 endx=524 endy=865
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=542 starty=139 endx=554 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_352B11 type="FLOAT" width=1 prec=0 label="11" 
A1_352B12 type="FLOAT" width=1 prec=0 label="12" 
A1_352B13 type="FLOAT" width=1 prec=0 label="13" 
A1_352B14 type="FLOAT" width=1 prec=0 label="14" 
A1_352B15 type="FLOAT" width=1 prec=0 label="15" 
A1_352B16 type="FLOAT" width=1 prec=0 label="16" 
A1_352B17 type="FLOAT" width=1 prec=0 label="17" 
A1_352B18 type="FLOAT" width=1 prec=0 label="18" 
Bitdummy type="FLOAT" width=1 prec=0 label="19" 
A1_352B20 type="FLOAT" width=1 prec=0 label="20" 
A1_352B21 type="FLOAT" width=1 prec=0 label="21" 
A1_352B22 type="FLOAT" width=1 prec=0 label="22" 
A1_352B23 type="FLOAT" width=1 prec=0 label="23" 
A1_352B24 type="FLOAT" width=1 prec=0 label="24" 
A1_352B25 type="FLOAT" width=1 prec=0 label="25" 
A1_352B26 type="FLOAT" width=1 prec=0 label="26" 
A1_352B27 type="FLOAT" width=1 prec=0 label="27" 
A1_352B28 type="FLOAT" width=1 prec=0 label="28" 
A1_352B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=561 starty=139 endx=573 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_352B11 type="FLOAT" width=1 prec=0 label="11" 
B1_352B12 type="FLOAT" width=1 prec=0 label="12" 
B1_352B13 type="FLOAT" width=1 prec=0 label="13" 
B1_352B14 type="FLOAT" width=1 prec=0 label="14" 
B1_352B15 type="FLOAT" width=1 prec=0 label="15" 
B1_352B16 type="FLOAT" width=1 prec=0 label="16" 
B1_352B17 type="FLOAT" width=1 prec=0 label="17" 
B1_352B18 type="FLOAT" width=1 prec=0 label="18" 
Bitdummy type="FLOAT" width=1 prec=0 label="19" 
B1_352B20 type="FLOAT" width=1 prec=0 label="20" 
B1_352B21 type="FLOAT" width=1 prec=0 label="21" 
B1_352B22 type="FLOAT" width=1 prec=0 label="22" 
B1_352B23 type="FLOAT" width=1 prec=0 label="23" 
B1_352B24 type="FLOAT" width=1 prec=0 label="24" 
B1_352B25 type="FLOAT" width=1 prec=0 label="25" 
B1_352B26 type="FLOAT" width=1 prec=0 label="26" 
B1_352B27 type="FLOAT" width=1 prec=0 label="27" 
B1_352B28 type="FLOAT" width=1 prec=0 label="28" 
B1_352B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=587 starty=80 endx=588 endy=865
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=594 starty=553 endx=645 endy=582
style=1
linewidth=3 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=605 starty=139 endx=617 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_353B11 type="FLOAT" width=1 prec=0 label="11" 
A1_353B12 type="FLOAT" width=1 prec=0 label="12" 
A1_353B13 type="FLOAT" width=1 prec=0 label="13" 
A1_353B14 type="FLOAT" width=1 prec=0 label="14" 
A1_353B15 type="FLOAT" width=1 prec=0 label="15" 
A1_353B16 type="FLOAT" width=1 prec=0 label="16" 
A1_353B17 type="FLOAT" width=1 prec=0 label="17" 
A1_353B18 type="FLOAT" width=1 prec=0 label="18" 
A1_353B19 type="FLOAT" width=1 prec=0 label="19" 
A1_353B20 type="FLOAT" width=1 prec=0 label="20" 
A1_353B21 type="FLOAT" width=1 prec=0 label="21" 
A1_353B22 type="FLOAT" width=1 prec=0 label="22" 
A1_353B23 type="FLOAT" width=1 prec=0 label="23" 
A1_353B24 type="FLOAT" width=1 prec=0 label="24" 
A1_353B25 type="FLOAT" width=1 prec=0 label="25" 
A1_353B26 type="FLOAT" width=1 prec=0 label="26" 
A1_353B27 type="FLOAT" width=1 prec=0 label="27" 
A1_353B28 type="FLOAT" width=1 prec=0 label="28" 
A1_353B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=624 starty=139 endx=636 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_353B11 type="FLOAT" width=1 prec=0 label="11" 
B1_353B12 type="FLOAT" width=1 prec=0 label="12" 
B1_353B13 type="FLOAT" width=1 prec=0 label="13" 
B1_353B14 type="FLOAT" width=1 prec=0 label="14" 
B1_353B15 type="FLOAT" width=1 prec=0 label="15" 
B1_353B16 type="FLOAT" width=1 prec=0 label="16" 
B1_353B17 type="FLOAT" width=1 prec=0 label="17" 
B1_353B18 type="FLOAT" width=1 prec=0 label="18" 
B1_353B19 type="FLOAT" width=1 prec=0 label="19" 
B1_353B20 type="FLOAT" width=1 prec=0 label="20" 
B1_353B21 type="FLOAT" width=1 prec=0 label="21" 
B1_353B22 type="FLOAT" width=1 prec=0 label="22" 
B1_353B23 type="FLOAT" width=1 prec=0 label="23" 
B1_353B24 type="FLOAT" width=1 prec=0 label="24" 
B1_353B25 type="FLOAT" width=1 prec=0 label="25" 
B1_353B26 type="FLOAT" width=1 prec=0 label="26" 
B1_353B27 type="FLOAT" width=1 prec=0 label="27" 
B1_353B28 type="FLOAT" width=1 prec=0 label="28" 
B1_353B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=650 starty=80 endx=651 endy=865
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=656 starty=516 endx=707 endy=545
style=1
linewidth=3 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=656 starty=780 endx=707 endy=809
style=1
linewidth=3 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=668 starty=139 endx=680 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_354B11 type="FLOAT" width=1 prec=0 label="11" 
A1_354B12 type="FLOAT" width=1 prec=0 label="12" 
A1_354B13 type="FLOAT" width=1 prec=0 label="13" 
A1_354B14 type="FLOAT" width=1 prec=0 label="14" 
A1_354B15 type="FLOAT" width=1 prec=0 label="15" 
A1_354B16 type="FLOAT" width=1 prec=0 label="16" 
A1_354B17 type="FLOAT" width=1 prec=0 label="17" 
A1_354B18 type="FLOAT" width=1 prec=0 label="18" 
A1_354B19 type="FLOAT" width=1 prec=0 label="19" 
A1_354B20 type="FLOAT" width=1 prec=0 label="20" 
A1_354B21 type="FLOAT" width=1 prec=0 label="21" 
A1_354B22 type="FLOAT" width=1 prec=0 label="22" 
A1_354B23 type="FLOAT" width=1 prec=0 label="23" 
A1_354B24 type="FLOAT" width=1 prec=0 label="24" 
A1_354B25 type="FLOAT" width=1 prec=0 label="25" 
A1_354B26 type="FLOAT" width=1 prec=0 label="26" 
A1_354B27 type="FLOAT" width=1 prec=0 label="27" 
A1_354B28 type="FLOAT" width=1 prec=0 label="28" 
Bitdummy type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=687 starty=139 endx=699 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_354B11 type="FLOAT" width=1 prec=0 label="11" 
B1_354B12 type="FLOAT" width=1 prec=0 label="12" 
B1_354B13 type="FLOAT" width=1 prec=0 label="13" 
B1_354B14 type="FLOAT" width=1 prec=0 label="14" 
B1_354B15 type="FLOAT" width=1 prec=0 label="15" 
B1_354B16 type="FLOAT" width=1 prec=0 label="16" 
B1_354B17 type="FLOAT" width=1 prec=0 label="17" 
B1_354B18 type="FLOAT" width=1 prec=0 label="18" 
B1_354B19 type="FLOAT" width=1 prec=0 label="19" 
B1_354B20 type="FLOAT" width=1 prec=0 label="20" 
B1_354B21 type="FLOAT" width=1 prec=0 label="21" 
B1_354B22 type="FLOAT" width=1 prec=0 label="22" 
B1_354B23 type="FLOAT" width=1 prec=0 label="23" 
B1_354B24 type="FLOAT" width=1 prec=0 label="24" 
B1_354B25 type="FLOAT" width=1 prec=0 label="25" 
B1_354B26 type="FLOAT" width=1 prec=0 label="26" 
B1_354B27 type="FLOAT" width=1 prec=0 label="27" 
B1_354B28 type="FLOAT" width=1 prec=0 label="28" 
Bitdummy type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=692 starty=8 endx=1178 endy=61
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=713 starty=80 endx=714 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=96 startx=716 starty=15 endx=1151 endy=54
BurntOrange direction=1 alignment=0
"EEC SYSTEM FAULT BITS"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=731 starty=139 endx=743 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_355B11 type="FLOAT" width=1 prec=0 label="11" 
A1_355B12 type="FLOAT" width=1 prec=0 label="12" 
A1_355B13 type="FLOAT" width=1 prec=0 label="13" 
A1_355B14 type="FLOAT" width=1 prec=0 label="14" 
A1_355B15 type="FLOAT" width=1 prec=0 label="15" 
A1_355B16 type="FLOAT" width=1 prec=0 label="16" 
A1_355B17 type="FLOAT" width=1 prec=0 label="17" 
A1_355B18 type="FLOAT" width=1 prec=0 label="18" 
A1_355B19 type="FLOAT" width=1 prec=0 label="19" 
A1_355B20 type="FLOAT" width=1 prec=0 label="20" 
A1_355B21 type="FLOAT" width=1 prec=0 label="21" 
Bitdummy type="FLOAT" width=1 prec=0 label="22" 
A1_355B23 type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
A1_355B25 type="FLOAT" width=1 prec=0 label="25" 
A1_355B26 type="FLOAT" width=1 prec=0 label="26" 
A1_355B27 type="FLOAT" width=1 prec=0 label="27" 
A1_355B28 type="FLOAT" width=1 prec=0 label="28" 
A1_355B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=750 starty=139 endx=762 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_355B11 type="FLOAT" width=1 prec=0 label="11" 
B1_355B12 type="FLOAT" width=1 prec=0 label="12" 
B1_355B13 type="FLOAT" width=1 prec=0 label="13" 
B1_355B14 type="FLOAT" width=1 prec=0 label="14" 
B1_355B15 type="FLOAT" width=1 prec=0 label="15" 
B1_355B16 type="FLOAT" width=1 prec=0 label="16" 
B1_355B17 type="FLOAT" width=1 prec=0 label="17" 
B1_355B18 type="FLOAT" width=1 prec=0 label="18" 
B1_355B19 type="FLOAT" width=1 prec=0 label="19" 
B1_355B20 type="FLOAT" width=1 prec=0 label="20" 
B1_355B21 type="FLOAT" width=1 prec=0 label="21" 
Bitdummy type="FLOAT" width=1 prec=0 label="22" 
B1_355B23 type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
B1_355B25 type="FLOAT" width=1 prec=0 label="25" 
B1_355B26 type="FLOAT" width=1 prec=0 label="26" 
B1_355B27 type="FLOAT" width=1 prec=0 label="27" 
B1_355B28 type="FLOAT" width=1 prec=0 label="28" 
B1_355B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=776 starty=80 endx=777 endy=867
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Button font=101 startx=777 starty=888 endx=1101 endy=948
PHASE storeIdleBitCk_ATP setvalue=-1 onlabel="Storing Idle Bit Check" offlabel="Store Idle Bit Check" \
labelcolor=BurntOrange oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=101 startx=785 starty=477 endx=834 endy=506
style=1
linewidth=3 linecolor=Charcoal
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=794 starty=139 endx=806 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_357B11 type="FLOAT" width=1 prec=0 label="11" 
A1_357B12 type="FLOAT" width=1 prec=0 label="12" 
A1_357B13 type="FLOAT" width=1 prec=0 label="13" 
A1_357B14 type="FLOAT" width=1 prec=0 label="14" 
A1_357B15 type="FLOAT" width=1 prec=0 label="15" 
A1_357B16 type="FLOAT" width=1 prec=0 label="16" 
A1_357B17 type="FLOAT" width=1 prec=0 label="17" 
A1_357B18 type="FLOAT" width=1 prec=0 label="18" 
A1_357B19 type="FLOAT" width=1 prec=0 label="19" 
A1_357B20 type="FLOAT" width=1 prec=0 label="20" 
A1_357B21 type="FLOAT" width=1 prec=0 label="21" 
A1_357B22 type="FLOAT" width=1 prec=0 label="22" 
A1_357B23 type="FLOAT" width=1 prec=0 label="23" 
A1_357B24 type="FLOAT" width=1 prec=0 label="24" 
A1_357B25 type="FLOAT" width=1 prec=0 label="25" 
A1_357B26 type="FLOAT" width=1 prec=0 label="26" 
A1_357B27 type="FLOAT" width=1 prec=0 label="27" 
A1_357B28 type="FLOAT" width=1 prec=0 label="28" 
A1_357B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=813 starty=139 endx=825 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_357B11 type="FLOAT" width=1 prec=0 label="11" 
B1_357B12 type="FLOAT" width=1 prec=0 label="12" 
B1_357B13 type="FLOAT" width=1 prec=0 label="13" 
B1_357B14 type="FLOAT" width=1 prec=0 label="14" 
B1_357B15 type="FLOAT" width=1 prec=0 label="15" 
B1_357B16 type="FLOAT" width=1 prec=0 label="16" 
B1_357B17 type="FLOAT" width=1 prec=0 label="17" 
B1_357B18 type="FLOAT" width=1 prec=0 label="18" 
B1_357B19 type="FLOAT" width=1 prec=0 label="19" 
B1_357B20 type="FLOAT" width=1 prec=0 label="20" 
B1_357B21 type="FLOAT" width=1 prec=0 label="21" 
B1_357B22 type="FLOAT" width=1 prec=0 label="22" 
B1_357B23 type="FLOAT" width=1 prec=0 label="23" 
B1_357B24 type="FLOAT" width=1 prec=0 label="24" 
B1_357B25 type="FLOAT" width=1 prec=0 label="25" 
B1_357B26 type="FLOAT" width=1 prec=0 label="26" 
B1_357B27 type="FLOAT" width=1 prec=0 label="27" 
B1_357B28 type="FLOAT" width=1 prec=0 label="28" 
B1_357B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=885 starty=79 endx=891 endy=865
linewidth=2 linecolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=97 startx=896 starty=86 endx=970 endy=124
Yellow direction=1 alignment=2
"Label:"
"Channel:"
$END-OBJECT
***********
$OBJECT Digital font=100 startx=931 starty=139 endx=1000 endy=861
labelspace=3 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_360B11 type="FLOAT" width=1 prec=0 label="11" 
A1_360B12 type="FLOAT" width=1 prec=0 label="12" 
A1_360B13 type="FLOAT" width=1 prec=0 label="13" 
A1_360B14 type="FLOAT" width=1 prec=0 label="14" 
A1_360B15 type="FLOAT" width=1 prec=0 label="15" 
A1_360B16 type="FLOAT" width=1 prec=0 label="16" 
A1_360B17 type="FLOAT" width=1 prec=0 label="17" 
A1_360B18 type="FLOAT" width=1 prec=0 label="18" 
Bitdummy type="FLOAT" width=1 prec=0 label="19" 
A1_360B20 type="FLOAT" width=1 prec=0 label="20" 
A1_360B21 type="FLOAT" width=1 prec=0 label="21" 
A1_360B22 type="FLOAT" width=1 prec=0 label="22" 
A1_360B23 type="FLOAT" width=1 prec=0 label="23" 
A1_360B24 type="FLOAT" width=1 prec=0 label="24" 
A1_360B25 type="FLOAT" width=1 prec=0 label="25" 
A1_360B26 type="FLOAT" width=1 prec=0 label="26" 
A1_360B27 type="FLOAT" width=1 prec=0 label="27" 
A1_360B28 type="FLOAT" width=1 prec=0 label="28" 
A1_360B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=972 starty=80 endx=973 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=977 starty=704 endx=1028 endy=733
style=1
linewidth=3 linecolor=Magenta
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1006 starty=139 endx=1018 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_360B11 type="FLOAT" width=1 prec=0 label="11" 
B1_360B12 type="FLOAT" width=1 prec=0 label="12" 
B1_360B13 type="FLOAT" width=1 prec=0 label="13" 
B1_360B14 type="FLOAT" width=1 prec=0 label="14" 
B1_360B15 type="FLOAT" width=1 prec=0 label="15" 
B1_360B16 type="FLOAT" width=1 prec=0 label="16" 
B1_360B17 type="FLOAT" width=1 prec=0 label="17" 
B1_360B18 type="FLOAT" width=1 prec=0 label="18" 
Bitdummy type="FLOAT" width=1 prec=0 label="19" 
B1_360B20 type="FLOAT" width=1 prec=0 label="20" 
B1_360B21 type="FLOAT" width=1 prec=0 label="21" 
B1_360B22 type="FLOAT" width=1 prec=0 label="22" 
B1_360B23 type="FLOAT" width=1 prec=0 label="23" 
B1_360B24 type="FLOAT" width=1 prec=0 label="24" 
B1_360B25 type="FLOAT" width=1 prec=0 label="25" 
B1_360B26 type="FLOAT" width=1 prec=0 label="26" 
B1_360B27 type="FLOAT" width=1 prec=0 label="27" 
B1_360B28 type="FLOAT" width=1 prec=0 label="28" 
B1_360B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1035 starty=80 endx=1036 endy=865
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1051 starty=139 endx=1063 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_361B11 type="FLOAT" width=1 prec=0 label="11" 
A1_361B12 type="FLOAT" width=1 prec=0 label="12" 
A1_361B13 type="FLOAT" width=1 prec=0 label="13" 
A1_361B14 type="FLOAT" width=1 prec=0 label="14" 
A1_361B15 type="FLOAT" width=1 prec=0 label="15" 
A1_361B16 type="FLOAT" width=1 prec=0 label="16" 
A1_361B17 type="FLOAT" width=1 prec=0 label="17" 
A1_361B18 type="FLOAT" width=1 prec=0 label="18" 
A1_361B19 type="FLOAT" width=1 prec=0 label="19" 
A1_361B20 type="FLOAT" width=1 prec=0 label="20" 
A1_361B21 type="FLOAT" width=1 prec=0 label="21" 
A1_361B22 type="FLOAT" width=1 prec=0 label="22" 
A1_361B23 type="FLOAT" width=1 prec=0 label="23" 
A1_361B24 type="FLOAT" width=1 prec=0 label="24" 
A1_361B25 type="FLOAT" width=1 prec=0 label="25" 
A1_361B26 type="FLOAT" width=1 prec=0 label="26" 
A1_361B27 type="FLOAT" width=1 prec=0 label="27" 
A1_361B28 type="FLOAT" width=1 prec=0 label="28" 
A1_361B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1070 starty=139 endx=1082 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_361B11 type="FLOAT" width=1 prec=0 label="11" 
B1_361B12 type="FLOAT" width=1 prec=0 label="12" 
B1_361B13 type="FLOAT" width=1 prec=0 label="13" 
B1_361B14 type="FLOAT" width=1 prec=0 label="14" 
B1_361B15 type="FLOAT" width=1 prec=0 label="15" 
B1_361B16 type="FLOAT" width=1 prec=0 label="16" 
B1_361B17 type="FLOAT" width=1 prec=0 label="17" 
B1_361B18 type="FLOAT" width=1 prec=0 label="18" 
B1_361B19 type="FLOAT" width=1 prec=0 label="19" 
B1_361B20 type="FLOAT" width=1 prec=0 label="20" 
B1_361B21 type="FLOAT" width=1 prec=0 label="21" 
B1_361B22 type="FLOAT" width=1 prec=0 label="22" 
B1_361B23 type="FLOAT" width=1 prec=0 label="23" 
B1_361B24 type="FLOAT" width=1 prec=0 label="24" 
B1_361B25 type="FLOAT" width=1 prec=0 label="25" 
B1_361B26 type="FLOAT" width=1 prec=0 label="26" 
B1_361B27 type="FLOAT" width=1 prec=0 label="27" 
B1_361B28 type="FLOAT" width=1 prec=0 label="28" 
B1_361B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1099 starty=80 endx=1100 endy=865
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Box font=101 startx=1104 starty=704 endx=1155 endy=733
style=1
linewidth=3 linecolor=Cyan
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1114 starty=139 endx=1126 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_362B11 type="FLOAT" width=1 prec=0 label="11" 
A1_362B12 type="FLOAT" width=1 prec=0 label="12" 
A1_362B13 type="FLOAT" width=1 prec=0 label="13" 
A1_362B14 type="FLOAT" width=1 prec=0 label="14" 
A1_362B15 type="FLOAT" width=1 prec=0 label="15" 
A1_362B16 type="FLOAT" width=1 prec=0 label="16" 
A1_362B17 type="FLOAT" width=1 prec=0 label="17" 
A1_362B18 type="FLOAT" width=1 prec=0 label="18" 
A1_362B19 type="FLOAT" width=1 prec=0 label="19" 
A1_362B20 type="FLOAT" width=1 prec=0 label="20" 
A1_362B21 type="FLOAT" width=1 prec=0 label="21" 
A1_362B22 type="FLOAT" width=1 prec=0 label="22" 
A1_362B23 type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
A1_362B25 type="FLOAT" width=1 prec=0 label="25" 
A1_362B26 type="FLOAT" width=1 prec=0 label="26" 
A1_362B27 type="FLOAT" width=1 prec=0 label="27" 
A1_362B28 type="FLOAT" width=1 prec=0 label="28" 
A1_362B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1133 starty=139 endx=1145 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_362B11 type="FLOAT" width=1 prec=0 label="11" 
B1_362B12 type="FLOAT" width=1 prec=0 label="12" 
B1_362B13 type="FLOAT" width=1 prec=0 label="13" 
B1_362B14 type="FLOAT" width=1 prec=0 label="14" 
B1_362B15 type="FLOAT" width=1 prec=0 label="15" 
B1_362B16 type="FLOAT" width=1 prec=0 label="16" 
B1_362B17 type="FLOAT" width=1 prec=0 label="17" 
B1_362B18 type="FLOAT" width=1 prec=0 label="18" 
B1_362B19 type="FLOAT" width=1 prec=0 label="19" 
B1_362B20 type="FLOAT" width=1 prec=0 label="20" 
B1_362B21 type="FLOAT" width=1 prec=0 label="21" 
B1_362B22 type="FLOAT" width=1 prec=0 label="22" 
B1_362B23 type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
B1_362B25 type="FLOAT" width=1 prec=0 label="25" 
B1_362B26 type="FLOAT" width=1 prec=0 label="26" 
B1_362B27 type="FLOAT" width=1 prec=0 label="27" 
B1_362B28 type="FLOAT" width=1 prec=0 label="28" 
B1_362B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1162 starty=80 endx=1163 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1177 starty=139 endx=1189 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_363B11 type="FLOAT" width=1 prec=0 label="11" 
A1_363B12 type="FLOAT" width=1 prec=0 label="12" 
A1_363B13 type="FLOAT" width=1 prec=0 label="13" 
Bitdummy type="FLOAT" width=1 prec=0 label="14" 
A1_363B15 type="FLOAT" width=1 prec=0 label="15" 
Bitdummy type="FLOAT" width=1 prec=0 label="16" 
Bitdummy type="FLOAT" width=1 prec=0 label="17" 
Bitdummy type="FLOAT" width=1 prec=0 label="18" 
A1_363B19 type="FLOAT" width=1 prec=0 label="19" 
A1_363B20 type="FLOAT" width=1 prec=0 label="20" 
A1_363B21 type="FLOAT" width=1 prec=0 label="21" 
A1_363B22 type="FLOAT" width=1 prec=0 label="22" 
A1_363B23 type="FLOAT" width=1 prec=0 label="23" 
A1_363B24 type="FLOAT" width=1 prec=0 label="24" 
A1_363B25 type="FLOAT" width=1 prec=0 label="25" 
A1_363B26 type="FLOAT" width=1 prec=0 label="26" 
A1_363B27 type="FLOAT" width=1 prec=0 label="27" 
A1_363B28 type="FLOAT" width=1 prec=0 label="28" 
A1_363B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1196 starty=139 endx=1208 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_363B11 type="FLOAT" width=1 prec=0 label="11" 
B1_363B12 type="FLOAT" width=1 prec=0 label="12" 
B1_363B13 type="FLOAT" width=1 prec=0 label="13" 
Bitdummy type="FLOAT" width=1 prec=0 label="14" 
B1_363B15 type="FLOAT" width=1 prec=0 label="15" 
Bitdummy type="FLOAT" width=1 prec=0 label="16" 
Bitdummy type="FLOAT" width=1 prec=0 label="17" 
Bitdummy type="FLOAT" width=1 prec=0 label="18" 
B1_363B19 type="FLOAT" width=1 prec=0 label="19" 
B1_363B20 type="FLOAT" width=1 prec=0 label="20" 
B1_363B21 type="FLOAT" width=1 prec=0 label="21" 
B1_363B22 type="FLOAT" width=1 prec=0 label="22" 
B1_363B23 type="FLOAT" width=1 prec=0 label="23" 
B1_363B24 type="FLOAT" width=1 prec=0 label="24" 
B1_363B25 type="FLOAT" width=1 prec=0 label="25" 
B1_363B26 type="FLOAT" width=1 prec=0 label="26" 
B1_363B27 type="FLOAT" width=1 prec=0 label="27" 
B1_363B28 type="FLOAT" width=1 prec=0 label="28" 
B1_363B29 type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1225 starty=80 endx=1226 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1240 starty=139 endx=1252 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
A1_366B11 type="FLOAT" width=1 prec=0 label="11" 
A1_366B12 type="FLOAT" width=1 prec=0 label="12" 
A1_366B13 type="FLOAT" width=1 prec=0 label="13" 
A1_366B14 type="FLOAT" width=1 prec=0 label="14" 
A1_366B15 type="FLOAT" width=1 prec=0 label="15" 
A1_366B16 type="FLOAT" width=1 prec=0 label="16" 
A1_366B17 type="FLOAT" width=1 prec=0 label="17" 
A1_366B18 type="FLOAT" width=1 prec=0 label="18" 
A1_366B19 type="FLOAT" width=1 prec=0 label="19" 
A1_366B20 type="FLOAT" width=1 prec=0 label="20" 
A1_366B21 type="FLOAT" width=1 prec=0 label="21" 
A1_366B22 type="FLOAT" width=1 prec=0 label="22" 
A1_366B23 type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
A1_366B25 type="FLOAT" width=1 prec=0 label="25" 
Bitdummy type="FLOAT" width=1 prec=0 label="26" 
Bitdummy type="FLOAT" width=1 prec=0 label="27" 
Bitdummy type="FLOAT" width=1 prec=0 label="28" 
Bitdummy type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1259 starty=139 endx=1271 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
B1_366B11 type="FLOAT" width=1 prec=0 label="11" 
B1_366B12 type="FLOAT" width=1 prec=0 label="12" 
B1_366B13 type="FLOAT" width=1 prec=0 label="13" 
B1_366B14 type="FLOAT" width=1 prec=0 label="14" 
B1_366B15 type="FLOAT" width=1 prec=0 label="15" 
B1_366B16 type="FLOAT" width=1 prec=0 label="16" 
B1_366B17 type="FLOAT" width=1 prec=0 label="17" 
B1_366B18 type="FLOAT" width=1 prec=0 label="18" 
B1_366B19 type="FLOAT" width=1 prec=0 label="19" 
B1_366B20 type="FLOAT" width=1 prec=0 label="20" 
B1_366B21 type="FLOAT" width=1 prec=0 label="21" 
B1_366B22 type="FLOAT" width=1 prec=0 label="22" 
B1_366B23 type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
B1_366B25 type="FLOAT" width=1 prec=0 label="25" 
Bitdummy type="FLOAT" width=1 prec=0 label="26" 
Bitdummy type="FLOAT" width=1 prec=0 label="27" 
Bitdummy type="FLOAT" width=1 prec=0 label="28" 
Bitdummy type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1288 starty=80 endx=1289 endy=865
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1303 starty=139 endx=1315 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
Bitdummy type="FLOAT" width=1 prec=0 label="11" 
Bitdummy type="FLOAT" width=1 prec=0 label="12" 
Bitdummy type="FLOAT" width=1 prec=0 label="13" 
Bitdummy type="FLOAT" width=1 prec=0 label="14" 
Bitdummy type="FLOAT" width=1 prec=0 label="15" 
Bitdummy type="FLOAT" width=1 prec=0 label="16" 
Bitdummy type="FLOAT" width=1 prec=0 label="17" 
Bitdummy type="FLOAT" width=1 prec=0 label="18" 
Bitdummy type="FLOAT" width=1 prec=0 label="19" 
Bitdummy type="FLOAT" width=1 prec=0 label="20" 
Bitdummy type="FLOAT" width=1 prec=0 label="21" 
Bitdummy type="FLOAT" width=1 prec=0 label="22" 
Bitdummy type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
Bitdummy type="FLOAT" width=1 prec=0 label="25" 
Bitdummy type="FLOAT" width=1 prec=0 label="26" 
Bitdummy type="FLOAT" width=1 prec=0 label="27" 
Bitdummy type="FLOAT" width=1 prec=0 label="28" 
Bitdummy type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=1322 starty=139 endx=1334 endy=861
labelspace=0 unitspace=1 spacing=15 labelcolor=White parambox=0 paramboxcolor=Black shading=0
Bitdummy type="FLOAT" width=1 prec=0 label="11" 
Bitdummy type="FLOAT" width=1 prec=0 label="12" 
Bitdummy type="FLOAT" width=1 prec=0 label="13" 
Bitdummy type="FLOAT" width=1 prec=0 label="14" 
Bitdummy type="FLOAT" width=1 prec=0 label="15" 
Bitdummy type="FLOAT" width=1 prec=0 label="16" 
Bitdummy type="FLOAT" width=1 prec=0 label="17" 
Bitdummy type="FLOAT" width=1 prec=0 label="18" 
Bitdummy type="FLOAT" width=1 prec=0 label="19" 
Bitdummy type="FLOAT" width=1 prec=0 label="20" 
Bitdummy type="FLOAT" width=1 prec=0 label="21" 
Bitdummy type="FLOAT" width=1 prec=0 label="22" 
Bitdummy type="FLOAT" width=1 prec=0 label="23" 
Bitdummy type="FLOAT" width=1 prec=0 label="24" 
Bitdummy type="FLOAT" width=1 prec=0 label="25" 
Bitdummy type="FLOAT" width=1 prec=0 label="26" 
Bitdummy type="FLOAT" width=1 prec=0 label="27" 
Bitdummy type="FLOAT" width=1 prec=0 label="28" 
Bitdummy type="FLOAT" width=1 prec=0 label="29" 
$END-OBJECT
***********
$OBJECT Line font=101 startx=1349 starty=80 endx=1350 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=1413 starty=80 endx=1414 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=1477 starty=80 endx=1478 endy=866
linewidth=1 linecolor=Black
shading=0
$END-OBJECT
***********
$HELP
"EEC System Fault Bit Test"
"========================================================="
"EEC Ground Power must be ON to perform Test and record data."
"Remember to turn Ground Power OFF when done"
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

