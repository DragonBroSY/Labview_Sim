$PHASE VibSvyADH_ATP length=-1       level=0 controlrelay=None common=0
***** Vibration Survey Accel Decel and Hold Logic...
#if ((VibSvyStage1 = 0) & AutoThrottle_F & Accel_F)
+0 SET VibSvyStage1 10
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Auto Accel to ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Step: %vVibSvyStop Vib Survey Auto Accel to TRA: %vTRA_Targ , %vStageTmrLim ")
#elseif ((VibSvyStage1 = 0) & AutoThrottle_F & Decel_F)
+0 SET VibSvyStage1 10
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Auto Decel to ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Step: %vVibSvyStop Vib Survey Auto Decel to TRA: %vTRA_Targ , %vStageTmrLim ")
#elseif ((VibSvyStage1 = 0) & GoToHold_F)
+0 SET VibSvyStage1 10
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Hold at ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif (VibSvyStage1 = 0 & ~AutoThrottle_F & Accel_F)
+0 SET VibSvyStage1 5
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Waiting for Accel to ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
#elseif ((VibSvyStage1 = 5) & ~AutoThrottle_F & TRAAccel_F)
+0 SET VibSvyStage1 10
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Accel to ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((VibSvyStage1 = 0) & ~AutoThrottle_F & Decel_F)
+0 SET VibSvyStage1 5
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Waiting for Decel to ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
#elseif ((VibSvyStage1 = 5) & ~AutoThrottle_F & TRADecel_F)
+0 SET VibSvyStage1 10
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Decel to ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((VibSvyStage1 = 10) & StageTmrLim_F & (Accel_F | Decel_F))
+0 SET VibSvyStage1 15
+0 SET VibSvyStageTxt concat (StepTxt "Vib Survey, Waiting for ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TRA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " Deg TRA, (")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt TLA_Targ)
+0 SET VibSvyStageTxt concat (VibSvyStageTxt " TLA), ")
+0 SET VibSvyStageTxt concat (VibSvyStageTxt StageTmrLim)
#elseif ((VibSvyStage1 = 10) & StageTmrLim_F & GoToHold_F)
+0 SET VibSvyStage1 20
#elseif (((VibSvyStage1 = 10) | (VibSvyStage1 = 15)) & TRAAccelTarg_F & Accel_F)
+0 SET VibSvyStage1 20
#elseif (((VibSvyStage1 = 10) | (VibSvyStage1 = 15)) & TRADecelTarg_F & Decel_F)
+0 SET VibSvyStage1 20
#elseif	(VibSvyStage1 = 20)
+0 SET VibSvyStage1 0
+0 SET VibSvyStage (VibSvyStage + 5)
+0 SET StageTmr_F OFF
+0 EVENT ("Step %vVibSvyStep Vib Survey ADH Complete...")
#endif
$END-PHASE
**********

