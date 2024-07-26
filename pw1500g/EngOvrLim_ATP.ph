$PHASE EngOvrLim_ATP length=-1       level=5 controlrelay=None common=1
#if (~EmergIdle_F & N1OvrMx_F)
+0 MESSAGE "N1 Over Max Limit, Emergency Idle Activated." Red
+0 SET OverLim14_O ON
#elseif (~EmergIdle_F & N2OvrMx_F)
+0 MESSAGE "N2 Over Max Limit, Emergency Idle Activated." Red
+0 SET OverLim15_O ON
#elseif (~EmergIdle_F & AOPUndrMn_F)
+0 MESSAGE "Auxiliary Oil Press Under Min Limit, Emergency Idle Activated." Red
+0 SET OverLim15_O ON
#elseif ~EmergIdle_F
+0 MESSAGE "ITT Over Max Limit, Emergency Idle Activated." Red
+0 SET OverLim14_O ON
+0 SET OverLim15_O ON
#endif
#if ~EmergIdle_F
+0 SET EngineOLimits_O ON
+0 SET EmergIdle_F ON
+0 SET OverLim21_O ON
#endif
$END-PHASE
**********

