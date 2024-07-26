$PHASE MOPTest_ATP length=-1       level=0 controlrelay=None common=0
#if (MOPTstStage = 1)
+0 SET MOPTstStage 3
+0 SET TLAatArm TLA_Actual
+0 SET N1DecelTarg (N1S + 50.0)
+0 SET StageTmr 0.0
+0 SET StageTmrLim 300.0
+0 SET StageTmr_F ON
+0 SET MOPTstStageTxt concat (StepTxt "Hold at Minimum IDLE for (5 Min)")
#elseif ((MOPTstStage = 3) & StageTmrLim_F)
+0 SET MOPTstStage 5
+0 SET TLAatArm TLA_Actual
+0 SET N1AccelTarg 6028.0
+0 SET StepTxt concat ("" "5.F. ")
+0 SET StageTmr_F OFF
+0 SET StageTmrLim 300.0
+0 SET StageTmr 0.0
+0 SET MOPTstStageTxt concat (StepTxt "Waiting for Slow Accel to 60% N1 (6028 RPM)")
#elseif ((MOPTstStage = 5) & TLAAccel_F)
+0 SET MOPTstStage 10
+0 SET MOPTstStageTxt concat (StepTxt "Slow Accel to 60% N1 (6028 RPM)")
#elseif ((MOPTstStage = 10) & N1AccelTarg_F)
+0 SET MOPTstStage 15
+0 SET StageTmr_F ON
+0 SET MOPTstStageTxt concat (StepTxt "Hold at 60% N1 (6028) for (5 Min)")
#elseif ((MOPTstStage = 15) & StageTmrLim_F)
+0 SET MOPTstStage 20
+0 SET StepTxt concat ("" "5.G. ")
+0 SET MOPTstStageTxt concat (StepTxt "Recording Data...")
+0 SET StageTmr_F ON
+0 SET StageTmr 0.0
+0 SET StageTmrLim 5.0
+0 SET FreezeMOP_F ON
#elseif ((MOPTstStage = 20) & StageTmrLim_F)
+0 SET MOPTstStage 25
+0 SET FreezeMOP_F OFF
+0 SET StepTxt concat ("" "5.H. ")
+0 SET MOPTstStageTxt concat (StepTxt "Data Recorded, Waiting for SLOW Decel to Min Idle...")
+0 SET StageTmr_F OFF
+0 SET TLAatArm TLA_Actual
#elseif ((MOPTstStage = 25) & TLADecel_F)
+0 SET MOPTstStage 30
+0 SET MOPTstStageTxt concat (StepTxt "Slow Decel to Min Idle...")
#elseif ((MOPTstStage = 30) & N1DecelTarg_F)
+0 SET MOPTstStage 35
+0 SET StepTxt concat ("" "5.H.(1) ")
+0 SET MOPTstStageTxt concat (StepTxt "Hold at Min Idle for (5 Min)")
+0 SET StageTmr 0.0
+0 SET StageTmrLim 300.0
+0 SET StageTmr_F ON
#elseif ((MOPTstStage = 35) & StageTmrLim_F)
+0 SET MOPTstStage 40
+0 SET StepTxt concat ("" "5.I. ")
+0 SET MOPTstStageTxt concat (StepTxt "MOP Test Complete...")
+0 SET StageTmr_F OFF
+0 SET ArmMOPTst_TB OFF
#endif
$END-PHASE
**********

