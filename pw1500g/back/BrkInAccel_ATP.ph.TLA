$PHASE BrkInAccel_ATP length=-1       level=0 controlrelay=None common=0
#if (BrkInStage1 = 0)
+0 SET BrkInStage1 5
+0 SET BrkInStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif ((BrkInStage1 = 5) & TLAAccel_F)
+0 SET BrkInStage1 10
+0 SET BrkInStageTxt concat (StepTxt "Accel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((BrkInStage1 = 10) & StageTmrLim_F)
+0 SET BrkInStage1 15
+0 SET BrkInStageTxt concat (StepTxt "Waiting for ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif (((BrkInStage1 = 10)|(BrkInStage1 = 15)) & TLAAccelTarg_F)
+0 SET BrkInStage1 0
+0 SET BrkInStage (BrkInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

