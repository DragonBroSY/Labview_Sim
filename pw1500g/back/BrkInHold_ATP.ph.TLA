$PHASE BrkInHold_ATP length=-1       level=0 controlrelay=None common=0
#if ((BrkInStage1 = 0) & GoToGI_F)
+0 SET BrkInStage1 20
+0 SET BrkInStageTxt concat (StepTxt "Dwell at ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, (Ground Idle), for ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif (BrkInStage1 = 0)
+0 SET BrkInStage1 20
+0 SET BrkInStageTxt concat (StepTxt "Dwell at ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, for ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((BrkInStage1 = 20) & (BrkInStage < 110) & (StageTmr > (StageTmrLim - 10)))
+0 SET BrkInStage1 25
+0 SET PointName concat ("Break-In Nibble #" BrkInNibble)
+0 SET PointName concat (PointName " Data Print")
+0 EXECUTE DataPrint_ATP
#elseif (((BrkInStage1 = 25) | (BrkInStage1 = 20)) & StageTmrLim_F)
+0 SET BrkInStage1 0
+0 SET StageTmr_F OFF
+0 SET BrkInStage (BrkInStage + 5)
#endif
$END-PHASE
**********

