$PHASE CalcPOilTrim_ATP length=-1       level=0 controlrelay=None common=0
#if ((POilDiffSign = -1) | (POilDiffSign = 1))
+0 SET POilTrimDiamChg lookup (POilTrimDiamChg_T)
#endif
#if (POilDiffSign = -1)
+0 SET POilTrim (InstPOilDiam + POilTrimDiamChg)
+0 SET POilTrimDiam lookup (POilTrimDiam_T)
+0 SET POilTrimM POilTrim
#elseif (POilDiffSign = 1)
+0 SET POilTrim (InstPOilDiam - POilTrimDiamChg)
+0 SET POilTrimDiam lookup (POilTrimDiam_T)
+0 SET POilTrimP POilTrim
#else
+0 SET POilTrim InstPOilDiam
+0 SET POilTrimDiam InstPOilDiam
#endif
#if (POilTrimN = 1.0)
+0 SET POilTrimN POilTrim
#else
+0 SET POilTrimN 0.0000
#endif
+0 SET POilTrimClass lookup (POilTrimClass_T)
$END-PHASE
**********

