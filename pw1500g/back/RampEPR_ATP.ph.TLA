$PHASE RampEPR_ATP length=40       level=0
*
* This is a sample for ramping the engine using EPR control mode
*
+0 MESSAGE "Starting EPR Ramp"
+0 SET RestartAuto_F ON 
+0 SET TLA_Override 10.0
+2 SET RampTmr 0.0 
+2 SET RampTmr_F ON
+6 RAMP EPR_Target 1.4 20
+27 RAMP EPR_Target 1.15 10
END SET RestartAuto_F OFF
END SET RampTmr_F OFF
END MESSAGE "END of ramp"
$END-PHASE
**********
