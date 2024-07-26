$PHASE storeStaticBitCk_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
#if ECM_EECGndTstPwr_TB
+0 SET PointName concat ("" "Zero Drift/Static Bit Check")
+0 STOREPOINT ZeroDrift
#else
+0 MESSAGE "Must have Ground Test Power ON..." Red
+0 MESSAGE "Point NOT Taken..." Red
#endif
$END-PHASE
**********

