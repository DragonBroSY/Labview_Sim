$PHASE SnapAccel_ATP length=-1       level=0 controlrelay=None common=0
#if ((SnapStage1 = 0) & AutoThrottle_F & ArmRunInHPC_TB)
+0 SET SnapStage1 5
+0 SET RunInStageTxt concat (StepTxt "Auto Snap Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((SnapStage1 = 0) & AutoThrottle_F & ArmBrkInHPT_TB)
+0 SET SnapStage1 5
+0 SET BrkInStageTxt concat (StepTxt "Auto Snap Accel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TRA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TRA Deg (")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA), ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif ((SnapStage1 = 5) & AutoThrottle_F)
+0 SET SnapStage1 10
+0 SET StageTmr_F ON
+0 SET TRASnap_F ON
#elseif ((SnapStage1 = 10) & TRAAccelTarg_F)
+0 SET SnapStage1 15
+0 SET StageTmr_F OFF
+0 SET TRASnap_F OFF
#elseif ((SnapStage1 = 15) & TRAAccelTarg_F & ArmRunInHPC_TB)
+0 SET SnapStage1 0
+0 SET RunInStage (RunInStage + 5)
#elseif ((SnapStage1 = 15) & TRAAccelTarg_F & ArmBrkInHPT_TB)
+0 SET SnapStage1 0
+0 SET RunInStage (RunInStage + 5)
#endif
$END-PHASE
**********

