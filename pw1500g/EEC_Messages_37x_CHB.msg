$MSGGROUP "EEC Messages 37x CHB" 
$MSGBIT B2_370B12
0 msg="B370B12 - FLEX NOT Selected"  color=Black 
1 msg="B370B12 - FLEX Selected"  color=Blue  
$END-MSGBIT
$MSGBIT B2_370B26
0 msg="B370B26 - DCV Solenoid NOT requested ON"  color=Black 
1 msg="B370B26 - DCV Solenoid requested ON"  color=Blue  
$END-MSGBIT
$MSGBIT B2_370B27
0 msg="B370B27 - ICV Solenoid Low Side NOT Commanded ON"  color=Black 
1 msg="B370B27 - ICV Solenoid Low Side Commanded ON"  color=Blue  
$END-MSGBIT
$MSGBIT B2_371B18
0 msg="B371B18 - Engine Thrust OK"  color=Black 
1 msg="B371B18 - Engine Thrust FAULT"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT B2_371B22
0 msg="B371B22 - Local Channel NOT In-Control"  color=Black 
1 msg="B371B22 - Local Channel In-Control"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT B2_371B27
0 msg="B371B27 - Autothrottle Fine Trim OK"  color=Black 
1 msg="B371B27 - Autothrottle Fine Trim FAULT"  color=Blue   
$END-MSGBIT
$MSGBIT B2_372B11
0 msg="B372B11 - VORV Operation NOT Degraded"  color=Black 
1 msg="B372B11 - VORV Operation Degraded"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT B2_372B12
0 msg="B372B12 - Bearing DAMPER Valve OK"  color=Black 
1 msg="B372B12 - Bearing DAMPER Valve INOP"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT B2_372B14
0 msg="B372B14 - Overspeed Solenoid NOT Requested ON for actual overspeed"  color=Black 
1 msg="B372B14 - Overspeed Solenoid Requested ON for actual overspeed"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT B2_372B16
0 msg="B372B16 - Cross-Channel OK"  color=Black 
1 msg="B372B16 - Cross-Channel FAILED"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT B2_372B22
0 msg="B372B22 - Autothrottle Fine Trim NOT Applied"  color=Black 
1 msg="B372B22 - Autothrottle Fine Trim NOT Applied"  color=Blue  
$END-MSGBIT
$MSGBIT B2_373B11
0 msg="B373B11 - TR NOT Failed Locked, able to Deploy"  color=Black 
1 msg="B373B11 - TR Failed Locked, NOT able to Deploy"  color=BurntOrange   
$END-MSGBIT
$MSGBIT B2_373B12
0 msg="B373B12 - TRA NOT In Reverse In Air"  color=Black 
1 msg="B373B12 - TRA In Reverse In Air"  color=BurntOrange   
$END-MSGBIT
$END-MSGGROUP
