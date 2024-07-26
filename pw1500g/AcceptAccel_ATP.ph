$PHASE AcceptAccel_ATP length=-1       level=0 controlrelay=None common=0
#if ((AcceptStage1 = 0) & AutoThrottle_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif (AcceptStage1 = 0)
+0 SET AcceptStage1 5
+0 SET AcceptStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#elseif ((AcceptStage1 = 5) & TRAAccel_F)
+0 SET AcceptStage1 10
+0 SET AcceptStageTxt concat (StepTxt "Accel to ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((AcceptStage1 = 10) & StageTmrLim_F)
+0 SET AcceptStage1 15
+0 SET AcceptStageTxt concat (StepTxt "Waiting for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt TRA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TRA Deg, (")
+0 SET AcceptStageTxt concat (AcceptStageTxt TLA_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " TLA), ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Sec.")
#elseif (((AcceptStage1 = 10)|(AcceptStage1 = 15)) & TRAAccelTarg_F)
+0 SET AcceptStage1 0
+0 SET AcceptStageTxt concat (StepTxt "Accel Complete...")
+0 SET AcceptStage (AcceptStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

