$PHASE StartAutoTPhase_ATP length=2        level=0 controlrelay=None common=0
+0 MESSAGE "Starting Auto Throttle..."
+0 SET EPR_Target EPR
+0 SET N1_Target N1S
+0 SET PLA_Target TLA_Actual
+1 SUSPEND "Move Power Lever to Operating Point" "Continue" "Cancel"
#if ~OpResponse
+0 MESSAGE "Auto Throttle Canceled..."
+1 EXIT
#else
+1 SET AutoTRequest_F ON
#endif
END MESSAGE "Auto Throttle Started..."
$END-PHASE
**********

