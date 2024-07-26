$PHASE AcceptDecel_ATP length=-1       level=0 controlrelay=None common=0
************************* Min Idle ******************************
#if ((AcceptStage1 = 0) & GoToGI_F & AutoThrottle_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Auto Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 0) & GoToGI_F)
+0 SET AcceptStage1 5
+0 SET AcceptStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA Deg, Ground Idle, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#elseif ((AcceptStage1 = 5) & GoToGI_F & TRADecel_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA Deg, Ground Idle, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 10) & GoToGI_F & StageTmrLim_F)
+0 SET AcceptStage1 15
+0 SET AcceptStageTxt concat (StepTxt "Waiting for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#elseif (((AcceptStage1 = 10)|(AcceptStage1 = 15)) & GotoGI_F & TRADecelTarg_F)
+0 SET AcceptStage1 0
+0 SET AcceptStage (AcceptStage + 1)
+0 SET StageTmr_F OFF
****************** ALL Other Power Settings *****************
#elseif ((AcceptStage1 = 0) & AutoThrottle_F)
+0 SET AcceptStage1 30
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, (")
+0 SET AcceptStageTxt concat (StepTxt DecelSpdTxt)
+0 SET AcceptStageTxt concat (StepTxt ") Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif (AcceptStage1 = 0)
+0 SET AcceptStage1 25
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Waiting for Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#elseif ((AcceptStage1 = 25) & TRADecel_F)
+0 SET AcceptStage1 30
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, (")
+0 SET AcceptStageTxt concat (StepTxt DecelSpdTxt)
+0 SET AcceptStageTxt concat (StepTxt ") Decel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 30) & StageTmrLim_F)
+0 SET AcceptStage1 35
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Waiting for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt ", ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#elseif (((AcceptStage1 = 30)|(AcceptStage1 = 35)) & (FNTR2 <= FNTR2_TargMx))
+0 SET AcceptStage1 0
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Decel Complete to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TargBandTxt)
+0 SET AcceptStageTxt concat (AcceptStageTxt "...")
+0 SET AcceptStage (AcceptStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

