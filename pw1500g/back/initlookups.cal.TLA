$GROUP "initlookups"  when=4
#C ------------------------------------
FireLoopCont:ohms	100.0
FireLoopGnd:ohms	100000.0
FireLoopError:	999999.0
FireLoopFire:ohms	lookup (FireLoopFire_T)
FireLoopFault:ohms	lookup (FireLoopFault_T)
OvHtLoopFire:ohms	lookup (OvHtLoopFire_T)
OvHtLoopFault:ohms	lookup (OvHtLoopFault_T)
#C --- UnderCowl Temp Limits ----------
TNACSFWDLim:DegC	205.0
TNACSAFTLim:DegC	280.0
TNACSFWDYLim:DegC	195.0
TNACSAFTYLim:DegC	260.0
TNACSFWDYPct:%		value2pct (TNACSFWDYLim TNACSFWDLim)
TNACSAFTYPct:%		value2pct (TNACSAFTYLim TNACSAFTLim)
#C ------------------------------------
N1Red:RPM	lookup (N1R_T)
N2Red:RPM	lookup (N2R_T)
NF100:RPM	lookup (NF100_T)
N1100:RPM	lookup (N1100_T)
N2100:RPM	lookup (N2100_T)
N1RPct:%	value2pct (N1Red N1100)
N2RPct:%	value2pct (N2Red N2100)
#C ------------------------------------
StarterCutOut:	lookup (StarterCutOut_T)
FuelOnToLOMx:	lookup (FuelOnToLOMx_T)
StrtOnToIdleMx:	lookup (StrtOnToIdleMx_T)
StartFuelFlow:PPH	lookup (StartFuelFlow_T)
IdleFuelFlow:PPH	lookup (IdleFuelFlow_T)
WfLtOffMn:PPH	(StartFuelFlow - 50.0)
WfLtOffMx:PPH	(StartFuelFlow + 50.0)
OilConsMx:Gals	lookup (OilConsMx_T)
OilFiltDiffMx:PSID	lookup (OILFILTDIFFMX_T)
MOPMx:PSIG	lookup (MOPMx_T)
FIPMn:PSIG	lookup (FIPMN_T)
FIPMx:PSIG	lookup (FIPMX_T)
PAIRsMn:PSIG	lookup (PAIRsMn_T)
PAIRsMx:PSIG	lookup (PAIRsMx_T)
PAIRsLim:PSIG	((PAIRsMn + PAIRsMx) / 2.0)
PAIRsN2Mn:RPM	lookup (PAIRsN2Mn_T)
PAIRsN2Mx:RPM	lookup (PAIRsN2Mx_T)
PAIRsN2Lim:RPM	((PAIRsN2Mn + PAIRsN2Mx) / 2.0)
PAIRsN2HzLim:Hz	(PAIRsN2Lim / N2TimeBase)
SAPMn:PSIG	lookup (SAPMn_T)
SAPMx:PSIG	lookup (SAPMx_T)
SAPLim:PSIG	((SAPMn + SAPMx) / 2.0)
StarterDutyCycle:Min	lookup (StarterDutyCycle_T)
#C ------------------------------------
#C ** Vibration Limits ****************
VibFBBMx:IPS	lookup (VibFBBMx_T)
VibRBBMx:IPS	lookup (VibRBBMx_T)
VibFNFMx:IPS	lookup (VibFNFMX_T)
VibRNFMx:IPS	lookup (VibRNFMX_T)
VibFN1Mx:IPS	lookup (VibFN1MX_T)
VibRN1Mx:IPS	lookup (VibRN1MX_T)
VibFN2Mx:IPS	lookup (VIBFN2MX_T)
VibRN2Mx:IPS	lookup (VibRN2MX_T)
VibFBBRMx:IPS	lookup (VibFBBRMx_T)
VibRBBRMx:IPS	lookup (VibRBBRMx_T)
VibFNFRMx:IPS	lookup (VibFNFRMX_T)
VibRNFRMx:IPS	lookup (VibRNFRMX_T)
VibFN1RMx:IPS	lookup (VibFN1RMX_T)
VibRN1RMx:IPS	lookup (VibRN1RMX_T)
VibFN2RMx:IPS	lookup (VIBFN2RMX_T)
VibRN2RMx:IPS	lookup (VibRN2RMX_T)
#C ------------------------------------------
#C ** Performance Acceptance Limits *********
#C ** O.(1) Max Thrust Limit (Minimum and Approach Idle)
FNTR2Mx_MI:Lbs    lookup (FNTR2Mx_MI_T)
FNTR2Mx_AI:Lbs    lookup (FNTR2Mx_AI_T)
#C ** O.(2) Reference N1C2-I ****************
N1C2I_T45Ref:RPM	lookup (N1C2I_T45Ref_T)
N1C2I_N2Ref:RPM		lookup (N1C2I_N2Ref_T)
#C ** O.(2) Max T45OP45 (ITT) @ Ref N1C2-I **
T45OP45Max:DegF	lookup (T45OP45Max_T)
#C T45OP45MaxRefb:DegF	lookup (T45OP45MaxRefb_T)
#C T45OP45MaxNRefb:DegF	lookup (T45OP45MaxNRefb_T)
#C ** O.(3) Max N2C2 @ Ref N1C2-I ***********
N2C2DMax:RPM	lookup (N2C2DMax_T)
#C ** N1/N2 Time Base ***********************
NFTimeBase:	lookup (NFTimeBase_T)
N1TimeBase:	lookup (N1TimeBase_T)
N2TimeBase:	lookup (N2TimeBase_T)
#C ** Theta Exponent Constants **************
N1EXP:		lookup (N1EXP_T)
N2EXP:		lookup (N2EXP_T)
T25EXP:		lookup (T25EXP_T)
T3EXP:		lookup (T3EXP_T)
T45EXP:		lookup (T45EXP_T)
#C ------------------------------------
#C ** Guaranteed Thrust Rating ********
FnTR2GRat_A:Lbs	lookup (FNTR2GRat_A_T)
FnTR2GRat_B:Lbs	lookup (FNTR2GRat_B_T)
FnTR2GRat_C:Lbs	lookup (FNTR2GRat_C_T)
FnTR2GRat_D:Lbs	lookup (FNTR2GRat_D_T)
#C ** Max N1C2-I @ Guaranteed Thrust **
N1C2GMax_A:RPM	lookup (N1C2GMax_A_T)
N1C2GMax_B:RPM	lookup (N1C2GMax_B_T)
N1C2GMax_C:RPM	lookup (N1C2GMax_C_T)
N1C2GMax_D:RPM	lookup (N1C2GMax_D_T)
#C ------------------------------------
#C ** Thrust bands (C and D) Constant *
FnCMax:Lbs	lookup (FNCMX_T)
FnCMin:Lbs	lookup (FNCMN_T)
FnCNom:Lbs      ((FnCMax + FnCMin) / 2.0)
FnDMax:Lbs	lookup (FNDMX_T)
FnDMin:Lbs	lookup (FNDMN_T)
FnDNom:Lbs      ((FnDMax + FnDMin) / 2.0)
#C ------------------------------------
#C Accel / Decel Time Limit values
AccelTmMx30:Sec lookup (AccelTmMx30_T)
AccelTmMx90:Sec lookup (AccelTmMx90_T)
DecelTmMx:Sec   lookup (DecelTmMx_T)
AccelFNTR2_30:%	lookup (AccelFNTR2_30_T)
AccelFNTR2_90:%	lookup (AccelFNTR2_90_T)
DecelFNTR2_95:%	lookup (DecelFNTR2_95_T)
#C ------------------------------------
DN1C2DTOL:	1.0
KNLC:		0.000275
KNCL:		0.0
Kuntwist:	1.0
KWFC:		0.00055
#C ------------------------------------
N1TargBand:RPM	75.0
N1C2TargBand:RPM	25.0
TLATargBand:Deg	1.0
#C RunInAI:RPM	2925.0
#C RunInAIMx:RPM	(RunInAI + 200.0)
#C RunInAIMn:RPM	(RunInAI - 200.0)
#C RunInGI:RPM	2900.0
#C RunInGIMx:RPM	2900.0
#C RunInGIMn:RPM	(RunInGI - 200.0)
#C ------------------------------------
#C EGT OverTemp limits......
EGTStrtTrigTmr_F:	OFF
EGTStrtTrigTmr:Sec	0.0
EGTStrtMxRLim:DegC	lookup (EGTStrtMxRLim_T)
EGTStrtMxYLim:DegC	(EGTStrtMxRLim - 10.0)
EGTRunTrigTmr_F:	OFF
EGTRunTrigTmr:Sec	0.0
EGTRunTrig:DegC		lookup (EGTRunTrig_T)
EGTRunMxTm:Sec		lookup (EGTRunMxTm_T)
LHV:BTU			lookup (LHV_T)
$END-GROUP
