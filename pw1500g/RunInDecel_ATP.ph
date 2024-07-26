$PHASE RunInDecel_ATP length=-1       level=0 controlrelay=None common=0
************************* Min Idle ******************************
#if ((RunInStage1 = 0) & GoToGI_F & AutoThrottle_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Auto Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 0) & GoToGI_F)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 5) & TRADecel_F & GoToGI_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 10) & StageTmrLim_F & GoToGI_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif (((RunInStage1 = 10)|(RunInStage1 = 15)) & TRADecelTarg_F & GoToGI_F)
+0 SET RunInStage1 0
+0 SET RunInStageTxt concat (StepTxt "Decel Complete...")
+0 SET RunInStage (RunInStage + 5)
+0 SET StageTmr_F OFF
****************** ALL Other Power Settings *****************
#elseif ((RunInStage1 = 0) & AutoThrottle_F)
+0 SET RunInStage1 30
+0 SET RunInStageTxt concat (StepTxt "Auto Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif (RunInStage1 = 0)
+0 SET RunInStage1 25
+0 SET RunInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 25) & TRADecel_F)
+0 SET RunInStage1 30
+0 SET RunInStageTxt concat (StepTxt "Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 30) & StageTmrLim_F)
+0 SET RunInStage1 35
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif (((RunInStage1 = 30)|(RunInStage1 = 35)) & TRADecelTarg_F)
+0 SET RunInStage1 0
+0 SET RunInStageTxt concat (StepTxt "Decel Complete...")
+0 SET RunInStage (RunInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

