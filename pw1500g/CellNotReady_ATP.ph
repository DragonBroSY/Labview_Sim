$PHASE CellNotReady_ATP length=-1       level=5 controlrelay=None common=0
#if ~EmergIdle_F
+0 SET EngineOLimits_O ON
+0 MESSAGE "Cell Not Ready, Emergency Idle Activated." Red
+0 SET EmergIdle_F ON
#endif
$END-PHASE
**********

