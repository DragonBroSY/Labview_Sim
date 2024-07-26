$PHASE storePerformance_ATP length=-1       level=0 controlrelay=None common=0
+0 SET opresponse OFF
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#elseif ( ~BandA_F & ~BandB_F & ~BandC_F & ~BandD_F )
+0 MESSAGE "Performance Data NOT in Range..."
+0 EXIT
*#elseif ( BandA_F & BandA)
*+0 SUSPEND "BandA already exists, OVER-WRITE, continue?" "ABORT" "Yes"
*#elseif ( BandB_F & BandB)
*+0 SUSPEND "BandB already exists, OVER-WRITE, continue?" "ABORT" "Yes"
*#elseif ( BandC_F & BandC)
*+0 SUSPEND "BandC already exists, OVER-WRITE, continue?" "ABORT" "Yes"
*#elseif ( BandD_F & BandD)
*+0 SUSPEND "BandD already exists, OVER-WRITE, continue?" "ABORT" "Yes"
#endif
#if opresponse
+0 MESSAGE "Store Performance Point aborted, no data stored"
+0 SET opresponse OFF
+0 EXIT
#elseif BandA_F
+0 SET PointName concat ("" "BandA")
+0 STOREPOINT BandA
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
+0 SET FANWGT_A	FANWGT
+0 SET FANANG_A	FANANG
+0 SET LPTWGT_A	LPTWGT
+0 SET LPTANG_A	LPTANG
#elseif BandB_F
+0 SET PointName concat ("" "BandB")
+0 STOREPOINT BandB
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
+0 SET FANWGT_B	FANWGT
+0 SET FANANG_B	FANANG
+0 SET LPTWGT_B	LPTWGT
+0 SET LPTANG_B	LPTANG
#elseif BandC_F
+0 SET PointName concat ("" "BandC")
+0 STOREPOINT BandC
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
+0 SET FANWGT_C	FANWGT
+0 SET FANANG_C	FANANG
+0 SET LPTWGT_C	LPTWGT
+0 SET LPTANG_C	LPTANG
#elseif BandD_F
+0 SET PointName concat ("" "BandD")
+0 STOREPOINT BandD
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
+0 SET FANWGT_D	FANWGT
+0 SET FANANG_D	FANANG
+0 SET LPTWGT_D	LPTWGT
+0 SET LPTANG_D	LPTANG
+65 SAVEENDPARAMS
#else
+0 MESSAGE "Performance Data NOT in Range..."
+0 EXIT
#endif
$END-PHASE
**********

