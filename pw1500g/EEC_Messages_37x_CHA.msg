$MSGGROUP "EEC Messages 37x CHA" 
$MSGBIT A2_370B12
0 msg="A370B12 - FLEX NOT Selected"  color=Black 
1 msg="A370B12 - FLEX Selected"  color=Blue 
$END-MSGBIT
$MSGBIT TROIDA
0 msg="A370B17 - TLA at IDLE for Start"  color=Black 
1 msg="A370B17 - TLA NOT at IDLE for Start"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT REVIDCMD
0 msg="A370B25 - Idle NOT Commanded due to inadvertent T/R Deploy"  color=Black 
1 msg="A370B25 - Idle Commanded due to inadvertent T/R Deploy"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT A2_370B26
0 msg="A370B26 - DCV Solenoid NOT requested ON"  color=Black 
1 msg="A370B26 - DCV Solenoid requested ON"  color=Blue 
$END-MSGBIT
$MSGBIT A2_370B27
0 msg="A370B27 - ICV Solenoid Low Side NOT Commanded ON"  color=Black 
1 msg="A370B27 - ICV Solenoid Low Side Commanded ON"  color=Blue 
$END-MSGBIT
$MSGBIT A2_371B18
0 msg="A371B18 - Engine Thrust OK"  color=Black 
1 msg="A371B18 - Engine Thrust FAULT"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT ENGFAIL
0 msg="A371B19 - Engine NO FAILURE"  color=Black 
1 msg="A371B19 - Engine FAILURE"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT TRANGL
0 msg="A371B21 - Dual TRA NO Fault"  color=Black 
1 msg="A371B21 - Dual TRA FAULT"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT A2_371B22
0 msg="A371B22 - Local Channel NOT In-Control"  color=Black 
1 msg="A371B22 - Local Channel In-Control"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT ENGOPDEG
0 msg="A371B23 - Engine Operation NOT Degraded"  color=Black 
1 msg="A371B23 - Engine Operation Degraded"  color=BurntOrange  
$END-MSGBIT
$MSGBIT ENGFLT
0 msg="A371B24 - Engine Fault OK"  color=Black 
1 msg="A371B24 - Engine FAULT"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT WFNIR
0 msg="A371B25 - Fuel Flow NOT out of Normal Range"  color=Black 
1 msg="A371B25 - Fuel Flow OUT of Normal Range"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT TLAMF
0 msg="A371B26 - Throttle OK"  color=Black 
1 msg="A371B26 - Throttle FAILED"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT A2_371B27
0 msg="A371B27 - Autothrottle Fine Trim OK"  color=Black 
1 msg="A371B27 - Autothrottle Fine Trim FAULT"  color=Blue 
$END-MSGBIT
$MSGBIT A2_372B11
0 msg="A372B11 - VORV Operation NOT Degraded"  color=Black 
1 msg="A372B11 - VORV Operation Degraded"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT A2_372B12
0 msg="A372B12 - Bearing DAMPER Valve OK"  color=Black 
1 msg="A372B12 - Bearing DAMPER Valve INOP"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT A2_372B14
0 msg="A372B14 - Overspeed Solenoid NOT Requested ON for actual overspeed"  color=Black 
1 msg="A372B14 - Overspeed Solenoid Requested ON for actual overspeed"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT A2_372B16
0 msg="A372B16 - Cross-Channel OK"  color=Black 
1 msg="A372B16 - Cross-Channel FAILED"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT IDLPOS
0 msg="A372B17 - Approach Idle NOT Selected"  color=Black 
1 msg="A372B17 - Approach Idle Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT SIDLPOS
0 msg="A372B18 - Steep Approach Idle NOT Selected"  color=Black 
1 msg="A372B18 - Steep Approach Idle Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT OSSOLS
0 msg="A372B19 - Overspeed Solenoid NOT Powered"  color=Black 
1 msg="A372B19 - Overspeed Solenoid Powered"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT A2_372B22
0 msg="A372B22 - Autothrottle Fine Trim NOT Applied"  color=Black 
1 msg="A372B22 - Autothrottle Fine Trim NOT Applied"  color=Blue 
$END-MSGBIT
$MSGBIT A2_373B11
0 msg="A373B11 - TR NOT Failed Locked, able to Deploy"  color=Black 
1 msg="A373B11 - TR Failed Locked, NOT able to Deploy"  color=BurntOrange 
$END-MSGBIT
$MSGBIT A2_373B12
0 msg="A373B12 - TRA NOT In Reverse In Air"  color=Black 
1 msg="A373B12 - TRA In Reverse In Air"  color=BurntOrange 
$END-MSGBIT
$MSGBIT DPLSIP
0 msg="L373B15 - Depulse NOT in Progress"  color=Black  MSGQ 
1 msg="L373B15 - Depulse in Progress (EEC Reset)"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT ABTSTRT
0 msg="L373B16 - NO Aborted Start"  color=Black 
1 msg="L373B16 - Aborted Start"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT NOLTAR
0 msg="L373B18 - Light During Start OK"  color=Black 
1 msg="L373B18 - NO Light During Start"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT HTSTAR
0 msg="L373B19 - Hot Start NOT Detected"  color=Black 
1 msg="L373B19 - Hot Start Detected"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT HUNG
0 msg="L373B20 - Hung Start NOT Detected"  color=Black 
1 msg="L373B20 - Hung Start Detected"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT TCMDET
0 msg="L373B21 - TCM Event NOT DETECTED"  color=Black 
1 msg="L373B21 - TCM Event DETECTED"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT WETCKA
0 msg="L373B23 - Wet Crank Mode NOT Selected"  color=Black 
1 msg="L373B23 - Wet Crank Mode Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT DRYCKA
0 msg="L373B24 - Dry Crank Mode NOT Selected"  color=Black 
1 msg="L373B24 - Dry Crank Mode Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT PIGSTI
0 msg="L373B25 - Continuous Ignition NOT Selected"  color=Black 
1 msg="L373B25 - Continuous Ignition Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT MCIGNREQ
0 msg="L373B26 - Manual Continuous Ignition NOT Requested"  color=Black 
1 msg="L373B26 - Manual Continuous Ignition Requested"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT AUTSTA
0 msg="L373B28 - AutoStart Mode NOT Selected"  color=Black 
1 msg="L373B28 - AutoStart Mode Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT MANSTA
0 msg="L373B29 - Manual Start Mode NOT Selected"  color=Black 
1 msg="L373B29 - Manual Start Mode Selected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT PBSTLA
0 msg="L374B12 - Engine Stall NOT Detected"  color=Black 
1 msg="L374B12 - Engine Stall Detected"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT RELSLO
0 msg="L374B17 - Low Starter Air Supply NOT Detected"  color=Black 
1 msg="L374B17 - Low Starter Air Supply Detected"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT LOCKN1
0 msg="L374B21 - N1 NOT Locked Rotor"  color=Black 
1 msg="L374B21 - N1 Locked Rotor"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT TFHII
0 msg="L374B23 - Fuel Temperature NOT Over Limit"  color=Black 
1 msg="L374B23 - Fuel Temperature Over Limit"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT TOILHAM
0 msg="L374B25 - Oil Temperature NOT Over Amber Limit"  color=Black 
1 msg="L374B25 - Oil Temperature Over Amber Limit"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT TOILRDL
0 msg="L374B26 - Oil Temperature NOT Over Red Limit"  color=Black 
1 msg="L374B26 - Oil Temperature Over Red Limit"  color=Red  MSGQ 
$END-MSGBIT
$END-MSGGROUP
