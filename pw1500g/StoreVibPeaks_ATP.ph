$PHASE StoreVibPeaks_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
#if compare (StrVibPeakDate, "No Data")
+0 SET OpResponse TRUE
#else
+0 SUSPEND "Vibration Peaks already exists, OVER-WRITE, continue?" "OVER-WRITE" "CANCEL"
#endif
#if (OpResponse)
+0 SET OpResponse FALSE
+0 SET StrVibFBBPk VibFBBPk
+0 SET StrVibFBBPkNF VibFBBPkNF
+0 SET StrVibFBBPkN1 VibFBBPkN1
+0 SET StrVibFBBPkN2 VibFBBPkN2
+0 SET StrVibFNFPk VibFNFPk
+0 SET StrVibFNFPkNF VibFNFPkNF
+0 SET StrVibFNFPkN1 VibFNFPkN1
+0 SET StrVibFNFPkN2 VibFNFPkN2
+0 SET StrVibFN1Pk VibFN1Pk
+0 SET StrVibFN1PkNF VibFN1PkNF
+0 SET StrVibFN1PkN1 VibFN1PkN1
+0 SET StrVibFN1PkN2 VibFN1PkN2
+0 SET StrVibFN2Pk VibFN2Pk
+0 SET StrVibFN2PkNF VibFN2PkNF
+0 SET StrVibFN2PkN1 VibFN2PkN1
+0 SET StrVibFN2PkN2 VibFN2PkN2
+0 SET StrVibRBBPk VibRBBPk
+0 SET StrVibRBBPkNF VibRBBPkNF
+0 SET StrVibRBBPkN1 VibRBBPkN1
+0 SET StrVibRBBPkN2 VibRBBPkN2
+0 SET StrVibRNFPk VibRNFPk
+0 SET StrVibRNFPkNF VibRNFPkNF
+0 SET StrVibRNFPkN1 VibRNFPkN1
+0 SET StrVibRNFPkN2 VibRNFPkN2
+0 SET StrVibRN1Pk VibRN1Pk
+0 SET StrVibRN1PkNF VibRN1PkNF
+0 SET StrVibRN1PkN1 VibRN1PkN1
+0 SET StrVibRN1PkN2 VibRN1PkN2
+0 SET StrVibRN2Pk VibRN2Pk
+0 SET StrVibRN2PkNF VibRN2PkNF
+0 SET StrVibRN2PkN1 VibRN2PkN1
+0 SET StrVibRN2PkN2 VibRN2PkN2
+0 EXECUTE StoreDVibPeaks_ATP
*+0 SET VibPeakDate concat ("" SysDate)
*+0 SET VibPeakTime concat ("" SysReportTime)
*+0 SET StrVibPeakDate concat ("" VibPeakDate)
*+0 SET StrVibPeakTime concat ("" VibPeakTime)
*+0 SET StrVibPeaks_F ON
*+0 SET PointName concat ("" "Final Vib Peaks")
*+0 EXECUTE DataPrint_ATP
*+0 MESSAGE "Wait 3 Seconds..."
*+1 SAVEENDPARAMS
*+2 MESSAGE "Vibration Peaks Stored Successfully..."
#else
+0 MESSAGE "Store CANCELED, no data stored"
#endif
$END-PHASE
**********

