$PHASE VibSurvey_ATP length=-1       level=0 controlrelay=None common=0
***** Vibration Survey Table 7 *****
#if (ECM_IdleCtrl_TB)
+0 SET ECM_IdleCtrl_TB OFF
#elseif ((VibSvyStage = 1) & ~TRAGIdle_F)
+0 SET VibSvyStage 2
+0 SET VibSvyStageTxt concat (StepTxt "Vibration Survey Armed, waiting for Ground Idle...")
#elseif (((VibSvyStage = 1) | (VibSvyStage = 2)) & TRAGIdle_F)
+0 SET VibSvyStage 3
+0 EXECUTE StageClear_ATP
#elseif (VibSvyStage = 3)
+0 SET VibSvyStage 10
***** No CIT Checking...
+0 SET VibSvyStep 1
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
+0 SET StageTmr_F ON
+0 SET OverRide25Bld_F OFF
+0 SET OverRideSVScd_F OFF
+0 SET VibSvyStageTxt concat (StepTxt "Vibration Survey Armed, Ground Idle Selected...")
#elseif ((VibSvyStage = 10) & StageTmrLim_F)
+0 SET VibSvyStage 13
+0 EXECUTE StageClear_ATP
+0 SET acceldecelbutton OFF
#elseif (VibSvyStage = 13)
**** Accel 0 to 46 Deg TLA 80 sec...
+0 SET VibSvyStage 15
+0 PLOT RECORD ON
+0 SET VibSvyStep 2
+0 EXECUTE SetTargs_ATP
#elseif (VibSvyStage = 15)
+0 EXECUTE VibSvyADH_ATP
#elseif (VibSvyStage = 20)
+0 SET VibSvyStage 23
+0 EXECUTE StageClear_ATP
#elseif (VibSvyStage = 23)
**** HOLD at 46 Deg TLA for 30 sec...
+0 SET VibSvyStage 25
+0 SET VibSvyStep 3
+0 SET GoToHold_F ON
+0 SET acceldecelbutton ON
+0 EXECUTE SetTargs_ATP
#elseif (VibSvyStage = 25)
+0 EXECUTE VibSvyADH_ATP
#elseif (VibSvyStage = 30)
+0 SET VibSvyStage 33
+0 EXECUTE StageClear_ATP
#elseif (VibSvyStage = 33)
**** Decel 46 to 0 Deg TLA 80 sec...
+0 SET VibSvyStage 35
+0 SET VibSvyStep 4
+0 EXECUTE SetTargs_ATP
#elseif (VibSvyStage = 35)
+0 EXECUTE VibSvyADH_ATP
#elseif (VibSvyStage = 40)
+0 SET VibSvyStage 45
+0 EXECUTE StageClear_ATP
#elseif ((VibSvyStage = 45) & (EEC_N1 > 2250.0))
+0 SET VibSvyStage 46
+0 SET VibSvyStageTxt concat (StepTxt "Waiting for N1 < 2250 RPM...")
#elseif (((VibSvyStage = 45) | (VibSvyStage = 46)) & (EEC_N1 <= 2250.0))
**** Turn OFF Recording and store the Plot data...
+0 SET VibSvyStage 47
+0 PLOT RECORD OFF
+0 PLOT STOREPLOT
+0 SET PrevPlotRec_Mins PlotRec_Mins
+0 EVENT ("Vibration Survey Stored...")
#elseif ((VibSvyStage = 47) & VibSvyTest1_F)
+0 SET VibSvyStage 48
+0 SPAWN StoreARVibPeaks_ATP
#elseif ((VibSvyStage = 47) & VibSvyTest2_F)
+0 SET VibSvyStage 48
+0 SPAWN StoreVibPeaks_ATP
#elseif (VibSvyStage = 48)
**** HOLD at 0 Deg TLA for 180 sec...
+0 SET VibSvyStage 50
+0 SET VibSvyStep 5
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (VibSvyStage = 50)
+0 EXECUTE VibSvyADH_ATP
#elseif (VibSvyStage = 55)
+0 SET VibSvyStage 58
+0 EXECUTE StageClear_ATP
#elseif (VibSvyStage = 58)
+0 SET VibSvyStage 60
+0 SET VibSvyStep 6
#elseif ((VibSvyStage = 60) & ~TRAGIdle_F)
+0 SET VibSvyStage 65
+0 SET VibSvyStageTxt concat (StepTxt "Vibration Survey Complete, Waiting for Ground Idle, TRA -14 Deg...")
+0 EVENT ("Step: %vVibSvyStep Vibration Survey Complete, Waiting for GIdle, TRA: %vTRA_Actual ")
#elseif (((VibSvyStage = 60) | (VibSvyStage = 65)) & TRAGIdle_F)
+0 SET VibSvyStage 70
+0 EXECUTE StageClear_ATP
#elseif (VibSvyStage = 70)
+0 SET VibSvyStage 75
+0 SET acceldecelbutton OFF
+0 SET ArmVibSurvey_TB OFF
+0 SET VibSurvey_TS OFF
+0 SET VibSvyOffical_TS OFF
+0 SET OverRide25Bld_F OFF
+0 SET OverRideSVScd_F OFF
+0 SET VibSvyStageTxt concat (StepTxt "Vibration Survey Complete...")
+0 EVENT ("Vibration Survey Complete...")
+0 SET TestCompVibSurvey_F ON
#endif
$END-PHASE
**********

