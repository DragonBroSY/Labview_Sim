$PHASE storeTrimBalData_ATP length=-1       level=0 controlrelay=None common=0
#if BandA_F
+0 SET FANWGT_A	FANWGT
+0 SET FANANG_A	FANANG
*+0 SET LPTWGT_A	LPTWGT
*+0 SET LPTANG_A	LPTANG
+0 MESSAGE "Trim Balance Data [Band A] Stored..."
#elseif BandB_F
+0 SET FANWGT_B	FANWGT
+0 SET FANANG_B	FANANG
*+0 SET LPTWGT_B	LPTWGT
*+0 SET LPTANG_B	LPTANG
+0 MESSAGE "Trim Balance Data [Band B] Stored..."
#elseif BandC_F
+0 SET FANWGT_C	FANWGT
+0 SET FANANG_C	FANANG
*+0 SET LPTWGT_C	LPTWGT
*+0 SET LPTANG_C	LPTANG
+0 MESSAGE "Trim Balance Data [Band C] Stored..."
#elseif BandD_F
+0 SET FANWGT_D	FANWGT
+0 SET FANANG_D	FANANG
+0 SET FANWGT_oz	(FANWGT_D / 8.0)
*+0 SET LPTWGT_D	LPTWGT
*+0 SET LPTANG_D	LPTANG
+0 MESSAGE "Trim Balance Data [Band D] Stored..."
#else
+0 SET FANWGT_O	FANWGT
+0 SET FANANG_O	FANANG
*+0 SET LPTWGT_O	LPTWGT
*+0 SET LPTANG_O	LPTANG
+0 MESSAGE "Trim Balance Data [Other] Stored..."
#endif
$END-PHASE
**********

