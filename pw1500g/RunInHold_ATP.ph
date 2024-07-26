$PHASE RunInHold_ATP length=-1       level=0 controlrelay=None common=0
#if ((RunInStage1 = 0) & GoToGI_F)
+0 SET RunInStage1 20
+0 SET RunInStageTxt concat (StepTxt "Dwell at ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), (Ground Idle), for ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif (RunInStage1 = 0)
+0 SET RunInStage1 20
+0 SET RunInStageTxt concat (StepTxt "Dwell at ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), for ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 20) & (RunInStage < 110) & (StageTmr > (StageTmrLim - 20)))
+0 SET RunInStage1 25
+0 SET PointName concat ("Run-In #" RunInStep)
+0 SET PointName concat (PointName " Data Print")
*+0 EXECUTE DataPrint_ATP
#elseif (((RunInStage1 = 25) | (RunInStage1 = 20)) & StageTmrLim_F)
+0 SET RunInStage1 0
+0 SET StageTmr_F OFF
+0 SET RunInStage (RunInStage + 5)
#endif
$END-PHASE
**********

