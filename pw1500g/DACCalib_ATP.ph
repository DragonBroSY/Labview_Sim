$PHASE DACCalib_ATP length=40       level=0 controlrelay=None common=0
#if EngineRunning
+0 MESSAGE "Can't Calibrate with Engine Running..."
+0 EXIT
#endif
0 MESSAGE "Starting DAC Calibrate"
0 SUSPEND "Place Power Lever at input of 2.5 volts" "Continue" "Cancel"
#if (~OpResponse)
+0 EXIT
#endif
0 SET CalibratingDAC_F ON
1 SET PLA_Command (PLA_Handle * -1.0)
3 MESSAGE "Setting AutoPLEnable_O ON..."
4 SET AutoPLEnable_O ON
5 MESSAGE "Ramping PLA_Command -0.5 2 sec..."
6 RAMP PLA_Command -0.5 4
12 RAMP PLA_Command -1.5 4
17 SET PLA1 PLA_Handle
18 RAMP PLA_Command -2.5 4
22 SET PLA3 PLA_Handle
23 RAMP PLA_Command -3.5 2
26 RAMP PLA_Command -2.5 2
29 SET PLA4 PLA_Handle
30 RAMP PLA_Command -1.5 4
36 SET PLA2 PLA_Handle
37 SET AutoPLEnable_O OFF
*38 SET CalibratingDAC ON
39 SET PLA_Command 0.0
END MESSAGE "DAC Calibrate Complete"
$END-PHASE
**********

