$PHASE SetADTrakParams_ATP length=-1       level=0 controlrelay=None common=0
* #if (StageTmr_F & FN_ADBar_F)
* +0 SET FN_ADTrak 	(FN_ADStart + (FN_ADRat * StageTmr)) 
* +0 SET FN_ADTrakMn     (FN_ADTrak - FnTargBand)
* +0 SET FN_ADTrakMx     (FN_ADTrak + FnTargBand)
* +0 SET FN_ADTrakMnY    (FN_ADTrak - FnTargBandY)
* +0 SET FN_ADTrakMxY    (FN_ADTrak + FnTargBandY)
* #endif
#if (StageTmr_F & N1_ADBar_F)
+0 SET N1_ADTrak 	(N1_ADStart + (N1_ADRat * StageTmr)) 
+0 SET N1_ADTrakMn      (N1_ADTrak - 10.0)
+0 SET N1_ADTrakMx      (N1_ADTrak + 10.0)
+0 SET N1_ADTrakMnY     (N1_ADTrak - 20.0)
+0 SET N1_ADTrakMxY     (N1_ADTrak + 20.0)
+0 SET N1_ADTrakPctMn   value2pct (N1_ADTrakMnY N1100)
+0 SET N1_ADTrakPctMx   value2pct (N1_ADTrakMxY N1100)
#endif
$END-PHASE
**********

