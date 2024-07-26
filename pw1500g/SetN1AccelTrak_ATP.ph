$PHASE SetN1AccelTrak_ATP length=-1       level=0 controlrelay=None common=0
+0 SET N1AccelStop (N1AccelTarg + (N1TargBand * 2))
+0 SET N1_ADStart (N1S + 10.0)
#if (StageTmrLim > 0.2)
+0 SET N1_ADRat ((N1AccelStop - N1_ADStart) / StageTmrLim)
+0 SET N1_ADTrak (N1_ADStart + (N1_ADRat * StageTmr))
#else
+0 SET N1_ADRat 1.0
+0 SET N1_ADTrak (N1_ADStart + N1TargBand)
#endif
+0 SET N1DecelTarg N1_ADStart
+0 SET N1DecelStop (N1_ADStart - (N1TargBand * 2))
+1 SET N1_ADBar_F ON
$END-PHASE
**********

