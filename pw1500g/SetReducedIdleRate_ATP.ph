$PHASE SetReducedIdleRate_ATP length=-1       level=0 controlrelay=None common=0
#if (LPStabilityTest_RB = 0)
**** Reduced Idle Rate OFF ****
+0 SET LoPwrStabTst1_F OFF
+0 SET LoPwrStabTst2_F OFF
+0 SET LoPwrStabTst3_F OFF
#elseif (LPStabilityTest_RB = 1)
**** Reduced Idle Rate Baseline ****
+0 SET LoPwrStabTst1_F ON
+0 SET LoPwrStabTst2_F OFF
+0 SET LoPwrStabTst3_F OFF
#elseif (LPStabilityTest_RB = 560)
**** Reduced Idle Rate 560 N2DOT RPM ****
+0 SET LoPwrStabTst1_F OFF
+0 SET LoPwrStabTst2_F ON
+0 SET LoPwrStabTst3_F OFF
#elseif (LPStabilityTest_RB = 680)
**** Reduced Idle Rate 680 N2DOT RPM ****
+0 SET LoPwrStabTst1_F ON
+0 SET LoPwrStabTst2_F ON
+0 SET LoPwrStabTst3_F OFF
#elseif (LPStabilityTest_RB = 800)
**** Reduced Idle Rate 800 N2DOT RPM ****
+0 SET LoPwrStabTst1_F OFF
+0 SET LoPwrStabTst2_F OFF
+0 SET LoPwrStabTst3_F ON
#elseif (LPStabilityTest_RB = 920)
**** Reduced Idle Rate 920 N2DOT RPM ****
+0 SET LoPwrStabTst1_F ON
+0 SET LoPwrStabTst2_F OFF
+0 SET LoPwrStabTst3_F ON
#elseif (LPStabilityTest_RB = 1040)
**** Reduced Idle Rate 1040 N2DOT RPM ****
+0 SET LoPwrStabTst1_F OFF
+0 SET LoPwrStabTst2_F ON
+0 SET LoPwrStabTst3_F ON
#else
**** Reduced Idle Rate OFF ****
+0 SET LoPwrStabTst1_F OFF
+0 SET LoPwrStabTst2_F OFF
+0 SET LoPwrStabTst3_F OFF
#endif
+0 SET LastLPStability_RB LPStabilityTest_RB
$END-PHASE
**********

