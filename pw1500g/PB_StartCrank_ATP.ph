$PHASE PB_StartCrank_ATP length=-1       level=0 controlrelay=None common=0
************ BA_CSFDR_v2.11.8 ****************
************ Push Button Wet/Dry Crank, Auto/Manual Starts...
#if	ECM_IdleCtrl_TB
+0 SET ECM_IdleCtrl_TB OFF
#endif
#if	(~ECM_IgnPwr_TB & ~PB_WetCrank_TB)
+0 SET ECM_IgnPwr_TB ON
#endif
#if	((PB_Stage = 0) & ~ECM_EECGndTstPwr_TB)
+0 SET PB_StageTxt concat ("Push Button - " "Waiting for EEC to Initialize, (Wait 10 Sec)...")
+0 SET ECM_EECGndTstPwr_TB ON
+0 SET StageTmrLim 10
+0 SET StageTmr 0.0
+0 SET StageTmr_F ON
+0 SET PB_Stage -1
#elseif	((PB_Stage = -1) & StageTmr_F & StageTmrLim_F)
+0 SET StageTmr_F OFF
+0 SET StageTmr 0.0
+0 SET PB_Stage 0
#endif
*************** Auto Start *****************************
#if	((PB_Stage = 0) & PB_AutoStart_TB & ~StageTmr_F)
******** Figure 7.4.1 Auto Engine Start Sequence Page 397
+0 SET PB_HeaderTxt concat ("PB " "Auto Start - ")
+0 SET PB_StageTxt concat (PB_HeaderTxt "Selected (Wait 5 Sec)...")
+0 SET ECM_IgnCtrl_TB OFF
+0 SET ECM_ModeSel_TB OFF
+0 SET ECM_FuelCtrl_TB OFF
+5 SET PB_Stage 1
#elseif ((PB_Stage = 1) & PB_AutoStart_TB)
+0 SET PB_StageTxt concat (PB_HeaderTxt "ENGINE RUN/OFF [RUN] Selected...")
+0 SET ECM_FuelCtrl_TB ON
+0 SET PB_Stage 2
#elseif ((PB_Stage = 2) & PB_AutoStart_TB & AUTSTA)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Confirmed...")
+0 SET PB_Stage 3
#elseif ((PB_Stage = 3) & PB_AutoStart_TB & SAVOP)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Start Valve Open...")
+0 SET PB_Stage 4
#elseif ((PB_Stage = 4) & PB_AutoStart_TB & (EEC_N2 > 200.0))
+0 SET PB_StageTxt concat (PB_HeaderTxt "N2 Rotation...")
+10 SET PB_Stage 6
#elseif ((PB_Stage = 5) & PB_AutoStart_TB & StarterCutOut_F)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Starter Cut Out...")
+2 SET PB_Stage 6
#elseif ((PB_Stage = 6) & PB_AutoStart_TB)
+0 SET PB_AutoStart_TB OFF
+0 SET PB_Stage 0
*************** Manual Start ***************************
#elseif ((PB_Stage = 0) & PB_ManStart_TB & ~StageTmr_F)
******** Figure 7.4.2.1 Manual Engine Start Sequence Page 402
+0 SET PB_HeaderTxt concat ("PB " "Manual Start - ")
+0 SET PB_StageTxt concat (PB_HeaderTxt "Selected (Wait 5 Sec)...")
+0 SET ECM_IgnCtrl_TB OFF
+0 SET ECM_ModeSel_TB OFF
+0 SET ECM_FuelCtrl_TB OFF
+5 SET PB_Stage 1
#elseif ((PB_Stage = 1) & PB_ManStart_TB)
+0 SET PB_StageTxt concat (PB_HeaderTxt "CONT IGNITION [ON] Selected...")
+0 SET ECM_IgnCtrl_TB ON
+2 SET PB_Stage 2
#elseif ((PB_Stage = 2) & PB_ManStart_TB)
+0 SET PB_StageTxt concat (PB_HeaderTxt "ENGINE START [CRANK] Selected...")
+0 SET ECM_ModeSel_TB ON
+0 SET PB_Stage 3
#elseif ((PB_Stage = 3) & PB_ManStart_TB & MANSTA)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Confirmed...")
+0 SET PB_Stage 4
#elseif ((PB_Stage = 4) & PB_ManStart_TB & SAVOP)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Start Valve Open...")
+0 SET PB_Stage 5
#elseif ((PB_Stage = 5) & PB_ManStart_TB & (EEC_N2 > 200.0))
+0 SET PB_StageTxt concat (PB_HeaderTxt "N2 Rotation...")
+0 SET ECM_FuelCtrl_TB ON
+0 SET PB_Stage 6
#elseif ((PB_Stage = 6) & PB_ManStart_TB & (EEC_N2 > 5000.0))
+0 SET PB_StageTxt concat (PB_HeaderTxt "ENGINE RUN/OFF [RUN] Selected...")
+0 SET ECM_FuelCtrl_TB ON
+10 SET PB_Stage 8
#elseif ((PB_Stage = 7) & PB_ManStart_TB & StarterCutOut_F)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Starter Cut Out...")
+2 SET PB_Stage 8
#elseif ((PB_Stage = 8) & PB_ManStart_TB)
+0 SET PB_ManStart_TB OFF
+0 SET PB_Stage 0
*************** Dry Crank ******************************
#elseif ((PB_Stage = 0) & PB_DryCrank_TB & ~StageTmr_F)
******** Figure 7.5.1 Dry Engine Cranking Sequence Page 411
+0 SET PB_HeaderTxt concat ("PB " "Dry Crank - ")
+0 SET PB_StageTxt concat (PB_HeaderTxt "Selected (Wait 5 Sec)...")
+0 SET ECM_IgnCtrl_TB OFF
+0 SET ECM_ModeSel_TB OFF
+0 SET ECM_FuelCtrl_TB OFF
+5 SET PB_Stage 1
#elseif ((PB_Stage = 1) & PB_DryCrank_TB)
+0 SET PB_StageTxt concat (PB_HeaderTxt "ENGINE START [CRANK] Selected...")
+0 SET ECM_ModeSel_TB ON
+0 SET PB_Stage 2
#elseif ((PB_Stage = 2) & PB_DryCrank_TB & SAVOP)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Start Valve Open...")
+0 SET PB_Stage 3
#elseif ((PB_Stage = 3) & PB_DryCrank_TB & DRYCKA)
+0 SET StageTmrLim 60
+0 SET StageTmr 0.0
+0 SET PB_StageTxt concat (PB_HeaderTxt "Confirmed, Dry Crank for ")
+0 SET PB_StageTxt concat (PB_StageTxt StageTmrLim)
+0 SET PB_StageTxt concat (PB_StageTxt " Sec.")
+0 SET PB_Stage 4
#elseif ((PB_Stage = 4) & PB_DryCrank_TB & (EEC_N2 > 200.0))
+0 SET StageTmr_F ON
+0 SET PB_StageTxt concat (PB_HeaderTxt "N2 Rotation, Dry Crank for ")
+0 SET PB_StageTxt concat (PB_StageTxt StageTmrLim)
+0 SET PB_StageTxt concat (PB_StageTxt " Sec.")
+0 SET PB_Stage 5
#elseif ((PB_Stage = 5) & PB_DryCrank_TB & StageTmrLim_F)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Shut Down...")
+0 SET StageTmr_F OFF
+0 SET ECM_ModeSel_TB OFF
+5 SET PB_DryCrank_TB OFF
+0 SET PB_Stage 0
*************** Wet Crank ******************************
#elseif ((PB_Stage = 0) & PB_WetCrank_TB & ~StageTmr_F)
******** Figure 7.5.2 Wet Engine Cranking Sequence Page 414
+0 SET PB_HeaderTxt concat ("PB " "Wet Crank - ")
+0 SET PB_StageTxt concat (PB_HeaderTxt "Selected (Wait 5 Sec)...")
+0 SET ECM_IgnCtrl_TB OFF
+0 SET ECM_ModeSel_TB OFF
+0 SET ECM_FuelCtrl_TB OFF
+0 SET ECM_IgnPwr_TB OFF
+5 SET PB_Stage 1
#elseif ((PB_Stage = 1) & PB_WetCrank_TB)
+0 SET PB_StageTxt concat (PB_HeaderTxt "ENGINE START [CRANK] Selected...")
+0 SET ECM_ModeSel_TB ON
+0 SET PB_Stage 2
#elseif ((PB_Stage = 2) & PB_WetCrank_TB & SAVOP)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Start Valve Open...")
+0 SET PB_Stage 3
#elseif ((PB_Stage = 3) & PB_WetCrank_TB & (EEC_N2 > 200.0))
+0 SET StageTmrLim 30
+0 SET StageTmr 0.0
+0 SET PB_StageTxt concat (PB_HeaderTxt "N2 Rotation, ENGINE RUN [RUN] Selected...")
+0 SET ECM_FuelCtrl_TB ON
+0 SET PB_Stage 4
#elseif ((PB_Stage = 4) & PB_WetCrank_TB & WETCKA)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Confirmed...")
+0 SET PB_Stage 5
#elseif ((PB_Stage = 5) & PB_WetCrank_TB & (EEC_N2 > 5000.0))
+0 SET StageTmr_F ON
+0 SET PB_StageTxt concat (PB_HeaderTxt "Fuel On, Wet Crank for ")
+0 SET PB_StageTxt concat (PB_StageTxt StageTmrLim)
+0 SET PB_StageTxt concat (PB_StageTxt " Sec.")
+0 SET PB_Stage 6
#elseif ((PB_Stage = 6) & PB_WetCrank_TB & StageTmrLim_F)
+0 SET ECM_FuelCtrl_TB OFF
+0 SET StageTmrLim 60
+0 SET PB_StageTxt concat (PB_HeaderTxt "Dry Crank for ")
+0 SET PB_StageTxt concat (PB_StageTxt StageTmrLim)
+0 SET PB_StageTxt concat (PB_StageTxt " Sec.")
+0 SET StageTmr 0.0
+0 SET StageTmr_F ON
+0 SET PB_Stage 7
#elseif ((PB_Stage = 7) & PB_WetCrank_TB & StageTmrLim_F)
+0 SET PB_StageTxt concat (PB_HeaderTxt "Shut Down...")
+0 SET StageTmr_F OFF
+0 SET StageTmr_F OFF
+0 SET ECM_ModeSel_TB OFF
+5 SET PB_WetCrank_TB OFF
+0 SET PB_Stage 0
#endif
$END-PHASE
**********

