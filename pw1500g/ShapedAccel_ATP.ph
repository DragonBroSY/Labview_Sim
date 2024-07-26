$PHASE ShapedAccel_ATP length=-1       level=0 controlrelay=None common=0
#if (ECM_IdleCtrl_TB)
+0 SET ECM_IdleCtrl_TB OFF
#elseif ((ShapedStage = 1) & ~TRAGIdle_F)
+0 SET ShapedStage 5
+0 SET ShapedStep 0
+0 EXECUTE SetTargs_ATP
+0 SET ShapedStageTxt concat (StepTxt "Auto Decel to Ground Idle, 30 Sec...")
#elseif (ShapedStage = 5)
+0 SET ShapedStage 6
+0 SET StageTmr_F ON
#elseif ((ShapedStage = 6) & TRAGIdle_F)
+0 SET ShapedStage 10
+0 EXECUTE StageClear_ATP
#elseif (((ShapedStage = 1) | (ShapedStage = 10)) & TRAGIdle_F)
+0 SET ShapedStage 12
+0 EXECUTE StageClear_ATP
#elseif (ShapedStage = 12)
+0 SET ShapedStage 15
+0 SET ShapedStep 1
+0 SET OverRide25Bld_F OFF
+0 SET OverRideSVScd_F OFF
+0 EXECUTE SetTargs_ATP
+0 SET ShapedStageTxt concat (StepTxt "Shaped Accel Initialized... ")
#elseif (ShapedStage = 15)
+0 SET ShapedStage 20
+0 SET StageTmr_F ON
+0 SET ShapedStageTxt concat (StepTxt "Shaped Accel, Hold at Ground Idle for ")
+0 SET ShapedStageTxt concat (ShapedStageTxt StageTmrLim)
+0 SET ShapedStageTxt concat (ShapedStageTxt " Sec.")
#elseif ((ShapedStage = 20) & StageTmrLim_F)
+0 SET ShapedStage 25
+0 EXECUTE StageClear_ATP
#elseif (ShapedStage = 25)
+0 SET ShapedStage 30
+0 SET ShapedStep 2
+0 EXECUTE SetTargs_ATP
#elseif (ShapedStage = 30)
+0 SET ShapedStage 35
+0 SET StageTmr_F ON
+0 SET ShapedStageTxt concat (StepTxt "Auto Accel to ")
+0 SET ShapedStageTxt concat (ShapedStageTxt TRA_Targ)
+0 SET ShapedStageTxt concat (ShapedStageTxt " TRA Deg, (")
+0 SET ShapedStageTxt concat (ShapedStageTxt TLA_Targ)
+0 SET ShapedStageTxt concat (ShapedStageTxt " TLA Deg, ")
+0 SET ShapedStageTxt concat (ShapedStageTxt StageTmrLim)
+0 SET ShapedStageTxt concat (ShapedStageTxt " Sec.")
#elseif ((ShapedStage = 35) & (StageTmrLim_F | TRAAccelTarg_F))
+0 SET ShapedStage 40
+0 EXECUTE StageClear_ATP
#elseif (ShapedStage = 40)
+0 SET ShapedStage 45
+0 SET ShapedStep 3
+0 EXECUTE SetTargs_ATP
#elseif (ShapedStage = 45)
+0 SET ShapedStage 50
+0 SET StageTmr_F ON
+0 SET ShapedStageTxt concat (StepTxt "Auto Accel to ")
+0 SET ShapedStageTxt concat (ShapedStageTxt TRA_Targ)
+0 SET ShapedStageTxt concat (ShapedStageTxt " TRA Deg, (")
+0 SET ShapedStageTxt concat (ShapedStageTxt TLA_Targ)
+0 SET ShapedStageTxt concat (ShapedStageTxt " TLA Deg, ")
+0 SET ShapedStageTxt concat (ShapedStageTxt StageTmrLim)
+0 SET ShapedStageTxt concat (ShapedStageTxt " Sec.")
#elseif ((ShapedStage = 50) & (StageTmrLim_F | TRAAccelTarg_F))
+0 SET ShapedStage 55
+0 EXECUTE StageClear_ATP
+0 SET ShapedStageTxt concat (StepTxt "Shaped Accel Complete, Continue with Acceptance Test, 5 sec...")
#elseif (ShapedStage = 55)
+0 SET ShapedStage 60
+0 SET StageTmrLim 5
+0 SET StageTmr_F ON
#elseif ((ShapedStage = 60) & StageTmrLim_F)
+0 SET ShapedStage 65
+0 SET ShapedAccel_TS OFF
+0 SET StageTmr_F OFF
+0 SET TestCompShapedAccel_F ON
+0 EVENT ("Shaped Accel Complete...")
+0 EXECUTE StageClear_ATP
* +0 SET AcceptT9_TS ON
#endif
$END-PHASE
**********

