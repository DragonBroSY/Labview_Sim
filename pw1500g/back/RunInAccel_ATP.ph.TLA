$PHASE RunInAccel_ATP length=-1       level=0 controlrelay=None common=0
#if (RunInStage1 = 0)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 5) & TLAAccel_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 10) & StageTmrLim_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif (((RunInStage1 = 10)|(RunInStage1 = 15)) & TLAAccelTarg_F)
+0 SET RunInStage1 0
+0 SET RunInStage (RunInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

