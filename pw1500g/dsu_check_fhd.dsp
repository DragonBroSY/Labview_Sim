$DISPLAY "DSU Check FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
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
$OBJECT Box font=101 startx=291 starty=81 endx=1589 endy=731
style=2
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=294 starty=138 endx=1588 endy=140
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=294 starty=339 endx=1587 endy=341
linewidth=2 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT String font=103 displayflag=CustDSUInst_F startx=308 starty=263 endx=663 endy=297
CustDSUPN labelspace=8 label="CUST DSU P/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 displayflag=TestDSUInst_F startx=310 starty=264 endx=664 endy=298
TestDSUPN labelspace=8 label="TEST DSU P/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=311 starty=146 endx=645 endy=180
EngModel labelspace=8 label=" Engine Rating:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=311 starty=185 endx=650 endy=219
SerialNum labelspace=8 label="     Engine S/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=311 starty=224 endx=624 endy=258
ACTypeTxt labelspace=8 label=" Aircraft Type:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=103 startx=326 starty=361 endx=649 endy=521
labelspace=11 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=0
N1CLAS4 type="INTEGER" width=3 prec=0 label="N1 Class 4 (Band A):" 
N1CLAS3 type="INTEGER" width=3 prec=0 label="N1 Class 3 (Band B):" 
N1CLAS2 type="INTEGER" width=3 prec=0 label="N1 Class 2 (Band C):" 
N1CLAS1 type="INTEGER" width=3 prec=0 label="N1 Class 1 (Band D):" 
$END-OBJECT
***********
$OBJECT Text font=98 startx=337 starty=539 endx=649 endy=599
LightGray direction=1 alignment=1
"N1 Classing is for Reference Only."
"DSU N1 Classing can only"
"be verified on the CESM"
$END-OBJECT
***********
$OBJECT StatusIndicator font=101 startx=341 starty=747 endx=670 endy=843
EECPwr_Stat textcolor=Black
Green = 2 "EEC Ground Power\nON"
Magenta = 1 "EEC Ground Power\nInTransit"
LightGray = 0 "EEC Ground Power\nOFF"
$END-OBJECT
***********
$OBJECT Text font=2 startx=350 starty=118 endx=656 endy=134
Blue direction=1 alignment=0
"(FROM OPEN QUESTIONS OR TEST DATA)"
$END-OBJECT
***********
$OBJECT Text font=103 startx=416 starty=90 endx=594 endy=120
Blue direction=1 alignment=0
"AS SELECTED"
$END-OBJECT
***********
$OBJECT Box font=101 displayflag=CustDSUInst_F startx=695 starty=6 endx=1168 endy=63
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=704 starty=84 endx=708 endy=730
linewidth=4 linecolor=Black
shading=0
$END-OBJECT
***********
$OBJECT Text font=96 displayflag=CustDSUInst_F startx=721 starty=17 endx=1140 endy=56
Orange direction=1 alignment=0
"CUSTOMER DSU CHECK"
$END-OBJECT
***********
$OBJECT String font=103 startx=728 starty=146 endx=1121 endy=180
EECEngModel labelspace=8 label="Engine Rating:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=728 starty=185 endx=1067 endy=219
EECEngSN labelspace=8 label="    Engine S/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=728 starty=224 endx=1136 endy=258
EECACTypeTxt labelspace=8 label="Aircraft Type:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=103 startx=728 starty=263 endx=1074 endy=297
EECDSUPN labelspace=8 label="        DSU P/N:" labelcolor=Black stringcolor=Magenta parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Text font=98 startx=741 starty=466 endx=1104 endy=546
Yellow direction=1 alignment=1
"NOTE: N1 CLASS DATA IS NOT"
"CHECKING THE DSU AS PROGRAMMED."
"(CAN'T SEE THE DSU N1 CLASSING"
"THROUGH THE EEC AT THIS TIME)"
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
$OBJECT Box font=101 displayflag=TestDSUInst_F startx=745 starty=11 endx=1125 endy=68
style=3
linewidth=3 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Button font=104 startx=754 starty=747 endx=1104 endy=831
PHASE storeDSUCheck_ATP setvalue=-1 onlabel="Storing DSU Check" offlabel="Store DSU Check" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Text font=101 startx=757 starty=361 endx=1056 endy=442
BurntOrange direction=1 alignment=1
"NOTE: CHECK DSU N1"
"CLASSING ON THE CESM"
"ONLY..."
$END-OBJECT
***********
$OBJECT Text font=96 displayflag=TestDSUInst_F startx=776 starty=19 endx=1085 endy=58
Orange direction=1 alignment=0
"TEST DSU CHECK"
$END-OBJECT
***********
$OBJECT Text font=103 startx=831 starty=90 endx=1032 endy=120
Blue direction=1 alignment=0
"DSU (EEC) INFO"
$END-OBJECT
***********
$OBJECT Text font=2 startx=863 starty=118 endx=998 endy=134
Blue direction=1 alignment=0
"(AS PROGRAMMED)"
$END-OBJECT
***********
$OBJECT Line font=101 startx=1161 starty=85 endx=1165 endy=731
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
$OBJECT Text font=101 startx=1198 starty=360 endx=1497 endy=441
BurntOrange direction=1 alignment=1
"NOTE: CHECK DSU N1"
"CLASSING ON THE CESM"
"ONLY..."
$END-OBJECT
***********
$OBJECT String font=103 displayflag=CustDSUInst_F startx=1209 starty=264 endx=1538 endy=294
DSUPNCk_Stat labelspace=8 label="CUST DSU P/N:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Yellow = 1 "GND PWR"
BurntOrange = 2 "N/A"
BurntOrange = 3 "N/A"
Green = 4 "OK"
Red = 5 "ERROR"
BurntOrange = 6 "UNK"
$END-OBJECT
***********
$OBJECT String font=103 displayflag=TestDSUInst_F startx=1213 starty=263 endx=1569 endy=293
DSUPNCk_Stat labelspace=8 label="TEST DSU P/N:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Yellow = 1 "GND PWR"
Green = 2 "OK"
Red = 3 "DSU ERROR"
BurntOrange > 3 "N/A"
$END-OBJECT
***********
$OBJECT String font=103 startx=1214 starty=145 endx=1508 endy=175
EngRatingCk_F labelspace=8 label=" Engine Rating:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
$END-OBJECT
***********
$OBJECT String font=103 startx=1214 starty=184 endx=1508 endy=214
EngSNCk_F labelspace=8 label="     Engine S/N:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "N/A"
$END-OBJECT
***********
$OBJECT String font=103 startx=1214 starty=223 endx=1508 endy=253
ACTypeCk_F labelspace=8 label=" Aircraft Type:" labelcolor=Black stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
$END-OBJECT
***********
$OBJECT Text font=2 startx=1254 starty=117 endx=1497 endy=133
Blue direction=1 alignment=0
"(AS SELECTED) TO (DSU INFO)"
$END-OBJECT
***********
$OBJECT Text font=103 startx=1305 starty=89 endx=1439 endy=119
Blue direction=1 alignment=0
"COMPARE"
$END-OBJECT
***********
$END-DISPLAY

