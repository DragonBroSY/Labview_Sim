$PHASE CorrADH_ATP length=-1       level=0 controlrelay=None common=0
****************************************************
**** Correlation Accel Decel and Hold functions...
****************************************************
*******************************************
***** Accel Functions
*******************************************
#if ((CorrStage1 = 0) & AutoThrottle_F & Accel_F)
+0 SET CorrStage1 10
+0 SET CorrStageTxt concat (StepTxt "Correlation, Auto Accel to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM, for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Stage: %vCorrStep Auto Accel to %vN1C2_Targ RPM.")
#elseif ((CorrStage1 = 0) & ~AutoThrottle_F & Accel_F)
+0 SET CorrStage1 5
+0 SET CorrStageTxt concat (StepTxt "Correlation, Waiting for Accel to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM, for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 EVENT ("Stage: %vCorrStep Waiting for  Accel to %vN1C2_Targ RPM.")
#elseif ((CorrStage1 = 5) & ~AutoThrottle_F & Accel_F & TRAAccel_F)
+0 SET CorrStage1 10
+0 SET CorrStageTxt concat (StepTxt "Correlation, Accel to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif (((CorrStage1 = 10) | (CorrStage1 = 15)) & Accel_F & N1C2AccelTarg_F)
+0 SET AcceptStage1 20
+0 SET AcceptStageTxt concat (StepTxt "Correlation, Accel Complete to N1C2: ")
+0 SET AcceptStageTxt concat (AcceptStageTxt N1C2_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " RPM...")
+0 EVENT ("Stage %vCorrStage , Accel Complete to N1C2 Target: %vN1C2_Targ (N1C2D: %vN1C2D )")
*******************************************
***** Decel Functions
*******************************************
#elseif ((CorrStage1 = 0) & AutoThrottle_F & Decel_F)
+0 SET CorrStage1 10
+0 SET CorrStageTxt concat (StepTxt "Correlation, Auto Decel to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 SET StageTmr_F ON
+0 EVENT ("Stage: %vCorrStep Auto Decel to %vN1C2_Targ RPM.")
#elseif ((CorrStage1 = 0) & ~AutoThrottle_F & Decel_F)
+0 SET CorrStage1 5
+0 SET CorrStageTxt concat (StepTxt "Correlation, Waiting for Decel to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM, for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 EVENT ("Stage: %vCorrStep Waiting for Decel to %vN1C2_Targ RPM.")
#elseif ((CorrStage1 = 5) & ~AutoThrottle_F & Decel_F & TRADecel_F)
+0 SET CorrStage1 10
+0 SET CorrStageTxt concat (StepTxt "Correlation, Decel to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 SET StageTmr_F ON
#elseif (((CorrStage1 = 10) | (CorrStage1 = 15)) & Decel_F & N1C2DecelTarg_F)
+0 SET AcceptStage1 20
+0 SET AcceptStageTxt concat (StepTxt "Correlation, Decel Complete to N1C2: ")
+0 SET AcceptStageTxt concat (AcceptStageTxt N1C2_Targ)
+0 SET AcceptStageTxt concat (AcceptStageTxt " RPM...")
+0 EVENT ("Stage %vCorrStage , Decel Complete to N1C2 Target: %vN1C2_Targ (N1C2D: %vN1C2D )")
*******************************************
#elseif ((CorrStage1 = 10) & StageTmrLim_F & (Accel_F | Decel_F))
+0 SET CorrStage1 15
+0 SET CorrStageTxt concat (StepTxt "Correlation, Waiting for ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
*******************************************
***** GoTo Hold Functions
*******************************************
#elseif ((CorrStage1 = 0) & GoToHold_F)
+0 SET CorrStage1 10
+0 SET CorrStageTxt concat (StepTxt "Correlation, Hold at ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMn)
+0 SET CorrStageTxt concat (CorrStageTxt " to ")
+0 SET CorrStageTxt concat (CorrStageTxt N1C2_TargMx)
+0 SET CorrStageTxt concat (CorrStageTxt " N1C2 RPM, for ")
+0 SET CorrStageTxt concat (CorrStageTxt StageTmrLim)
+0 SET StageTmrOS 0.0
+0 SET TRA_RateRR 0.04
+0 SET ADPause_F ON
+0 SET StageTmr_F ON
+0 EVENT ("Stage: %vCorrStep Hold at N1C2: %vN1C2_SLS Target: %vN1C2_Targ RPM for %vStageTmrlim Sec.")
#elseif ((CorrStage1 = 10) & GoToHold_F & N1C2TargMx_F & inrange(5.0 StageTmr 60.0) & StageTmrOS_F)
+0 SET StageTmrOS (StageTmr + 0.8)
+0 SET TRA_CMD (TRA_CMD - TRA_RateRR)
#elseif ((CorrStage1 = 10) & GoToHold_F & N1C2TargMn_F & inrange(5.0 StageTmr 60.0) & StageTmrOS_F)
+0 SET StageTmrOS (StageTmr + 0.8)
+0 SET TRA_CMD (TRA_CMD + TRA_RateRR)
#elseif ((AcceptStage1 = 10) & GoToHold_F & (StageTmr > 60))
+0 SET AcceptStage1 13
+0 SET ADPause_F OFF
#elseif (((CorrStage1 = 10)|(CorrStage1 = 13)) & (StageTmr >= (StageTmrLim - 61)) & GoToHold_F)
+0 SET CorrStage1 15
+0 EXECUTE storeCorrelation_ATP
#elseif (((CorrStage1 = 10)|(CorrStage1 = 15)) & StageTmrLim_F & GoToHold_F)
+0 SET CorrStage1 20
*******************************************
* #elseif (((CorrStage1 = 10)|(CorrStage1 = 15)) & (N1C2D > (N1C2_TargMn - N1C2TargMinus)) & Accel_F)
* +0 SET CorrStage1 20
* #elseif (((CorrStage1 = 10)|(CorrStage1 = 15)) & (N1C2D < (N1C2_TargMx + N1C2TargPlus)) & Decel_F)
* +0 SET CorrStage1 20
#elseif	(CorrStage1 = 20)
+0 SET CorrStage1 0
+0 SET CorrStage (CorrStage + 5)
+0 SET StageTmr_F OFF
#endif
$END-PHASE
**********

