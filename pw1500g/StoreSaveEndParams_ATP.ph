$PHASE StoreSaveEndParams_ATP length=-1       level=5 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
+0 MESSAGE "Please wait, Saving Data..."
+1 SAVEENDPARAMS
+6 MESSAGE "Data Saved, You can now check your Reports..."
$END-PHASE
**********

