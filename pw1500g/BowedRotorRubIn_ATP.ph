$PHASE BowedRotorRubIn_ATP length=-1       level=0 controlrelay=None common=0
#if (ECM_IdleCtrl_TB)
+0 SET ECM_IdleCtrl_TB OFF
#elseif ((BowRotStage = 1) & ~EECEngRunning & ~BRStartNBRP_F & ~BRStartBRP_F)
+0 SET BowRotStage 2
+0 SET BRStabIdleTm 1800
+0 SET StepTxt concat("7.4.5" " 1.: ")
+0 SET BowRotStageTxt concat(StepTxt "Perform Normal Engine Start Per 6.1.5...")
#elseif ((BowRotStage = 1) & ~EECEngRunning & BRStartBRP_F)
+0 SET BowRotStage 3
+0 SET BRStabIdleTm 300
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " g.: ")
+0 SET BowRotStageTxt concat(StepTxt "Perform Normal Engine Start Per 6.1.5...")
#elseif ((BowRotStage = 1) & ~EECEngRunning & BRStartNBRP_F)
+0 SET BowRotStage 3
+0 SET BRStabIdleTm 300
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " g.: ")
+0 SET BowRotStageTxt concat(StepTxt "Start Engine and DO NOT comply with Bowed Rotor Prevention...")
#elseif ((BowRotStage = 2) & EECEngRunning & ~BRStartNBRP_F & ~BRStartBRP_F)
+0 SET BowRotStage 3
+0 SET StepTxt concat("7.4.5" " 2.: ")
#elseif (((BowRotStage = 1) | (BowRotStage = 3)) & EECEngRunning & ~TRAGIdle_F)
+0 SET BowRotStageTxt concat(StepTxt "WAITING for Ground Idle...")
#elseif (((BowRotStage = 1) | (BowRotStage = 3)) & EECEngRunning & TRAGIdle_F)
+0 SET BowRotStage 5
+0 EXECUTE StageClear_ATP
+0 SET StageTmrLim BRStabIdleTm
+0 SET StageTmr_F ON
+0 SET BowRotStageTxt concat(StepTxt "Stabilize at Ground Idle for: ")
+0 SET BowRotStageTxt concat(BowRotStageTxt BRStabIdleTm)
+0 SET BowRotStageTxt concat(BowRotStageTxt " Seconds...")
#elseif ((BowRotStage = 5) & AutoThrottle_F & StageTmrLim_F)
+0 SET BowRotStage 7
+0 EXECUTE StageClear_ATP
#elseif (BowRotStage = 7)
+0 SET BowRotStage 10
+0 SET TRA_Rate 0.2
+0 SET TRAAccelTarg 32.0
+0 SET N1C2AccelTarg 6100.0
+0 SET N1C2_TargMn (N1C2AccelTarg - 100.0)
+0 SET N1C2_TargMx (N1C2AccelTarg + 100.0)
+0 SET TRAStart TRA_Actual
+0 SET Accel_F	ON
+0 SET StageTmrLim 300
+0 SET StageTmr_F ON
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " a.: ")
+0 SET BowRotStageTxt concat(StepTxt "Slow Accel to 6100 N1C2R RPM...")
#elseif ((BowRotStage = 10) & (StageTmr > 30.0))
+0 SET BowRotStage 15
+0 SET BowRotStageTxt concat(StepTxt "Waiting for 6100 N1C2R RPM...")
#elseif (((BowRotStage = 15) | (BowRotStage = 10)) & (N1C2R > 6075.0))
+0 SET BowRotStage 20
+0 EXECUTE StageClear_ATP
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " b.: ")
+0 SET BowRotStageTxt concat(StepTxt "Hold at 6100 N1C2R for 5 Minutes.")
#elseif (BowRotStage = 20)
+0 SET BowRotStage 23
+0 SET Accel_F	OFF
+0 SET StageTmrLim 300
+0 SET StageTmr_F ON
#elseif ((BowRotStage = 23) & StageTmrLim_F)
+0 SET BowRotStage 25
+0 EXECUTE StageClear_ATP
#elseif (BowRotStage = 25)
+0 SET BowRotStage 30
+0 SET TRA_Rate 0.2
+0 SET StageTmrLim 300
+0 SET TRADecelTarg TRAGIdleTarg
+0 SET N1C2AccelTarg 0.0
+0 SET N1C2_TargMn 0.0
+0 SET N1C2_TargMx 0.0
+0 SET TRAStart TRA_Actual
+0 SET Decel_F	ON
+0 SET StageTmr_F ON
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " c.: ")
+0 SET BowRotStageTxt concat(StepTxt "Slow Decel to Ground Idle...")
#elseif ((BowRotStage = 30) & TRADecelTarg_F)
+0 SET BowRotStage 35
+0 EXECUTE StageClear_ATP
+0 SET StageTmrLim 300
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " d.: ")
+0 SET BowRotStageTxt concat(StepTxt "Dwell at Ground Idle until HPTDTemp-TT2SEL = 290-310 DegC...")
+0 SET StageTmr_F ON
#elseif ((BowRotStage = 35) & TRAGIdle_F & HPTDTemp_F)  
+0 SET BowRotStage 40
+0 EXECUTE StageClear_ATP
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " e.: ")
+0 SET BowRotStageTxt concat(StepTxt "Perform Normal Shutdown per 6.2.2, DO NOT C/W Bowed Rotor Prevention...")
#elseif ((BowRotStage = 40) & TRAGIdle_F & ~EECEngRunning)  
+0 SET BowRotStage 45
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " f.: ")
+0 SET BowRotStageTxt concat(StepTxt "Waiting for Rotor Rest...")
#elseif ((BowRotStage = 45) & EngineNotRunning)  
+0 SET BowRotStage 50
+0 SET BRStageTmr	0.0
+0 SET StageTmrLim	BRTmrLimMx
+0 SET BRStageTmr_F	ON
+0 SET StageTmr_F	ON
+0 SET BRStartTm:Sec	(SysTime + BRTmrLim)
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " f.: ")
+0 SET BowRotStageTxt concat(StepTxt "Remain at Rotor Rest for: ")
+0 SET BowRotStageTxt concat(BowRotStageTxt BRTmrLim)
+0 SET BowRotStageTxt concat(BowRotStageTxt " Secs (+/- 300 Secs)...")
#elseif ((BowRotStage = 50) & BRTmrLim_F & ~BRContinue_F)
+0 SET BRStartBRP_F	OFF
+0 SET BRStartNBRP_F	ON
+0 SET BRContinue_F	ON
+0 SET StepTxt concat("7.4.5." BRPart)
+0 SET StepTxt concat(StepTxt " f.: ")
+0 SET BowRotStageTxt concat(StepTxt "Select the Continue Button...")
#elseif ((BowRotStage = 50) & (BRStageTmr > BRTmrLimMx) & ~BRStartBRP_F)
+0 SET BRStartBRP_F	ON
+0 SET BRStartNBRP_F	OFF
#elseif ((BowRotStage = 50) & (BRStageTmr > BRTmrLimMn) & BRStageTmr_F & N2GT5Pct_O)
+0 SET BRStageTmr_F	OFF
#elseif ((BowRotStage = 50) & ~BRStageTmr_F)
+0 SET BowRotStage 55
+0 SET BRContinue_F	OFF
#elseif ((BowRotStage = 55) & (BRPart = 1) & (BRSeqNo = 1))  
+0 SET BowRotStage 60
+0 SET BRPart1Seq1 2
+0 SET BRPart1Tm1 BRStageTmr
+0 SET BRPart1Seq1_TB OFF
+0 EVENT ("Bowed Rotor Rub-In Part 1 Sequence No. 1 Complete.")
#elseif ((BowRotStage = 55) & (BRPart = 2) & (BRSeqNo = 1))  
+0 SET BowRotStage 60
+0 SET BRPart2Seq1 2
+0 SET BRPart2Tm1 BRStageTmr
+0 SET BRPart2Seq1_TB OFF
+0 EVENT ("Bowed Rotor Rub-In Part 2 Sequence No. 1 Complete.")
#elseif ((BowRotStage = 55) & (BRPart = 2) & (BRSeqNo = 2))  
+0 SET BowRotStage 60
+0 SET BRPart2Seq2 2
+0 SET BRPart2Tm2 BRStageTmr
+0 SET BRPart2Seq2_TB OFF
+0 EVENT ("Bowed Rotor Rub-In Part 2 Sequence No. 2 Complete.")
#elseif ((BowRotStage = 55) & (BRPart = 3) & (BRSeqNo = 1))  
+0 SET BowRotStage 60
+0 SET BRPart3Seq1 2
+0 SET BRPart3Tm1 BRStageTmr
+0 SET BRPart3Seq1_TB OFF
+0 EVENT ("Bowed Rotor Rub-In Part 3 Sequence No. 1 Complete.")
#elseif ((BowRotStage = 55) & (BRPart = 3) & (BRSeqNo = 2))  
+0 SET BowRotStage 60
+0 SET BRPart3Seq2 2
+0 SET BRPart3Tm2 BRStageTmr
+0 SET BRPart3Seq2_TB OFF
+0 EVENT ("Bowed Rotor Rub-In Part 3 Sequence No. 2 Complete.")
#elseif ((BowRotStage = 55) & (BRPart = 3) & (BRSeqNo = 3))  
+0 SET BowRotStage 60
+0 SET BRPart3Seq3 2
+0 SET BRPart3Tm3 BRStageTmr
+0 SET BRPart3Seq3_TB OFF
+0 EVENT ("Bowed Rotor Rub-In Part 3 Sequence No. 3 Complete.")
*#elseif ((BowRotStage = 60) & (BRPart = 1) & (BRSeqNo = 1))  
*+0 SET BowRotStage 0
*+0 EXECUTE StageClear_ATP
*+0 SET BRTmrLim BRTmrLim2
*+0 SET BRTmrLimMn BRTmrLimMn2
*+0 SET BRTmrLimMx BRTmrLimMx2
*+0 SET BRSeqNo 1
*+0 SET BRPart 2
*+0 SET BRPart2Seq1 1
*#elseif ((BowRotStage = 60) & (BRPart = 2) & (BRSeqNo = 1))  
*+0 SET BowRotStage 0
*+0 EXECUTE StageClear_ATP
*+0 SET BRSeqNo 2
*+0 SET BRPart2Seq2 1
*#elseif ((BowRotStage = 60) & (BRPart = 2) & (BRSeqNo = 2))  
*+0 SET BowRotStage 0
*+0 EXECUTE StageClear_ATP
*+0 SET BRTmrLim BRTmrLim3
*+0 SET BRTmrLimMn BRTmrLimMn3
*+0 SET BRTmrLimMx BRTmrLimMx3
*+0 SET BRSeqNo 1
*+0 SET BRPart 3
*+0 SET BRPart3Seq1 1
*#elseif ((BowRotStage = 60) & (BRPart = 3) & (BRSeqNo = 1))  
*+0 SET BowRotStage 0
*+0 EXECUTE StageClear_ATP
*+0 SET BRSeqNo 2
*+0 SET BRPart3Seq2 1
*#elseif ((BowRotStage = 60) & (BRPart = 3) & (BRSeqNo = 2))  
*+0 SET BowRotStage 0
*+0 EXECUTE StageClear_ATP
*+0 SET BRSeqNo 3
*+0 SET BRPart3Seq3 1
#elseif ((BowRotStage = 60) & (BRSeqNo < 3))  
*+0 SET BowRotStage 0
*+0 EXECUTE StageClear_ATP
#elseif ((BowRotStage = 60) & (BRPart = 3) & (BRSeqNo = 3))  
+0 SET BowRotStage 65
+0 EXECUTE StageClear_ATP
+0 SET BRPart 0
+0 SET ArmBowedRotor_F OFF
+0 SET BowedRotor_TS OFF
#endif
$END-PHASE
**********

