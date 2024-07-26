$PHASE CoolDown_ATP length=-1       level=0 controlrelay=None common=0
#if ((CoolDnStage < 35) & ~ECM_IdleCtrl_TB)
****** ECM_IdleCtrl_TB=ON Approach Idle Selected...
+0 SET ECM_IdleCtrl_TB ON
#elseif ((CoolDnStage >= 35) & ECM_IdleCtrl_TB)
****** ECM_IdleCtrl_TB=OFF Ground Idle Selected...
+0 SET ECM_IdleCtrl_TB OFF
#elseif (CoolDnStage = 1)
+0 SET CoolDnStage 5
+0 EXECUTE StageClear_ATP
+0 SET StageTmrLim 10.0
+0 SET StageTmr_F ON
+0 SET CoolDnStageTxt concat (StepTxt "Cool Down Armed, Approach Idle Selected...")
+0 EVENT ("CoolDown Procedure (Started)...")
#elseif ((CoolDnStage = 5) & StageTmrLim_F)
+0 SET CoolDnStage 15
+0 SET StageTmr_F OFF
+0 SET StageTmr 0.0
#elseif (CoolDnStage = 15)
+0 SET CoolDnStage 25
+0 EXECUTE StageClear_ATP
+0 SET CoolDnStageTxt concat (StepTxt "Hold at Approach Idle for 20 Minutes (1200 Sec)...")
#elseif (CoolDnStage = 25)
+0 SET CoolDnStage 30
+0 SET StageTmrLim 1200.0
+0 SET StageTmr_F ON
#elseif ((CoolDnStage = 30) & StageTmrLim_F)
+0 SET CoolDnStage 35
+0 EXECUTE StageClear_ATP
#elseif (CoolDnStage = 35)
+0 SET CoolDnStage 40
+0 SET ECM_IdleCtrl_TB OFF
+0 SET StageTmrLim 10.0
+0 SET StageTmr_F ON
+0 SET CoolDnStageTxt concat (StepTxt "Selecting Ground Idle...")
#elseif ((CoolDnStage = 40) & StageTmrLim_F)
+0 SET CoolDnStage 45
+0 EXECUTE StageClear_ATP
#elseif (CoolDnStage = 45)
+0 SET CoolDnStage 50
+0 SET StageTmrLim 300.0
+0 SET StageTmr_F ON
+0 SET CoolDnStageTxt concat (StepTxt "Hold at Ground Idle for 300 Seconds...")
#elseif (CoolDnStage = 50)
+0 SET CoolDnStage 55
+0 EXECUTE StageClear_ATP
#elseif (CoolDnStage = 55)
+0 SET CoolDnStage 60
+0 SET StageTmrLim 5.0
+0 SET StageTmr_F ON
+0 SET CoolDnStageTxt concat (StepTxt "Cool Down Procedure Complete...")
+0 EVENT ("CoolDown Procedure (Complete)...")
#elseif ((CoolDnStage = 60) & StageTmrLim_F)
+0 EXECUTE StageClear_ATP
+0 SET ArmCoolDown_F OFF
+0 SET CoolDown_TS OFF
#endif
$END-PHASE
**********

