$PHASE SetTargs_ATP length=-1       level=0 controlrelay=None common=0
+0 SET TRA_Prev TRA_Actual
+0 SET N1C2R_Prev N1C2R
+0 SET N1C2Accel_F OFF
+0 SET N1C2Decel_F OFF
#if RunInStage_F
+0 SET N1C2_Targ lookup (RunInN1C2Targ_T)
+0 SET TLA_Targ lookup (RunInTLATarg_T)
+0 SET StageTmrLim lookup (RunInEventDur_T)
+0 SET StepTxt concat ("Step " RunInStep)
+0 SET StepTxt concat (StepTxt ": ")
#elseif ArmAcceptance_TB
+0 SET N1C2_Targ lookup (AcceptN1C2Targ_T)
+0 SET TLA_Targ lookup (AcceptTLATarg_T)
+0 SET FNTR2_Targ lookup (AcceptFNTR2Targ_T)
+0 SET FNTR2_TargMx (FNTR2_Targ + FNTR2TargBand)
+0 SET FNTR2_TargMn (FNTR2_Targ - FNTR2TargBand)
+0 SET FNTR2DecelTarg (FNTR2_TargMx + FNTR2TargPlus)
+0 SET StageTmrLim lookup (AcceptEventDur_T)
+0 SET StepTxt concat ("Step " AcceptStep)
+0 SET StepTxt concat (StepTxt ": ")
#elseif ArmCorrelation_TB
+0 SET N1C2_Targ lookup (CorrN1C2Targ_T)
+0 SET FNTR2_Targ lookup (CorrFNTR2Targ_T)
+0 SET FNTR2_TargMx (FNTR2_Targ + FNTR2TargBand)
+0 SET FNTR2_TargMn (FNTR2_Targ - FNTR2TargBand)
+0 SET FNMax (FNTR2_Targ + FNTR2TargBand)
+0 SET FNMin (FNTR2_Targ - FNTR2TargBand)
+0 SET TLA_Targ lookup (CorrTLATarg_T)
+0 SET StageTmrLim lookup (CorrEventDur_T)
+0 SET StepTxt concat ("Step " CorrStep)
+0 SET StepTxt concat (StepTxt ": ")
#elseif (ShapedAccel_TS & (ShapedStep = 0))
+0 SET TLA_Targ 0.0
+0 SET N1C2_Targ 2045.0
+0 SET StageTmrLim 30.0
#elseif (ShapedAccel_TS & (ShapedStep = 1))
+0 SET GoToHold_F ON
+0 SET TLA_Targ 0.0
+0 SET N1C2_Targ 2045.0
+0 SET StageTmrLim 840.0
#elseif (ShapedAccel_TS & (ShapedStep = 2))
+0 SET TLA_Targ 33.58
+0 SET N1C2_Targ 8500.0
+0 SET StageTmrLim 10.0
#elseif (ShapedAccel_TS & (ShapedStep = 3))
+0 SET TLA_Targ 46.0
+0 SET N1C2_Targ 9625.0
+0 SET StageTmrLim 11.0
#elseif (AccelDecel_TS & ArmAccel_F)
+0 SET TLA_Targ (TLA_Takeoff + 14.0)
+0 SET StageTmrLim 1.0
#elseif (AccelDecel_TS & ArmDecel_F)
+0 SET TLA_Targ 0.0
+0 SET StageTmrLim 1.0
#elseif (ArmVibSurvey_TB & VibSvyTest1_F)
+0 SET N1C2_Targ lookup (VibSvyN1C2Targ_T)
+0 SET TLA_Targ lookup (VibSvyTLATarg_T)
+0 SET StageTmrLim lookup (VibSvyEventDur1_T)
+0 SET StepTxt concat ("Step " VibSvyStep)
+0 SET StepTxt concat (StepTxt ": ")
#elseif (ArmVibSurvey_TB & VibSvyTest2_F)
+0 SET N1C2_Targ lookup (VibSvyN1C2Targ_T)
+0 SET TLA_Targ lookup (VibSvyTLATarg_T)
+0 SET StageTmrLim lookup (VibSvyEventDur2_T)
+0 SET StepTxt concat ("Step " VibSvyStep)
+0 SET StepTxt concat (StepTxt " Offical: ")
*#elseif (ArmStablePart1_TS | ArmStablePart2_TS | ArmStablePart3_TS)
*+0 SET TLA_Targ 6.7
*+0 SET StageTmrLim 1.0
#endif
+0 SET N1C2_TargMx (N1C2_Targ + N1C2TargBand)
+0 SET N1C2_TargMn (N1C2_Targ - N1C2TargBand)
+0 SET TRA_Targ (TLA_Targ - 14.0)
+0 SET TRAStart TRA_Actual
+0 SET TRAStartMx (TRAStart + 0.2)
+0 SET TRAStartMn (TRAStart - 0.2)
#if GoToHold_F
+0 SET Accel_F OFF
+0 SET Decel_F OFF
#else
+0 SET Accel_F (TRA_Targ > TRA_Actual)
+0 SET Decel_F (TRA_Targ < TRA_Actual)
#endif
#if Decel_F
+0 SET N1C2_Rate ((N1C2R - N1C2_Targ) / StageTmrLim)
+0 SET TRA_Rate ((TRA_Actual - TRA_Targ) / StageTmrLim)
+0 SET TRA_TargMx (TRA_Targ + 0.2)
+0 SET TRA_TargMn (TRA_Targ - TRATargBand)
+0 SET TRADecelMx TRAStartMx
+0 SET TRADecelMn TRAStartMn
+0 SET TRAAccelMx 0.0
+0 SET TRAAccelMn 0.0
+0 SET TRAatArm (TRA_Actual - TRATargBand)
+0 SET N1C2DecelTarg N1C2_TargMx
#elseif Accel_F
+0 SET N1C2_Rate ((N1C2_Targ - N1C2R) / StageTmrLim)
+0 SET TRA_Rate ((TRA_Targ - TRA_Actual) / StageTmrLim)
+0 SET TRA_TargMx (TRA_Targ + TRATargBand)
+0 SET TRA_TargMn (TRA_Targ - 0.2)
+0 SET TRAAccelMx TRAStartMx
+0 SET TRAAccelMn TRAStartMn
+0 SET TRADecelMx TRA_TargMx
+0 SET TRADecelMn TRA_TargMn
+0 SET TRAatArm (TRA_Actual + TRATargBand)
+0 SET N1C2AccelTarg N1C2_TargMn
#else
+0 SET N1C2_Rate 0.0
+0 SET TRA_Rate 0.0
+0 SET TRA_TargMx (TRA_Actual + TRATargBand)
+0 SET TRA_TargMn (TRA_Actual - TRATargBand)
+0 SET TRADecelMx (TRA_Actual - 0.2)
+0 SET TRADecelMn (TRA_Actual + 0.2)
+0 SET TRAAccelMx (TRA_Actual + 0.2)
+0 SET TRAAccelMn (TRA_Actual - 0.2)
+0 SET TRAAccelTarg TRA_Actual
+0 SET TRADecelTarg TRA_Actual
#endif
#if	(Accel_F & AutoTLAEnable_F)
+0 SET TRAAccelTarg (TRA_Targ - 0.01)
#elseif	(Accel_F & ((TRA_Rate < 1.0) | ((TLA_Targ >= 30.0) & (TRA_Rate < 10.0))))
+0 SET TRAAccelTarg TRA_TargMn
#elseif	(Accel_F & (TRA_Rate < 10.0))
+0 SET TRAAccelTarg (TRA_TargMn - 0.2)
#elseif	(Accel_F & (TRA_Rate < 20.0))
+0 SET TRAAccelTarg (TRA_TargMn - 0.4)
#elseif	(Accel_F & (TRA_Rate < 30.0))
+0 SET TRAAccelTarg (TRA_TargMn - 0.6)
#elseif	(Accel_F & (TRA_Rate < 40.0))
+0 SET TRAAccelTarg (TRA_TargMn - 0.8)
#elseif	(Accel_F & (TRA_Rate >= 40.0))
+0 SET TRAAccelTarg (TRA_TargMn - 1.0)
#endif
#if	(Decel_F & AutoTLAEnable_F)
+0 SET TRADecelTarg (TRA_Targ + 0.01)
#elseif	(Decel_F & (TRA_Rate < 1.0))
+0 SET TRADecelTarg TRA_TargMx
#elseif	(Decel_F & (TRA_Rate < 10.0))
+0 SET TRADecelTarg (TRA_TargMx + 0.2)
#elseif	(Decel_F & (TRA_Rate < 20.0))
+0 SET TRADecelTarg (TRA_TargMx + 0.4)
#elseif	(Decel_F & (TRA_Rate < 30.0))
+0 SET TRADecelTarg (TRA_TargMx + 0.6)
#elseif	(Decel_F & (TRA_Rate < 40.0))
+0 SET TRADecelTarg (TRA_TargMx + 0.8)
#elseif	(Decel_F & (TRA_Rate >= 40.0))
+0 SET TRADecelTarg (TRA_TargMx + 1.0)
#endif
$END-PHASE
**********

