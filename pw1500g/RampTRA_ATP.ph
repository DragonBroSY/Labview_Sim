$PHASE RampTRA_ATP length=40       level=0 controlrelay=None common=0
+0 MESSAGE "Starting TLA Ramp"
+0 SET RestartAuto_F ON
+0 SET AutoTRequest_F ON
+0 SET StageTmr 0.0
+0 SET StageTmr_F ON
+6 RAMP TRA_Cmd TRA_Targ StageTmrLim
END SET RestartAuto_F OFF
END SET StageTmr_F OFF
$END-PHASE
**********

