$PHASE StoreARVibPeaks_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#endif
#if compare (StrARVibPeakDate, "No Data")
+0 SET OpResponse TRUE
#else
+0 SUSPEND "As Received Vibration Peaks already exists, OVER-WRITE, continue?" "OVER-WRITE" "CANCEL"
#endif
#if (OpResponse)
+0 SET OpResponse FALSE
+0 SET StrARVibFBBPk VibFBBPk
+0 SET StrARVibFBBPkNF VibFBBPkNF
+0 SET StrARVibFBBPkN1 VibFBBPkN1
+0 SET StrARVibFBBPkN2 VibFBBPkN2
+0 SET StrARVibFNFPk VibFNFPk
+0 SET StrARVibFNFPkNF VibFNFPkNF
+0 SET StrARVibFNFPkN1 VibFNFPkN1
+0 SET StrARVibFNFPkN2 VibFNFPkN2
+0 SET StrARVibFN1Pk VibFN1Pk
+0 SET StrARVibFN1PkNF VibFN1PkNF
+0 SET StrARVibFN1PkN1 VibFN1PkN1
+0 SET StrARVibFN1PkN2 VibFN1PkN2
+0 SET StrARVibFN2Pk VibFN2Pk
+0 SET StrARVibFN2PkNF VibFN2PkNF
+0 SET StrARVibFN2PkN1 VibFN2PkN1
+0 SET StrARVibFN2PkN2 VibFN2PkN2
+0 SET StrARVibRBBPk VibRBBPk
+0 SET StrARVibRBBPkNF VibRBBPkNF
+0 SET StrARVibRBBPkN1 VibRBBPkN1
+0 SET StrARVibRBBPkN2 VibRBBPkN2
+0 SET StrARVibRNFPk VibRNFPk
+0 SET StrARVibRNFPkNF VibRNFPkNF
+0 SET StrARVibRNFPkN1 VibRNFPkN1
+0 SET StrARVibRNFPkN2 VibRNFPkN2
+0 SET StrARVibRN1Pk VibRN1Pk
+0 SET StrARVibRN1PkNF VibRN1PkNF
+0 SET StrARVibRN1PkN1 VibRN1PkN1
+0 SET StrARVibRN1PkN2 VibRN1PkN2
+0 SET StrARVibRN2Pk VibRN2Pk
+0 SET StrARVibRN2PkNF VibRN2PkNF
+0 SET StrARVibRN2PkN1 VibRN2PkN1
+0 SET StrARVibRN2PkN2 VibRN2PkN2
+0 EXECUTE StoreARDVibPeaks_ATP
*+0 SET VibPeakDate concat ("" SysDate)
*+0 SET VibPeakTime concat ("" SysReportTime)
*+0 SET StrARVibPeakDate concat ("" VibPeakDate)
*+0 SET StrARVibPeakTime concat ("" VibPeakTime)
*+0 SET StrARVibPeaks_F ON
*+0 SET PointName concat ("" "As Received Vib Peaks")
*+0 EXECUTE DataPrint_ATP
*+0 MESSAGE "Wait 3 Seconds..."
*+1 SAVEENDPARAMS
*+2 MESSAGE "As Received Vibration Peaks Stored Successfully..."
#else
+0 MESSAGE "Store CANCELED, no data stored"
#endif
$END-PHASE
**********

