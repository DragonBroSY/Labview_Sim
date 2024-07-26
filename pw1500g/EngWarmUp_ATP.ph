$PHASE EngWarmUp_ATP length=-1       level=0 controlrelay=None common=0
**************************************
***** Engine Warm-Up Procedure *******
***** Acceptance Test 9: 1.11.14.2 ***
**************************************
#if (ECM_IdleCtrl_TB)
+0 SET ECM_IdleCtrl_TB OFF
#elseif ((WarmUpStage = 1) & ~TRAGIdle_F)
+0 SET WarmUpStage 3
+0 SET StepTxt concat ("" "Engine Warm-Up: ")
+0 SET WarmUpStageTxt concat (StepTxt "Armed, Waiting for Ground Idle...")
#elseif (((WarmUpStage = 1) | (WarmUpStage = 3)) & TRAGIdle_F & StartAborted_F)
+0 SET WarmUpStage 5
+0 EXECUTE StageClear_ATP
+0 SET StartAborted_F OFF
+0 SET StageTmrLim 1200
+0 SET StepTxt concat ("" "Engine Warm-Up: ")
+0 SET WarmUpStageTxt concat (StepTxt "Armed, Previous Start Aborted, Hold 20 Minutes...")
+0 SET StageTmr_F ON
#elseif (((WarmUpStage = 1) | (WarmUpStage = 3)) & TRAGIdle_F & ~StartAborted_F)
+0 SET WarmUpStage 5
+0 EXECUTE StageClear_ATP
+0 SET StageTmrLim 10
+0 SET StepTxt concat ("" "Engine Warm-Up: ")
+0 SET WarmUpStageTxt concat (StepTxt "Armed, Ground Idle Selected...")
+0 SET StageTmr_F ON
#elseif ((WarmUpStage = 5) & TRAGIdle_F & MOT2Low_F & StageTmrLim_F)
+0 SET WarmUpStage 7
+0 SET StageTmr_F OFF
+0 SET WarmUpStageTxt concat (StepTxt "Initiated, Waiting for MOT > ")
+0 SET WarmUpStageTxt concat (WarmUpStageTxt MOTWarmTH)
+0 SET WarmUpStageTxt concat (WarmUpStageTxt " DegC...")
#elseif (((WarmUpStage = 5) | (WarmUpStage = 7)) & TRAGIdle_F & ~MOT2Low_F & StageTmrLim_F)
+0 SET WarmUpStage 10
+0 EXECUTE StageClear_ATP
#elseif (WarmUpStage = 10)
+0 SET WarmUpStage 15
+0 SET TRAStart TRA_Actual
+0 SET StageTmrLim 70
+0 SET TRAAccelTarg 34.0
+0 SET N1C2AccelTarg 6700.0
+0 SET N1C2_TargMn (N1C2AccelTarg - 75.0)
+0 SET N1C2_TargMx (N1C2AccelTarg + 75.0)
+0 SET TRA_Rate 0.4
+0 SET Accel_F	ON
+0 SET StageTmr_F ON
+0 SET WarmUpStageTxt concat (StepTxt "Slow Accel to N1C2: 6700 RPM...")
#elseif ((WarmUpStage = 15) & (N1C2R >= (N1C2_TargMn - 50.0)))
+0 SET WarmUpStage 20
+0 EXECUTE StageClear_ATP
+0 SET StageTmrLim 180
+0 SET WarmUpStageTxt concat (StepTxt "Dwell at N1C2: 6700 RPM for 180 sec...")
+0 SET StageTmr_F ON
#elseif ((WarmUpStage = 20) & StageTmrLim_F)
+0 SET WarmUpStage 25
+0 EXECUTE StageClear_ATP
#elseif (WarmUpStage = 25)
+0 SET WarmUpStage 30
+0 SET TRAStart TRA_Actual
+0 SET StageTmrLim 70
+0 SET TRADecelTarg TRAGIdleTarg
+0 SET N1C2_TargMn 0.0
+0 SET N1C2_TargMx 5.7
+0 SET TRA_Rate 0.4
+0 SET Decel_F	ON
+0 SET StageTmr_F ON
+0 SET WarmUpStageTxt concat (StepTxt "Decel to Ground Idle...")
#elseif ((WarmUpStage = 30) & TRADecelTarg_F)
+0 SET WarmUpStage 35
+0 EXECUTE StageClear_ATP
#elseif (WarmUpStage = 35)
+0 SET WarmUpStage 40
+0 SET StageTmrLim 60
+0 SET StageTmr_F ON
+0 SET WarmUpStageTxt concat (StepTxt "Complete, Dwell 60 Sec.")
#elseif ((WarmUpStage = 40) & StageTmrLim_F)
+0 SET WarmUpStage 45
+0 EXECUTE StageClear_ATP
+0 SET WarmUP_TS OFF
*+0 SET ArmWarmUP_F OFF
#endif
$END-PHASE
**********

