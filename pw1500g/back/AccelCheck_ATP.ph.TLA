$PHASE AccelCheck_ATP length=-1       level=0 controlrelay=None common=0
#if ((Accelstage = 0) & ECM_IdleCtrl_TB)
+0 SET AccelStageTxt concat ("Step 1 " "Accel Armed, waiting for Ground Idle...")
+0 SET ECM_IdleCtrl_TB OFF
+0 SET StageTmr_F OFF
#elseif ((Accelstage = 0) & ~ECM_IdleCtrl_TB)
+0 SET Accelstage 5
+0 SET AccelStageTxt concat ("Step 1 " "Accel Armed, Hold at Ground Idle for 180 Sec...")
+0 SET AccelTmr 0.0
+0 SET AccelTmr_F OFF
+0 SET StageTmr 0.0
+0 SET StageTmrLim 180.0
+0 SET StageTmr_F ON
#elseif ((Accelstage = 5) & ~ECM_IdleCtrl_TB & StageTmrLim_F)
+0 SET Accelstage 10
+0 SET AccelStageTxt concat ("Step 2 " "Selecting Approach Idle...")
+0 SET ECM_IdleCtrl_TB ON
+0 SET StageTmr 0.0
+0 SET StageTmrLim 6.0
+0 SET StageTmr_F ON
#elseif ((Accelstage = 10) & ECM_IdleCtrl_TB & StageTmrLim_F)
+0 SET Accelstage 15
+0 SET AccelStageTxt concat ("Step 3 " "Hold at Approach Idle for 360 Sec...")
+0 SET StageTmr 0.0
+0 SET StageTmrLim 360.0
+0 SET StageTmr_F ON
#elseif ((Accelstage = 15) & ECM_IdleCtrl_TB & (StageTmr > 350.0))
+0 SET Accelstage 17
+0 SET AccelStageTxt concat ("Step 3 " "Data Print, Hold at Approach Idle for 360 Sec...")
+0 SET PointName concat ("Step 3 " "Accel Check Approach Idle")
+0 EXECUTE DataPrint_ATP
#elseif ((Accelstage = 17) & ECM_IdleCtrl_TB & StageTmrLim_F)
+0 SET Accelstage 20
+0 SET AccelStageTxt concat ("Step 4 " "Waiting for Snap Accel...")
+0 SET StageTmr_F OFF
+0 SET StageTmr 0.0
+0 SET AccelTmr 0.0
+0 SET TLAatArm (TLA_Actual + 0.3)
#elseif ((Accelstage = 20) & TLAAccel_F)
+0 SET Accelstage 25
+0 SET AccelStageTxt concat ("Step 4 " "Accel, Timer Running...")
+0 SET AccelTmr_F ON
#elseif ((Accelstage = 25) & AccelTmr_F & (FNTR2_AC > FNTR2_ACC30))
+0 SET Accelstage 30
+0 SET AccelTm30 AccelTmr
+0 SET AccelStageTxt concat ("Step 4 " "30% Accel Check Complete...")
#elseif ((Accelstage = 30) & AccelTmr_F & (FNTR2_AC > FNTR2_ACC90))
+0 SET Accelstage 35
+0 SET AccelTmr_F OFF
+0 SET AccelTm90 AccelTmr
+0 SET AccelStageTxt concat ("Step 4 " "90% Accel Check Complete...")
#elseif ((Accelstage = 35) & StableN1_F)
+0 SET Accelstage 40
+0 SET AccelStageTxt concat ("Step 5 " "Accel Check Complete, Hold at Take-Off 30 Sec...")
+0 SET StageTmr 0.0
+0 SET StageTmrLim 30.0
+0 SET StageTmr_F ON
#elseif ((Accelstage > 20) & AccelTmr_F & (AccelTmr > 20.0))
+0 SET Accelstage 60
+0 SET AccelTmr_F OFF
+0 SET AccelStageTxt concat ("Step 5 " "ERROR: Accel Check Times FAILED...")
+0 SET AccelTm90 AccelTmr
+0 SET ArmAccel OFF
#elseif ((Accelstage = 40) & ~ECM_IdleCtrl_TB & (StageTmr > 20.0))
+0 SET Accelstage 45
+0 SET AccelStageTxt concat ("Step 5 " "Data Print, Hold at Take-Off 30 Sec...")
+0 SET ECM_IdleCtrl_TB OFF
+0 SET PointName concat ("Step 5 " "Accel Check Take-OFF")
+0 EXECUTE DataPrint_ATP
#elseif ((Accelstage = 45) & ~ECM_IdleCtrl_TB & StageTmrLim_F)
+0 SET Accelstage 50
+0 SET ArmAccel OFF
+0 SET ArmDecel ON
+0 SET DecelTmr 0.0
+0 SET TLAatArm (TLA_Actual - 0.3)
+0 SET AccelStageTxt concat ("Step 6 " "Waiting For Snap Decel...")
+0 SET StageTmr 0.0
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

