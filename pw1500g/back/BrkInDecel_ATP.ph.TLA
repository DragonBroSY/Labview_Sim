$PHASE BrkInDecel_ATP length=-1       level=0 controlrelay=None common=0
#C ************************* Min Idle ******************************
#if ((BrkInStage1 = 0) & GoToGI_F)
+0 SET BrkInStage1 5
+0 SET BrkInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, Ground Idle, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif ((BrkInStage1 = 5) & TLADecel_F & GoToGI_F)
+0 SET BrkInStage1 10
+0 SET BrkInStageTxt concat (StepTxt "Decel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, Ground Idle, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((BrkInStage1 = 10) & StageTmrLim_F & GoToGI_F)
+0 SET BrkInStage1 15
+0 SET BrkInStageTxt concat (StepTxt "Waiting for ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, Ground Idle, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif (((BrkInStage1 = 10)|(BrkInStage1 = 15)) & TLADecelTarg_F & GoToGI_F)
+0 SET BrkInStage1 0
+0 SET BrkInStage (BrkInStage + 1)
+0 SET StageTmr_F OFF
#C ****************** ALL Other Power Settings *****************
#elseif (BrkInStage1 = 0)
+0 SET BrkInStage1 25
+0 SET BrkInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif ((BrkInStage1 = 25) & TLADecel_F)
+0 SET BrkInStage1 30
+0 SET BrkInStageTxt concat (StepTxt "Decel to ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((BrkInStage1 = 30) & StageTmrLim_F)
+0 SET BrkInStage1 35
+0 SET BrkInStageTxt concat (StepTxt "Waiting for ")
+0 SET BrkInStageTxt concat (BrkInStageTxt TLA_Targ)
+0 SET BrkInStageTxt concat (BrkInStageTxt " TLA Deg, ")
+0 SET BrkInStageTxt concat (BrkInStageTxt StageTmrLim)
+0 SET BrkInStageTxt concat (BrkInStageTxt " Sec.")
#elseif (((BrkInStage1 = 30)|(BrkInStage1 = 35)) & TLADecelTarg_F)
+0 SET BrkInStage1 0
+0 SET BrkInStage (BrkInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

