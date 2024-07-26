$PHASE Correlation_ATP length=-1       level=0 controlrelay=None common=0
#if (ECM_IdleCtrl_TB & ~inrange(340 CorrStage 355))
+0 SET ECM_IdleCtrl_TB OFF
#elseif (((CorrStage = 1) | (CorrStage = 3)) & (TRA_Actual <= -12.0))
+0 SET CorrStage 5
+0 SET CorrStep 1
+0 EXECUTE StageClear_ATP
+0 SET StageTmrLim 10
+0 SET StepTxt concat ("Step " CorrStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET CorrStageTxt concat (StepTxt "Correlation Initiated...")
+0 SET StageTmr_F ON
#elseif ((CorrStage = 1) & (TRA_Actual > -12.0))
+0 SET CorrStage 3
+0 EXECUTE StageClear_ATP
+0 SET CorrStep 1
+0 SET StepTxt concat ("Step " CorrStep)
+0 SET StepTxt concat (StepTxt ": ")
+0 SET CorrStageTxt concat (StepTxt "Correlation Initiated, Waiting for Minimum Idle...")
#elseif ((CorrStage = 5) & StageTmrLim_F)
+0 SET CorrStage 7
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 7)
**** Hold at Minumum Idle 900 sec. PP MIdle *****
+0 SET CorrStage 10
+0 SET GoToHold_F ON
+0 SET N1C2TargBand 50
+0 EXECUTE SetTargs_ATP
* +0 SET StageTmr_F ON
* +0 SET AcceptStageTxt concat (StepTxt " Hold at Ground Idle for 900 Seconds...")
#elseif (CorrStage = 10)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 15)
+0 SET CorrStage 17
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 17)
**** Accel to 9205 N1C2D Band C? 50 sec. *****
+0 SET CorrStage 20
+0 SET CorrStep 2
+0 SET N1C2TargBand 15
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 20)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 25)
+0 SET CorrStage 28
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 28)
**** Hold at 9205 N1C2D, 20800-21300 FNTR2 300 sec. PP D1 *****
+0 SET CorrStage 30
+0 SET CorrStep 3
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 30)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 35)
+0 SET CorrStage 38
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 38)
**** Decel to 8865 N1C2D, 18900-19400 FNTR2 20 sec. *****
+0 SET CorrStage 40
+0 SET CorrStep 4
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 40)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 45)
+0 SET CorrStage 48
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 48)
**** Hold at 8865 N1C2D, 18900-19400 FNTR2 300 sec. PP D2 *****
+0 SET CorrStage 50
+0 SET CorrStep 5
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 50)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 55)
+0 SET CorrStage 58
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 58)
*----------------------------------------------------------
************* Start Correlation ***************************
*----------------------------------------------------------
**** Accel to 9625 N1C2D, 23400-23900 FNTR2 30 sec. *****
+0 SET CorrStage 60
+0 SET CorrStep 6
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 60)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 65)
+0 SET CorrStage 68
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 68)
**** Hold at 9625 N1C2D, 23400-23900 FNTR2 420 sec. PP C1 *****
+0 SET CorrStage 70
+0 SET CorrStep 7
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 70)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 75)
+0 SET CorrStage 78
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 78)
**** Decel to 9465 N1C2D, 22350-22850 FNTR2 20 sec. *****
+0 SET CorrStage 80
+0 SET CorrStep 8
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 80)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 85)
+0 SET CorrStage 88
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 88)
**** Hold at 9465 N1C2D, 22350-22850 FNTR2 180 sec. PP C2 *****
+0 SET CorrStage 90
+0 SET CorrStep 9
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 90)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 95)
+0 SET CorrStage 98
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 98)
**** Decel to 9355 N1C2D, 21700-22200 FNTR2 20 sec. *****
+0 SET CorrStage 100
+0 SET CorrStep 10
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 100)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 105)
+0 SET CorrStage 108
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 108)
**** Hold at 9355 N1C2D, 21700-22200 FNTR2 180 sec. PP C3 *****
+0 SET CorrStage 110
+0 SET CorrStep 11
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 110)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 115)
+0 SET CorrStage 118
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 118)
**** Decel to 9205 N1C2D, 20800-21300 FNTR2 20 sec. *****
+0 SET CorrStage 120
+0 SET CorrStep 12
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 120)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 125)
+0 SET CorrStage 128
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 128)
**** Hold at 9205 N1C2D, 20800-21300 FNTR2 180 sec. PP C4 *****
+0 SET CorrStage 130
+0 SET CorrStep 13
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 130)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 135)
+0 SET CorrStage 138
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 138)
**** Decel to 9105 N1C2D, 20250-20750 FNTR2 20 sec. *****
+0 SET CorrStage 140
+0 SET CorrStep 14
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 140)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 145)
+0 SET CorrStage 148
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 148)
**** Hold at 9105 N1C2D, 20250-20750 FNTR2 180 sec. PP C5 *****
+0 SET CorrStage 150
+0 SET CorrStep 15
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 150)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 155)
+0 SET CorrStage 158
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 158)
**** Decel to 8965 N1C2D, 19450-19950 FNTR2 20 sec. *****
+0 SET CorrStage 160
+0 SET CorrStep 16
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 160)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 165)
+0 SET CorrStage 168
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 168)
**** Hold at 8965 N1C2D, 19450-19950 FNTR2 180 sec. PP C6 *****
+0 SET CorrStage 170
+0 SET CorrStep 17
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 170)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 175)
+0 SET CorrStage 178
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 178)
**** Decel to 8865 N1C2D, 18900-19400 FNTR2 20 sec. *****
+0 SET CorrStage 180
+0 SET CorrStep 18
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 180)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 185)
+0 SET CorrStage 188
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 188)
**** Hold at 8865 N1C2D, 18900-19400 FNTR2 180 sec. PP C7 *****
+0 SET CorrStage 190
+0 SET CorrStep 19
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 190)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 195)
+0 SET CorrStage 198
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 198)
**** Decel to 8435 N1C2D, 16700-17200 FNTR2 20 sec. *****
+0 SET CorrStage 200
+0 SET CorrStep 20
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 200)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 205)
+0 SET CorrStage 208
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 208)
**** Hold at 8435 N1C2D, 16700-17200 FNTR2 180 sec. PP C8*****
+0 SET CorrStage 210
+0 SET CorrStep 21
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 210)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 215)
+0 SET CorrStage 218
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 218)
**** Decel to 7920 N1C2D, 14500-15000 FNTR2 20 sec. *****
+0 SET CorrStage 220
+0 SET CorrStep 22
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 220)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 225)
+0 SET CorrStage 228
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 228)
**** Hold at 7920 N1C2D, 14500-15000 FNTR2 180 sec. PP C9 *****
+0 SET CorrStage 230
+0 SET CorrStep 23
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 230)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 235)
+0 SET CorrStage 238
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 238)
**** Decel to 5780 N1C2D, 7200-7700 FNTR2 30 sec. *****
+0 SET CorrStage 240
+0 SET CorrStep 24
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 240)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 245)
+0 SET CorrStage 248
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 248)
**** Hold at 5780 N1C2D, 7200-7700 FNTR2 180 sec. PP C10 *****
+0 SET CorrStage 250
+0 SET CorrStep 25
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 250)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 255)
+0 SET CorrStage 258
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 258)
**** Decel to 3985 N1C2D, 3500-4000 FNTR2 30 sec. *****
+0 SET CorrStage 260
+0 SET CorrStep 26
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 260)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 265)
+0 SET CorrStage 268
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 268)
**** Hold at 3985 N1C2D, 3500-4000 FNTR2 180 sec. PP C11 *****
+0 SET CorrStage 270
+0 SET CorrStep 27
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 270)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 275)
+0 SET CorrStage 278
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 278)
**** Decel to Minimum Idle FNTR2 30 sec. *****
+0 SET CorrStage 280
+0 SET CorrStep 28
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 280)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 285)
+0 SET CorrStage 288
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 288)
**** Hold at Minimum Idle FNTR2 180 sec. PP C12 *****
+0 SET CorrStage 290
+0 SET CorrStep 29
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 290)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 295)
+0 SET CorrStage 298
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 298)
*----------------------------------------------------------
************* END Correlation *****************************
*----------------------------------------------------------
**** Accel to 9205 N1C2D, 20800-21300 FNTR2 50 sec. *****
+0 SET CorrStage 300
+0 SET CorrStep 30
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 300)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 305)
+0 SET CorrStage 308
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 308)
**** Hold at 9205 N1C2D, 20800-21300 FNTR2 300 sec. PP D3 *****
+0 SET CorrStage 310
+0 SET CorrStep 31
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 310)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 315)
+0 SET CorrStage 318
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 318)
**** Decel to 8865 N1C2D, 18900-19400 FNTR2 20 sec. *****
+0 SET CorrStage 320
+0 SET CorrStep 32
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 320)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 325)
+0 SET CorrStage 328
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 328)
**** Hold at 8865 N1C2D, 18900-19400 FNTR2 300 sec. PP D4 *****
+0 SET CorrStage 330
+0 SET CorrStep 33
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 330)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 335)
+0 SET CorrStage 338
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 338)
**** Decel to Approach Idle FNTR2 50 sec. *****
+0 SET CorrStage 340
+0 SET CorrStep 34
+0 SET ECM_IdleCtrl_TB ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 340)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 345)
+0 SET CorrStage 348
+0 EXECUTE StageClear_ATP
#elseif (CorrStage = 348)
**** Hold at Approach Idle FNTR2 1200 sec. PP AIdle *****
+0 SET CorrStage 350
+0 SET CorrStep 35
+0 SET GoToHold_F ON
+0 EXECUTE SetTargs_ATP
#elseif (CorrStage = 350)
+0 EXECUTE CorrADH_ATP
#elseif (CorrStage = 355)
+0 SET CorrStage 358
+0 EXECUTE StageClear_ATP
+0 SET ECM_IdleCtrl_TB OFF
#elseif (CorrStage = 358)
******************************************************************
+0 SET CorrStage 360
+0 SET CorrStageTxt concat (StepTxt "Correlation Complete...")
+0 SET ArmCorrelation_TB OFF
+0 SET Correlation_TS OFF
#endif
$END-PHASE
**********

