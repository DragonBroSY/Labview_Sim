$PHASE RunInDecel_ATP length=-1       level=0 controlrelay=None common=0
#C ************************* Min Idle ******************************
#if ((RunInStage1 = 0) & GoToGI_F)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, Ground Idle, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 5) & TLADecel_F & GoToGI_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, Ground Idle, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 10) & StageTmrLim_F & GoToGI_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, Ground Idle, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif (((RunInStage1 = 10)|(RunInStage1 = 15)) & TLADecelTarg_F & GoToGI_F)
+0 SET RunInStage1 0
+0 SET RunInStage (RunInStage + 1)
+0 SET StageTmr_F OFF
#C ****************** ALL Other Power Settings *****************
#elseif (RunInStage1 = 0)
+0 SET RunInStage1 25
+0 SET RunInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 25) & TLADecel_F)
+0 SET RunInStage1 30
+0 SET RunInStageTxt concat (StepTxt "Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 30) & StageTmrLim_F)
+0 SET RunInStage1 35
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif (((RunInStage1 = 30)|(RunInStage1 = 35)) & TLADecelTarg_F)
+0 SET RunInStage1 0
+0 SET RunInStage (RunInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

