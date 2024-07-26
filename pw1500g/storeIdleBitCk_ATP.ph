$PHASE storeIdleBitCk_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
#if (ECM_EECGndTstPwr_TB & ~EngineRunning)
+0 SET PointName concat ("" "Idle Bit Check")
+0 STOREPOINT IdleBitCk
#else
+0 MESSAGE "Must have Ground Test Power ON..." Red
+0 MESSAGE "Point NOT Taken..." Red
#endif
$END-PHASE
**********

