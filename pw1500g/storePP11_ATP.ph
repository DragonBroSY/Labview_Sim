$PHASE storePP11_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
+0 SET PointName concat ("" "PP11")
+0 STOREPOINT PP11
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
$END-PHASE
**********

