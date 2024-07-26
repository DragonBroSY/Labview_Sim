$PHASE storeAccelDecelData_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
+2 SAVEENDPARAMS
+1 MESSAGE "Accel / Decel Data has been stored."
$END-PHASE
**********

