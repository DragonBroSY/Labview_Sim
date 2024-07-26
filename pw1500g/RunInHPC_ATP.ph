$PHASE RunInHPC_ATP length=-1       level=0 controlrelay=None common=0
#if (ECM_IdleCtrl_TB & ~inrange(25 RunInStep 27))
+0 SET ECM_IdleCtrl_TB OFF
#elseif (RunInStage = 1)
**** 1 Hold 300 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 5
+0 EXECUTE StageClear_ATP
+0 SET GoToHold_F ON
+0 SET RunInStep 1
+0 EXECUTE SetTargs_ATP
+0 SET StageTmr_F ON
+0 SET RunInStageTxt concat (StepTxt "Run-In Initiated, Ground Idle Selected, Setting LPC Bleed and HPC SVS...")
#elseif ((RunInStage = 5) & (StageTmr > 5.0))
+0 SET RunInStage 10
+0 SET OverRide25Bld_F ON
+0 SET RunInT2Start	CITDegF
#elseif ((RunInStage = 10) & CITGT65_F & (StageTmr > 10.0))
+0 SET RunInStage 40
+0 SET OverRideSVScd_F OFF
+0 SET RunInStageTxt concat (StepTxt "Run-In Initiated, Setting LPC Bleed > 25% Stroke and HPC SVS OFF, Hold 300 Sec.")
+0 EVENT ("Step: %vRunInStop Run-In Initiated, Setting LPC Bleed > 25% Stroke and HPC SVS OFF, CIT %vCITDegF DegF..")
#elseif ((RunInStage = 10) & CITLT65_F & (StageTmr > 10.0))
+0 SET RunInStage 15
+0 SET OverRideSVScd_F ON
+0 SET RunInStageTxt concat (StepTxt "Run-In Initiated, Setting LPC Bleed > 25% Stroke and HPC SVS ON, Hold 300 Sec.")
+0 EVENT ("Step: %vRunInStop Run-In Initiated, Setting LPC Bleed > 25% Stroke and HPC SVS ON, CIT %vCITDegF DegF.")
#elseif ((RunInStage = 15) & (StageTmr > 20.0))
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 20)
+0 SET RunInStage 23
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 23)
**** 2 Accel 30 sec TLA 10.35 N1C2 5000 ******
+0 SET RunInStage 25
+0 SET RunInStep 2
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 25)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 30)
+0 SET RunInStage 33
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 33)
**** 3 Decel 30 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 35
+0 SET RunInStep 3
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 35)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 40)
+0 SET RunInStage 43
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 43)
**** 4 Hold 180 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 45
+0 SET RunInStep 4
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 45)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 50)
+0 SET RunInStage 53
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 53)
**** 5 Accel 40 sec TLA 15.49 N1C2 6000 ******
+0 SET RunInStage 55
+0 SET RunInStep 5
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 55)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 60)
+0 SET RunInStage 63
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 63)
**** 6 Decel 40 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 65
+0 SET RunInStep 6
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 65)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 70)
+0 SET RunInStage 73
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 73)
**** 7 Hold 180 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 75
+0 SET RunInStep 7
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 75)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 80)
+0 SET RunInStage 83
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 83)
**** 8 Accel 50 sec TLA 21.68 N1C2 7000 ******
+0 SET RunInStage 85
+0 SET RunInStep 8
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 85)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 90)
+0 SET RunInStage 93
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 93)
**** 9 Decel 30 sec TLA 6.43 N1C2 4000 ******
+0 SET RunInStage 95
+0 SET RunInStep 9
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 95)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 100)
+0 SET RunInStage 103
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 103)
**** 10 Hold 180 sec TLA 6.43 N1C2 4000 ******
+0 SET RunInStage 105
+0 SET RunInStep 10
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 105)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 110)
+0 SET RunInStage 113
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 113)
**** 11 Accel 40 sec TLA 28.83 N1C2 8000 ******
+0 SET RunInStage 115
+0 SET RunInStep 11
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 115)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 120)
+0 SET RunInStage 123
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 123)
**** 12 Decel 40 sec TLA 6.43 N1C2 4000 ******
+0 SET RunInStage 125
+0 SET RunInStep 12
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 125)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 130)
+0 SET RunInStage 133
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 133)
**** 13 Hold 180 sec TLA 6.43 N1C2 4000 ******
+0 SET RunInStage 135
+0 SET RunInStep 13
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 135)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 140)
+0 SET RunInStage 143
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 143)
**** 14 Accel 50 sec TLA 6.43>38.74 N1C2 9000 ******
+0 SET RunInStage 145
+0 SET RunInStep 14
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 145)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 150)
+0 SET RunInStage 153
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 153)
**** 15 Decel 50 sec TLA 38.74>6.43 N1C2 4000 ******
+0 SET RunInStage 155
+0 SET RunInStep 15
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 155)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 160)
+0 SET RunInStage 163
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 163)
**** 16 Hold 180 sec TLA 6.43 N1C2 4000 ******
+0 SET RunInStage 165
+0 SET RunInStep 16
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 165)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 170)
+0 SET RunInStage 173
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 173)
**** 17 Accel 56 sec TLA 6.43>46.00 N1C2 9625 ******
+0 SET RunInStage 175
+0 SET RunInStep 17
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 175)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 180)
+0 SET RunInStage 183
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 183)
**** 18 Decel 18 sec TLA 46.0>0.00 N1C2 2045 ******
+0 SET RunInStage 185
+0 SET RunInStep 18
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 185)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 190)
+0 SET RunInStage 193
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 193)
**** 19 Hold 10 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 195
+0 SET RunInStep 19
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 195)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 200)
+0 SET RunInStage 203
+0 EXECUTE StageClear_ATP
#elseif ((RunInStage = 203) & OverRideSVScd_F)
**** 20 Hold 170 Sec TLA 0.00 N1C2 2045 ******
**** CIT < 65 DegF...
+0 SET RunInStage 205
+0 SET GoToHold_F ON
+0 SET RunInStep 20
+0 EXECUTE SetTargs_ATP
#elseif ((RunInStage = 203) & ~OverRideSVScd_F)
**** 20 Hold 170 Sec TLA 0.00 N1C2 2045 ******
**** CIT > 65 DegF...
+0 SET RunInStage 205
+0 SET GoToHold_F ON
+0 SET OverRideSVScd_F OFF
+0 SET OverRide25Bld_F OFF
+0 SET RunInStep 20
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 205)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 210)
+0 SET RunInStage 213
+0 EXECUTE StageClear_ATP
#elseif ((RunInStage = 213) & ~OverRideSVScd_F)
**** CIT > 65 DegF discontinue Test here...
**** GoTo the End ******
+0 SET RunInStage 365
#elseif ((RunInStage = 213) & OverRideSVScd_F)
**** CIT < 65 DegF must continue with the following Test...
**** 21 Accel 80 sec TLA 0.0>46.00 (Band A) N1C2 9625 ******
**** 7.3.1b CD Rub-In Vib Survey ******
+0 SET RunInStage 215
+0 SET RunInStep 21
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 215)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 220)
+0 SET RunInStage 223
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 223)
**** 22 Hold 90 sec TLA 46.00 N1C2 9625 ******
+0 SET RunInStage 225
+0 SET RunInStep 22
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 225)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 230)
+0 SET RunInStage 233
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 233)
**** 23 Decel 80 sec TLA 46.0>0.00 N1C2 2045 ******
+0 SET RunInStage 235
+0 SET RunInStep 23
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 235)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 240)
+0 SET RunInStage 243
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 243)
**** 24 Hold 180 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 245
+0 SET RunInStep 24
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 245)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 250)
+0 SET RunInStage 253
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 253)
**** 25 Hold 18 sec TLA 0.00 N1C2 2925 ******
**** 7.3.1b CD Rub-In Transient Perf ******
**** Approach Idle *****
+0 SET RunInStage 255
+0 SET RunInStep 25
+0 SET ECM_IdleCtrl_TB ON
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 255)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 260)
+0 SET RunInStage 263
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 263)
**** 26 Hold 180 sec TLA 0.00 N1C2 2925 ******
+0 SET RunInStage 265
+0 SET RunInStep 26
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 265)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 270)
+0 SET RunInStage 273
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 273)
**** 27 Accel 1 sec TLA 0.0>46.00 N1C2 9625 ******
**** 7.3.1b CD Rub-In Snap Accel ******
+0 SET RunInStage 275
+0 SET RunInStep 27
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 275)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 280)
+0 SET RunInStage 283
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 283)
**** 28 Hold 30 sec TLA 46.00 N1C2 9625 ******
+0 SET RunInStage 285
+0 SET RunInStep 28
+0 SET ECM_IdleCtrl_TB OFF
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 285)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 290)
+0 SET RunInStage 293
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 293)
**** 29 Decel 1 sec TLA 46.0>0.00 N1C2 2045 ******
**** 7.3.1b CD Rub-In Snap Decel ******
+0 SET RunInStage 295
+0 SET RunInStep 29
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 295)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 300)
+0 SET RunInStage 303
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 303)
**** 30 Hold 840 sec TLA 0.00 N1C2 2045 ******
**** 7.3.1b CD Rub-In Shaped Accel ******
+0 SET RunInStage 305
+0 SET RunInStep 30
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 305)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 310)
+0 SET RunInStage 313
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 313)
**** 31 Accel 10 sec TLA 0.0>33.58 N1C2 8500 ******
+0 SET RunInStage 315
+0 SET RunInStep 31
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 315)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 320)
+0 SET RunInStage 323
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 323)
**** 32 Accel 11 sec TLA 33.58>46.00 N1C2 9625 ******
+0 SET RunInStage 325
+0 SET RunInStep 32
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 325)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 330)
+0 SET RunInStage 333
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 333)
**** 33 Decel 18 sec TLA 46.0>0.00 N1C2 2045 ******
+0 SET RunInStage 335
+0 SET RunInStep 33
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 335)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 340)
+0 SET RunInStage 343
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 343)
**** 34 Hold 10 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 345
+0 SET RunInStep 34
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 345)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 350)
+0 SET RunInStage 353
+0 EXECUTE StageClear_ATP
#elseif (RunInStage = 353)
**** 35 Hold 170 sec TLA 0.00 N1C2 2045 ******
+0 SET RunInStage 355
+0 SET RunInStep 35
+0 SET OverRideSVScd_F OFF
+0 SET OverRide25Bld_F OFF
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (RunInStage = 355)
+0 EXECUTE RunInADH_ATP
#elseif (RunInStage = 360)
+0 SET RunInStage 365
+0 EXECUTE StageClear_ATP
#elseif ((RunInStage = 365) & (N1S > 2250.0))
+0 SET RunInStage 370
+0 SET RunInStageTxt concat (StepTxt "Engine Run-In Complete, waiting for N1 < 2250 RPM Idle...")
#elseif (((RunInStage = 365) | (RunInStage = 370)) & (N1S < 2250.0))
+0 SET RunInStage 375
+0 SET OverRideSVScd_F OFF
+0 SET OverRide25Bld_F OFF
#elseif ((RunInStage = 375) & RunInT2DiffLim_F & CITLT65_F)
+0 SET RunInStage 380
+0 SET RunInStageTxt concat (StepTxt "Engine Run-In Complete, ERROR T2 Diff of ")
+0 SET RunInStageTxt concat (RunInStageTxt RunInT2Diff)
+0 SET RunInStageTxt concat (RunInStageTxt " is > ")
+0 SET RunInStageTxt concat (RunInStageTxt RunInT2DiffLim)
+0 SET RunInStageTxt concat (RunInStageTxt " DegF Limit. Check Manual...")
+0 EVENT ("Engine Run-In Complete, ERROR, T2 Diff of %vRunInT2Diff is > %vRunInT2DiffLim DegF Limit, CIT %vCITDegF DegF...")
#elseif ((RunInStage = 375) & ~RunInT2DiffLim_F & CITLT65_F)
+0 SET RunInStage 380
+0 SET RunInStageTxt concat (StepTxt "Engine Run-In Complete, Continue with next Test...")
+0 EVENT ("Engine Run-In Complete, Continue, T2 Diff of %vRunInT2Diff < %vRunInT2DiffLim DegF, CIT %vCITDegF DegF...")
#elseif ((RunInStage = 375) & CITGT65_F)
+0 SET RunInStage 380
+0 SET RunInStageTxt concat (StepTxt "Engine Run-In Complete, Continue with next Test...")
+0 EVENT ("Engine Run-In Complete, Continue, CIT %vCITDegF DegF...")
#elseif (RunInStage = 380)
+0 SET RunInStage 385
+0 SET StageTmrLim 10
+0 SET StageTmr_F ON
#elseif ((RunInStage = 385) & StageTmrLim_F)
+0 SET RunInStage 390
+0 SET RunInState 5
+0 SET AutoThrottle_F OFF
+0 SET ArmRunInHPC_TB OFF
+0 SET RunInHPC_TS OFF
+0 EXECUTE StageClear_ATP
+0 SET TestCompHPCRunIn_F ON
#endif
#if (inrange (10 RunInStage 350) & CITLT65_F)
+0 SET RunInT2Diff (RunInT2Start - CITDegF)
+0 SET RunInT2Diff abs(RunInT2Diff)
+0 SET RunInT2DiffLim_F (RunInT2Diff > RunInT2DiffLim)
#endif
$END-PHASE
**********

