$PHASE AcceptADH_ATP length=-1       level=0 controlrelay=None common=0
****************************************************
**** Acceptance Accel, Decel and Hold Functions ****
**** AutoThrottle and Manual Procedures ************
****************************************************
********** Check Hold at Power Settings ************
****************************************************
#if ((AcceptStage1 = 10) & GoToHold_F & ~FNTR2Targ_F & ~ADPause_F & ~StageTmrLim_F)
+0 SET AcceptStage1 12
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", OUT OF RANGE...")
#elseif ((AcceptStage1 = 12) & GoToHold_F & FNTR2Targ_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, In Range, Dwell at Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 EVENT ("Stage %vAcceptStage , Acceptance, In Range, Dwell at Band X for %vStageTmrLim Sec. ")
#endif
****************************************************
************** GoTo Min Idle Functions *************
****************************************************
#if ((AcceptStage1 = 0) & GoToGI_F & AutoThrottle_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Auto Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 0) & GoToGI_F)
+0 SET AcceptStage1 5
+0 SET AcceptStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA Deg, Ground Idle, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
#elseif ((AcceptStage1 = 5) & GoToGI_F & TRADecel_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA Deg, Ground Idle, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 10) & GoToGI_F & StageTmrLim_F)
+0 SET AcceptStage1 15
+0 SET AcceptStageTxt concat (StepTxt "Waiting for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
#elseif (((AcceptStage1 = 10)|(AcceptStage1 = 15)) & GotoGI_F & TRADecelTarg_F)
+0 SET AcceptStage1 40
+0 SET AcceptStageTxt concat (StepTxt "Decel to Ground Idle Complete...")
****************************************************
****************** Accel Functions *****************
****************************************************
#elseif ((AcceptStage1 = 0) & AutoThrottle_F & Accel_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 EVENT ("Stage %vAcceptStage , Waiting for Accel to TRA: %vTRA_Targ , %vStageTmrLim ")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 0) & Accel_F)
+0 SET AcceptStage1 5
+0 SET AcceptStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
#elseif ((AcceptStage1 = 5) & Accel_F & TRAAccel_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Accel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 10) & Accel_F & StageTmrLim_F)
+0 SET AcceptStage1 15
+0 SET AcceptStageTxt concat (StepTxt "Waiting for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 EVENT ("Stage %vAcceptStage , Waiting for Accel to TRA: %vTRA_Targ , %vStageTmrLim ")
#elseif (((AcceptStage1 = 10)|(AcceptStage1 = 15)) & Accel_F & TRAAccelTarg_F)
+0 SET AcceptStage1 40
+0 SET AcceptStageTxt concat (StepTxt "Accel Complete...")
****************************************************
****************** Decel Functions *****************
****************************************************
#elseif ((AcceptStage1 = 0) & AutoThrottle_F & Decel_F)
+0 SET AcceptStage1 30
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, (")
+0 SET AcceptStageTxt concat (StepTxt DecelSpdTxt)
+0 SET AcceptStageTxt concat (StepTxt ") Decel to Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 EVENT ("Stage %vAcceptStage , Acceptance, Decel to TRA Target: %vTRADecelTarg (FNTR2: %vFNTR2 ) %vStageTmrLim ")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 0) & Decel_F)
+0 SET AcceptStage1 25
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Waiting for Decel to Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
#elseif ((AcceptStage1 = 25) & Decel_F & TRADecel_F)
+0 SET AcceptStage1 30
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, (")
+0 SET AcceptStageTxt concat (StepTxt DecelSpdTxt)
+0 SET AcceptStageTxt concat (StepTxt ") Decel to Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 30) & Decel_F & StageTmrLim_F)
+0 SET AcceptStage1 35
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Waiting for Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 EVENT ("Stage %vAcceptStage , Acceptance, Waiting for FNTR2 Decel Target: %vFNTR2_Targ (FNTR2: %vFNTR2 ) %vStageTmrLim ")
#elseif (((AcceptStage1 = 30)|(AcceptStage1 = 35)) & Decel_F & (TRADecelTarg_F | FNTR2DecelTarg_F))
+0 SET AcceptStage1 40
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Decel Complete to Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt "...")
+0 EVENT ("Stage %vAcceptStage , Decel Complete to TRA Target: %vTRADecelTarg or FNTR2 Target: %vFNTR2DecelTarg . (FNTR2: %vFNTR2 )")
****************************************************
******************* Hold Functions *****************
****************************************************
#elseif ((AcceptStage1 = 0) & GoToHold_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Wait (60 Sec)..., Auto Adjusting Thrust to Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt " FNTR2 Target: ")
+0 SET AcceptStageTxt concat (AcceptStageTxt FNTR2_Targ)
+0 SET StageTmr_F ON
+0 SET StageTmrOS 0.0
+0 SET TRA_RateRR 0.04
+0 SET ADPause_F ON
+0 EVENT ("Stage %vAcceptStage , Auto Adjusting Thrust to Band Target: %vFNTR2_Targ, (FNTR2: %vFNTR2 )")
#elseif ((AcceptStage1 = 10) & GoToHold_F & FNAdjTargMx_F & inrange(5.0 StageTmr 60.0) & StageTmrOS_F)
+0 SET StageTmrOS (StageTmr + 0.8)
+0 SET TRA_CMD (TRA_CMD - TRA_RateRR)
#elseif ((AcceptStage1 = 10) & GoToHold_F & FNAdjTargMn_F & inrange(5.0 StageTmr 60.0) & StageTmrOS_F)
+0 SET StageTmrOS (StageTmr + 0.8)
+0 SET TRA_CMD (TRA_CMD + TRA_RateRR)
#elseif ((AcceptStage1 = 10) & GoToHold_F & ((StageTmr > 60) | (StageTmr > (StageTmrOS + 15))))
+0 SET AcceptStage1 13
+0 SET ADPause_F OFF
****** Reset Stage Timer to 0 to get full stable time after auto Adjusting Thrust. (DJR 06/07/23)
+0 SET StageTmr 0.0
+0 SET StageTmr_F ON
+0 SET StageTmrPnt (StageTmrLim - 62)
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Dwell at Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt " for: ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 EVENT ("Stage %vAcceptStage , Acceptance, Dwell at BandX (FNTR2: %vFNTR2 ) for: %vStageTmrLim ")
#elseif ((AcceptStage1 = 13) & GoToHold_F & (StageTmr >= StageTmrPnt))
+0 SET AcceptStage1 15
+0 EXECUTE storePerformance_ATP
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Storing Acceptance Point Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", Dwell ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
#elseif (((AcceptStage1 = 10) | (AcceptStage1 = 13) | (AcceptStage1 = 15)) & GoToHold_F & StageTmrLim_F)
+0 SET AcceptStage1 40
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Band ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", Point Complete...")
****************** Completed Functions *****************
#elseif (AcceptStage1 = 40)
+0 SET AcceptStage1 0
+0 SET AcceptStage (AcceptStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

