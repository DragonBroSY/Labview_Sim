$PHASE storeDSUCheck_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
#if EECPwrDelTmr_F
+0 MESSAGE "Please Wait 10 Seconds after Ground Test Power ON..." Red
+0 EXIT
#elseif (ZeroDrift_F & ctrlFHD_F)
+0 SET PointName concat ("" "DSU Check")
+0 STOREPOINT DSU_Check
+1 DISPLAY NA STORE "DSU Check FHD"
#else
+0 MESSAGE "Must have Ground Test Power ON and N2 = 0.0..." Red
#endif
$END-PHASE
**********

