$PHASE storeZeroDrift_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
#if ZeroDrift_F
+0 SET PointName concat ("" "Zero Drift")
+0 STOREPOINT ZeroDrift
#else
+0 MESSAGE "Must have Ground Test Power ON and N2 = 0.0..." Red
#endif
$END-PHASE
**********

