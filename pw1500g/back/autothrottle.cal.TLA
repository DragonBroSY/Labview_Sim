$GROUP autothrottle
#C ****** TLA_Actual **************************************
#C TLA_Actual (PLA_TLA_mcoeff * PLA_Handle + PLA_TLA_bcoeff)
   TLA_Actual:	TLAPriCHResolver
#C ********************************************************
#C ------------------------------------------
#C ****** ECM AutoThrottle Logic ************
#C ------------------------------------------
#C * TLA AutoThrottle Trim Increment ********
#C ------------------------------------------
#if		((TLA_SpeedCtrl_RB = 3) & ~(Trim_Inc = FastSpeed))
   Trim_Inc:	FastSpeed
#elseif		((TLA_SpeedCtrl_RB = 2) & ~(Trim_Inc = MedSpeed))
   Trim_Inc:	MedSpeed
#elseif		((TLA_SpeedCtrl_RB = 1) & ~(Trim_Inc = SlowSpeed))
   Trim_Inc:	SlowSpeed
#elseif		((TLA_SpeedCtrl_RB = 0) & ~(Trim_Inc = FineSpeed))
   Trim_Inc:	FineSpeed
#endif
#C --------------------------------------------------------
#C * Check TLA_Actual, Are we at the Idle or Max Power Stop?
#C --------------------------------------------------------
#if		TLAMxPwrStopSet_F
   TLAatMxPwrStop_F:	inrange (TLAMxPwrStopMn TLA_Actual TLAMxPwrStopMx)
#else
   TLAatMxPwrStop_F:	OFF
#endif
#if		TLAMnIdleStopSet_F
   TLAatMnIdleStop_F:	inrange (TLAMnIdleStopMn TLA_Actual TLAMnIdleStopMx)
#else
   TLAatMnIdleStop_F:	OFF
#endif
#C TLAatMxPwrStop_F:	inrange (TLAMxPwrStopMn TLA_Cmd TLAMxPwrStopMx)
#C TLAatMnIdleStop_F:	inrange (TLAMnIdleStopMn TLA_Cmd TLAMnIdleStopMx)
#C TLAatMxPwrStop_F:	((TLACmdLastScan <= TLAMxPwrStop) & (TLA_Cmd >= TLAMxPwrStop))
#C TLAatMnIdleStop_F:	((TLACmdLastScan >= TLAMnIdleStop) & (TLA_Cmd <= TLAMnIdleStop))
#C --------------------------------------------------------
#if	(~TLAOverRide_F & TLAatMxPwrStop_F)
   TLA_Cmd:Deg	TLAMxPwrStop
#endif
#C --------------------------------------------------------
#C ****** Calculate/SET TLA_CMD Here ********************** 
#C ****** Must be before Check TLA_CMD ********************
#C --------------------------------------------------------
#if		(AutoThrottle_F & (TLAatMxPwrStop_F | TLAatMnIdleStop_F) & ~TLAOverRide_F)
   AutoThrottle_F:	OFF
#elseif		(AutoThrottle_F & StageTmr_F & Accel_F)
#C ***** This is for Automated Accel/RunIn/BrkIn procedures...
   TLA_Cmd:Deg	(TLAStart + (TLA_Rate * StageTmr))
#elseif		(AutoThrottle_F & StageTmr_F & Decel_F)
#C ***** This is for Automated Decel/RunIn/BrkIn procedures...
   TLA_Cmd:Deg	(TLAStart - (TLA_Rate * StageTmr))
#elseif		(AutoThrottle_F & IncreaseTLA_F)
#C ***** This is for IncreaseTLA Button press...
   TLA_Cmd:Deg	(TLAStart + (TLA_Rate * StageTmr))
#elseif		(AutoThrottle_F & DecreaseTLA_F)
#C ***** This is for DecreaseTLA Button press...
   TLA_Cmd:Deg	(TLAStart - (TLA_Rate * StageTmr))
#endif
#C --------------------------------------------------------
#C * Compute difference between TLA_Cmd and TLA_Actual...
#C --------------------------------------------------------
TLA_Diff:	(TLA_Cmd - TLA_Actual)
TLA_Diff:	abs(TLA_Diff)
#if		(AutoThrottle_F & (TLA_Diff > TLAOverRideLim))
#C * The Operator is overriding the autothrottle...
   AutoPLEnable_O:	OFF
#endif
#C vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
#C ********************************************************
#C * Check for Operator OverRide (TLAOverRide_F), 
#C * A difference of > TLAOverRideLim degrees
#C * between commanded and actual Power Lever Position...
#C ********************************************************
#if			(AutoTRequest_F & ~AutoThrottle_F)
#C * Check for an auto throttle request from autotest...
   AutoTRequest_F:	OFF
   #goto CHECK_TLA_Cmd
#elseif			(AutoPL_I & ~LastAUTOPLReq & ~AutoThrottle_F)
#C *  P/L toggle request just made with auto throttle not engaged...
   #goto CHECK_TLA_Cmd
#elseif			(AutoPL_I & ~LastAUTOPLReq & AutoThrottle_F)
#C *  P/L toggle request just made with auto throttle engaged...
   dummy:		storeevent("Test Mode Revision to Manual")
   AutoPLEnable_O:	OFF
   AutoThrottle_F:	OFF
   AutoThrottleEngaged:	OFF
   PLA_DAC_Tmr_F:	ON
   DAC_PLA_Voltage:	0.0
   #goto NO_CHECK_TLA
#elseif			(~AutoPL_I & AutoThrottle_F)
   OperatorOverride:	ON
#elseif			((TLA_Diff > TLAOverRideLim) & AutoThrottle_F)
   OperatorOverride:	ON
#elseif			(TLAMxPwrStopSet_F & (TLA_Actual > TLAMxPwrStop) & AutoThrottle_F)
   OperatorOverride:	ON
#endif
#C ******************************************************
#C * Set the MAX/MIN/REV TLA limits if TLA Rigged...
#C ******************************************************
#if		(~(TLA_CmdMx = TLA_Takeoff) | ~(TLA_CmdMn = 0.0))
#C #if		(~(TLA_CmdMx = TLA_Takeoff) | ~(TLA_CmdMn = TLA_Idle))
   TLA_CmdMx:Deg	TLA_Takeoff
   #C TLA_CmdMn:Deg	TLA_Idle
   TLA_CmdMn:Deg	0.0
   TLA_CmdRev:Deg	TLA_Idle
   #C TLA_CmdRev:Deg	-38.0
   #C dummy:	setvxivalue("TLA_Unique_MAX", TLA_CmdMx, "SHMEM_arinc")
   #C dummy:	setvxivalue("TLA_Unique_MIN", TLA_CmdMn, "SHMEM_arinc")
   #C * Turn OFF the Max/Min Stop Flags...
   TLAMxPwrStopSet_F:	OFF
   TLAMnIdleStopSet_F:	OFF
   TLAMxPwrStop:Deg	TLA_CmdMx
   TLAMnIdleStop:Deg	TLA_CmdMn
#endif
#C ******************************************************
#C * Perform MAX limits checking...
#C ******************************************************
#if		((TLA_Cmd > TLA_CmdMx) & AutoThrottle_F)
   TLA_Cmd:Deg	TLA_CmdMx
#elseif		((TLA_Cmd < TLA_CmdMn) & AutoThrottle_F)
   TLA_Cmd:Deg	TLA_CmdMn
#elseif		LimitEventLogged
   LimitEventLogged:	OFF
#endif
#C ------------------------------------------------------
#if		((TLA_Cmd > TLA_CmdMx) & ~LimitEventLogged & AutoThrottle_F)
   dummy:	storeevent("TLA Upper Limit Exceeded")
   LimitEventLogged:	ON
#elseif		((TLA_Cmd < TLA_CmdMn) & ~LimitEventLogged & AutoThrottle_F)
   dummy:	storeevent("TLA Lower Limit Exceeded")
   LimitEventLogged:	ON
#endif
#C ******************************************************
#C ------------------------------------------------------
#C * End of Code Checked...
#C ------------------------------------------------------
#C ******************************************************
#C * Check for an auto throttle request from autotest
#C ********************************************************
#C #if (AutoTRequest_F & ~AutoThrottle_F)
#C    AutoTRequest_F:	OFF
#C    #goto CHECK_TLA_Cmd
#C #endif
#C ********************************************************
#C * Check for a test mode revision request
#C ********************************************************
EidleStillSet:	OFF
#C #if (AutoPL_I & ~LastAUTOPLReq & ~AutoThrottle_F)
#C *  P/L toggle request just made with auto throttle not engaged
#C    #goto CHECK_TLA_Cmd
#C #elseif (AutoPL_I & ~LastAUTOPLReq & AutoThrottle_F)
#C *  P/L toggle request just made with auto throttle engaged
#C    dummy: storeevent("Test Mode Revision to Manual")
#C   AutoPLEnable_O:	OFF
#C    AutoThrottle_F:	OFF
#C    AutoThrottleEngaged:	OFF
#C    PLA_DAC_Tmr_F:	ON
#C    DAC_PLA_Voltage:	0.0
#C    #goto NO_CHECK_TLA
#C #else
#C    #goto NO_CHECK_TLA
#C #endif
#C *
CHECK_TLA_Cmd
#C ********************************************************
#C * Check for Emergancy Idle
#C ********************************************************
#C *#if (FCSEmrgIdle2_I)
#C *   EidleStillSet 1
#C *   #goto NO_CHECK_TLA
#C *#endif
#C *
#C * Check if TLA Target is defined
#C * Set Target to current value...
#C * Set the Targets in SetTargs_ATP. (DJR 12/11/19)...
#C #if ((ControlMode = EPRControlMode) & (EPR_Target = 0.0))
#C    EPR_Target:	EPR
#C #elseif ((ControlMode = N1ControlMode) & (N1_Target = 0.0))
#C    N1_Target:	N1S
#C #elseif ((ControlMode = TLAControlMode) & (TLA_Cmd = 0.0))
#C   TLA_Cmd:	TLA_Actual
#C #endif
#C *
#C * Perform TLA Target Lookup
#C * Sets the Initial TLA_Cmd
#C *
#C #if (ControlMode = EPRControlMode)
#C    TLA_Cmd:	lookup (EPRControl_T)
#C #elseif (ControlMode = N1ControlMode)
#C    TLA_Cmd:	lookup (N1Control_T)
#C #elseif (ControlMode = TLAControlMode)
#C #C   TLA_Cmd:	lookup (TLAControl_T)
#C   TLA_Cmd:	TLA_Actual
   TLA_Cmd:	TLA_Actual
#C #elseif
#C    TLA_Cmd RMISS
#C    BadControlMode ON
#C #endif
#C *
#if (TLA_Diff > TLA_Diff_Limit)
   TLA_Diff_Msg:	ON
#elseif ((TLA_Cmd > TLA_CmdMx) | (TLA_Cmd < TLA_CmdMn))
   BadTLAmsg:	ON
#else
   dummy:	storeevent("Test Mode Revision to Auto")
   PLA_Command:		(TLA_PLA_mcoeff * TLA_Actual + TLA_PLA_bcoeff)
   DAC_PLA_Voltage:	-(DACSlope * PLA_Handle + DACOffset)
   PLA_DAC_Tmr_F:	ON
#C   AutoThrottleEngaged:		ON
#endif
#C *
NO_CHECK_TLA
#C ********************************************************
#C * Check for timer to start or stop auto throttle
#C ********************************************************
#if	~PLA_DAC_Tmr_F
   #goto NO_TIMER_CHECK
#endif
#C *
#if (AutoThrottleEngaged & (PLA_DAC_Tmr > 1.5))
#C   AutoPLEnable_O:	ON
   PLA_DAC_Tmr_F:	OFF
   PLA_DAC_Tmr:		0.0
#C   AutoThrottle_F:	ON
#elseif (~AutoThrottleEngaged & (PLA_DAC_Tmr > 1.0))
   AutoPLEnable_O:	OFF
   PLA_DAC_Tmr_F:	OFF
   PLA_DAC_Tmr:		0.0
#endif
#C *
NO_TIMER_CHECK
#C ********************************************************
#C * Check for control mode revision
#C ********************************************************
#if	(ControlMode = LastControlMode)
   #goto NO_CONTROL_CHANGE
#else
   ControlModeRevision:	storeevent("Control Mode Revision")
#endif
#C ********************************************************
#C * Check for new operating point if in auto throttle
#C ********************************************************
#C #if	~AutoThrottle_F
#C    #goto NEW_LIMITS
#C #endif
#C *
#C #if	((ControlMode = EPRControlMode) & (EPR_Target = 0.0))
#C    BadOperatingPoint ON
#C #elseif ((ControlMode = N1ControlMode) & (N1_Target = 0.0))
#C    BadOperatingPoint ON
#C #elseif ((ControlMode = TLAControlMode) & (TLA_Cmd = 0.0))
#C    BadOperatingPoint ON
#C #endif
#C *
#C NEW_LIMITS
#C *
NO_CONTROL_CHANGE
#C ******************************************************
#C * Check for operator override  A difference of > X degrees
#C * between commanded and actual Power Lever Position
#C ********************************************************
#C #if	(AutoThrottle_F & (TLA_Diff > TLA_OverRide))
#C    OperatorOverride ON
#C #else
#C    OperatorOverride OFF
#C #endif
#C ******************************************************
#C * Perform TLA Target Lookup and Add Trim Value...
#C ******************************************************
#C #if			(ControlMode = EPRControlMode)
#C    EPR_Target:	(EPR_Target + (EPR_Target * Trim_Value / 100.0))
#C    TLA_Cmd:	lookup (EPRControl_T)
#C #elseif		(ControlMode = N1ControlMode)
#C    N1_Target:	(N1_Target + (N1_Target * Trim_Value / 100.0))
#C    TLA_Cmd:	lookup (N1Control_T)
#C #elseif		(ControlMode = TLAControlMode)
#C    TLA_Cmd:	(TLA_Cmd + (TLA_Cmd * Trim_Value / 100.0))
#C    TLA_Cmd:	lookup (TLAControl_T)
#C #else
#C    TLA_Cmd:	RMISS
#C #endif
#C ******************************************************
#C * If in Auto throttle mode Perform Conversions
#C ******************************************************
#if	~AutoThrottle_F
   #goto NO_AUTO_THROTTLE
#endif
#C ******************************************************
#C * Compute DAC value
#C ******************************************************
   DAC_PLA_Voltage:	-(DACSlope * PLA_Handle + DACOffset)
#C *
NO_AUTO_THROTTLE
#C *
#if CalibratingDAC
   PLALow:	((PLA1 + PLA2) / 2.0)
   PLAHigh:	((PLA3 + PLA4) / 2.0)
   DACSlope:	(2.0 / (PLAHigh - PLALow))
   DACOffset:	(1.5 - (PLALow * DACSlope))
   CalibratingDAC:	OFF
#endif
#C vvvvvvvvvvvvvvvvvvvv Code Checked OK Below vvvvvvvvvvvvvvvvv
#C ------------------------------------------------------------
#C * Set the actual Ramping PLA Voltage (PLA_Command) here...
#if			(AutoThrottle_F & AutoPL_I)
   PLA_Command:Deg	(TLA_PLA_mcoeff * TLA_Cmd + TLA_PLA_bcoeff)
#endif
#C LastControlMode:	ControlMode
LastAUTOPLReq:		AutoPL_I
TLACmdLastScan:Deg	TLA_Cmd
#C ------------------------------------------------------------
$END-GROUP

