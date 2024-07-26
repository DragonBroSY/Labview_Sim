$PHASE RampPLA_ATP length=40       level=0
*
* This is a sample for ramping the engine using EPR control mode
*
+0 MESSAGE "Starting PLA Ramp"
+0 SET RestartAuto_F ON 
+0 SET AutoTRequest_F ON
+0 SET StageTmr 0.0 
+0 SET StageTmr_F ON
+6 RAMP PLA_Command TLA_TargVDC StageTmrLim
*+6 RAMP TLA_Output TLA_Targ StageTmrLim
END SET RestartAuto_F OFF
END SET StageTmr_F OFF
*END MESSAGE "END of ramp"
$END-PHASE
**********
