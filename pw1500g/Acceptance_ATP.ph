$PHASE Acceptance_ATP length=-1       level=0 controlrelay=None common=0
***** PW1500G Acceptance Procedure Table 10 (DJR 09/01/21)...
***** NOTE: To Adjust the timing when to stop the Decel
*****       Adjust the FNTR2TargPlus parameter...
*****       Increase the Slow TargBand to set FNTR2 Higher in the band...
#if ((ECM_IdleCtrl_TB) & (AcceptStage < 220))
+0 SET ECM_IdleCtrl_TB OFF
#elseif ((AcceptStage = 1) & (TRA_Actual > 10.0))
+0 SET AcceptStage 25
+0 EXECUTE StageClear_ATP
+0 SET AcceptStageTxt concat (StepTxt "- Acceptance, Waiting for Stable FNTR2...")
#elseif ((AcceptStage = 1) & (TRA_Actual <= 10.0))
+0 SET AcceptStage 5
+0 SET AcceptStep 1
+0 SET StageTmrLim 5
+0 SET StageTmr_F ON
+0 SET StepTxt concat ("Step " AcceptStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AcceptStageTxt concat (StepTxt "Acceptance Initiated, TRA < 10 Deg, Performing Shaped Accel...")
+0 EVENT ("Stage %vAcceptStage ,Acceptance Initiated, TRA < 10 Deg, Performing Shaped Accel...")
#elseif ((AcceptStage = 5) & StageTmrLim_F)
+0 SET AcceptStage 10
+0 SET StageTmrLim 840
+0 SET StageTmr_F ON
+0 SET AcceptStageTxt concat (StepTxt "Shaped Accel, Hold at Ground Idle for 840 Seconds...")
#elseif ((AcceptStage = 10) & StageTmrLim_F)
+0 SET AcceptStage 12
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 12)
+0 SET AcceptStage 13
+0 SET TRAStart TRA_Actual
+0 SET StageTmrLim 10
+0 SET TLA_Targ 33.58
+0 SET TRA_Targ (TLA_Targ - 14.0)
+0 SET TRA_TargMx (TRA_Targ + TRATargBand)
+0 SET TRA_TargMn (TRA_Targ - 0.2)
+0 SET TRAAccelTarg TRA_Targ
+0 SET TRA_Rate ((TRA_Targ - TRA_Actual) / StageTmrLim)
+0 SET AcceptStageTxt concat (StepTxt "Shaped Accel, Accel to 19.58 Deg TRA (33.58 Deg TLA)...")
+0 EVENT ("Stage %vAcceptStage , Shaped Accel - Acceptance, Accel to %vTRA_Targ TRA (33.58 Deg TLA) Rate: %vTRA_Rate ...")
#elseif (AcceptStage = 13)
+0 SET AcceptStage 14
+0 SET Accel_F	ON
+0 SET StageTmr_F ON
#elseif ((AcceptStage = 14) & TRAAccelTarg_F & (StageTmr > 1.0))
+0 SET AcceptStage 15
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 15)
+0 SET AcceptStage 18
+0 SET TRAStart TRA_Actual
+0 SET StageTmrLim 11
+0 SET TLA_Targ 46.3
+0 SET TRA_Targ (TLA_Targ - 14.0)
+0 SET TRA_TargMx (TRA_Targ + TRATargBand)
+0 SET TRA_TargMn (TRA_Targ - 0.2)
+0 SET TRAAccelTarg TRA_TargMn
+0 SET TRA_Rate ((TRA_Targ - TRA_Actual) / StageTmrLim)
+0 SET AcceptStageTxt concat (StepTxt "Shaped Accel, Accel to 32.0 Deg TRA (46.0 Deg TLA)...")
+0 EVENT ("Stage %vAcceptStage ,Shaped Accel - Acceptance, Accel to %vTRA_Targ TRA (46.0 Deg TLA). (FNTR2: %vFNTR2 ) Rate: %vTRA_Rate ")
#elseif (AcceptStage = 18)
+0 SET AcceptStage 20
+0 SET Accel_F	ON
+0 SET StageTmr_F ON
#elseif ((AcceptStage = 20) & TRAAccelTarg_F & (StageTmr > 1.0))
+0 SET AcceptStage 25
+0 EXECUTE StageClear_ATP
+0 SET AcceptStageTxt concat (StepTxt "Shaped Accel - Complete, Waiting for Stable FNTR2: %vFNTR2 .")
#elseif ((AcceptStage = 25) & StableFN_F)
+0 SET AcceptStage 28
+0 SET StageTmrLim 5
+0 SET StageTmr_F ON
+0 SET AcceptStep 1
+0 SET TestCompShapedAccel_F ON
+0 SET StepTxt concat ("Step " AcceptStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AcceptStageTxt concat (StepTxt "Acceptance Initiated, Dwell 5 sec...")
+0 EVENT ("Stage %vAcceptStage ,Acceptance Initiated, Dwell 5 sec. (FNTR2: %vFNTR2 )")
** ------------------------------------------------------------------------------
************* Start Acceptance **************************************************
** ------------------------------------------------------------------------------
#elseif ((AcceptStage = 28) & StageTmrLim_F)
+0 SET AcceptStage 50
+0 EXECUTE StageClear_ATP
+0 SET CowlAICk_F ON
**** Decel to Band A ****
#elseif (AcceptStage = 50)
+0 SET AcceptStage 55
+0 SET AcceptStep 3
+0 SET FNTR2TargPlus 0.0
+0 SET FNTR2TargBand 250.0
+0 SET TargBandTxt concat ("" "A")
+0 SET DecelSpdTxt concat ("" "Slow")
+0 SET FnMax FnAMax
+0 SET FnMin FnAMin
+0 SET FnNom FnANom
+0 EXECUTE SetTargs_ATP
#elseif (AcceptStage = 55)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 60)
+0 SET AcceptStage 62
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 62)
**** Hold at Band A ****
+0 SET AcceptStage 65
+0 SET AcceptStep 4
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
+0 SET FNAdjTargMx (FNAMax - 50.0)
+0 SET FNAdjTargMn (FNAMin + 50.0)
#elseif (AcceptStage = 65)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 70)
+0 SET AcceptStage 75
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 75)
**** Decel to Band B ****
+0 SET AcceptStage 90
+0 SET AcceptStep 6
+0 SET TargBandTxt concat ("" "B")
+0 SET DecelSpdTxt concat ("" "Slow")
+0 SET FnMax FnBMax
+0 SET FnMin FnBMin
+0 SET FnNom FnBNom
+0 SET FNTR2TargPlus 0.0
+0 SET FNTR2TargBand 250.0
+0 EXECUTE SetTargs_ATP
#elseif (AcceptStage = 90)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 95)
+0 SET AcceptStage 105
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 105)
**** Hold at Band B ****
+0 SET AcceptStage 110
+0 SET AcceptStep 7
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
+0 SET FNAdjTargMx (FNBMax - 50.0)
+0 SET FNAdjTargMn (FNBMin + 50.0)
#elseif (AcceptStage = 110)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 115)
+0 SET AcceptStage 140
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 140)
**** Decel to Band C ****
+0 SET AcceptStage 145
+0 SET AcceptStep 9
+0 SET TargBandTxt concat ("" "C")
+0 SET DecelSpdTxt concat ("" "Slow")
+0 SET FnMax FnCMax
+0 SET FnMin FnCMin
+0 SET FnNom FnCNom
+0 SET FNTR2TargPlus 0.0
+0 SET FNTR2TargBand 250.0
+0 EXECUTE SetTargs_ATP
#elseif (AcceptStage = 145)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 150)
+0 SET AcceptStage 155
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 155)
**** Hold at Band C ****
+0 SET AcceptStage 160
+0 SET AcceptStep 10
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
+0 SET FNAdjTargMx (FNCMax - 50.0)
+0 SET FNAdjTargMn (FNCMin + 50.0)
#elseif (AcceptStage = 160)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 165)
+0 SET AcceptStage 190
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 190)
**** Decel to Band D ****
+0 SET AcceptStage 195
+0 SET AcceptStep 12
+0 SET TargBandTxt concat ("" "D")
+0 SET DecelSpdTxt concat ("" "Slow")
+0 SET FnMax FnDMax
+0 SET FnMin FnDMin
+0 SET FnNom FnDNom
+0 SET FNTR2TargPlus 0.0
+0 SET FNTR2TargBand 250.0
+0 EXECUTE SetTargs_ATP
#elseif (AcceptStage = 195)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 200)
+0 SET AcceptStage 205
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 205)
**** Hold at Band D ****
+0 SET AcceptStage 210
+0 SET CAIOp_Stat 0
+0 SET CAICl_Stat 0
+0 SET AcceptStep 13
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
+0 SET FNAdjTargMx (FNDMax - 50.0)
+0 SET FNAdjTargMn (FNDMin + 50.0)
#elseif (AcceptStage = 210)
+0 EXECUTE AcceptADH_ATP
#elseif (AcceptStage = 215)
+0 SET AcceptStage 220
+0 EXECUTE StageClear_ATP
#elseif ((AcceptStage = 220) & ~CowlAICk_F)
+0 SET AcceptStage 260
+0 EXECUTE StageClear_ATP
#elseif ((AcceptStage = 220) & CowlAICk_F)
+0 SET AcceptStage 225
+0 SET AcceptStep 14
+0 SET StageTmrLim 30
+0 SET StageTmr	0.0
+0 SET ECM_CowlAI_TB ON
+0 SET ECM_IdleCtrl_TB ON
+0 SET StepTxt concat ("Step " AcceptStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Switch ON")
#elseif ((AcceptStage = 225) & CAISWON)
+0 SET AcceptStage 230
+0 SET StageTmr_F ON
#elseif ((AcceptStage = 230) & (StageTmr <= 3) & CAIPOS)
+0 SET AcceptStage 241
+0 SET CAIOp_Stat 1
+0 SET CAIOp_Tm StageTmr
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Open Passed...")
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Open Passed...")
#elseif ((AcceptStage = 230) & (StageTmr > 3) & CAIPOS)
+0 SET AcceptStage 241
+0 SET CAIOp_Stat 3
+0 SET CAIOp_Tm StageTmr
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Time Open Failed...")
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Time Open Failed...")
#elseif ((AcceptStage = 241) & (StageTmr > 7) & ~CAIPOS)
+0 SET AcceptStage 242
+0 SET CAIOp_Stat 2
+0 SET CAIOp_Tm StageTmr
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Open Failed...")
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Open Failed...")
#elseif (((AcceptStage = 241) | (AcceptStage = 242)) & (StageTmr > 20))
+0 SET AcceptStage 243
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Switch OFF NEXT...")
#elseif ((AcceptStage = 243) & StageTmrLim_F)
+0 SET AcceptStage 245
+0 SET StageTmr	0.0
+0 SET StageTmrLim 10
* +0 SET StageTmrLim (StageTmrLim - StageTmr)
+0 SET ECM_CowlAI_TB OFF
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " Switch OFF")
#elseif ((AcceptStage = 245) & CAISWOFF)
+0 SET AcceptStage 250
+0 SET StageTmr_F ON
#elseif ((AcceptStage = 250) & (StageTmr <= 3) & ~CAIPOS)
+0 SET AcceptStage 253
+0 SET CAICl_Stat 1
+0 SET CAICl_Tm StageTmr
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Close Passed...")
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Close Passed...")
#elseif ((AcceptStage = 250) & (StageTmr > 3) & ~CAIPOS)
+0 SET AcceptStage 253
+0 SET CAICl_Stat 3
+0 SET CAICl_Tm StageTmr
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Close Time Failed...")
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Close Time Failed...")
#elseif ((AcceptStage = 253) & (StageTmr > 7) & CAIPOS)
+0 SET AcceptStage 255
+0 SET CAICl_Stat 2
+0 SET CAICl_Tm StageTmr
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Performing CTAI Valve Function Check, Close Failed...")
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Close Failed...")
#elseif (((AcceptStage = 253) | (AcceptStage = 255)) & StageTmrLim_F)
+0 SET AcceptStage 260
+0 EXECUTE StageClear_ATP
+0 SET ECM_IdleCtrl_TB OFF
+0 SET CowlAICk_F OFF
+0 EVENT ("Stage %vAcceptStage ,Cowl AI Check, Complete...")
#elseif (AcceptStage = 260)
+0 SET AcceptStage 265
+0 SET AcceptStep 15
+0 SET TRAStart TRA_Actual
+0 SET StageTmrLim 120
+0 SET TRA_Targ -14.0
+0 SET TLA_Targ (TRA_Targ + 14.0)
+0 SET TRA_TargMx (TRA_Targ + 0.2)
+0 SET TRA_TargMn (TRA_Targ - TRATargBand)
+0 SET TRADecelTarg TRA_TargMx
+0 SET TRA_Rate ((TRA_Actual - TRA_Targ) / StageTmrLim)
+0 SET Decel_F	ON
+0 SET StageTmr_F ON
+0 SET StepTxt concat ("Step " AcceptStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Decel to Ground Idle...")
#elseif ((AcceptStage = 265) & StageTmrLim_F)
+0 SET AcceptStage 270
+0 SET AcceptStageTxt concat (StepTxt "Acceptance, Waiting for Ground Idle...")
#elseif (((AcceptStage = 265) | (AcceptStage = 270)) & TRAGIdle_F)
+0 SET AcceptStage 275
+0 EXECUTE StageClear_ATP
#elseif (AcceptStage = 275)
+0 SET AcceptStage 280
+0 SET AcceptStep 16
+0 SET StageTmrLim 300
+0 SET StageTmr_F ON
+0 SET StepTxt concat ("Step " AcceptStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET AcceptStageTxt concat (StepTxt "Acceptance Complete, Dwell at Ground Idle for ")
+0 SET AcceptStageTxt concat (AcceptStageTxt StageTmrLim)
+0 SET AcceptStageTxt concat (AcceptStageTxt " sec.")
#elseif ((AcceptStage = 280) & (StageTmr > (StageTmrLim - 62)))
+0 SET AcceptStage 285
+0 EXECUTE storeMIdle_ATP
#elseif ((AcceptStage = 285) & StageTmrLim_F)
+0 SET AcceptStage 290
+0 EXECUTE StageClear_ATP
+0 SET AcceptStageTxt concat (StepTxt "Acceptance Complete...")
+0 SET ArmAcceptance_TB OFF
+0 SET AcceptT9_TS OFF
+0 SET TestCompAccept_F ON
#endif
$END-PHASE
**********

