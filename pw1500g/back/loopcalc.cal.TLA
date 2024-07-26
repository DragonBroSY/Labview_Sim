$GROUP "loopcalc" 
TestClosed:	FALSE
#C Moved EngineRunning and FuelOn calc to CalcWfNew.cal in common. (DJR 8/2/10)...
#C <<<<<<<<<<<< Set Flags >>>>>>>>>>>>>>>>>>>>>>
StableN1_F:	stable (N1S 25 3.0)
StableN2_F:	stable (N2S 50 3.0)
StableEGT_F:	stable (EEC_EGT 10 3.0)
StableEng_F:	(StableN2_F & EngineRunning)
StableOilQ_F:	stable (OilQ 0.5 5.0)
RunModeN2_F:	inrange (7300.0 N2I 20000.0)
MOT2Low_F:	((TOilAC < 51.7) & RunMode)
N2GT5Pct_O:	(N2Pct > 5.0)
#C #if	(RunModeN2_F & EngineRunning & NotRunMode)
#C RunMode:	ON
#C #elseif	(~RunModeN2_F & RunMode)
#C RunMode:	OFF
#C #endif	
RunMode:	EECEngRunning
NotRunMode:	~RunMode
#if	~StableEng_F
StableEngTmr:Sec	0.0
#endif	
#C *********** Set Parameter Ranges **************************
#C *********** Check Parameters are Inrange ******************
BandA_F:	inrange (FnAMin FNTR2 FnAMax)
BandB_F:	inrange (FnBMin FNTR2 FnBMax)
BandC_F:	inrange (FnCMin FNTR2 FnCMax)
BandD_F:	inrange (FnDMin FNTR2 FnDMax)
TLATarg_F:	inrange (TLA_TargMn TLA_Actual TLA_TargMx)
N1C2Targ_F:	inrange (N1C2_TargMn N1C2R N1C2_TargMx)
#C RunInAI_F:      inrange (RunInAIMn N1C2R RunInAIMx)
#C RunInGI_F:      inrange (RunInGIMn N1C2R RunInGIMx)
#C ******* Set Other Flags **************************
StarterCutOut_F:	(N2I > StarterCutOut)
TLAAccel_F:		(TLA_Actual > TLAatArm)
TLADecel_F:		(TLA_Actual < TLAatArm)
TLAAccelTarg_F:		(TLA_Actual >= TLAAccelTarg)
TLADecelTarg_F:		(TLA_Actual <= TLADecelTarg)
N1C2AccelTarg_F:        (N1C2D >= N1C2AccelTarg)
N1C2DecelTarg_F:        (N1C2D <= N1C2DecelTarg)
N1AccelTarg_F:          (N1I >= N1AccelTarg)
N1DecelTarg_F:          (N1I <= N1DecelTarg)
StageTmrLim_F:          (StageTmr > StageTmrLim)
NotN1_ADBar_F:          ~N1_ADBar_F
#C ***************** ACCEL Check *******************
#C * Moved Here for faster response...
#if		(ArmAccel & (Accelstage = 20) & TLAAccel_F)
Accelstage:	25
AccelStageTxt:	concat ("Step 4 " "Accel, Timer Running...")
AccelTmr_F:	ON
#elseif		(ArmAccel & (Accelstage = 25) & AccelTmr_F & (FNTR2_AC > FNTR2_ACC30))
Accelstage:	30
AccelTm30:Sec	AccelTmr
AccelStageTxt:	concat ("Step 4 " "30% Accel Check Complete...")
#elseif		(ArmAccel & (Accelstage = 30) & AccelTmr_F & (FNTR2_AC > FNTR2_ACC90))
Accelstage:	35
AccelTmr_F:	OFF
AccelTm90:Sec	AccelTmr
AccelStageTxt:	concat ("Step 4 " "90% Accel Check Complete...")
#elseif		ArmAccel
dummy:		startautotest (AccelCheck_ATP)
#endif
#C ***************** DECEL Check *******************
#if     	(ArmDecel & (Accelstage = 50) & TLADecel_F)
Accelstage:	55
AccelStageTxt:	concat ("Step 6 " "Decel, Timer Running...")
DecelTmr_F:	ON
#elseif     	(ArmDecel & (Accelstage = 55) & (FNTR2_AC < FNTR2_DEC))
Accelstage:	60
DecelTmr_F:	OFF
AccelStageTxt:	concat ("Step 6 " "Timer OFF, Decel Check Complete...")
#elseif		(ArmDecel & DecelTmr_F & (DecelTmr > 20.0))
Accelstage:	60
AccelStageTxt:	concat ("Step 6 " "Timer OFF, ERROR: Decel Check InComplete...")
DecelTmr_F:	OFF
#elseif     	(ArmDecel & (Accelstage = 60))
DecelTm:Sec	DecelTmr
StageTmr_F:	OFF
ArmDecel:	OFF
#endif
#C **************************************************
#if	((MotorTm < 0.1) & StartAir_O)
MotorSysTime:Sec	(SysTime + 1200.0)
#endif	
#if	((MotorTm > 0.1) & (SysTime > MotorSysTime) & ~StartAir_O & ~EngineRunning)
MotorSysTime:Sec	(SysTime + 1200.0)
MotorTm:Sec	0.0
#endif	
MotorTmReset:Sec	(MotorSysTime - SysTime)
#if	(~Compare (PointName "EVENT") & ~PointTmr_F)
PointTmr_F:	ON
#endif	
#if	(PointTmr > 12.0)
PointTmr_F:	OFF
PointTmr:Sec	0.0
PointName:	concat ("" "EVENT")
#endif	
#C ******** Sets the pace for Accel/Decel of FN or N1 RPM/Pct *******************
#C #if     (StageTmr_F & FN_ADBar_F)
#C FN_ADTrak:Lbf  (FN_ADStart + (FN_ADRat * StageTmr))
#C FN_ADTrakMn:Lbf        (FN_ADTrak - FnTargBand)
#C FN_ADTrakMx:Lbf        (FN_ADTrak + FnTargBand)
#C FN_ADTrakMnY:Lbf       (FN_ADTrak - FnTargBandY)
#C FN_ADTrakMxY:Lbf       (FN_ADTrak + FnTargBandY)
#C #else
#C FN_ADTrak:Lbf          FNAccelTarg
#C FN_ADTrakMn:Lbf        FNAccelTarg
#C FN_ADTrakMx:Lbf        FNAccelTarg
#C FN_ADTrakMnY:Lbf       FNAccelTarg
#C FN_ADTrakMxY:Lbf       FNAccelTarg
#C #endif
#if     (StageTmr_F & N1_ADBar_F)
N1_ADTrak:RPM           (N1_ADStart + (N1_ADRat * StageTmr))
N1_ADTrakMn:RPM         (N1_ADTrak - 10.0)
N1_ADTrakMx:RPM         (N1_ADTrak + 10.0)
N1_ADTrakMnY:RPM        (N1_ADTrak - 20.0)
N1_ADTrakMxY:RPM        (N1_ADTrak + 20.0)
N1_ADTrakPctMn:%        value2pct (N1_ADTrakMnY N1100)
N1_ADTrakPctMx:%        value2pct (N1_ADTrakMxY N1100)
#else
N1_ADTrak:RPM           N1AccelTarg
N1_ADTrakMn:RPM         N1AccelTarg
N1_ADTrakMx:RPM         N1AccelTarg
N1_ADTrakMnY:RPM        N1AccelTarg
N1_ADTrakMxY:RPM        N1AccelTarg
N1_ADTrakPctMn:%        value2pct (N1_ADTrakMnY N1100)
N1_ADTrakPctMx:%        value2pct (N1_ADTrakMxY N1100)
#endif
$END-GROUP
