$DISPLAY "Vibration Peaks" background=DarkGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$CALC
#if	ClearVibPeaks_TB
dummy:	startautotest (ClearVibPeaks_ATP)
dummy:	startautotest (ClearDVibPeaks_ATP)
ClearVibPeaks_TB:	OFF
#endif	
$END-CALC
$STOREDISPLAY Append
$OBJECT Button font=100 displayflag=StrARVibPeaks_F startx=47 starty=725 endx=247 endy=825
PHASE RestoreARVibPeaks_ATP setvalue=-1 onlabel="As Received\nVibration Peaks\nRestored" offlabel="Restore\nAs Received\nVibration Peaks" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Box font=1 startx=184 starty=84 endx=1039 endy=581
style=2
boxcolor=LightGray
shading=3
$END-OBJECT
***********
$OBJECT Line font=1 startx=187 starty=365 endx=1037 endy=371
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Line font=1 startx=188 starty=164 endx=1038 endy=170
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT String font=100 startx=193 starty=94 endx=481 endy=117
VibPeakDate labelspace=7 label="Date Stored:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT String font=100 startx=193 starty=128 endx=486 endy=151
VibPeakTime labelspace=7 label="Time Stored:" labelcolor=Black stringcolor=Blue parambox=0 paramboxcolor=Black shading=0
$END-OBJECT
***********
$OBJECT Text font=103 startx=214 starty=422 endx=336 endy=482
Blue direction=1 alignment=1
"P-Flange"
"Vibration"
$END-OBJECT
***********
$OBJECT Text font=103 startx=218 starty=235 endx=340 endy=295
Blue direction=1 alignment=1
"E-Flange"
"Vibration"
$END-OBJECT
***********
$OBJECT Button font=100 displayflag=StrVibPeaks_F startx=262 starty=725 endx=462 endy=825
PHASE RestoreVibPeaks_ATP setvalue=-1 onlabel="Vibration Peaks\nRestored" offlabel="Restore Final\nVibration Peaks" \
labelcolor=Black oncolor=Green offcolor=Cyan
$END-OBJECT
***********
$OBJECT Digital font=101 startx=374 starty=205 endx=564 endy=349
labelspace=5 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFNFPk type="FLOAT" width=5 prec=2 label="Peak" 
VibFNFPkNF type="FLOAT" width=5 prec=0 label="NFan" 
VibFNFPkN1 type="FLOAT" width=5 prec=0 label="N1" 
VibFNFPkN2 type="FLOAT" width=5 prec=0 label="N2" 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=378 starty=413 endx=568 endy=557
labelspace=5 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRNFPk type="FLOAT" width=5 prec=2 label="Peak" 
VibRNFPkNF type="FLOAT" width=5 prec=0 label="NFan" 
VibRNFPkN1 type="FLOAT" width=5 prec=0 label="N1" 
VibRNFPkN2 type="FLOAT" width=5 prec=0 label="N2" 
$END-OBJECT
***********
$OBJECT Box font=101 startx=438 starty=12 endx=809 endy=67
style=2
boxcolor=Cyan
shading=2
$END-OBJECT
***********
$OBJECT Text font=104 startx=456 starty=23 endx=781 endy=62
BurntOrange direction=1 alignment=1
"VIBRATION PEAKS"
$END-OBJECT
***********
$OBJECT Button font=100 startx=477 starty=725 endx=677 endy=825
PHASE StoreARVibPeaks_ATP setvalue=-1 onlabel="As Received\nVibration Peaks\nStored" offlabel="Store\nAs Received\nVibration Peaks" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Line font=1 startx=478 starty=88 endx=484 endy=578
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Text font=100 startx=497 starty=390 endx=932 endy=413
Blue direction=1 alignment=0
"ACCEL                ACCEL                 ACCEL"
$END-OBJECT
***********
$OBJECT Text font=100 startx=498 starty=181 endx=933 endy=204
Blue direction=1 alignment=0
"ACCEL                ACCEL                 ACCEL"
$END-OBJECT
***********
$OBJECT String font=101 startx=504 starty=693 endx=648 endy=722
StrARVibPeaks_F labelspace=0 label="As Received Vib Peaks:" labelcolor=Black stringcolor=Green parambox=2 paramboxcolor=Black shading=-1
Red = OFF "NOT Stored"
Green = ON "    Stored"
$END-OBJECT
***********
$OBJECT StatusIndicator font=103 startx=528 starty=597 endx=809 endy=676
ADState textcolor=Black
Blue = 0 "ACCEL SELECTED"
Magenta = 1 "DECEL SELECTED"
$END-OBJECT
***********
$OBJECT Text font=100 startx=539 starty=92 endx=620 endy=161
Blue direction=1 alignment=1
"NFan"
"Tracked"
"(IPS SA)"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=578 starty=204 endx=653 endy=348
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFNFPk type="FLOAT" width=5 prec=2 
DVibFNFPkNF type="FLOAT" width=5 prec=0 
DVibFNFPkN1 type="FLOAT" width=5 prec=0 
DVibFNFPkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=580 starty=413 endx=655 endy=557
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRNFPk type="FLOAT" width=5 prec=2 
DVibRNFPkNF type="FLOAT" width=5 prec=0 
DVibRNFPkN1 type="FLOAT" width=5 prec=0 
DVibRNFPkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=100 startx=587 starty=390 endx=1023 endy=413
Magenta direction=1 alignment=0
"DECEL                 DECEL                 DECEL"
$END-OBJECT
***********
$OBJECT Text font=100 startx=590 starty=181 endx=1026 endy=204
Magenta direction=1 alignment=0
"DECEL                 DECEL                 DECEL"
$END-OBJECT
***********
$OBJECT Line font=1 startx=663 starty=88 endx=669 endy=578
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=673 starty=204 endx=748 endy=348
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN1Pk type="FLOAT" width=5 prec=2 
VibFN1PkNF type="FLOAT" width=5 prec=0 
VibFN1PkN1 type="FLOAT" width=5 prec=0 
VibFN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=675 starty=413 endx=750 endy=557
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN1Pk type="FLOAT" width=5 prec=2 
VibRN1PkNF type="FLOAT" width=5 prec=0 
VibRN1PkN1 type="FLOAT" width=5 prec=0 
VibRN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Button font=100 startx=692 starty=725 endx=892 endy=825
PHASE StoreVibPeaks_ATP setvalue=-1 onlabel="Vibration Peaks\nStored" offlabel="Store Final\nVibration Peaks" \
labelcolor=BurntOrange oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT String font=101 startx=716 starty=693 endx=860 endy=722
StrVibPeaks_F labelspace=0 label="Final Vib Peaks:" labelcolor=Black stringcolor=Red parambox=2 paramboxcolor=Black shading=-1
Red = OFF "NOT Stored"
Green = ON "    Stored"
$END-OBJECT
***********
$OBJECT Text font=100 startx=728 starty=91 endx=809 endy=160
Blue direction=1 alignment=1
"N1"
"Tracked"
"(IPS SA)"
$END-OBJECT
***********
$OBJECT Digital font=101 startx=763 starty=204 endx=838 endy=348
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFN1Pk type="FLOAT" width=5 prec=2 
DVibFN1PkNF type="FLOAT" width=5 prec=0 
DVibFN1PkN1 type="FLOAT" width=5 prec=0 
DVibFN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=765 starty=413 endx=840 endy=557
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRN1Pk type="FLOAT" width=5 prec=2 
DVibRN1PkNF type="FLOAT" width=5 prec=0 
DVibRN1PkN1 type="FLOAT" width=5 prec=0 
DVibRN1PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Line font=1 startx=848 starty=88 endx=854 endy=578
linewidth=2 linecolor=Black
shading=-2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=858 starty=204 endx=933 endy=348
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibFN2Pk type="FLOAT" width=5 prec=2 
VibFN2PkNF type="FLOAT" width=5 prec=0 
VibFN2PkN1 type="FLOAT" width=5 prec=0 
VibFN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=860 starty=413 endx=935 endy=557
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
VibRN2Pk type="FLOAT" width=5 prec=2 
VibRN2PkNF type="FLOAT" width=5 prec=0 
VibRN2PkN1 type="FLOAT" width=5 prec=0 
VibRN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Text font=100 startx=912 starty=91 endx=993 endy=160
Blue direction=1 alignment=1
"N2"
"Tracked"
"(IPS SA)"
$END-OBJECT
***********
$OBJECT Button font=100 startx=942 starty=641 endx=1142 endy=721
PHASE StoreSaveEndParams_ATP setvalue=-1 onlabel="Data Stored\nfor Reports" offlabel="Store Data\nfor Reports" \
labelcolor=Black oncolor=Green offcolor=LightGray
$END-OBJECT
***********
$OBJECT Button font=103 startx=942 starty=725 endx=1142 endy=825
TOGGLE ClearVibPeaks_TB setvalue=-1 onlabel="Peaks Cleared" offlabel="Clear Peaks" \
labelcolor=Black oncolor=Green offcolor=DarkGray
$END-OBJECT
***********
$OBJECT Digital font=101 startx=948 starty=204 endx=1023 endy=348
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibFN2Pk type="FLOAT" width=5 prec=2 
DVibFN2PkNF type="FLOAT" width=5 prec=0 
DVibFN2PkN1 type="FLOAT" width=5 prec=0 
DVibFN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$OBJECT Digital font=101 startx=950 starty=413 endx=1025 endy=557
labelspace=0 unitspace=0 spacing=5 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
DVibRN2Pk type="FLOAT" width=5 prec=2 
DVibRN2PkNF type="FLOAT" width=5 prec=0 
DVibRN2PkN1 type="FLOAT" width=5 prec=0 
DVibRN2PkN2 type="FLOAT" width=5 prec=0 
$END-OBJECT
***********
$END-DISPLAY

