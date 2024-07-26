$DISPLAY "Final DSU Check FHD TEST" background=Black loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
#C EECN1Clas mapped from Performance N1Clas Params until we can access the DSU DATA. (DJR 11/15/23)...
EECN1Clas1:	N1Clas1
EECN1Clas2:	N1Clas2
EECN1Clas3:	N1Clas3
EECN1Clas4:	N1Clas4
$END-CALC
$CALC
#C ************************************************
#C **** DSUFault_Stat Moved to eecreceiver.cal ****
#C ************************************************
#C **** TestDSU_Stat Moved to eecreceiver.cal *****
#C **** Renamed to DSUPNCk_Stat (DJR 05/16/24) ****
#C ************************************************
#if	TestDSUInst_F
EngRatingCk_F:	compare ("PW1524G" EECEngModel)
EngSNCk_F:	compare ("999999" EECEngSN)
ACTypeCk_F:	compare ("CS100" EECACTypeTxt)
#else	
EngRatingCk_F:	compare (EngModel EECEngModel)
EngSNCk_F:	compare (SerialNum EECEngSN)
ACTypeCk_F:	compare (ACTypeTxt EECACTypeTxt)
#endif	
#if	(DSUFault_Stat < 3)
N1Clas1Ck_F:	0
N1Clas2Ck_F:	0
N1Clas3Ck_F:	0
N1Clas4Ck_F:	0
#else	
#C N1Clas1Ck_F: (N1Clas1 = EECN1Clas1)
#C N1Clas2Ck_F: (N1Clas2 = EECN1Clas2)
#C N1Clas3Ck_F: (N1Clas3 = EECN1Clas3)
#C N1Clas4Ck_F: (N1Clas4 = EECN1Clas4)
#C Set to 2, can't see the EEC N1 Class at this time. (DJR 01/25/24)...
N1Clas1Ck_F:	2
N1Clas2Ck_F:	2
N1Clas3Ck_F:	2
N1Clas4Ck_F:	2
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Box font=101 startx=289 starty=124 endx=1587 endy=714
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=292 starty=181 endx=1586 endy=183
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=292 starty=382 endx=1585 endy=384
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=101 startx=293 starty=82 endx=614 endy=109
TestDSUInst_F labelspace=8 label="DSU Installed: " labelcolor=Black stringcolor=Black parambox=0 paramboxcolor=LightGray shading=0
Blue = 0 "CUSTOMER"
Black = 1 "TEST"
$END-OBJECT
***********
$OBJECT String font=103 displayflag=CustDSUInst_F startx=306 starty=306 endx=661 endy=340
CustDSUPN labelspace=8 label="DSU Data P/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=307 starty=269 endx=620 endy=303
ACTypeTxt labelspace=8 label=" Aircraft Type:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=309 starty=189 endx=643 endy=223
EngModel labelspace=8 label=" Engine Rating:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=309 starty=228 endx=648 endy=262
SerialNum labelspace=8 label="     Engine S/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=2 startx=319 starty=158 endx=670 endy=174
Blue direction=1 alignment=0
"(Info from OPEN QUESTIONS or TEST DATA)"
$END-OBJECT
***********
$OBJECT Digital font=103 startx=324 starty=404 endx=647 endy=564
labelspace=11 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=0
N1CLAS4 type="INTEGER" width=3 prec=0 label="N1 Class 4 (Band A):" 
N1CLAS3 type="INTEGER" width=3 prec=0 label="N1 Class 3 (Band B):" 
N1CLAS2 type="INTEGER" width=3 prec=0 label="N1 Class 2 (Band C):" 
N1CLAS1 type="INTEGER" width=3 prec=0 label="N1 Class 1 (Band D):" 
$END-OBJECT
***********
$OBJECT StatusIndicator font=101 startx=341 starty=747 endx=670 endy=843
EECPwr_Stat textcolor=Black
Green = 2 "EEC Ground Power\nON"
Yellow = 1 "EEC Ground Power\nInTransit"
BurntOrange = 0 "EEC Ground Power\nOFF"
$END-OBJECT
***********
$OBJECT Text font=103 startx=347 starty=127 endx=655 endy=157
Blue direction=1 alignment=0
"Required Configuration"
$END-OBJECT
***********
$OBJECT Text font=158 startx=350 starty=573 endx=630 endy=639
LightGray direction=1 alignment=1
"Classing is REFERENCE ONLY."
"DSU N1 Classing can only"
"be verified on CESL."
$END-OBJECT
***********
$OBJECT Line font=101 startx=704 starty=125 endx=708 endy=713
linewidth=4 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=103 startx=726 starty=189 endx=1119 endy=223
EECEngModel labelspace=8 label="Engine Rating:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=726 starty=228 endx=1065 endy=262
EECEngSN labelspace=8 label="    Engine S/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=726 starty=267 endx=1134 endy=301
EECACTypeTxt labelspace=8 label="Aircraft Type:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=726 starty=306 endx=1072 endy=340
EECDSUPN labelspace=8 label="DSU Data P/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=103 displayflag=FALSE startx=744 starty=550 endx=1067 endy=710
labelspace=11 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=0
EECN1Clas1 type="INTEGER" width=3 prec=0 label="N1 Class 1 (Band D):" 
EECN1Clas2 type="INTEGER" width=3 prec=0 label="N1 Class 2 (Band C):" 
EECN1Clas3 type="INTEGER" width=3 prec=0 label="N1 Class 3 (Band B):" 
EECN1Clas4 type="INTEGER" width=3 prec=0 label="N1 Class 4 (Band A):" 
$END-OBJECT
***********
$OBJECT Text font=103 startx=749 starty=131 endx=1111 endy=161
Blue direction=1 alignment=0
"Installed DSU Configuration"
$END-OBJECT
***********
$OBJECT Button font=104 startx=754 starty=747 endx=1104 endy=831
PHASE storeDSUCheck_ATP setvalue=-1 onlabel="Storing DSU Check" offlabel="Store DSU Check" \
labelcolor=White oncolor=Blue offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=2 startx=801 starty=160 endx=1044 endy=176
Blue direction=1 alignment=0
"(CURRENT DSU as Programmed)"
$END-OBJECT
***********
$OBJECT Box font=101 startx=806 starty=10 endx=1057 endy=67
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=826 starty=17 endx=1035 endy=56
LightGray direction=1 alignment=1
"DSU CHECK"
$END-OBJECT
***********
$OBJECT Line font=101 startx=1159 starty=126 endx=1163 endy=712
linewidth=4 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT StatusIndicator font=101 startx=1184 starty=747 endx=1504 endy=843
DSUFault_Stat textcolor=Black
BurntOrange = 0 "DSU Check\nSoftware NOT Active"
LightGray = 1 "DSU Check\nGND PWR OFF"
Red = 2 "DSU Check\nFAULT"
Green = 3 "Test DSU\n Check Valid"
Green = 4 "Customer DSU\nCheck Valid"
Yellow = 5 "DSU Check\nUNK"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=548 endx=1486 endy=575
N1Clas1Ck_F labelspace=8 label="N1 Class 1:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=590 endx=1486 endy=617
N1Clas2Ck_F labelspace=8 label="N1 Class 2:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=633 endx=1486 endy=660
N1Clas3Ck_F labelspace=8 label="N1 Class 3:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=675 endx=1486 endy=702
N1Clas4Ck_F labelspace=8 label="N1 Class 4:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT Text font=101 startx=1196 starty=403 endx=1487 endy=484
BurntOrange direction=1 alignment=1
"NOTE: CHECK DSU N1"
"CLASSING ON THE CESL"
"ONLY..."
$END-OBJECT
***********
$OBJECT String font=103 startx=1207 starty=345 endx=1501 endy=375
DSUPNCk_Stat labelspace=8 label="DSU Status:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Green = 4 "OK"
Green = 5 "OK"
Red < 99 "ERROR"
$END-OBJECT
***********
$OBJECT String font=103 displayflag=CustDSUInst_F startx=1210 starty=305 endx=1539 endy=335
DSUPNCk_Stat labelspace=8 label="DSU Data P/N:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Yellow = 1 "GND PWR"
BurntOrange = 2 "N/A"
BurntOrange = 3 "N/A"
Green = 4 "OK"
Red = 5 "ERROR"
BurntOrange = 6 "UNK"
$END-OBJECT
***********
$OBJECT String font=103 startx=1212 starty=188 endx=1506 endy=218
EngRatingCk_F labelspace=8 label=" Engine Rating:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
$END-OBJECT
***********
$OBJECT String font=103 startx=1212 starty=227 endx=1506 endy=257
EngSNCk_F labelspace=8 label="     Engine S/N:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "N/A"
$END-OBJECT
***********
$OBJECT String font=103 startx=1212 starty=266 endx=1506 endy=296
ACTypeCk_F labelspace=8 label=" Aircraft Type:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
$END-OBJECT
***********
$OBJECT Text font=103 startx=1303 starty=132 endx=1409 endy=162
Blue direction=1 alignment=0
"STATUS"
$END-OBJECT
***********
$END-DISPLAY

