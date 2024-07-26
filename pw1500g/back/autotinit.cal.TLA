$GROUP autotinit when=4
#C EPRGroundIdle:	1.1
#C EPRRedline:	1.5
EPR:Ratio	0.9
N1GIdle:%	25.0
N1Redline:%	104.0
#C * EPR/N1/PLA_Target's used for All Manual AutoThrottle Control.
EPR_Target:	0.0
N1_Target:%	0.0
TLA_Cmd:Deg	0.0
EPRControlMode:	1
N1ControlMode:	2
TLAControlMode:	3
ControlMode:	3
LastControlMode:	3
LastAUTOPLReq:		OFF
AutoPLEnable_O:		OFF
EPRControl_TB:		OFF
N1Control_TB:		OFF
TLAControl_TB:		ON
AutoThrottle_F:		OFF
AutoThrottleEngaged:	OFF
TLA_Diff_Limit:		5.0
TLAOverRideLim:		5.0
TLAOverRide_F:		OFF
TLAOverRideTmr:Sec	0.0
TLA_Diff_Msg:		OFF
OperatorOverride:	OFF
BadTLAMsg:		OFF
BadControlMode:		OFF
BadOperatingPoint:	OFF
EidleStillSet:		OFF
PLA_DAC_Tmr:		0.0
PLA_DAC_Tmr_F:		OFF
RampTmr:		0.0
RampTmr_F:		OFF
AutoTSET_F:		OFF
RestartAuto_F:		OFF
AutoTRequest_F:		OFF
TrimPlus_t:		0.0
TrimMinus_t:		0.0
Trim_Value:%		0.0
DACSlope:	1.0 
DACOffset:      0.0
FineSpeed:      0.0333
SlowSpeed:      0.3333
MedSpeed:       0.6666
FastSpeed:      5.0
TLA_SpeedCtrl_RB:	0
Trim_Inc:	FineSpeed
PLA1            0.0
PLA2            0.0
PLA3            0.0
PLA4            0.0
PLAHigh         0.0
PLALow          0.0
CalibratingDAC	OFF
IncreaseTLA_F:	OFF
DecreaseTLA_F:	OFF
TLAMxPwrStopSet_F:	OFF
TLAMxPwrStop:Deg	0.0
TLAMxPwrStopMx:Deg	0.0
TLAMxPwrStopMn:Deg	0.0
TLAMnIdleStopSet_F:	OFF
TLAMnIdleStop:Deg	0.0
TLAMnIdleStopMx:Deg	0.0
TLAMnIdleStopMn:Deg	0.0
#C ***********************************************************************
#C * The following lookups the Min and Max TLA Limits and sends them to the
#C * arinc system at startup.
#C * Set Here Based on Throttle Rig Procedures...
#C ***********************************************************************
TLA_CmdMx:Deg		0.0
TLA_CmdMn:Deg		0.0
TLA_CmdRev:Deg		0.0
#C dummy:      setvxivalue("TLA_Unique_MAX", TLA_CmdMx, "SHMEM_arinc")
#C dummy:      setvxivalue("TLA_Unique_MIN", TLA_CmdMn, "SHMEM_arinc")
$END-GROUP

