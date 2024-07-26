$PHASE AcceptHold_ATP length=-1       level=0 controlrelay=None common=0
****************** Hold at Power Settings *****************
#if ((AcceptStage1 = 10) & ~BandFNTarg_F)
+0 SET AcceptStage1 12
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", OUT OF RANGE...")
#elseif ((AcceptStage1 = 12) & BandFNTarg_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, In Range, Dwell at ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#endif
#if (AcceptStage1 = 0)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Dwell at ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 10) & BandFNTarg_F & (StageTmr >= (StageTmrLim - 62)))
+0 SET AcceptStage 15
+0 EXECUTE storePerformance_ATP
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Storing Acceptance Point ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", Dwell ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " sec.")
#elseif (((AcceptStage1 = 10)|(AcceptStage1 = 15)) & StageTmrLim_F)
+0 SET AcceptStage1 0
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Point Complete...")
+0 SET AcceptStage (AcceptStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

