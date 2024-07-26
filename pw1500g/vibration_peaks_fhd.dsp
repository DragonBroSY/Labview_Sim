$DISPLAY "Vibration Peaks FHD" background=DarkGray loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#if	ClearVibPeaks_TB
dummy:	startautotest (ClearVibPeaks_ATP)
dummy:	startautotest (ClearDVibPeaks_ATP)
ClearVibPeaks_TB:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Button font=100 displayflag=StrARVibPeaks_F startx=351 starty=728 endx=551 endy=828
PHASE RestoreARVibPeaks_ATP setvalue=-1 onlabel="As Received\nVibration Peaks\nRestored" offlabel="Restore\nAs Received\nVibration Peaks" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=1 startx=488 starty=87 endx=1343 endy=584
style=2
boxcolor=LightGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=1 startx=491 starty=368 endx=1341 endy=374
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=492 starty=167 endx=1342 endy=173
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT String font=100 startx=497 starty=97 endx=785 endy=120
VibPeakDate labelspace=7 label="Date Stored:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT String font=100 startx=497 starty=131 endx=790 endy=154
VibPeakTime labelspace=7 label="Time Stored:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=103 startx=518 starty=425 endx=640 endy=485
Blue direction=1 alignment=1
"P-Flange"
"Vibration"
$END-OBJECT
***********
$OBJECT Text font=103 startx=522 starty=238 endx=644 endy=298
Blue direction=1 alignment=1
"E-Flange"
"Vibration"
$END-OBJECT
***********
$OBJECT Button font=100 displayflag=StrVibPeaks_F startx=566 starty=728 endx=766 endy=828
PHASE RestoreVibPeaks_ATP setvalue=-1 onlabel="Vibration Peaks\nRestored" offlabel="Restore Final\nVibration Peaks" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Digital font=101 startx=678 starty=208 endx=868 endy=352
labelspace=5 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNFPk type="FLOAT" width=5 prec=2 label="Peak" 
VibFNFPkNF type="FLOAT" width=5 prec=0 label="NFan" 
VibFNFPkN1 type="FLOAT" width=5 prec=0 label="N1" 
VibFNFPkN2 type="FLOAT" width=5 prec=0 label="N2" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=682 starty=416 endx=872 endy=560
labelspace=5 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNFPk type="FLOAT" width=5 prec=2 label="Peak" 
VibRNFPkNF type="FLOAT" width=5 prec=0 label="NFan" 
VibRNFPkN1 type="FLOAT" width=5 prec=0 label="N1" 
VibRNFPkN2 type="FLOAT" width=5 prec=0 label="N2" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=742 starty=15 endx=1113 endy=72
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=760 starty=26 endx=1086 endy=65
BurntOrange direction=1 alignment=1
"VIBRATION PEAKS"
$END-OBJECT
***********
$OBJECT Button font=100 startx=781 starty=728 endx=981 endy=828
PHASE StoreARVibPeaks_ATP setvalue=-1 onlabel="As Received\nVibration Peaks\nStored" offlabel="Store\nAs Received\nVibration Peaks" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Line font=1 startx=782 starty=91 endx=788 endy=581
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=100 startx=801 starty=393 endx=1236 endy=416
Blue direction=1 alignment=0
"ACCEL                ACCEL                 ACCEL"
$END-OBJECT
***********
$OBJECT Text font=100 startx=802 starty=184 endx=1237 endy=207
Blue direction=1 alignment=0
"ACCEL                ACCEL                 ACCEL"
$END-OBJECT
***********
$OBJECT String font=101 startx=808 starty=696 endx=952 endy=725
StrARVibPeaks_F labelspace=0 label="As Received Vib Peaks:" labelcolor=Black stringcolor=Green parambox=2 paramboxcolor=Black shading=-1
Red = OFF "NOT Stored"
Green = ON "    Stored"
$END-OBJECT
***********
$OBJECT StatusIndicator font=103 startx=832 starty=600 endx=1113 endy=679
ADState textcolor=Black
Blue = 0 "ACCEL SELECTED"
Magenta = 1 "DECEL SELECTED"
$END-OBJECT
***********
$OBJECT Text font=100 startx=843 starty=95 endx=924 endy=164
Blue direction=1 alignment=1
"NFan"
"Tracked"
"(IPS SA)"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=882 starty=207 endx=957 endy=351
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFNFPk type="FLOAT" width=5 prec=2 
DVibFNFPkNF type="FLOAT" width=5 prec=0 
DVibFNFPkN1 type="FLOAT" width=5 prec=0 
DVibFNFPkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=884 starty=416 endx=959 endy=560
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRNFPk type="FLOAT" width=5 prec=2 
DVibRNFPkNF type="FLOAT" width=5 prec=0 
DVibRNFPkN1 type="FLOAT" width=5 prec=0 
DVibRNFPkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=100 startx=891 starty=393 endx=1327 endy=416
Magenta direction=1 alignment=0
"DECEL                 DECEL                 DECEL"
$END-OBJECT
***********
$OBJECT Text font=100 startx=894 starty=184 endx=1330 endy=207
Magenta direction=1 alignment=0
"DECEL                 DECEL                 DECEL"
$END-OBJECT
***********
$OBJECT Line font=1 startx=967 starty=91 endx=973 endy=581
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=977 starty=207 endx=1052 endy=351
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN1Pk type="FLOAT" width=5 prec=2 
VibFN1PkNF type="FLOAT" width=5 prec=0 
VibFN1PkN1 type="FLOAT" width=5 prec=0 
VibFN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=979 starty=416 endx=1054 endy=560
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN1Pk type="FLOAT" width=5 prec=2 
VibRN1PkNF type="FLOAT" width=5 prec=0 
VibRN1PkN1 type="FLOAT" width=5 prec=0 
VibRN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Button font=100 startx=996 starty=728 endx=1196 endy=828
PHASE StoreVibPeaks_ATP setvalue=-1 onlabel="Vibration Peaks\nStored" offlabel="Store Final\nVibration Peaks" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT String font=101 startx=1020 starty=696 endx=1164 endy=725
StrVibPeaks_F labelspace=0 label="Final Vib Peaks:" labelcolor=Black stringcolor=Red parambox=2 paramboxcolor=Black shading=-1
Red = OFF "NOT Stored"
Green = ON "    Stored"
$END-OBJECT
***********
$OBJECT Text font=100 startx=1032 starty=94 endx=1113 endy=163
Blue direction=1 alignment=1
"N1"
"Tracked"
"(IPS SA)"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1067 starty=207 endx=1142 endy=351
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFN1Pk type="FLOAT" width=5 prec=2 
DVibFN1PkNF type="FLOAT" width=5 prec=0 
DVibFN1PkN1 type="FLOAT" width=5 prec=0 
DVibFN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1069 starty=416 endx=1144 endy=560
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRN1Pk type="FLOAT" width=5 prec=2 
DVibRN1PkNF type="FLOAT" width=5 prec=0 
DVibRN1PkN1 type="FLOAT" width=5 prec=0 
DVibRN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Line font=1 startx=1152 starty=91 endx=1158 endy=581
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1162 starty=207 endx=1237 endy=351
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN2Pk type="FLOAT" width=5 prec=2 
VibFN2PkNF type="FLOAT" width=5 prec=0 
VibFN2PkN1 type="FLOAT" width=5 prec=0 
VibFN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1164 starty=416 endx=1239 endy=560
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN2Pk type="FLOAT" width=5 prec=2 
VibRN2PkNF type="FLOAT" width=5 prec=0 
VibRN2PkN1 type="FLOAT" width=5 prec=0 
VibRN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=100 startx=1216 starty=94 endx=1297 endy=163
Blue direction=1 alignment=1
"N2"
"Tracked"
"(IPS SA)"
$END-OBJECT
***********
$OBJECT Button font=100 startx=1246 starty=644 endx=1446 endy=724
PHASE StoreSaveEndParams_ATP setvalue=-1 onlabel="Data Stored\nfor Reports" offlabel="Store Data\nfor Reports" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=103 startx=1246 starty=728 endx=1446 endy=828
TOGGLE ClearVibPeaks_TB setvalue=-1 onlabel="Peaks Cleared" offlabel="Clear Peaks" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1252 starty=207 endx=1327 endy=351
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFN2Pk type="FLOAT" width=5 prec=2 
DVibFN2PkNF type="FLOAT" width=5 prec=0 
DVibFN2PkN1 type="FLOAT" width=5 prec=0 
DVibFN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=1254 starty=416 endx=1329 endy=560
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRN2Pk type="FLOAT" width=5 prec=2 
DVibRN2PkNF type="FLOAT" width=5 prec=0 
DVibRN2PkN1 type="FLOAT" width=5 prec=0 
DVibRN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$END-DISPLAY

