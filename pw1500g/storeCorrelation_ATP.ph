$PHASE storeCorrelation_ATP length=-1       level=0 controlrelay=None common=0
#if ScanStoreInProgress
+0 MESSAGE "Scan already being stored, Try Again Later..."
+0 EXIT
#elseif	~CorrN1C2_F
+0 MESSAGE "Correlation Data NOT in Range..."
+0 EXIT
#endif
+0 SET opresponse FALSE
#if opresponse
+0 MESSAGE "Store Performance Point aborted, no data stored"
+0 SET opresponse FALSE
+0 EXIT
*#elseif (CorrN1C2_F & (CorrStage = 10))
#elseif C0_F
+0 SET PointName concat ("" "Minimum Idle")
+0 STOREPOINT MIdle
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 3))
#elseif D1_F
+0 SET PointName concat ("" "D1")
+0 STOREPOINT D1
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 5))
#elseif D2_F
+0 SET PointName concat ("" "D2")
+0 STOREPOINT D2
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 7))
#elseif C1_F
+0 SET PointName concat ("" "C1")
+0 STOREPOINT C1
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 9))
#elseif C2_F
+0 SET PointName concat ("" "C2")
+0 STOREPOINT C2
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 11))
#elseif C3_F
+0 SET PointName concat ("" "C3")
+0 STOREPOINT C3
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 13))
#elseif C4_F
+0 SET PointName concat ("" "C4")
+0 STOREPOINT C4
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 15))
#elseif C5_F
+0 SET PointName concat ("" "C5")
+0 STOREPOINT C5
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 17))
#elseif C6_F
+0 SET PointName concat ("" "C6")
+0 STOREPOINT C6
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 19))
#elseif C7_F
+0 SET PointName concat ("" "C7")
+0 STOREPOINT C7
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 21))
#elseif C8_F
+0 SET PointName concat ("" "C8")
+0 STOREPOINT C8
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 23))
#elseif C9_F
+0 SET PointName concat ("" "C9")
+0 STOREPOINT C9
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 25))
#elseif C10_F
+0 SET PointName concat ("" "C10")
+0 STOREPOINT C10
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 27))
#elseif C11_F
+0 SET PointName concat ("" "C11")
+0 STOREPOINT C11
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 29))
#elseif C12_F
+0 SET PointName concat ("" "C12")
+0 STOREPOINT C12
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 31))
#elseif D3_F
+0 SET PointName concat ("" "D3")
+0 STOREPOINT D3
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrN1C2_F & (CorrStep = 33))
#elseif D4_F
+0 SET PointName concat ("" "D4")
+0 STOREPOINT D4
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
*#elseif (CorrStep = 35)
#elseif C13_F
+0 SET PointName concat ("" "Approach Idle")
+0 STOREPOINT AIdle
+0 MESSAGE "DO NOT Adjust Power for 60 Seconds..."
#else
+0 MESSAGE "Performance Data NOT in Range..."
+0 EXIT
#endif
$END-PHASE
**********

