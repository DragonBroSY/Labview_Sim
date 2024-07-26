$LIMITS
$PARAMETER MOT2Low_F
$RUN
$LOWER  Green  "" "MOT > 51.7 DegC, OK to Accel Above Ground Idle..."
ON  Red  "MOT BELOW 51.7 DegC HOLD AT Ground IDLE..." ""
$END-PARAMETER

$PARAMETER PAIRsN2Pk
$START
$LOWER  Yellow  "" ""
PAIRsN2Mn  Green  "" ""
PAIRsN2Mx  Red  "" ""
$END-PARAMETER

$PARAMETER PAIRsN2
$START
$LOWER  Yellow  "" ""
PAIRsN2Mn  Green  "" ""
PAIRsN2Mx  Red  "" ""
$END-PARAMETER

$PARAMETER PAIRs
$START
$LOWER  Yellow  "" ""
PAIRsMn  Green  "" ""
PAIRsMx  Red  "" ""
$RUN
$LOWER  Green  "" ""
50.2  Red  "" ""
$END-PARAMETER

$PARAMETER StageTmr
$START
$LOWER  Green  "" ""
StageTmrLim  Red  "" ""
$RUN
$LOWER  Green  "" ""
StageTmrLim  Red  "" ""
$END-PARAMETER

$PARAMETER TDEWPT
$START
$LOWER  Green  "" ""
TDEWPTLim  Red  "" ""
$RUN
$LOWER  Green  "" ""
TDEWPTLim  Red  "" ""
$END-PARAMETER

$PARAMETER FuelTempMeter
$START
$LOWER  Green  "" ""
65.0  Red  "Check Test Cell Fuel Temp bulb, Out of Limits." ""
$RUN
$LOWER  Green  "" ""
65.0  Red  "Check Test Cell Fuel Temp bulb, Out of Limits." ""
$END-PARAMETER

$PARAMETER VXI_Chassis
$START
$LOWER  Green  "" ""     NORMAL=1 
VXIChassisLim  Red  "VXI Chassis OVER TEMP, Please investigate VXI." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VXIChassisLim  Red  "VXI Chassis OVER TEMP, Please investigate VXI." ""      
$END-PARAMETER

$PARAMETER FuelSuppReg_O
$START
$LOWER  Red  "" "INLET Fuel Pressure LOW"     NORMAL=1 
TRUE  Green  "INLET Fuel Pressure OK" ""      
$RUN
$LOWER  Red  "" "INLET Fuel Pressure LOW"     NORMAL=1 
TRUE  Green  "INLET Fuel Pressure OK" ""      
$END-PARAMETER

$PARAMETER ScanFilterDiff
$START
$LOWER  Red  "" ""     NORMAL=1 
-0.50  Green  "" ""      
OilFiltDiffMx  Red  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
-0.50  Green  "" ""      
OilFiltDiffMx  Red  "" ""      
$END-PARAMETER

$PARAMETER WfLtOff
$START
$LOWER  Yellow  "" ""     NORMAL=1 
WfLtOffMn  Green  "" ""      
WfLtOffMx  Yellow  "" ""      
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
WfLtOffMn  Green  "" ""      
WfLtOffMx  Yellow  "" ""      
$END-PARAMETER

$PARAMETER FuelFilterDiff
$RUN
$LOWER  Green  "" ""     NORMAL=1 
FFDiffMaxLim  Red  "Fuel House Fuel Filter above Max Limit of %vFFDiffMaxLim Replace Filter." ""      
$END-PARAMETER

$PARAMETER FIP_PSIG
$START
$LOWER  Yellow  "" ""     NORMAL=1 
FIPMn  Green  "" ""      
FIPMx  Yellow  "" ""      
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
FIPMn  Green  "" ""      
FIPMx  Yellow  "" ""      
$END-PARAMETER

$PARAMETER SAP
$START
$LOWER  Yellow  "" ""     NORMAL=1 
SAPMn  Green  "" ""      
SAPMx  Yellow  "" ""      
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
SAPMn  Green  "" ""      
SAPMx  Yellow  "" ""      
$END-PARAMETER

$PARAMETER UPSVolt_Stat
$START
$LOWER  Green  "" "DC UPS Battery Backup Now Available..."     NORMAL=1 
1.00  Black  "DC UPS Battery Voltage Normal %vUPSBatCap " "DC UPS Battery Voltage Normal %vUPSBatCap "      
2.00  Red  "DC UPS Battery Voltage LOW %vUPSBatCap Min 23.0 VDC..." "DC UPS Battery Voltage LOW %vUPSBatCap Min 23.0 VDC..."      
3.00  Red  "DC UPS System Failed..." ""      
$RUN
$LOWER  Green  "" "DC UPS Battery Backup Now Available..."     NORMAL=1 
1.00  Black  "DC UPS Battery Voltage Normal %vUPSBatCap " "DC UPS Battery Voltage Normal %vUPSBatCap "      
2.00  Red  "DC UPS Battery Voltage LOW %vUPSBatCap Min 23.0 VDC..." "DC UPS Battery Voltage LOW %vUPSBatCap Min 23.0 VDC..."      
3.00  Red  "DC UPS System Failed..." ""      
$END-PARAMETER

$PARAMETER PLAmp_Stat
$START
$LOWER  Green  "" ""     NORMAL=1 
1.00  Red  "Set PL Amp Manual Control to EXTERNAL" "Set PL Amp Manual Control to EXTERNAL"      
2.00  Red  "Set Power Lever Amplifier Current Switch to REMOTE" "Set Power Lever Amplifier Current Switch to REMOTE"      
3.00  Red  "Set Power Lever Amplifier Channel Switch to REMOTE" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
1.00  Red  "Set PL Amp Manual Control to EXTERNAL" "Set PL Amp Manual Control to EXTERNAL"      
2.00  Red  "Set Power Lever Amplifier Current Switch to REMOTE" "Set Power Lever Amplifier Current Switch to REMOTE"      
3.00  Red  "Set Power Lever Amplifier Channel Switch to REMOTE" ""      
$END-PARAMETER

$PARAMETER SHum
$START
$LOWER  Green  "" ""     NORMAL=1 
SpHumCorrLim  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
SpHumCorrLim  Red  "" ""      
$END-PARAMETER

$PARAMETER EFSO_I
$START
$LOWER  Black  "" "EFSO Deactivated"     NORMAL=1 
1.00  Red  "EFSO Activated" ""      storeevent=ON
$RUN
$LOWER  Black  "" "EFSO Deactivated"     NORMAL=1 
1.00  Red  "EFSO Activated" ""      storeevent=ON
$END-PARAMETER

$PARAMETER PBarMessFlag
$START
$LOWER  Black  "" "Pbar is using the Mensor PBar1 Transducer."     NORMAL=1
1.00  Yellow  "Pbar is using the Met4 PBar2 Transducer." "Pbar is using the Met4 PBar2 Transducer."
2.00  Red  "Pbar OUT OF LIMITS..." ""
$RUN
$LOWER  Black  "" "Pbar is using the Mensor PBar1 Transducer."     NORMAL=1
1.00  Yellow  "Pbar is using the Met4 PBar2 Transducer." "Pbar is using the Met4 PBar2 Transducer."
2.00  Red  "Pbar OUT OF LIMITS..." ""
$END-PARAMETER

$PARAMETER IDGOilIn
$START
$LOWER  Green  "" ""     NORMAL=1 
127.00  Red  "IDG Oil In Temp Exceeds the limit of %f ." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
127.00  Red  "IDG Oil In Temp Exceeds the limit of %f ." ""      
$END-PARAMETER

$PARAMETER IDGOilOut
$START
$LOWER  Green  "" ""     NORMAL=1 
140.00  Red  "IDG Oil Out Temp Exceeds the limit of %f ." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
140.00  Red  "IDG Oil Out Temp Exceeds the limit of %f ." ""      
$END-PARAMETER

$PARAMETER OilQ
$START
$LOWER  Red  "" ""
5.0  Green  "" ""
$RUN
$LOWER  Red  "" "Oil Quantity of %vOilQ is below the safe limit of 2 Qts."     NORMAL=1 storeevent=ON
2.0  Yellow  "" "Oil Quantity of %vOilQ is below the Yellow limit of 5 Qts."
5.0  Green  "" ""
$END-PARAMETER

$PARAMETER MOPCor
$START
$LOWER  Red  "" ""     NORMAL=1 
MOPCorMn  Green  "" ""      
MOPCorMx  Red  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
MOPCorMn  Green  "" ""      
MOPCorMx  Red  "" ""      
$END-PARAMETER

$PARAMETER MOP_PSIG
$START
$LOWER  Red  "" ""     NORMAL=1 
MOPMn  Green  "" ""      
MOPMx  Red  "" ""      
$RUN
$LOWER  Red  "" "MOP below Min Safe limit of %vMOPSafe Mn ."     NORMAL=1 
MOPSafeMn  Yellow  "" ""      
MOPMn  Green  "" ""      
MOPMx  Yellow  "MOP Above Max Limit of %vMOPMx ." ""      
MOPSafeMx  Red  "MOP Above Max Safe Limit of %vMOPSafeMx ." ""      
$END-PARAMETER

$PARAMETER POILAC
$START
$LOWER  Red  "" ""     NORMAL=1 
MOPMn  Green  "" ""      
MOPMx  Red  "" ""      
$RUN
$LOWER  Red  "" "MOP below Min Safe limit of %vMOPSafe Mn ."     NORMAL=1 
MOPSafeMn  Yellow  "" ""      
MOPMn  Green  "" ""      
MOPMx  Yellow  "MOP Above Max Limit of %vMOPMx ." ""      
MOPSafeMx  Red  "MOP Above Max Safe Limit of %vMOPSafeMx ." ""      
$END-PARAMETER

$PARAMETER TOILAC
$START
$LOWER  Yellow  "" ""     NORMAL=1 
MOTMn  Green  "" ""      
MOTMx  Red  "" ""      
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
MOTMn  Green  "" ""      
MOTMx  Red  "" ""      
$END-PARAMETER

$PARAMETER GGCCN1C2Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCN2C2Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCWFDelta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCP25Q2Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCPS3Q2Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCT25Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCT3Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCT45Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER GGCCT49Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.001  Yellow  "" ""      
$END-PARAMETER

$PARAMETER FNTR2Delta
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
0.0  Green  "" ""      
0.01  Yellow  "" ""      
$END-PARAMETER

$PARAMETER FNTR2_AC
$START
$LOWER  Green  "" ""     NORMAL=1 
FNTR2_DECMx  White  "" ""      
FNTR2_DEC  Green  "" ""      
FNTR2_ACC30  White  "" ""      
FNTR2_ACC30Mx  Green  "" ""      
FNTR2_ACC90  White  "" ""      
FNTR2_ACC90Mx  Green  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
FNTR2_DECMx  White  "" ""      
FNTR2_DEC  Green  "" ""      
FNTR2_ACC30  White  "" ""      
FNTR2_ACC30Mx  Green  "" ""      
FNTR2_ACC90  White  "" ""      
FNTR2_ACC90Mx  Green  "" ""      
$END-PARAMETER

$PARAMETER FNTR2
$RUN
$LOWER  Green  "" ""     NORMAL=1 
FnDMin  White  "" ""      
FnDMax  Green  "" ""      
FnCMin  White  "" ""      
FnCMax  Green  "" ""      
FnBMin  White  "" ""      
FnBMax  Green  "" ""      
FnAMin  White  "" ""      
FnAMax  Green  "" ""      
$END-PARAMETER

$PARAMETER StartPeakEGT
$START
$LOWER  Green  "" ""     NORMAL=1 
EGTStrtMxYLim  Yellow  "" ""      
EGTStrtMxRLim  Red  "EGT Start Max Limit of %f Exceeded." ""      storeevent=ON
$RUN
$LOWER  Green  "" ""     NORMAL=1 
EGTStrtMxYLim  Yellow  "" ""      
EGTStrtMxRLim  Red  "" ""      
$END-PARAMETER

$PARAMETER StrtOnToIdleTmr
$START
$LOWER  Green  "" ""     NORMAL=1 
StrtOnToIdleMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
StrtOnToIdleMx  Red  "" ""      
$END-PARAMETER

$PARAMETER FuelontoLtOff
$START
$LOWER  Green  "" ""     NORMAL=1 
FuelOnToLOMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
FuelOnToLOMx  Red  "" ""      
$END-PARAMETER

$PARAMETER EEC_EGT
$START
$LOWER  Green  "" ""     NORMAL=1 
EGTStrtMxYLim  Yellow  "" ""      
EGTStrtMxRLim  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
EGTRunMxYLim  Yellow  "" ""      
EGTRunMxRLim  Red  "" ""      
$END-PARAMETER

$PARAMETER N1S
$START
$LOWER  Green  "" ""     NORMAL=1 
100.0  Yellow  "" ""    
N1Red  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
N1Red  Red  "N1 RPM Above the Max RedLine Limit..." ""      storeevent=ON
$END-PARAMETER

$PARAMETER N1PctS
$START
$LOWER  Green  "" ""     NORMAL=1 
5.0  Yellow  "" ""   
N1RPct  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
N1RPct  Red  "" ""      
$END-PARAMETER

$PARAMETER N2S
$START
$LOWER  Green  "" ""     NORMAL=1 
200.0  Yellow  "" ""   
N2Red  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
N2Red  Red  "N2 RPM Above the Max RedLine Limit..." ""      storeevent=ON
$END-PARAMETER

$PARAMETER N2PctS
$START
$LOWER  Green  "" ""     NORMAL=1 
5.0  Yellow  "" ""   
N2RPct  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
N2RPct  Red  "" ""      
$END-PARAMETER

$PARAMETER VibFBB
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFBBRMx  Red  "Vib Interm Case Broad Band Above the Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFBBMx  Yellow  "Vib Interm Case BB Above Max Acceptance Limit..." ""      
VibFBBRMx  Red  "Vib Interm Case Broad Band Above the Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibFNF
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFNFRMx  Red  "Vib Interm Case Tracked NF Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFNFMx  Yellow  "Vib Interm Case Tracked NF Above Max Acceptance Limit..." ""      
VibFNFRMx  Red  "Vib Interm Case Tracked NF Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibFN1
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFN1RMx  Red  "Vib Interm Case Tracked N1 Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFN1Mx  Yellow  "Vib Interm Case Tracked N1 Above Max Acceptance Limit..." ""      
VibFN1RMx  Red  "Vib Interm Case Tracked N1 Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibFN2
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFN2RMx  Red  "Vib Interm Case Tracked N2 Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFN2Mx  Yellow  "Vib Interm Case Tracked N2 Above Max Limit..." ""      
VibFN2RMx  Red  "Vib Interm Case Tracked N2 Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibRBB
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRBBRMx  Red  "Vib P-Flange Broad Band Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRBBMx  Yellow  "Vib P-Flange Broad Band Above Acceptance Limit..." ""     
VibRBBRMx  Red  "Vib P-Flange Broad Band Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibRNF
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRNFRMx  Red  "Vib P-Flange Tracked NF Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRNFMx  Yellow  "Vib P-Flange Tracked NF Above Max Acceptance Limit..." ""      
VibRNFRMx  Red  "Vib P-Flange Tracked NF Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibRN1
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRN1RMx  Red  "Vib P-Flange Tracked N1 Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRN1Mx  Yellow  "Vib P-Flange Tracked N1 Above Max Acceptance Limit..." ""      
VibRN1RMx  Red  "Vib P-Flange Tracked N1 Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibRN2
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRN2Mx  Red  "Vib P-Flange Tracked N2 Above Max Limit..." ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRN2Mx  Yellow  "Vib P-Flange Tracked N2 Above Max Acceptance Limit..." ""      
VibRN2RMx  Red  "Vib P-Flange Tracked N2 Above Max Limit..." ""      
$END-PARAMETER

$PARAMETER VibFBBPk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFBBMx  Yellow  "" ""      
VibFBBRMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFBBMx  Yellow  "" ""      
VibFBBRMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibFNFPk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFNFMx  Yellow  "" ""      
VibFNFRMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFNFMx  Yellow  "" ""      
VibFNFRMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibFN1Pk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFN1Mx  Yellow  "" ""      
VibFN1RMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFN1Mx  Yellow  "" ""      
VibFN1RMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibFN2Pk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibFN2Mx  Yellow  "" ""      
VibFN2RMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibFN2Mx  Yellow  "" ""      
VibFN2RMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibRBBPk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRBBMx  Yellow  "" ""      
VibRBBRMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRBBMx  Yellow  "" ""      
VibRBBRMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibRNFPk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRNFMx  Yellow  "" ""      
VibRNFRMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRNFMx  Yellow  "" ""      
VibRNFRMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibRN1Pk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRN1Mx  Yellow  "" ""      
VibRN1RMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRN1Mx  Yellow  "" ""      
VibRN1RMx  Red  "" ""      
$END-PARAMETER

$PARAMETER VibRN2Pk
$START
$LOWER  Green  "" ""     NORMAL=1 
VibRN2Mx  Yellow  "" ""      
VibRN2RMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
VibRN2Mx  Yellow  "" ""      
VibRN2RMx  Red  "" ""      
$END-PARAMETER

$PARAMETER SigOilConsRate
$START
$LOWER  Green  "" ""     NORMAL=1 
OilConsMx  Yellow  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
OilConsMx  Yellow  "" ""      
$END-PARAMETER

$PARAMETER NeckOilConsRate
$START
$LOWER  Green  "" ""     NORMAL=1 
OilConsMx  Yellow  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
OilConsMx  Yellow  "" ""      
$END-PARAMETER

$PARAMETER AccelTm30
$START
$LOWER  Green  "" ""     NORMAL=1 
AccelTmMx30  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
AccelTmMx30  Red  "" ""      
$END-PARAMETER

$PARAMETER AccelTm90
$START
$LOWER  Green  "" ""     NORMAL=1 
AccelTmMx90  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
AccelTmMx90  Red  "" ""      
$END-PARAMETER

$PARAMETER DecelTm
$START
$LOWER  Green  "" ""     NORMAL=1 
DecelTmMx  Red  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
DecelTmMx  Red  "" ""      
$END-PARAMETER

$PARAMETER FanLoopA_Stat
$START
$LOWER  Yellow  "" "Fan Fire Loop A FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Fan Fire Loop A Ok" "Fan Fire Loop A Ok"      
1.0  Red  "Fan Fire Loop A <<FIRE>>" "Fan Fire Loop A <<FIRE>>"      
2.0  Black  "Fan Fire Loop A Continuity Check PASSED" "Fan Fire Loop A Continuity Check PASSED"      
3.0  Red  "Fan Fire Loop A Continuity Check FAULT" "Fan Fire Loop A Continuity Check FAULT"      
4.0  Black  "Fan Fire Loop A Ground Check PASSED" "Fan Fire Loop A Ground Check PASSED"      
5.0  Red  "Fan Fire Loop A Ground Check FAULT" "Fan Fire Loop A Ground Check FAULT"      
6.0  BurntOrange  "Fan Fire Loop A UNKNOWN" "Fan Fire Loop A UNKNOWN"      
7.0  BurntOrange  "Fan Fire Loop A DISABLED" ""      
$RUN
$LOWER  Yellow  "" "Fan Fire Loop A FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Fan Fire Loop A Ok" "Fan Fire Loop A Ok"      
1.0  Red  "Fan Fire Loop A <<FIRE>>" "Fan Fire Loop A <<FIRE>>"      
2.0  Black  "Fan Fire Loop A Continuity Check PASSED" "Fan Fire Loop A Continuity Check PASSED"      
3.0  Red  "Fan Fire Loop A Continuity Check FAULT" "Fan Fire Loop A Continuity Check FAULT"      
4.0  Black  "Fan Fire Loop A Ground Check PASSED" "Fan Fire Loop A Ground Check PASSED"      
5.0  Red  "Fan Fire Loop A Ground Check FAULT" "Fan Fire Loop A Ground Check FAULT"      
6.0  BurntOrange  "Fan Fire Loop A UNKNOWN" "Fan Fire Loop A UNKNOWN"      
7.0  BurntOrange  "Fan Fire Loop A DISABLED" ""      
$END-PARAMETER

$PARAMETER FanLoopB_Stat
$START
$LOWER  Yellow  "" "Fan Fire Loop B FAULT"  GRACE=2.00   NORMAL=1 
0.0 Black  "Fan Fire Loop B Ok" "Fan Fire Loop B Ok"      
1.0  Red  "Fan Fire Loop B <<FIRE>>" "Fan Fire Loop B <<FIRE>>"      
2.0  Black  "Fan Fire Loop B Continuity Check PASSED" "Fan Fire Loop B Continuity Check PASSED"      
3.0  Red  "Fan Fire Loop B Continuity Check FAULT" "Fan Fire Loop B Continuity Check FAULT"      
4.0  Black  "Fan Fire Loop B Ground Check PASSED" "Fan Fire Loop B Ground Check PASSED"      
5.0  Red  "Fan Fire Loop B Ground Check FAULT" "Fan Fire Loop B Ground Check FAULT"      
6.0  BurntOrange  "Fan Fire Loop B UNKNOWN" "Fan Fire Loop B UNKNOWN"      
7.0  BurntOrange  "Fan Fire Loop B DISABLED" ""      
$RUN
$LOWER  Yellow  "" "Fan Fire Loop B FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Fan Fire Loop B Ok" "Fan Fire Loop B Ok"      
1.0  Red  "Fan Fire Loop B <<FIRE>>" "Fan Fire Loop B <<FIRE>>"      
2.0  Black  "Fan Fire Loop B Continuity Check PASSED" "Fan Fire Loop B Continuity Check PASSED"      
3.0  Red  "Fan Fire Loop B Continuity Check FAULT" "Fan Fire Loop B Continuity Check FAULT"      
4.0  Black  "Fan Fire Loop B Ground Check PASSED" "Fan Fire Loop B Ground Check PASSED"      
5.0  Red  "Fan Fire Loop B Ground Check FAULT" "Fan Fire Loop B Ground Check FAULT"      
6.0  BurntOrange  "Fan Fire Loop B UNKNOWN" "Fan Fire Loop B UNKNOWN"      
7.0  BurntOrange  "Fan Fire Loop B DISABLED" ""      
$END-PARAMETER

$PARAMETER CoreLoopA_Stat
$START
$LOWER  Yellow  "" "Core Fire Loop A FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Core Fire Loop A Ok" "Core Fire Loop A Ok"      
1.0  Red  "Core Fire Loop A <<FIRE>>" "Core Fire Loop A <<FIRE>>"      
2.0  Black  "Core Fire Loop A Continuity Check PASSED" "Core Fire Loop A Continuity Check PASSED"      
3.0  Red  "Core Fire Loop A Continuity Check FAULT" "Core Fire Loop A Continuity Check FAULT"      
4.0  Black  "Core Fire Loop A Ground Check PASSED" "Core Fire Loop A Ground Check PASSED"      
5.0  Red  "Core Fire Loop A Ground Check FAULT" "Core Fire Loop A Ground Check FAULT"      
6.0  BurntOrange  "Core Fire Loop A UNKNOWN" "Core Fire Loop A UNKNOWN"      
7.0  BurntOrange  "Core Fire Loop A DISABLED" ""      
$RUN
$LOWER  Yellow  "" "Core Fire Loop A FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Core Fire Loop A Ok" "Core Fire Loop A Ok"      
1.0  Red  "Core Fire Loop A <<FIRE>>" "Core Fire Loop A <<FIRE>>"      
2.0  Black  "Core Fire Loop A Continuity Check PASSED" "Core Fire Loop A Continuity Check PASSED"      
3.0  Red  "Core Fire Loop A Continuity Check FAULT" "Core Fire Loop A Continuity Check FAULT"      
4.0  Black  "Core Fire Loop A Ground Check PASSED" "Core Fire Loop A Ground Check PASSED"      
5.0  Red  "Core Fire Loop A Ground Check FAULT" "Core Fire Loop A Ground Check FAULT"      
6.0  BurntOrange  "Core Fire Loop A UNKNOWN" "Core Fire Loop A UNKNOWN"      
7.0  BurntOrange  "Core Fire Loop A DISABLED" ""      
$END-PARAMETER

$PARAMETER CoreLoopB_Stat
$START
$LOWER  Yellow  "" "Core Fire Loop B FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Core Fire Loop B Ok" "Core Fire Loop B Ok"      
1.0  Red  "Core Fire Loop B <<FIRE>>" "Core Fire Loop B <<FIRE>>"      
2.0  Black  "Core Fire Loop B Continuity Check PASSED" "Core Fire Loop B Continuity Check PASSED"      
3.0  Red  "Core Fire Loop B Continuity Check FAULT" "Core Fire Loop B Continuity Check FAULT"      
4.0  Black  "Core Fire Loop B Ground Check PASSED" "Core Fire Loop B Ground Check PASSED"      
5.0  Red  "Core Fire Loop B Ground Check FAULT" "Core Fire Loop B Ground Check FAULT"      
6.0  BurntOrange  "Core Fire Loop B UNKNOWN" "Core Fire Loop B UNKNOWN"      
7.0  BurntOrange  "Core Fire Loop B DISABLED" ""      
$RUN
$LOWER  Yellow  "" "Core Fire Loop B FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Core Fire Loop B Ok" "Core Fire Loop B Ok"      
1.0  Red  "Core Fire Loop B <<FIRE>>" "Core Fire Loop B <<FIRE>>"      
2.0  Black  "Core Fire Loop B Continuity Check PASSED" "Core Fire Loop B Continuity Check PASSED"      
3.0  Red  "Core Fire Loop B Continuity Check FAULT" "Core Fire Loop B Continuity Check FAULT"      
4.0  Black  "Core Fire Loop B Ground Check PASSED" "Core Fire Loop B Ground Check PASSED"      
5.0  Red  "Core Fire Loop B Ground Check FAULT" "Core Fire Loop B Ground Check FAULT"      
6.0  BurntOrange  "Core Fire Loop B UNKNOWN" "Core Fire Loop B UNKNOWN"      
7.0  BurntOrange  "Core Fire Loop B DISABLED" ""      
$END-PARAMETER

$PARAMETER OvhtLoopA_Stat
$START
$LOWER  Yellow  "" "Ovht Fire Loop A FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Ovht Fire Loop A Ok" "Ovht Fire Loop A Ok"      
1.0  Red  "Ovht Fire Loop A <<FIRE>>" "Ovht Fire Loop A <<FIRE>>"      
2.0  Black  "Ovht Fire Loop A Continuity Check PASSED" "Ovht Fire Loop A Continuity Check PASSED"      
3.0  Red  "Ovht Fire Loop A Continuity Check FAULT" "Ovht Fire Loop A Continuity Check FAULT"      
4.0  Black  "Ovht Fire Loop A Ground Check PASSED" "Ovht Fire Loop A Ground Check PASSED"      
5.0  Red  "Ovht Fire Loop A Ground Check FAULT" "Ovht Fire Loop A Ground Check FAULT"      
6.0  BurntOrange  "Ovht Fire Loop A UNKNOWN" "Ovht Fire Loop A UNKNOWN"      
7.0  BurntOrange  "Ovht Fire Loop A DISABLED" ""      
$RUN
$LOWER  Yellow  "" "Ovht Fire Loop A FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Ovht Fire Loop A Ok" "Ovht Fire Loop A Ok"      
1.0  Red  "Ovht Fire Loop A <<FIRE>>" "Ovht Fire Loop A <<FIRE>>"      
2.0  Black  "Ovht Fire Loop A Continuity Check PASSED" "Ovht Fire Loop A Continuity Check PASSED"      
3.0  Red  "Ovht Fire Loop A Continuity Check FAULT" "Ovht Fire Loop A Continuity Check FAULT"      
4.0  Black  "Ovht Fire Loop A Ground Check PASSED" "Ovht Fire Loop A Ground Check PASSED"      
5.0  Red  "Ovht Fire Loop A Ground Check FAULT" "Ovht Fire Loop A Ground Check FAULT"      
6.0  BurntOrange  "Ovht Fire Loop A UNKNOWN" "Ovht Fire Loop A UNKNOWN"      
7.0  BurntOrange  "Ovht Fire Loop A DISABLED" ""      
$END-PARAMETER

$PARAMETER OvhtLoopB_Stat
$START
$LOWER  Yellow  "" "Ovht Fire Loop B FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Ovht Fire Loop B Ok" "Ovht Fire Loop B Ok"      
1.0  Red  "Ovht Fire Loop B <<FIRE>>" "Ovht Fire Loop B <<FIRE>>"      
2.0  Black  "Ovht Fire Loop B Continuity Check PASSED" "Ovht Fire Loop B Continuity Check PASSED"      
3.0  Red  "Ovht Fire Loop B Continuity Check FAULT" "Ovht Fire Loop B Continuity Check FAULT"      
4.0  Black  "Ovht Fire Loop B Ground Check PASSED" "Ovht Fire Loop B Ground Check PASSED"      
5.0  Red  "Ovht Fire Loop B Ground Check FAULT" "Ovht Fire Loop B Ground Check FAULT"      
6.0  BurntOrange  "Ovht Fire Loop B UNKNOWN" "Ovht Fire Loop B UNKNOWN"      
7.0  BurntOrange  "Ovht Fire Loop B DISABLED" ""      
$RUN
$LOWER  Yellow  "" "Ovht Fire Loop B FAULT"  GRACE=2.00   NORMAL=1 
0.0  Black  "Ovht Fire Loop B Ok" "Ovht Fire Loop B Ok"      
1.0  Red  "Ovht Fire Loop B <<FIRE>>" "Ovht Fire Loop B <<FIRE>>"      
2.0  Black  "Ovht Fire Loop B Continuity Check PASSED" "Ovht Fire Loop B Continuity Check PASSED"      
3.0  Red  "Ovht Fire Loop B Continuity Check FAULT" "Ovht Fire Loop B Continuity Check FAULT"      
4.0  Black  "Ovht Fire Loop B Ground Check PASSED" "Ovht Fire Loop B Ground Check PASSED"      
5.0  Red  "Ovht Fire Loop B Ground Check FAULT" "Ovht Fire Loop B Ground Check FAULT"      
6.0  BurntOrange  "Ovht Fire Loop B UNKNOWN" "Ovht Fire Loop B UNKNOWN"      
7.0  BurntOrange  "Ovht Fire Loop B DISABLED" ""      
$END-PARAMETER

$PARAMETER FanLoopARes
$START
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$END-PARAMETER

$PARAMETER FanLoopBRes
$START
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$END-PARAMETER

$PARAMETER CoreLoopARes
$START
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$END-PARAMETER

$PARAMETER CoreLoopBRes
$START
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
FireLoopFire  Green  "" ""      
FireLoopFault  Yellow  "" ""      
$END-PARAMETER

$PARAMETER OvhtLoopARes
$START
$LOWER  Red  "" ""     NORMAL=1 
OvHtLoopFire  Green  "" ""      
OvHtLoopFault  Yellow  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
OvHtLoopFire  Green  "" ""      
OvHtLoopFault  Yellow  "" ""      
$END-PARAMETER

$PARAMETER OvhtLoopBRes
$START
$LOWER  Red  "" ""     NORMAL=1 
OvHtLoopFire  Green  "" ""      
OvHtLoopFault  Yellow  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
OvHtLoopFire  Green  "" ""      
OvHtLoopFault  Yellow  "" ""      
$END-PARAMETER

$PARAMETER UnderCowl_Stat
$START
$LOWER  Green  "" "Under Cowl Temp OK"     NORMAL=1 
1  Yellow  "Under Cowl Temp WARNING..." ""      
2  Red  "Under Cowl Temp FIRE..." ""      
$RUN
$LOWER  Green  "" "Under Cowl Temp OK"     NORMAL=1 
1  Yellow  "Under Cowl Temp WARNING..." ""      
2  Red  "Under Cowl Temp FIRE..." ""      
$END-PARAMETER

$PARAMETER AdaptcountTotal
$START
$LOWER  Red  "" "No Adapter Coupled"     NORMAL=1 
1.0  Blue  "Adapter 1 CF6-80C2 DL7 Boeing Fadec" "Adapter 1 CF6-80C2 DL7 Boeing Fadec"      
2.0  Blue  "Adapter 2 CF6-80C2 DL7 Boeing PMC" "Adapter 2 CF6-80C2 DL7 Boeing PMC"      
3.0  Blue  "Adapter 3 PW2000 DL2" "Adapter 3 PW2000 DL2"      
4.0  Blue  "Adapter 4 PW2000 DL1" "Adapter 4 PW2000 DL1"      
5.0  Blue  "Adapter 5 PW1100G DL11" "Adapter 5 PW1100G DL11"      
6.0  Blue  "Adapter 6 PW4000 DL40 Auto-Air" "Adapter 6 PW4000 DL40 Auto-Air"      
7.0  Blue  "Adapter 7 PW4400 DL44 Auto-Air" "Adapter 7 PW4400 DL44 Auto-Air"      
8.0  Blue  "Adapter 8 PW4000 DL41 Universal" "Adapter 8 PW4000 DL41 Universal"      
9.0  Blue  "Adapter 9 BR715 DL5" "Adapter 9 BR715 DL5"
10.0  Blue  "Adapter 10 CF6-80A DL6" "Adapter 10 CF6-80A DL6"      
11.0  Blue  "Adapter 11 CFM56-7B DL3" "Adapter 11 CFM56-7B DL3"      
12.0  Blue  "Adapter 12 CF6-80C2 DL7 MD FADEC" "Adapter 12 CF6-80C2 DL7 MD FADEC"      
13.0  Blue  "Adapter 13 CFM56-5B DL8" "Adapter 13 CFM56-5B DL8"      
14.0  Blue  "Adapter 14 CF34-8C DL12" "Adapter 14 CF34-8C DL12"      
15.0  Blue  "Adapter 15 CF34-8E DL12" "Adapter 15 CF34-8E DL12"      
$RUN
$LOWER  Red  "" "No Adapter Coupled"     NORMAL=1 
1.0  Blue  "Adapter 1 CF6-80C2 DL7 Boeing Fadec" "Adapter 1 CF6-80C2 DL7 Boeing Fadec"      
2.0  Blue  "Adapter 2 CF6-80C2 DL7 Boeing PMC" "Adapter 2 CF6-80C2 DL7 Boeing PMC"      
3.0  Blue  "Adapter 3 PW2000 DL2" "Adapter 3 PW2000 DL2"      
4.0  Blue  "Adapter 4 PW2000 DL1" "Adapter 4 PW2000 DL1"      
5.0  Blue  "Adapter 5 PW1100G DL11" "Adapter 5 PW1100G DL11"      
6.0  Blue  "Adapter 6 PW4000 DL40 Auto-Air" "Adapter 6 PW4000 DL40 Auto-Air"      
7.0  Blue  "Adapter 7 PW4400 DL44 Auto-Air" "Adapter 7 PW4400 DL44 Auto-Air"      
8.0  Blue  "Adapter 8 PW4000 DL41 Universal" "Adapter 8 PW4000 DL41 Universal"      
9.0  Blue  "Adapter 9 BR715 DL5" "Adapter 9 BR715 DL5"
10.0  Blue  "Adapter 10 CF6-80A DL6" "Adapter 10 CF6-80A DL6"      
11.0  Blue  "Adapter 11 CFM56-7B DL3" "Adapter 11 CFM56-7B DL3"      
12.0  Blue  "Adapter 12 CF6-80C2 DL7 MD FADEC" "Adapter 12 CF6-80C2 DL7 MD FADEC"      
13.0  Blue  "Adapter 13 CFM56-5B DL8" "Adapter 13 CFM56-5B DL8"      
14.0  Blue  "Adapter 14 CF34-8C DL12" "Adapter 14 CF34-8C DL12"      
15.0  Blue  "Adapter 15 CF34-8E DL12" "Adapter 15 CF34-8E DL12"      
$END-PARAMETER

$PARAMETER CIT_ValidProbes
$START
$LOWER  Red  "" ""     NORMAL=1 
2.0  Red  "" ""      
3.0  Yellow  "" ""      
4.0  Green  "" ""      
$RUN
$LOWER  Red  "" ""     NORMAL=1 
2.0  Red  "" ""      
3.0  Yellow  "" ""      
4.0  Green  "" ""      
$END-PARAMETER

$PARAMETER RelHum
$START
$LOWER  Yellow  "" ""     NORMAL=1 
10.0  Green  "" ""      
$RUN
$LOWER  Yellow  "" ""     NORMAL=1 
10.0  Green  "" ""      
$END-PARAMETER

$PARAMETER WindDirY
$START
$LOWER  Green  "" ""     NORMAL=1 
0.0  White  "" ""      
WindDirX  Green  "" ""      
$RUN
$LOWER  Green  "" ""     NORMAL=1 
0.0  White  "" ""      
WindDirX  Green  "" ""      
$END-PARAMETER

$PARAMETER EmergIdle_F
$START
$LOWER  Green  "" "EMERGENCY IDLE RESET"
0.9  Red  "EMERGENCY IDLE DETECTED" ""  phase=StopAutoRamp_ATP
$RUN
$LOWER  Green  "" "EMERGENCY IDLE RESET"
0.9  Red  "EMERGENCY IDLE DETECTED" ""  phase=StopAutoRamp_ATP
$END-PARAMETER

$PARAMETER OperatorOverride
$START
$LOWER  White  "" ""
0.9  Red  "" ""  phase=StopAutoRamp_ATP
$RUN
$LOWER  White  "" ""
0.9  Red  "" ""  phase=StopAutoRamp_ATP
$END-PARAMETER

$PARAMETER TLA_Diff_Msg
$START
$LOWER  Green  "" ""
1.0  Red  "Power Lever is not in proper position for Auto Throttle" ""
$RUN
$LOWER  Green  "" ""
1.0  Red  "Power Lever is not in proper position for Auto Throttle" ""
$END-PARAMETER

$PARAMETER AutoThrottle_F
$START
$LOWER  Green  "" "Auto Throttle Inactive"
1.0  Green  "Auto Throttle Active" ""
$RUN
$LOWER  Green  "" "Auto Throttle Inactive"
1.0  Green  "Auto Throttle Active" ""
$END-PARAMETER

$PARAMETER BadTLAMsg
$START
$LOWER  Green  "" ""
1.0  Red  "Unable to goto Auto Throttle due to TLA exceeding limit" ""
$RUN
$LOWER  Green  "" ""
1.0  Red  "Unable to goto Auto Throttle due to TLA exceeding limit" ""
$END-PARAMETER

$PARAMETER BadControlMode
$START
$LOWER  Green  "" ""
1.0  Green  "" ""  phase=BadControlPhase_ATP
$RUN
$LOWER  Green  "" ""
1.0  Green  "" ""  phase=BadControlPhase_ATP
$END-PARAMETER

$PARAMETER BadOperatingPoint
$START
$LOWER  Green  "" ""
1.0  Green  "" ""  phase=BadOperatingPhase_ATP
$RUN
$LOWER  Green  "" ""
1.0  Green  "" ""  phase=BadOperatingPhase_ATP
$END-PARAMETER

$PARAMETER TLA_Diff
$START
$LOWER  Green  "" ""
TLA_Diff_Limit  Red  "" ""
$RUN
$LOWER  Green  "" ""
TLA_Diff_Limit  Red  "" ""
$END-PARAMETER

$PARAMETER EidleStillSet
$START
$LOWER  Green  "" ""
1.0  Red  "Emergancy Idle Still Set.  Cannot Goto Auto throttle" ""
$RUN
$LOWER  Green  "" ""
1.0  Red  "Emergancy Idle Still Set.  Cannot Goto Auto throttle" ""
$END-PARAMETER

$PARAMETER TLA_Actual
$START
$LOWER  Red  "" "Actual TLA below minimum value"
TLA_CmdMn  Green  "" ""
TLA_TargMn  White  "" ""
TLA_TargMx  Green  "" ""
TLA_CmdMx  Red  "" "Actual TLA above maximum value"
$RUN
$LOWER  Red  "" "Actual TLA below minimum value"
TLA_CmdMn  Green  "" ""
TLA_TargMn  White  "" ""
TLA_TargMx  Green  "" ""
TLA_CmdMx  Red  "" "Actual TLA above maximum value"
$END-PARAMETER

$END-LIMITS
