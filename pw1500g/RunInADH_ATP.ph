$PHASE RunInADH_ATP length=-1       level=0 controlrelay=None common=0
****************************************************
**** Run-In Accel, Decel and Hold Functions ****
**** AutoThrottle and Manual Procedures ************
****************************************************
*********** GoTo Ground Idle Functions *************
****************************************************
#if ((RunInStage1 = 0) & GoToGI_F & AutoThrottle_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Auto Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 0) & GoToGI_F)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
#elseif ((RunInStage1 = 5) & GoToGI_F & TRADecel_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 10) & GoToGI_F & StageTmrLim_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA) (Ground Idle), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
#elseif (((RunInStage1 = 10)|(RunInStage1 = 15)) & GoToGI_F & TRADecelTarg_F)
+0 SET RunInStage1 40
+0 SET RunInStageTxt concat (StepTxt "Decel Complete...")
****************************************************
****************** Accel Functions *****************
****************************************************
#elseif ((RunInStage1 = 0) & Accel_F & AutoThrottle_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Auto Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Step: %vRunInStep Auto Accel to %vTRA_Targ TRA Deg. %vStageTmrLim Sec.")
#elseif ((RunInStage1 = 0) & Accel_F)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
#elseif ((RunInStage1 = 5) & Accel_F & TRAAccel_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Accel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg, ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 10) & Accel_F & StageTmrLim_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
#elseif ((RunInStage1 = 10)|(RunInStage1 = 15) & Accel_F & TRAAccelTarg_F)
+0 SET RunInStage1 40
+0 SET RunInStageTxt concat (StepTxt "Accel Complete...")
***************************************************
****************** Decel Functions ****************
***************************************************
#elseif ((RunInStage1 = 0) & Decel_F & AutoThrottle_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Auto Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Step: %vRunInStep Auto Decel to %vTRA_Targ TRA Deg. %vStageTmrLim Sec.")
#elseif ((RunInStage1 = 0) & Decel_F)
+0 SET RunInStage1 5
+0 SET RunInStageTxt concat (StepTxt "Waiting for Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
#elseif ((RunInStage1 = 5) & Decel_F & TRADecel_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Decel to ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 10) & Decel_F & StageTmrLim_F)
+0 SET RunInStage1 15
+0 SET RunInStageTxt concat (StepTxt "Waiting for ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
#elseif (((RunInStage1 = 10)|(RunInStage1 = 15)) & Decel_F & TRADecelTarg_F)
+0 SET RunInStage1 40
+0 SET RunInStageTxt concat (StepTxt "Decel Complete...")
***************************************************
****************** Hold Functions *****************
***************************************************
#elseif ((RunInStage1 = 0) & GoToHold_F & GoToGI_F)
+0 SET RunInStage1 10
+0 SET RunInStageTxt concat (StepTxt "Dwell at ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), (Ground Idle), for ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif ((RunInStage1 = 0) & GoToHold_F)
+0 SET RunInStage1 20
+0 SET RunInStageTxt concat (StepTxt "Dwell at ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), for ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Step: %vRunInStep Dwell at %vTRA_Targ TRA Deg. for %vStageTmrLim Sec.")
#elseif ((RunInStage1 = 20) & (RunInStage < 110) & GoToHold_F & (StageTmr > (StageTmrLim - 22)))
+0 SET RunInStage1 25
+0 SET PointName concat ("Run-In #" RunInStep)
+0 SET PointName concat (PointName " Data Print")
* +0 EXECUTE DataPrint_ATP
+0 SET RunInStageTxt concat (StepTxt "Dwell at ")
+0 SET RunInStageTxt concat (RunInStageTxt TRA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TRA Deg (")
+0 SET RunInStageTxt concat (RunInStageTxt TLA_Targ)
+0 SET RunInStageTxt concat (RunInStageTxt " TLA), for ")
+0 SET RunInStageTxt concat (RunInStageTxt StageTmrLim)
+0 SET RunInStageTxt concat (RunInStageTxt " Data Print...")
#elseif (((RunInStage1 = 20) | (RunInStage1 = 25)) & GoToHold_F & StageTmrLim_F)
+0 SET RunInStage1 40
+0 SET RunInStageTxt concat (StepTxt "Hold Complete...")
***************************************************
****************** Completed Functions ************
***************************************************
#elseif (RunInStage1 = 40)
+0 SET RunInStage1 0
+0 SET RunInStage (RunInStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

