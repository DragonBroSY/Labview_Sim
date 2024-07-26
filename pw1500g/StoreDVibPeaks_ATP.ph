$PHASE StoreDVibPeaks_ATP length=-1       level=0 controlrelay=None common=0
*#if ScanStoreInProgress
*+0 MESSAGE "Scan already being stored, Try Again Later..."
*+0 EXIT
*#endif
*#if compare (StrVibPeakDate, "No Data")
*+0 SET OpResponse TRUE
*#else
*+0 SUSPEND "Vibration Peaks already exists, OVER-WRITE, continue?" "OVER-WRITE" "CANCEL"
*#endif
*#if (OpResponse)
+0 SET OpResponse FALSE
+0 SET StrDVibFBBPk DVibFBBPk
+0 SET StrDVibFBBPkNF DVibFBBPkNF
+0 SET StrDVibFBBPkN1 DVibFBBPkN1
+0 SET StrDVibFBBPkN2 DVibFBBPkN2
+0 SET StrDVibFNFPk DVibFNFPk
+0 SET StrDVibFNFPkNF DVibFNFPkNF
+0 SET StrDVibFNFPkN1 DVibFNFPkN1
+0 SET StrDVibFNFPkN2 DVibFNFPkN2
+0 SET StrDVibFN1Pk DVibFN1Pk
+0 SET StrDVibFN1PkNF DVibFN1PkNF
+0 SET StrDVibFN1PkN1 DVibFN1PkN1
+0 SET StrDVibFN1PkN2 DVibFN1PkN2
+0 SET StrDVibFN2Pk DVibFN2Pk
+0 SET StrDVibFN2PkNF DVibFN2PkNF
+0 SET StrDVibFN2PkN1 DVibFN2PkN1
+0 SET StrDVibFN2PkN2 DVibFN2PkN2
+0 SET StrDVibRBBPk DVibRBBPk
+0 SET StrDVibRBBPkNF DVibRBBPkNF
+0 SET StrDVibRBBPkN1 DVibRBBPkN1
+0 SET StrDVibRBBPkN2 DVibRBBPkN2
+0 SET StrDVibRNFPk DVibRNFPk
+0 SET StrDVibRNFPkNF DVibRNFPkNF
+0 SET StrDVibRNFPkN1 DVibRNFPkN1
+0 SET StrDVibRNFPkN2 DVibRNFPkN2
+0 SET StrDVibRN1Pk DVibRN1Pk
+0 SET StrDVibRN1PkNF DVibRN1PkNF
+0 SET StrDVibRN1PkN1 DVibRN1PkN1
+0 SET StrDVibRN1PkN2 DVibRN1PkN2
+0 SET StrDVibRN2Pk DVibRN2Pk
+0 SET StrDVibRN2PkNF DVibRN2PkNF
+0 SET StrDVibRN2PkN1 DVibRN2PkN1
+0 SET StrDVibRN2PkN2 DVibRN2PkN2
+0 SET VibPeakDate concat ("" SysDate)
+0 SET VibPeakTime concat ("" SysReportTime)
+0 SET StrVibPeakDate concat ("" VibPeakDate)
+0 SET StrVibPeakTime concat ("" VibPeakTime)
+0 SET StrVibPeaks_F ON
+0 SET PointName concat ("" "Final Vib Peaks")
+0 EXECUTE DataPrint_ATP
+0 MESSAGE "Wait 3 Seconds..."
+1 SAVEENDPARAMS
+2 MESSAGE "Vibration Peaks Stored Successfully..."
*#else
*+0 MESSAGE "Store CANCELED, no data stored"
*#endif
$END-PHASE
**********

