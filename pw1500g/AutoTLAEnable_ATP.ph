$PHASE AutoTLAEnable_ATP length=-1       level=4 controlrelay=None common=0
#if (AutoTLAEnable_TS & ~AutoTLAEnable_F & ~AutoPL_I)
+0 MESSAGE "Setting TLA Auto Throttle ON, PLA Handle NOT Active..."
+0 SET TRA_Cmd TRA_Actual
+0 SET AutoTLAEnable_F ON
#elseif (AutoTLAEnable_TS & ~AutoTLAEnable_F & AutoPL_I)
+0 MESSAGE "To Set TLA Auto Throttle ON, Turn OFF the [Auto PLA] Button on the Console..."
+0 SET AutoTLAEnable_TS OFF
#elseif (~AutoTLAEnable_TS & AutoTLAEnable_F & (PLA_Actual_F | (PLAGIdle_F & TRAGIdle_F)) & ~AutoPL_I)
+0 MESSAGE "Setting TLA Auto Throttle OFF, PLA Handle NOW Active..."
+0 SET TRA_Cmd PLA_Actual
+0 SET AutoThrottle_F OFF
+0 SET AutoTLAEnable_F OFF
+0 SET AutoTLAEnable_TS OFF
#elseif (~AutoTLAEnable_TS & AutoTLAEnable_F & ~PLA_Actual_F)
+0 MESSAGE "Move the (Critical Display) [PLA] value to the [TRA ACT] Value (+/- 1 deg)"
+0 MESSAGE "Then Press the [Disable TLA] again..."
+0 SET AutoTLAEnable_TS ON
#endif
$END-PHASE
**********

