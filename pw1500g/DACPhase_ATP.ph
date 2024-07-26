$PHASE DACPhase_ATP length=24       level=0
*
* Sample of 3 ramps
*
0 SET TRA_Override 50                          <- Ramps are fast so
*                                              <- increase override limit
0 RAMP EPR_Targ 1.4 1
4 RAMP EPR_Targ 1.15 1
8 RAMP EPR_Targ 1.4 2
12 RAMP EPR_Targ 1.15 2
16 RAMP EPR_Targ 1.4 3
20 RAMP EPR_Targ 1.15 3
END SET TRA_Override 15
END MESSAGE "END of ramp test"
$END-PHASE
**********
