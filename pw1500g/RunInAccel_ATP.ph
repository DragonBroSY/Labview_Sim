$PHASE RunInAccel_ATP length=-1       level=0 controlrelay=None common=0
#if ((RunInStage1 = 0) & AutoThrottle_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Auto Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 0) & ~AutoThrottle_F)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 5) & TRAAccel_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
+0 SET StageTmr_F ON
*#elseif ((RunInStage1 = 10) & StageTmrLim_F & CheckN2Min_F & (EEC_N2 >= RunInHPC_N2Lim))
*+0 SET RunInStage1 15
*+0 SET RunInStageTxt concat (StepTxt "Achieved N2 Min of 21350 RPM, TRA ")
*+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
*+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
*+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
*+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
*+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
*+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
*#elseif ((RunInStage1 = 10) & StageTmrLim_F & CheckN2Min_F & (EEC_N2 < RunInHPC_N2Lim))
*** Add a Pause so EEC_N2 Trys to Reach the Limit.
*+0 SET RunInStage1 11
*+0 SET RunInStageTxt concat (StepTxt "Waiting for N2 Min of 21350 RPM, TRA ")
*+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
*+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
*+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
*+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
*+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
*+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
*+0 SET Accel_F		OFF
*+0 SET StageTmrLim	3
*+0 SET StageTmr		0.0
*+0 SET StageTmr_F	ON
*#elseif ((RunInStage1 = 11) & StageTmrLim_F & CheckN2Min_F)
*+0 SET RunInStage1 15
*+0 SET StageTmr_F OFF
*#elseif ((RunInStage1 = 10) & StageTmrLim_F & ~CheckN2Min_F)
#elseif ((RunInStage1 = 10) & StageTmrLim_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Sec.")
#elseif ((RunInStage1 = 15) & TRAAccelTarg_F)
+0 SET RunInStage1 0
+0 SET RunInStageTxt concat (StepTxt "Accel Complete...")
+0 SET RunInStage (RunInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

