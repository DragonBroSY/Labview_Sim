$PHASE SetTargs_ATP length=-1       level=0 controlrelay=None common=0
+0 SET TLA_Prev TLA_Actual
+0 SET N1C2R_Prev N1C2R
+0 SET N1C2Accel_F OFF
+0 SET N1C2Decel_F OFF
+0 SET StepTxt concat ("Step " RunInStep)
+0 SET StepTxt concat (StepTxt ": ")
#if RunInStage_F
+0 SET N1C2_Targ lookup (RunInN1C2Targ_T)
+0 SET TLA_Targ lookup (RunInTLATarg_T)
+0 SET StageTmrLim lookup (RunInEventDur_T)
+0 SET RunInNibble lookup (RunInNibble_T)
#elseif BrkInStage_F
+0 SET N1C2_Targ lookup (BrkInN1C2Targ_T)
+0 SET TLA_Targ lookup (BrkInTLATarg_T)
+0 SET StageTmrLim lookup (BrkInEventDur_T)
+0 SET BrkInNibble lookup (BrkInNibble_T)
#endif
+0 SET N1C2_TargMx (N1C2_Targ + N1C2TargBand)
+0 SET N1C2_TargMn (N1C2_Targ - N1C2TargBand)
+0 SET TLA_TargMx (TLA_Targ + TLATargBand)
+0 SET TLA_TargMn (TLA_Targ - TLATargBand)
+0 SET TLAStart TLA_Actual
+0 SET TLAStartMx (TLA_Actual + 0.2)
+0 SET TLAStartMn (TLA_Actual - 0.2)
#if GoToHold_F
+0 SET Accel_F OFF
+0 SET Decel_F OFF
#else
+0 SET N1C2_Rate ((N1C2_Targ - N1C2R) / StageTmrLim)
+0 SET TLA_Rate ((TLA_Targ - TLA_Actual) / StageTmrLim)
+0 SET Accel_F (TLA_Targ > TLA_Actual)
+0 SET Decel_F (TLA_Targ < TLA_Actual)
#endif
#if Decel_F
+0 SET TLADecelMx TLAStartMx
+0 SET TLADecelMn TLAStartMn
+0 SET TLAAccelMx 0.0
+0 SET TLAAccelMn 0.0
+0 SET TLAatArm (TLA_Actual - TLATargBand)
+0 SET N1C2DecelTarg N1C2_TargMx
+0 SET TLADecelTarg TLA_TargMx
#elseif Accel_F
+0 SET TLAAccelMx TLAStartMx
+0 SET TLAAccelMn TLAStartMn
+0 SET TLADecelMx TLA_TargMx
+0 SET TLADecelMn TLA_TargMn
+0 SET TLAatArm (TLA_Actual + TLATargBand)
+0 SET N1C2AccelTarg N1C2_TargMn
+0 SET TLAAccelTarg TLA_TargMn
#else
+0 SET N1C2_Rate 0.0
+0 SET TLA_Rate 0.0
+0 SET TLADecelMx 0.0
+0 SET TLADecelMn 0.0
+0 SET TLAAccelMx 0.0
+0 SET TLAAccelMn 0.0
#endif
$END-PHASE
**********

