$PHASE BadControlPhase_ATP length=1        level=0 controlrelay=None common=0
+0 MESSAGE "Reversion to Invalid control Mode"
+0 SET BadCtrlMode 0
#if AutoThrottleEngaged
+0 EXECUTE StopAutoTPhase_ATP
#endif
$END-PHASE
**********

