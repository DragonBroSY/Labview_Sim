$PHASE AccelCheck_ATP length=-1       level=0 controlrelay=None common=0
#if (((Accelstage < 10) | (AccelStage > 40)) & ECM_IdleCtrl_TB)
+0 SET ECM_IdleCtrl_TB OFF
#elseif (inrange(10 Accelstage 40) & ~ECM_IdleCtrl_TB)
+0 SET ECM_IdleCtrl_TB ON
#elseif (Accelstage = 1)
+0 SET Accelstage 5
+0 SET AccelTmr_F OFF
+0 SET AccelTmr 0.0
+0 SET DecelTmr_F OFF
+0 SET DecelTmr 0.0
+0 SET StageTmr 0.0
+0 SET StageTmrLim 5.0
+0 SET StageTmr_F ON
+0 SET AccelStageTxt concat (StepTxt "Accel Armed, Hold at Ground Idle for 5 Sec...")
#elseif ((Accelstage = 5) & StageTmrLim_F)
+0 SET Accelstage 10
+0 SET ECM_IdleCtrl_TB ON
+0 SET StageTmr 0.0
+0 SET StageTmrLim 18.0
+0 SET StageTmr_F ON
+0 SET AccelStep 2
+0 SET acceldecelbutton OFF
+0 SET StepTxt concat ("Accel Step " AccelStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AccelStageTxt concat (StepTxt "Selecting Approach Idle, 18 Sec...")
#elseif ((Accelstage = 10) & StageTmrLim_F)
+0 SET Accelstage 15
+0 SET StageTmr 0.0
+0 SET StageTmrLim 180.0
+0 SET StageTmr_F ON
+0 SET AccelStep 3
+0 SET StepTxt concat ("Accel Step " AccelStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AccelStageTxt concat (StepTxt "Hold at Approach Idle for 180 Sec...")
#elseif ((Accelstage = 15) & (StageTmr > 118.0))
+0 SET Accelstage 20
+0 EXECUTE storeAIdle_ATP
+0 SET AccelStageTxt concat (StepTxt "Approach Idle Performance Point, Hold at Approach Idle for 180 Sec...")
#elseif ((Accelstage = 20) & StageTmrLim_F)
+0 SET Accelstage 25
+0 EXECUTE StageClear_ATP
+0 SET AccelTmr 0.0
+0 SET TRAatArm (TRA_Actual + 0.3)
+0 SET AccelStep 4
+0 SET StepTxt concat ("Accel Step " AccelStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AccelStageTxt concat (StepTxt "Waiting for Snap Accel...")
#elseif ((Accelstage = 25) & AutoThrottle_F)
+0 SET Accelstage 30
+0 EXECUTE SetTargs_ATP
#elseif ((Accelstage = 30) & AutoThrottle_F)
+0 SET Accelstage 35
+0 SET AccelStageTxt concat (StepTxt "Snap Accel, Timer Running...")
+0 SET StageTmr_F ON
+0 SET AccelTmr_F ON
#elseif ((Accelstage = 25) & ~AutoThrottle_F & TRAAccel_F)
+0 SET Accelstage 35
+0 SET AccelTmr_F ON
+0 SET AccelStageTxt concat (StepTxt "Snap Accel, Timer Running...")
#elseif ((Accelstage = 35) & AccelTmr_F & (FNTR2_AC > FNTR2_ACC))
+0 SET Accelstage 40
+0 EXECUTE StageClear_ATP
+0 SET AccelTmr_F OFF
+0 SET strAccelTm AccelTmr
+0 SET strFNTR2_ACC FNTR2_ACC
+0 SET AccelStageTxt concat (StepTxt "97% Accel Check Complete...")
#elseif ((Accelstage = 40) & StableN1_F)
+0 SET Accelstage 45
+0 SET StageTmr 0.0
+0 SET StageTmrLim 30.0
+0 SET StageTmr_F ON
+0 SET AccelStep 5
+0 SET StepTxt concat ("Accel Step " AccelStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AccelStageTxt concat (StepTxt "Accel Check Complete, Hold at Take-Off 30 Sec...")
#elseif ((Accelstage > 25) & AccelTmr_F & (AccelTmr > 20.0))
+0 SET Accelstage 45
+0 EXECUTE StageClear_ATP
+0 SET StageTmr 0.0
+0 SET StageTmrLim 30.0
+0 SET StageTmr_F ON
+0 SET AccelTmr_F OFF
+0 SET FNTR2DecelNom FNTR2
+0 SET strAccelTm AccelTmr
+0 SET strFNTR2_ACC FNTR2_ACC
+0 SET AccelStageTxt concat (StepTxt "ERROR: Accel Check Times FAILED...")
#elseif ((Accelstage = 45) & (StageTmr > 20.0))
+0 SET Accelstage 50
+0 SET ECM_IdleCtrl_TB OFF
+0 SET acceldecelbutton ON
+0 SET FNTR2DecelNom FNTR2
*+0 SET ScanAvgSecs 5
+0 SET PointName concat ("" "Accel Check Take-OFF")
+0 EXECUTE DataPrint_ATP
+0 SET AccelStageTxt concat (StepTxt "Data Print, Hold at Take-Off 30 Sec...")
#elseif ((Accelstage = 50) & StageTmrLim_F)
+0 SET Accelstage 55
+0 SET ArmAccel_F OFF
+0 SET ArmDecel_F ON
+0 SET DecelTmr 0.0
+0 SET DecelTmr_F OFF
+0 SET TRAatArm (TRA_Actual - 0.3)
+0 EXECUTE StageClear_ATP
+0 SET AccelStep 6
+0 SET StepTxt concat ("Decel Step " AccelStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AccelStageTxt concat (StepTxt "Waiting For Snap Decel...")
#elseif ((Accelstage = 55) & Autothrottle_F)
+0 SET Accelstage 56
+0 EXECUTE SetTargs_ATP
#elseif ((Accelstage = 56) & AutoThrottle_F)
+0 SET Accelstage 57
+0 SET StageTmr_F ON
#elseif ((Accelstage = 57) & AutoThrottle_F & TRADecel_F & (FNTR2_AC < FNTR2_TO))
+0 SET Accelstage 60
+0 SET AccelStageTxt concat (StepTxt "Snap Decel, Timer Running...")
+0 SET DecelTmr_F ON
+0 SET TRASnap_F ON
#elseif ((Accelstage = 55) & ~AutoThrottle_F & TRADecel_F & (FNTR2_AC < FNTR2_TO))
+0 SET Accelstage 60
+0 SET DecelTmr_F ON
+0 SET AccelStageTxt concat (StepTxt "Snap Decel, Timer Running...")
#elseif ((Accelstage = 60) & (FNTR2_AC < FNTR2_DEC))
+0 SET Accelstage 65
+0 SET DecelTmr_F OFF
+0 SET AccelStageTxt concat (StepTxt "Timer OFF, Decel Check Complete...")
#elseif ((Accelstage = 60) & DecelTmr_F & (DecelTmr > 20.0))
+0 SET Accelstage 65
+0 SET DecelTmr_F OFF
+0 SET AccelStageTxt concat (StepTxt "Timer OFF, ERROR: Decel Check InComplete...")
#elseif (Accelstage = 65)
+0 SET Accelstage 70
+0 EXECUTE StageClear_ATP
+0 SET strDecelTm DecelTmr
+0 SET strFNTR2_DEC FNTR2_DEC
+0 SET StageTmr_F OFF
+0 SET ArmDecel_F OFF
+0 SET AccelDecel_TS OFF
+0 SET ArmAccelDecel_F OFF
+0 SET TestCompAccelDecel_F ON
#endif
$END-PHASE
**********

