$PHASE StopAutoRamp_ATP length=2        level=0 controlrelay=None common=0
#if ~AutoThrottle_F
+0 EXIT
#endif
#if OperatorOverride
+0 MESSAGE "Operator Override Detected"
+0 SET OperatorOverride OFF
#endif
+0 SET AutoTSET_F OFF
#if AutoThrottle_F
+0 EXECUTE StopAutoTPhase_ATP
+0 SET AutoTSET_F ON
#endif
#if ~RestartAuto_F
+0 SET RestartAuto_F OFF
+0 EXIT
#endif
0 SUSPEND "Continue Auto Test?" "Continue" "Cancel"
#if ~OpResponse
+0 PREEMPT 1
+0 EXIT
#else
+0 MESSAGE "Restarting Test"
#endif
#if ~AutoTSET_F
+0 EXIT
#endif
#if AutoThrottle_F
+0 EXIT
#else
+0 MESSAGE "Must be in Auto Throttle to continue"
+0 SET AutoTSET_F OFF
+0 PREEMPT 1
+0 EXIT
#endif
$END-PHASE
**********

