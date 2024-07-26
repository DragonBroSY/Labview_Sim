$PHASE SetPOilTrim_ATP length=-1       level=0 controlrelay=None common=0
+0 SET POilNomRng 2.0
+0 SET POilTrimM 0.0000
+0 SET POilTrimP 0.0000
+0 SET POilTrimN 0.0000
#if (POilCor > POilMxLim)
+0 SET POilDiffSign 1
+0 SET POilDiff ((POilCor - POilMxLim) + POilNomRng)
#elseif (POilCor < POilMnLim)
+0 SET POilDiffSign -1
+0 SET POilDiff ((POilMnLim - POilCor) + POilNomRng)
#else
+0 SET POilDiffSign 0
+0 SET POilDiff 0
#endif
#if (POilDiff > 12.0)
+0 SET POilDiff 12.0
#endif
+0 EXECUTE CalcPOilTrim_ATP
$END-PHASE
**********

