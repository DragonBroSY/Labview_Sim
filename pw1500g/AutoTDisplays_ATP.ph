$PHASE AutoTDisplays_ATP length=-1       level=0 controlrelay=None common=0
*
* Changes the Display(s) for AutoThrottle Test...
*
#if (RunInHPC_TS & ctrlFHD_F)
+0 MESSAGE "Changing Display in QUAD 1 to Engine Run-In..."
+1 DISPLAY "QUAD1" CHANGE "Engine Run-In FHD"
+2 SET ArmRunInHPC_TB	ON
+0 SET RunInStage1	0
+0 SET AutoTDisplay_F	OFF
#elseif (ShapedAccel_TS & ctrlFHD_F)
+0 MESSAGE "Changing Display in QUAD 1 to Engine Acceptance Display..."
+1 DISPLAY "QUAD1" CHANGE "Engine Acceptance FHD"
+0 SET ShapedStage	0
+2 SET ArmShapedAccel_F ON
+0 SET AutoTDisplay_F	OFF
#elseif (AcceptT9_TS & ctrlFHD_F)
+0 MESSAGE "Changing Display in QUAD 1 to Engine Acceptance Display..."
+1 DISPLAY "QUAD1" CHANGE "Engine Acceptance FHD"
+2 SET ArmAcceptance_TB	ON
+0 SET AcceptStage	0
+0 SET AcceptStage1	0
+0 SET AutoTDisplay_F	OFF
#elseif (AccelDecel_TS & ctrlFHD_F)
+0 MESSAGE "Changing Display in QUAD 1 to Accel Decel Check..."
+1 DISPLAY "QUAD1" CHANGE "Accel Decel Check FHD"
+2 SET ArmAccelDecel_F	ON
+0 SET ArmAccel_F	ON
+0 SET AccelStage	0
+0 SET AutoTDisplay_F	OFF
#elseif (VibSurvey_TS & ctrlFHD_F)
+0 SET VibSvyTest1_F	ON
+0 SET VibSvyTest2_F	OFF
+0 MESSAGE "Changing Display in QUAD 1 to Vib Survey..."
+1 DISPLAY "QUAD1" CHANGE "Vib Survey FHD"
+2 DISPLAY "QUAD3" CHANGE "Vibration Peaks FHD"
+0 SET VibSvyStage	0
+0 SET VibSvyStage1	0
+0 SET VibSvyStep	1
+0 SET acceldecelbutton OFF
+0 EXECUTE ClearVibPeaks_ATP
+0 EXECUTE ClearDVibPeaks_ATP
+2 SET ArmVibSurvey_TB	ON
+0 SET AutoTDisplay_F	OFF
#elseif (VibSvyOffical_TS & ctrlFHD_F)
+0 SET VibSvyTest1_F	OFF
+0 SET VibSvyTest2_F	ON
+0 MESSAGE "Changing Display in QUAD 1 to Vib Survey..."
+1 DISPLAY "QUAD1" CHANGE "Vib Survey FHD"
+2 DISPLAY "QUAD3" CHANGE "Vibration Peaks FHD"
+0 SET VibSvyStage	0
+0 SET VibSvyStage1	0
+0 SET VibSvyStep	1
+0 SET acceldecelbutton OFF
+0 EXECUTE ClearVibPeaks_ATP
+0 EXECUTE ClearDVibPeaks_ATP
+2 SET ArmVibSurvey_TB	ON
+0 SET AutoTDisplay_F	OFF
#elseif CoolDown_TS
+1 SET ArmCoolDown_F	ON
+0 SET CoolDnStage	0
+0 SET AutoTDisplay_F	OFF
#elseif WarmUp_TS
+1 SET ArmWarmUp_F	ON
+0 SET WarmUpStage	0
+0 SET AutoTDisplay_F	OFF
#endif
$END-PHASE
**********
