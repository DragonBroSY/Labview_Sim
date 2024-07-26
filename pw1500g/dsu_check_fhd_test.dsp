$DISPLAY "DSU Check FHD Test" background=Black loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$INITCALC
#C EECN1Clas mapped from Performance N1Clas Params until we can access the DSU DATA. (DJR 11/15/23)...
EECN1Clas1:	N1Clas1
EECN1Clas2:	N1Clas2
EECN1Clas3:	N1Clas3
EECN1Clas4:	N1Clas4
$END-CALC
$CALC
#C ************************************************************
#C **** DSUFault_Stat Moved to eecreceiver.cal DJR 5/10/24 ****
#C ************************************************************
#C **** TestDSU_Stat Moved to eecreceiver.cal DJR 3/20/24 *****
#C **** Renamed to DSUPNCk_Stat...
#C ************************************************************
#C dummy: startautotest (SetHwCfg_ATP)
#C #if TestDSUInst_F
#C TestEECDSUPN: concat (TestDSUBasePN HwCfgDSU)
#C EECDSUPN: concat (DSUBasePN HwCfgDSU)
#C DSUPNCk_F: compare (EECDSUPN TestDSUPN)
#C TestDSUPNCk_F: compare (TestEECDSUPN TestDSUPN)
#C #else
#C EECDSUPN: concat (DSUBasePN HwCfgDSU)
#C DSUPNCk_F: compare (EECDSUPN CustDSUPN)
#C TestDSUPNCk_F: 2
#C #endif
#C **********************************************
#if	TestDSUInst_F
EngSNCk_F:	compare ("999999" EECEngSN)
ACTypeCk_F:	compare ("CS100" EECACTypeTxt)
EngRatingCk_F:	compare ("PW1524G" EECEngModel)
#else	
EngSNCk_F:	compare (SerialNum EECEngSN)
ACTypeCk_F:	compare (ACTypeTxt EECACTypeTxt)
EngRatingCk_F:	compare (DashNumber EECEngModel)
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
style=1
linewidth=1 linecolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Line font=101 startx=293 starty=142 endx=1587 endy=144
linewidth=2 linecolor=White
shading=0
$END-OBJECT
***********
$OBJECT Line font=101 startx=294 starty=326 endx=1587 endy=328
linewidth=2 linecolor=White
shading=0
$END-OBJECT
***********
$OBJECT String font=21 startx=298 starty=49 endx=604 endy=76
TestDSUInst_F labelspace=8 label="Installed DSU: " labelcolor=DarkGray stringcolor=LightGray parambox=0 paramboxcolor=Pink shading=0
LightGray = 0 "Customer"
LightGray = 1 "Test"
$END-OBJECT
***********
$OBJECT Text font=158 startx=300 starty=114 endx=701 endy=136
LightGray direction=1 alignment=1
"(Info from OPEN QUESTIONS or TEST DATA)"
$END-OBJECT
***********
$OBJECT String font=21 displayflag=CustDSUInst_F startx=311 starty=147 endx=628 endy=178
EngModel labelspace=8 label=" Engine Rating:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=White shading=-2
$END-OBJECT
***********
$OBJECT String font=21 displayflag=TestDSUInst_F startx=311 starty=147 endx=620 endy=178
TRUE labelspace=8 label=" Engine Rating:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=White shading=-2
White = TRUE "PW1524G"
$END-OBJECT
***********
$OBJECT Text font=22 startx=315 starty=83 endx=681 endy=118
White direction=1 alignment=1
"Required Configuration"
$END-OBJECT
***********
$OBJECT String font=21 displayflag=CustDSUInst_F startx=316 starty=263 endx=660 endy=294
CustDSUPN labelspace=8 label="Data Part Num:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 displayflag=TestDSUInst_F startx=316 starty=263 endx=656 endy=294
TestDSUPN labelspace=8 label="Data Part Num:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 displayflag=CustDSUInst_F startx=319 starty=185 endx=641 endy=216
SerialNum labelspace=8 label="     Engine S/N:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 displayflag=TestDSUInst_F startx=319 starty=185 endx=595 endy=216
TRUE labelspace=8 label="     Engine S/N:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
White = TRUE "999999"
$END-OBJECT
***********
$OBJECT String font=21 displayflag=CustDSUInst_F startx=320 starty=225 endx=650 endy=256
ACTypeTxt labelspace=8 label=" Aircraft Type:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 displayflag=TestDSUInst_F startx=320 starty=225 endx=592 endy=256
TRUE labelspace=8 label=" Aircraft Type:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
White = TRUE "CS100"
$END-OBJECT
***********
$OBJECT Digital font=103 displayflag=FALSE startx=326 starty=361 endx=649 endy=521
labelspace=11 unitspace=1 spacing=10 labelcolor=LightGray parambox=2 paramboxcolor=Black shading=0
N1CLAS1 type="INTEGER" width=3 prec=0 label="N1 Class 1 (Band D):" 
N1CLAS2 type="INTEGER" width=3 prec=0 label="N1 Class 2 (Band C):" 
N1CLAS3 type="INTEGER" width=3 prec=0 label="N1 Class 3 (Band B):" 
N1CLAS4 type="INTEGER" width=3 prec=0 label="N1 Class 4 (Band A):" 
$END-OBJECT
***********
$OBJECT Text font=158 startx=332 starty=537 endx=650 endy=603
LightGray direction=1 alignment=1
"N1 Classing is for Reference ONLY."
"DSU N1 Classing can only"
"be verified on the CESL"
$END-OBJECT
***********
$OBJECT StatusIndicator font=20 startx=341 starty=747 endx=670 endy=843
EECPwr_Stat textcolor=Black
Green = 2 "EEC Ground Power\nON"
White = 1 "EEC Ground Power\nInTransit"
Orange = 0 "EEC Ground Power\nOFF"
$END-OBJECT
***********
$OBJECT Line font=101 startx=704 starty=84 endx=708 endy=730
linewidth=4 linecolor=White
shading=0
$END-OBJECT
***********
$OBJECT String font=21 startx=728 starty=146 endx=1095 endy=177
EECEngModel labelspace=8 label="Engine Rating:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 startx=728 starty=224 endx=1108 endy=255
EECACTypeTxt labelspace=8 label="Aircraft Type:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 startx=729 starty=185 endx=1059 endy=216
EECEngSN labelspace=8 label="    Engine S/N:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT String font=21 startx=730 starty=263 endx=1069 endy=294
EECDSUPN labelspace=8 label="Data Part Num:" labelcolor=LightGray stringcolor=White parambox=0 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=103 displayflag=FALSE startx=744 starty=550 endx=1067 endy=710
labelspace=11 unitspace=1 spacing=10 labelcolor=LightGray parambox=2 paramboxcolor=Black shading=0
EECN1Clas1 type="INTEGER" width=3 prec=0 label="N1 Class 1 (Band D):" 
EECN1Clas2 type="INTEGER" width=3 prec=0 label="N1 Class 2 (Band C):" 
EECN1Clas3 type="INTEGER" width=3 prec=0 label="N1 Class 3 (Band B):" 
EECN1Clas4 type="INTEGER" width=3 prec=0 label="N1 Class 4 (Band A):" 
$END-OBJECT
***********
$OBJECT Button font=22 startx=754 starty=747 endx=1104 endy=831
PHASE storeDSUCheck_ATP setvalue=-1 onlabel="Storing DSU Check" offlabel="Store DSU Check" \
labelcolor=White oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Text font=22 startx=765 starty=85 endx=1090 endy=120
White direction=1 alignment=1
"Installed DSU Config"
$END-OBJECT
***********
$OBJECT Box font=101 startx=806 starty=13 endx=1049 endy=70
style=3
linewidth=3 linecolor=Charcoal
boxcolor=DarkGray
shading=2
$END-OBJECT
***********
$OBJECT Text font=158 startx=806 starty=118 endx=1074 endy=140
LightGray direction=1 alignment=1
"(Current DSU as Programmed)"
$END-OBJECT
***********
$OBJECT Text font=22 startx=828 starty=24 endx=1024 endy=59
White direction=1 alignment=1
"DSU CHECK"
$END-OBJECT
***********
$OBJECT Line font=101 startx=1161 starty=85 endx=1165 endy=731
linewidth=4 linecolor=White
shading=0
$END-OBJECT
***********
$OBJECT String font=21 startx=1174 starty=290 endx=1631 endy=317
DSUFault_Stat labelspace=12 label="DSU Status Bit (357/27):" labelcolor=LightGray stringcolor=Orange parambox=0 paramboxcolor=Black shading=0
Orange = 0 "SW Not Active"
Orange = 1 "Gnd Pwr OFF"
Red = 2 "ERROR"
Green = 3 "OK (Test)"
Green = 4 "OK (Cust)"
Orange = 5 "Unk"
$END-OBJECT
***********
$OBJECT StatusIndicator font=20 startx=1184 starty=747 endx=1504 endy=843
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
N1Clas1Ck_F labelspace=8 label="N1 Class 1:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=590 endx=1486 endy=617
N1Clas2Ck_F labelspace=8 label="N1 Class 2:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=633 endx=1486 endy=660
N1Clas3Ck_F labelspace=8 label="N1 Class 3:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=101 displayflag=FALSE startx=1193 starty=675 endx=1486 endy=702
N1Clas4Ck_F labelspace=8 label="N1 Class 4:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "CK CESM"
$END-OBJECT
***********
$OBJECT String font=21 startx=1202 starty=147 endx=1480 endy=174
EngRatingCk_F labelspace=8 label=" Engine Rating:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "N/A"
$END-OBJECT
***********
$OBJECT String font=21 startx=1203 starty=247 endx=1542 endy=274
DSUPNCk_Stat labelspace=8 label="Data Part Num:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Yellow = 1 "GND PWR"
Green = 2 "OK (Test)"
BurntOrange = 3 "N/A"
Green = 4 "OK (Cust)"
Red = 5 "DSU ERROR"
$END-OBJECT
***********
$OBJECT String font=21 startx=1212 starty=179 endx=1490 endy=206
EngSNCk_F labelspace=8 label="     Engine S/N:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "N/A"
$END-OBJECT
***********
$OBJECT String font=21 startx=1214 starty=212 endx=1492 endy=239
ACTypeCk_F labelspace=8 label=" Aircraft Type:" labelcolor=LightGray stringcolor=Red parambox=0 paramboxcolor=Black shading=0
Red = 0 "ERROR"
Green = 1 "OK"
BurntOrange = 2 "N/A"
$END-OBJECT
***********
$OBJECT Text font=22 startx=1316 starty=84 endx=1417 endy=119
White direction=1 alignment=1
"Status"
$END-OBJECT
***********
$END-DISPLAY

