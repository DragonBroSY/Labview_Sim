$PHASE StoreARDVibPeaks_ATP length=-1       level=0 controlrelay=None common=0
*#if ScanStoreInProgress
*+0 MESSAGE "Scan already being stored, Try Again Later..."
*+0 EXIT
*#endif
*#if compare (StrARVibPeakDate, "No Data")
*+0 SET OpResponse TRUE
*#else
*+0 SUSPEND "As Received Vibration Peaks already exists, OVER-WRITE, continue?" "OVER-WRITE" "CANCEL"
*#endif
*#if (OpResponse)
+0 SET OpResponse FALSE
+0 SET StrARDVibFBBPk VibFBBPk
+0 SET StrARDVibFBBPkNF VibFBBPkNF
+0 SET StrARDVibFBBPkN1 VibFBBPkN1
+0 SET StrARDVibFBBPkN2 VibFBBPkN2
+0 SET StrARDVibFNFPk VibFNFPk
+0 SET StrARDVibFNFPkNF VibFNFPkNF
+0 SET StrARDVibFNFPkN1 VibFNFPkN1
+0 SET StrARDVibFNFPkN2 VibFNFPkN2
+0 SET StrARDVibFN1Pk VibFN1Pk
+0 SET StrARDVibFN1PkNF VibFN1PkNF
+0 SET StrARDVibFN1PkN1 VibFN1PkN1
+0 SET StrARDVibFN1PkN2 VibFN1PkN2
+0 SET StrARDVibFN2Pk VibFN2Pk
+0 SET StrARDVibFN2PkNF VibFN2PkNF
+0 SET StrARDVibFN2PkN1 VibFN2PkN1
+0 SET StrARDVibFN2PkN2 VibFN2PkN2
+0 SET StrARDVibRBBPk VibRBBPk
+0 SET StrARDVibRBBPkNF VibRBBPkNF
+0 SET StrARDVibRBBPkN1 VibRBBPkN1
+0 SET StrARDVibRBBPkN2 VibRBBPkN2
+0 SET StrARDVibRNFPk VibRNFPk
+0 SET StrARDVibRNFPkNF VibRNFPkNF
+0 SET StrARDVibRNFPkN1 VibRNFPkN1
+0 SET StrARDVibRNFPkN2 VibRNFPkN2
+0 SET StrARDVibRN1Pk VibRN1Pk
+0 SET StrARDVibRN1PkNF VibRN1PkNF
+0 SET StrARDVibRN1PkN1 VibRN1PkN1
+0 SET StrARDVibRN1PkN2 VibRN1PkN2
+0 SET StrARDVibRN2Pk VibRN2Pk
+0 SET StrARDVibRN2PkNF VibRN2PkNF
+0 SET StrARDVibRN2PkN1 VibRN2PkN1
+0 SET StrARDVibRN2PkN2 VibRN2PkN2
+0 SET VibPeakDate concat ("" SysDate)
+0 SET VibPeakTime concat ("" SysReportTime)
+0 SET StrARVibPeakDate concat ("" VibPeakDate)
+0 SET StrARVibPeakTime concat ("" VibPeakTime)
+0 SET StrARVibPeaks_F ON
+0 SET PointName concat ("" "As Received Vib Peaks")
+0 EXECUTE DataPrint_ATP
+0 MESSAGE "Wait 3 Seconds..."
+1 SAVEENDPARAMS
+2 MESSAGE "As Received Vibration Peaks Stored Successfully..."
*#else
*+0 MESSAGE "Store CANCELED, no data stored"
*#endif
$END-PHASE
**********

