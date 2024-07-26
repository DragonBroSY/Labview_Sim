$GROUP "ecm" 
SWActiveAdpt:	(AdaptcountTotal = 5.0)
#C =====================================================================================
#C ------------------------- Start of DC Power Test UPS Logic --------------------------
#C In common/dcpowertst.cal (DJR 07/16/19)...
#C NOTE: SETS parameter (SWActive: TRUE/FALSE)...
#C ----------------------------- END DC Power Test UPS logic ---------------------------
#C =====================================================================================
#if     ECM_OpTimer_TS
OpTimer_F:      ON
#else
OpTimer_F:      OFF
#endif
#C------------------------ PL Amp Manual Control to External
#if	(SWActive & EFSO_I & ~EFSOActivated)
EFSOActivated:	ON
#elseif	(EFSOActivated & ~EFSO_I)
EFSOActivated:	OFF
#endif	
#C --------------Ignition Power Enable Logic-------------
#C With Cell not ready if you arm Air or Fuel and attempt to ignite, that won't work.
IgnPwrDisable:	(~SWActive | (CellNotReady_I & (FuelArm_I | AirArm_I)))
#C -------------------- Start Mode -----------------------
#C ---- Mode 0 = UNK Start
#C ---- Mode 1 = Auto Start
#C ---- Mode 2 = Manual Start
#C ---- Mode 3 = Dry Crank
#if	AUTSTA
ECM_StartMode_Stat:	1
#elseif	MANSTA
ECM_StartMode_Stat:	2
#elseif	DRYCKA
ECM_StartMode_Stat:	3
#else
ECM_StartMode_Stat:	0
#endif
#C -------------------- Engine Running Logic -------------
#C #if	((A2_270B18 | B2_270B18) & (A2_066B27 | B2_066B27))
#C EECEngRunning:	ON
#C #else
#C EECEngRunning:	OFF
#C #endif
#C -------------------- Start Logic ----------------------
#C ---- Mode 1 = Crank (wet motor)
#C ---- Mode 2 = Ignition/Start
#C ---- Mode 3 = Normal (off)
#C
#if     (ECM_ModeSel_RB = 2.0)
EngineStart_O:  ON
StartAir_O:     ON
#elseif (ECM_ModeSel_RB = 1.0)
EngineStart_O:  ON
StartAir_O:     ON
ECM_IgnPwr_TB:  OFF
#else
EngineStart_O:  OFF
StartAir_O:     OFF
#endif
#C -------------- QLOP Switch Logic ----------------
#if		~SWActive
#C Low Oil Pressure Indication UNK.
EECLOP_Stat:    0
#elseif		((~LowOilPress_I & (EEC_N2Pct < 10.0)) | (EECLOP_Stat = 4))
#C Low Oil Pressure Indication InValid (Latch State).
EECLOP_Stat:    4
#elseif		(LowOilPress_I & (POILAC > 55.0))
#C Low Oil Pressure Indication BAD
EECLOP_Stat:    3
#elseif		(~LowOilPress_I & (POILAC < 32.5))
#C Low Oil Pressure Indication BAD
EECLOP_Stat:    3
#elseif		~LowOilPress_I
#C Low Oil Pressure Indication NOT LOW
EECLOP_Stat:    2
#elseif		LowOilPress_I
#C Low Oil Pressure Indication LOW L032B11 = 1
EECLOP_Stat:    1
#endif
#C -------- HPSOV Fuel ShutOff Valve --------------
#if		~SWActive
#C *** Software Not Active...
HPSOV_Stat:	0
#elseif		HPSOVCl
#C *** HPSOV (Fuel Valve) Closed...
HPSOV_Stat:	1
#elseif		~HPSOVCl
#C *** HPSOV (Fuel Valve) Open...
HPSOV_Stat:	2
#endif
#C -------- Approach/Ground Idle Logic ------------
#if		ECM_IdleCtrl_TB
#C **** Approach Idle Selected ****
GIdleON_CHA_O:	OFF
GIdleON_CHB_O:	OFF
AIdleON_CHA_O:	ON
AIdleON_CHB_O:	ON
#else
#C **** Ground Idle Selected ****
GIdleON_CHA_O:	ON
GIdleON_CHB_O:	ON
AIdleON_CHA_O:	OFF
AIdleON_CHB_O:	OFF
#endif
#C -------- Oil Filter By-Pass Logic --------------
#if		~SWActive
OilFBP_Stat:	0
#elseif		OilFByPass_F
OilFBP_Stat:	3
#elseif		~OilFImpByPass_F
OilFBP_Stat:	2
#else
OilFBP_Stat:	1
#endif
#C -------- Fuel Filter By-Pass Logic -------------
#if		~SWActive
FuelFBP_Stat:	0
#elseif		FuelFByPass_F
FuelFBP_Stat:	3
#elseif		~FuelFImpByPass_F
FuelFBP_Stat:	2
#else
FuelFBP_Stat:	1
#endif
#C --------- Oil Temp Status Logic -------------------
#if		~SWActive
TOilAC_Stat:	0
#elseif		TOILCLD
#C *** Low Oil Temp No Accel (41 DegC)...
TOilAC_Stat:	4
#elseif		OTLim2_F
#C *** High Oil Temp 2 Red Limit...
TOilAC_Stat:	3
#elseif		OTLim1_F
#C *** High Oil Temp 1 Amber Limit...
TOilAC_Stat:	2
#else
#C *** Oil Temp OK...
TOilAC_Stat:	1
#endif
#C ---------------------------
#C EGT Status from EEC Redline/Amber.
#C ---------------------------
#if    		(~SWActive)
EECEGT_Stat:    0.0
#elseif		EGTRL_F
EECEGT_Stat:    3.0
#elseif		EGTAL_F
EECEGT_Stat:    2.0
#else
EECEGT_Stat:    1.0
#endif
#C ---------------------------
#C N1 Status from EEC Redline/Amber.
#C ---------------------------
#if    		(~SWActive)
EECN1_Stat:    0.0
#elseif		N1RL_F
EECN1_Stat:    2.0
#else
EECN1_Stat:    1.0
#endif
#C ---------------------------
#C N2 Status from EEC Redline/Amber.
#C ---------------------------
#if    		(~SWActive)
EECN2_Stat:    0.0
#elseif		N2RL_F
EECN2_Stat:    2.0
#else
EECN2_Stat:    1.0
#endif
#C ---------------------------
#C * Under Cowl Temp Logic ***
#C * UCTs Names are TNACS??? *
#C * FSL = FWD S Left * FGR = FWD G Right
#C * MPL = MID P Left * MDR = FWD D Right
#C * MVL = MID V Left * MJR = FWD J Right
#C * APL = AFT P Left * ADR = AFT D Right
#C * AVL = AFT V Left * AJR = AFT J Right
#C * FWD = FWD        * AFT = AFT
#C ---------------------------
#C * Disabled UCTC's...
#C ---- FWD ------------------
#if     TNACSFSL_F
TNACSFSL:DegC		0.0
#endif
#if     TNACSMPL_F
TNACSMPL:DegC		0.0
#endif
#if     TNACSMVL_F
TNACSMVL:DegC		0.0
#endif
#if     TNACSFGR_F
TNACSFGR:DegC		0.0
#endif
#if     TNACSMDR_F
TNACSMDR:DegC		0.0
#endif
#if     TNACSMJR_F
TNACSMJR:DegC		0.0
#endif
#C ---- AFT ------------------
#if     TNACSAPL_F
TNACSAPL:DegC		0.0
#endif
#if     TNACSAVL_F
TNACSAVL:DegC		0.0
#endif
#if     TNACSFWD_F
TNACSFWD:DegC		0.0
#endif
#if     TNACSADR_F
TNACSADR:DegC		0.0
#endif
#if     TNACSAJR_F
TNACSAJR:DegC		0.0
#endif
#if     TNACSAFT_F
TNACSAFT:DegC		0.0
#endif
#C *** FWD ***
TNACSFSLPct:%	value2pct (TNACSFSL TNACSFWDLim)
TNACSMPLPct:%	value2pct (TNACSMPL TNACSFWDLim)
TNACSMVLPct:%	value2pct (TNACSMVL TNACSFWDLim)
TNACSFGRPct:%	value2pct (TNACSFGR TNACSFWDLim)
TNACSMDRPct:%	value2pct (TNACSMDR TNACSFWDLim)
TNACSMJRPct:%	value2pct (TNACSMJR TNACSFWDLim)
#C *** AFT ***
TNACSAPLPct:%	value2pct (TNACSAPL TNACSAFTLim)
TNACSAVLPct:%	value2pct (TNACSAVL TNACSAFTLim)
TNACSFWDPct:%	value2pct (TNACSFWD TNACSAFTLim)
TNACSADRPct:%	value2pct (TNACSADR TNACSAFTLim)
TNACSAJRPct:%	value2pct (TNACSAJR TNACSAFTLim)
TNACSAFTPct:%	value2pct (TNACSAFT TNACSAFTLim)
#C ---- Get the Max Values --------
TNACSF_LPct:%	max (TNACSFSLPct TNACSMPLPct TNACSMVLPct)
TNACSF_RPct:%	max (TNACSFGRPct TNACSMDRPct TNACSMJRPct)
TNACSA_LPct:%	max (TNACSAPLPct TNACSAVLPct TNACSFWDPct)
TNACSA_RPct:%	max (TNACSADRPct TNACSAJRPct TNACSAFTPct)
TNACSFWDPct:%	max (TNACSF_LPct TNACSF_RPct)
TNACSAFTPct:%	max (TNACSA_LPct TNACSA_RPct)
TNACSPct:%	max (TNACSFWDPct TNACSAFTPct)
#C ---- Check the limits ----------
#if     (TNACSPct > 100.0)
UnderCowl_Stat: 2
#C ----- Yellow Limits ------------
#elseif	(TNACSPct > TNACSFWDYPct)
UnderCowl_Stat: 1
TNACSPct:%   TNACSFWDPct
#elseif (TNACSPct > TNACSAFTYPct)
UnderCowl_Stat: 1
TNACSPct:%   TNACSAFTPct
#else
UnderCowl_Stat: 0
#endif
#if     (TNACSPct = TNACSFSLPct)
TNACSMx:DegC	TNACSFSL
TNACSMsg:      concat ("UCT FWD SL:" TNACSMx)
#elseif (TNACSPct = TNACSMPLPct)
TNACSMx:DegC	TNACSMPL
TNACSMsg:      concat ("UCT MID PL:" TNACSMx)
#elseif (TNACSPct = TNACSMVLPct)
TNACSMx:DegC	TNACSMVL
TNACSMsg:      concat ("UCT FWD LL:" TNACSMx)
#elseif (TNACSPct = TNACSFGRPct)
TNACSMx:DegC	TNACSFGR
TNACSMsg:      concat ("UCT FWD GR:" TNACSMx)
#elseif (TNACSPct = TNACSMDRPct)
TNACSMx:DegC	TNACSMDR
TNACSMsg:      concat ("UCT MID DR:" TNACSMx)
#elseif (TNACSPct = TNACSMJRPct)
TNACSMx:DegC	TNACSMJR
TNACSMsg:      concat ("UCT MID JR:" TNACSMx)
#elseif (TNACSPct = TNACSAPLPct)
TNACSMx:DegC	TNACSAPL
TNACSMsg:      concat ("UCT AFT PL:" TNACSMx)
#elseif (TNACSPct = TNACSAVLPct)
TNACSMx:DegC	TNACSAVL
TNACSMsg:      concat ("UCT AFT VL:" TNACSMx)
#elseif (TNACSPct = TNACSFWDPct)
TNACSMx:DegC	TNACSFWD
TNACSMsg:      concat ("UCT FWD:" TNACSMx)
#elseif (TNACSPct = TNACSADRPct)
TNACSMx:DegC	TNACSADR
TNACSMsg:      concat ("UCT AFT DR:" TNACSMx)
#elseif (TNACSPct = TNACSAJRPct)
TNACSMx:DegC	TNACSAJR
TNACSMsg:      concat ("UCT AFT JR:" TNACSMx)
#elseif (TNACSPct = TNACSAFTPct)
TNACSMx:DegC	TNACSAFT
TNACSMsg:      concat ("UCT AFT:" TNACSMx)
#endif
TNACSMsg:      concat (TNACSMsg "DegC")
#C ------------------------------------------
#C ****** ECM AutoThrottle Logic ************
#C ****** See autothrottle.cal **************
#C ------------------------------------------
#if			(SWActive & AutoThrottle_F & AutoPL_I)
#C * Automatic...
AutoThrottle_Stat:	3
#elseif			(SWActive & ~AutoThrottle_F & AutoPL_I)
#C * Active...
AutoThrottle_Stat:	2
#elseif			(SWActive & ~AutoThrottle_F & ~AutoPL_I)
#C * OFF...
AutoThrottle_Stat:	1
#elseif			~SWActive
#C * Not Active...
AutoThrottle_Stat:	0
#endif
#C ------------------------------------------
#C ****** ECM AutoThrottle Switch Logic *****
#C ------------------------------------------
#C ****** TLA Going to Max Power Stop *******
#C ------------------------------------------
#if             (~GoingToMxPwr_F & TLAMxPwrStop_TS & ~TLAatMxPwrStop_F & AutoPL_I)
   AutoTLASw:		3
   TLA_Cmd:Deg		TLA_Actual
   TLAStart:Deg		TLA_Actual
   TLA_Rate:		Trim_Inc
   StageTmr:Sec		0.0
   StageTmr_F:		ON
   IncreaseTLA_F:       ON
   GoingToMxPwr_F:      ON
#C   AutoThrottle_F:      ON
   TLA_TargMx:		TLAMxPwrStop
   TLA_TargMn:		TLA_Actual
#elseif         (GoingToMxPwr_F & (AutoTLASw = 3) & (~TLAMxPwrStop_TS | TLAatMxPwrStop_F))
   StageTmr_F:		OFF
   TLAMxPwrStop_TS:     OFF
   IncreaseTLA_F:       OFF
   GoingToMxPwr_F:      OFF
   AutoThrottle_F:      OFF
   TLA_TargMx:		TLAMnIdleStop
   TLA_TargMn:		TLAMnIdleStop
#C ------------------------------------------
#C ****** TLA Going to Min Idle Stop ********
#C ------------------------------------------
#elseif         (~GoingToMnIdle_F & TLAMnIdleStop_TS & ~TLAatMnIdleStop_F & AutoPL_I)
   AutoTLASw:		4
   TLA_Cmd:Deg		TLA_Actual
   TLAStart:Deg		TLA_Actual
   TLA_Rate:		Trim_Inc
   StageTmr:Sec		0.0
   StageTmr_F:		ON
   DecreaseTLA_F:       ON
   GoingToMnIdle_F:     ON
#C   AutoThrottle_F:      ON
   TLA_TargMx:		TLA_Actual
   TLA_TargMn:		TLAMnIdleStop
#elseif         (GoingToMnIdle_F & (AutoTLASw = 4) & (~TLAMnIdleStop_TS | TLAatMnIdleStop_F))
   StageTmr_F:		OFF
   TLAMnIdleStop_TS:    OFF
   DecreaseTLA_F:       OFF
   GoingToMnIdle_F:     OFF
   AutoThrottle_F:      OFF
   TLA_TargMx:		TLAMnIdleStop
   TLA_TargMn:		TLAMnIdleStop
#endif
#C ------------------------------------------
#C ****** IncreaseTLA Switch ****************
#C ------------------------------------------
#if             ((~IncreaseTLA_MS | TLAatMxPwrStop_F) & IncreaseTLA_F & (AutoTLASw = 1))
   IncreaseTLA_F:       OFF
   AutoThrottle_F:      OFF
   StageTmr_F:		OFF
#elseif         (IncreaseTLA_MS & ~IncreaseTLA_F & ~TLAatMxPwrStop_F & AutoPL_I)
   AutoTLASw:		1
   TLA_Cmd:Deg		TLA_Actual
   TLAStart:Deg		TLA_Actual
   TLA_Rate:		Trim_Inc
   StageTmr:Sec		0.0
   StageTmr_F:		ON
   IncreaseTLA_F:       ON
#C   AutoThrottle_F:      ON
#C ------------------------------------------
#C ****** DecreaseTLA Switch ****************
#C ------------------------------------------
#elseif         ((~DecreaseTLA_MS | TLAatMnIdleStop_F) & DecreaseTLA_F & (AutoTLASw = 2))
   DecreaseTLA_F:       OFF
   AutoThrottle_F:      OFF
   StageTmr_F:		OFF
#elseif         (DecreaseTLA_MS & ~DecreaseTLA_F & ~TLAatMnIdleStop_F & AutoPL_I)
   AutoTLASw:		2
   TLA_Cmd:Deg		TLA_Actual
   TLAStart:Deg		TLA_Actual
   TLA_Rate:		Trim_Inc
   StageTmr:Sec		0.0
   StageTmr_F:		ON
   DecreaseTLA_F:       ON
#C   AutoThrottle_F:      ON
#endif
#C ------------------------------------------
#C ****** Run-In HPC Test 4 *****************
#C ------------------------------------------
#if             (RunInT4_HPC_TS & ~ArmRunInHPC_TB & AutoPL_I)
   ArmRunInHPC_TB:      ON
#C   AutoThrottle_F:      ON
#elseif         (RunInT4_HPC_TS & ArmRunInHPC_TB & ~AutoThrottle_F & AutoPL_I)
#C   AutoThrottle_F:      ON
#elseif         (~RunInT4_HPC_TS & ArmRunInHPC_TB & AutoThrottle_F)
   AutoThrottle_F:      OFF
#endif
#C ------------------------------------------
#C ****** Break-In HPT Test 5 ***************
#C ------------------------------------------
#if             (BrkInT5_HPT_TS & ~ArmBrkInHPT_TB & AutoPL_I)
   ArmBrkInHPT_TB:      ON
#C   AutoThrottle_F:      ON
#elseif         (BrkInT5_HPT_TS & ArmBrkInHPT_TB & ~AutoThrottle_F & AutoPL_I)
#C   AutoThrottle_F:      ON
#elseif         (~BrkInT5_HPT_TS & ArmBrkInHPT_TB & AutoThrottle_F)
   AutoThrottle_F:      OFF
#endif
#C -------------------------------------------------
#C ****** Turn AutoThrottle_F Switch Functions OFF *
#C -------------------------------------------------
#if     (~AutoPL_I & AutoThrottle_F)
   TLAMxPwrStop_TS:     OFF
   TLAMnIdleStop_TS:    OFF
   TLAOverRide_TS:      OFF
   IncreaseTLA_MS:      OFF
   IncreaseTLA_F:       OFF
   DecreaseTLA_MS:      OFF
   DecreaseTLA_F:       OFF
   RunInT4_HPC_TS:      OFF
   BrkInT5_HPT_TS:      OFF
   VibSurvey_TS:        OFF
   AcceptT9_TS:         OFF
   AutoThrottle_F:      OFF
#endif
LastAutoTLASw:		AutoTLASw
$END-GROUP
