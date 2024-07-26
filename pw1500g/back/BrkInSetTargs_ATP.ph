$PHASE BrkInSetTargs_ATP length=-1       level=0 controlrelay=None common=0
+0 SET TLA_Prev	RunInTLA
+0 SET N1C2R_Prev	N1C2R
+0 SET N1C2Accel_F	OFF
+0 SET N1C2Decel_F	OFF
+0 SET StepTxt concat ("Step " BrkInStep)
+0 SET StepTxt concat (StepTxt ": ")
***** Lookup the Run-In Parameters based on RunInStep...
+0 SET N1C2_Targ lookup (BrkInN1C2Targ_T)
+0 SET TLA_Targ lookup (BrkInTLATarg_T)
+0 SET StageTmrLim lookup (BrkInEventDur_T)
+0 SET BrkInNibble lookup (BrkInNibble_T)
*#if GoToGI_F
*+0 SET N1C2TargMx (N1C2_Targ + N1C2TargBand)
*+0 SET N1C2TargMn N1C2_Targ
*#else
+0 SET N1C2TargMx (N1C2_Targ + N1C2TargBand)
+0 SET N1C2TargMn (N1C2_Targ - N1C2TargBand)
*#endif
+0 SET TLATargMx (TLA_Targ + TLATargBand)
+0 SET TLATargMn (TLA_Targ - TLATargBand)
+0 SET TLAStartMx (RunInTLA + 0.2)
+0 SET TLAStartMn (RunInTLA - 0.2)
#if GoToHold_F
*+0 SET N1C2_Rate 0.0
+0 SET TLA_Rate 0.0
+0 SET Accel_F OFF
+0 SET Decel_F OFF
#else
+0 SET N1C2_Rate ((N1C2_Targ - N1C2R) / StageTmrLim)
+0 SET TLA_Rate ((TLA_Targ - RunInTLA) / StageTmrLim)
+0 SET Accel_F (TLA_Targ > RunInTLA)
+0 SET Decel_F (TLA_Targ < RunInTLA)
*+0 SET Accel_F (N1C2_Targ > N1C2R)
*+0 SET Decel_F (N1C2_Targ < N1C2R)
#endif
#if Decel_F
+0 SET N1C2_Rate ((N1C2R - N1C2_Targ) / StageTmrLim)
+0 SET TLA_Rate ((RunInTLA - TLA_Targ) / StageTmrLim)
+0 SET TLADecelMx TLAStartMx
+0 SET TLADecelMn TLAStartMn
+0 SET TLAAccelMx 0.0
+0 SET TLAAccelMn 0.0
+0 SET TLAatArm (RunInTLA - 0.2)
+0 SET N1C2DecelTarg N1C2TargMx
+0 SET TLADecelTarg TLATargMx
#elseif Accel_F
+0 SET N1C2_Rate ((N1C2_Targ - N1C2R) / StageTmrLim)
+0 SET TLA_Rate ((TLA_Targ - RunInTLA) / StageTmrLim)
+0 SET TLAAccelMx TLAStartMx
+0 SET TLAAccelMn TLAStartMn
+0 SET TLADecelMx N1C2TargMx
+0 SET TLADecelMn N1C2TargMn
+0 SET TLAatArm (RunInTLA + 0.2)
+0 SET N1C2AccelTarg N1C2TargMn
+0 SET TLAAccelTarg TLATargMn
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

