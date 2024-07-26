$PHASE SetPOilTrimNom_ATP length=-1       level=0 controlrelay=None common=0
+0 SET POilNomRng 5.0
+0 SET POilTrimM 0.0000
+0 SET POilTrimP 0.0000
+0 SET POilTrimN 1.0
#if (POilCor > (POilNomLim + POilNomRng))
+0 SET POilDiffSign 1
+0 SET POilDiff (POilCor - (POilNomLim + POilNomRng))
#elseif (POilCor < (POilNomLim - POilNomRng))
+0 SET POilDiffSign -1
+0 SET POilDiff ((POilNomLim - POilNomRng) - POilCor)
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

