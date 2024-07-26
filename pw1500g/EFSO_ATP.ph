$PHASE EFSO_ATP length=-1       level=5 controlrelay=None common=0
#if ~EmergIdle_F
+0 SET EngineOLimits_O ON
+1 SET ECM_FuelCtrl_TB OFF
+0 MESSAGE "Engine Over Max Start ITT, Fuel Shutoff Activated." Red
+0 SET EmergIdle_F ON
#endif
$END-PHASE
**********

