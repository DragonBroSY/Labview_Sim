$MSGGROUP "EEC Messages 2xx" 
$MSGBIT OELT
0 msg="L120B11 - OELT NOT Detected"  color=Black 
1 msg="L120B11 - OELT Detected"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT OELTDFLT
0 msg="L120B12 - OELT Status NOT True From Loss of Communication"  color=Black 
1 msg="L120B12 - OELT Status True From Loss of Communication"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT N1MODENUM1
0 msg="L251B11 - N1 Mode Enum NOT 1"  color=Black 
1 msg="L251B11 - N1 Mode Enum 1"  color=Blue  
$END-MSGBIT
$MSGBIT N1MODENUM2
0 msg="L251B12 - N1 Mode Enum NOT 2"  color=Black 
1 msg="L251B12 - N1 Mode Enum 2"  color=Blue  
$END-MSGBIT
$MSGBIT N1MODENUM1
0 msg="L251B13 - N1 Mode Enum NOT 3"  color=Black 
1 msg="L251B13 - N1 Mode Enum 3"  color=Blue  
$END-MSGBIT
$MSGBIT N1MODENUM4
0 msg="L251B14 - N1 Mode Enum NOT 4"  color=Black 
1 msg="L251B14 - N1 Mode Enum 4"  color=Blue  
$END-MSGBIT
$MSGBIT N1MODENUM5
0 msg="L251B15 - N1 Mode Enum NOT 5"  color=Black 
1 msg="L251B15 - N1 Mode Enum 5"  color=Blue  
$END-MSGBIT
$MSGBIT N1MODENUM6
0 msg="L251B16 - N1 Mode Enum NOT 6"  color=Black 
1 msg="L251B16 - N1 Mode Enum 6"  color=Blue  
$END-MSGBIT
$MSGBIT STLIM
0 msg="L270B11 - Stater Duty Cycle OK"  color=Black 
1 msg="L270B11 - Starter Duty Cycle Exceeded"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT ENGRUN
0 msg="L270B12 - Engine Run Switch OFF"  color=Black 
1 msg="L270B12 - Engine Run Switch ON"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT SAVOP
0 msg="L270B13 - Starter Air Valve Position is Not Open"  color=Black 
1 msg="L270B13 - Starter Air Valve Position is Open"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT HPCBVPOS
0 msg="L270B14 - Passive HPC Bleed Valve is Not Open"  color=Black 
1 msg="L270B14 - Passive HPC Bleed Valve is Open"  color=Blue  MSGQ
$END-MSGBIT
$MSGBIT ENGPOS
0 msg="L270B16 - Engine Position Right"  color=Black 
1 msg="L270B16 - Engine Position Left"  color=Blue  MSGQ
$END-MSGBIT
$MSGBIT ENGSS
0 msg="L270B17 - Engine In Transit State"  color=Black 
1 msg="L270B17 - Engine In Steady State"  color=Blue  MSGQ
$END-MSGBIT
$MSGBIT WOW
0 msg="L270B18 - EEC Selected Weight On Wheels is FALSE"  color=Black 
1 msg="L270B18 - EEC Selected Weight On Wheels is TRUE"  color=Blue  MSGQ
$END-MSGBIT
$MSGBIT BLDLEAK
0 msg="L270B19 - No Bleed Leak Suspect"  color=Black 
1 msg="L270B19 - Bleed Leak Suspect"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT TRIVPR
0 msg="L270B20 - T/R Isolation Valve NOT Pressurized"  color=Black 
1 msg="L270B20 - T/R Isolation Valve Pressurized"  color=Blue  
$END-MSGBIT
$MSGBIT LTLCKIL
0 msg="L270B21 - Left T/R Track Lock Indicates NOT Locked"  color=Black 
1 msg="L270B21 - Left T/R Track Lock Indicates Locked"  color=Blue  
$END-MSGBIT
$MSGBIT RTLCKIL
0 msg="A270B22 - Right T/R Track Lock Indicates NOT Locked"  color=Black 
1 msg="A270B22 - Right T/R Track Lock Indicates Locked"  color=Blue  
$END-MSGBIT
$MSGBIT SAVREQ
0 msg="A270B24 - Starter Air Valve Solenoid NOT Commanded ON"  color=Black 
1 msg="A270B24 - Starter Air Valve Solenoid Commanded ON"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT BAVREQ
0 msg="A270B25 - Buffer Air Valve NOT Commanded ON"  color=Black 
1 msg="A270B25 - Buffer Air Valve Commanded ON"  color=Blue  
$END-MSGBIT
$MSGBIT PCEDRCMDOP
0 msg="A270B26 - Pre-Cooler Exit Door Commanded CLOSED"  color=Black 
1 msg="A270B26 - Pre-Cooler Exit Door Commanded OPEN"  color=Blue  
$END-MSGBIT
$MSGBIT DOVREQ
0 msg="A270B28 - Damper Oil Valve NOT REQUEST"  color=Black 
1 msg="A270B28 - Damper Oil Valve REQUEST"  color=Blue  
$END-MSGBIT
$MSGBIT FFMFM
0 msg="A270B29 - Fuel Flow is NOT MFM"  color=Black 
1 msg="A270B29 - Fuel Flow is MFM"  color=Blue  
$END-MSGBIT
$MSGBIT NODISP
0 msg="L271B11 - Dispatch OK"  color=Black 
1 msg="L271B11 - NO-Dispatch"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT DISPSTRM
0 msg="L271B12 - Short-Term Dispatch OK"  color=Black 
1 msg="L271B12 - Short-Term Dispatch"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT DISPLTRM
0 msg="L271B13 - Long-Term Dispatch OK"  color=Black 
1 msg="L271B13 - Long-Term Dispatch"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT RELIGHT
0 msg="L271B14 - NO Automatic Relight"  color=Black 
1 msg="L271B14 - Automatic Relight"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT N2AMID
0 msg="L271B15 - Engine NOT Running"  color=Black  MSGQ
1 msg="L271B15 - Engine Running"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT BLOWOUT
0 msg="L271B16 - Engine NO Flame-Out"  color=Black 
1 msg="L271B16 - Engine Flame-Out"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT LIGHTUP
0 msg="L271B17 - Lightup NOT Detected"  color=Black 
1 msg="L271B17 - Lightup Detected"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT STDWN
0 msg="L271B18 - Normal Engine NOT Shutdown"  color=Black 
1 msg="L271B18 - Normal Engine Shutdown"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT START
0 msg="L271B19 - Start NOT In Progress"  color=Black 
1 msg="L271B19 - Start In Progress"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT IGN1CMD_F
0 msg="L271B20 - Ignition 1 NOT Commanded ON"  color=Black 
1 msg="L271B20 - Ignition 1 Commanded ON"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT IGN2CMD_F
0 msg="L271B21 - Ignition 2 NOT Commanded ON"  color=Black 
1 msg="L271B21 - Ignition 2 Commanded ON"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT NEWSTA
0 msg="L271B22 - NOT New Start Attempt"  color=Black 
1 msg="L271B22 - New Start Attempt"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT HPDREQ
0 msg="L271B23 - Hydraulic Pump Depressurization NOT Commanded"  color=Black 
1 msg="L271B23 - Hydraulic Pump Depressurization Commanded"  color=Blue  
$END-MSGBIT
$MSGBIT WMRENV
0 msg="L271B24 - NOT Windmill Restart Envelope"  color=Black 
1 msg="L271B24 - Windmill Restart Envelope"  color=Blue  
$END-MSGBIT
$MSGBIT ATSRENV
0 msg="L271B25 - NOT ATS Restart Envelope"  color=Black 
1 msg="L271B25 - ATS Restart Envelope"  color=Blue  
$END-MSGBIT
$MSGBIT ACCFOP
0 msg="L271B27 - ACC NOT Failed OPEN"  color=Black 
1 msg="L271B27 - ACC Failed OPEN"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT ACCFCL
0 msg="L271B28 - ACC NOT Failed CLOSED"  color=Black 
1 msg="L271B28 - ACC Failed CLOSED"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT FDVCMD
0 msg="L271B29 - Fuel Divider Valve NOT Commanded ON"  color=Black 
1 msg="L271B29 - Fuel Divider Valve Commanded ON"  color=Blue  
$END-MSGBIT
$MSGBIT POILREDL
0 msg="L272B11 - Engine Oil Pressure Redline OK"  color=Black 
1 msg="L272B11 - Engine Oil Pressure Above Redline Limit"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT POILLO
0 msg="L272B12 - Engine Oil Pressure Below Low Limit OK"  color=Black 
1 msg="L272B12 - Engine Oil Pressure Below Low Limit"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT TOILCLD
0 msg="L272B14 - Engine Oil Temperature Below TO Low Limit OK"  color=Black 
1 msg="L272B14 - Engine Oil Temperature Below TO Low Limit"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT MTRSTR
0 msg="L272B15 - Engine Motor to Start"  color=Black 
1 msg="L272B15 - Engine Motor to Start"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT BROVCK
0 msg="L272B16 - Bowed Rotor NOT OverCrank"  color=Black 
1 msg="L272B16 - Bowed Rotor OverCrank"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT N1VIBA
0 msg="L272B18 - N1 Vibe NOT Above Amber Line"  color=Black 
1 msg="L272B18 - N1 Vibe Above Amber Line"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT N2VIBA
0 msg="L272B20 - N2 Vibe NOT Above Amber Line"  color=Black 
1 msg="L272B20 - N2 Vibe Above Amber Line"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT N1NFVINOP
0 msg="L272B21 - N1/NF Vibe Sensor OK"  color=Black 
1 msg="L272B21 - N1/NF Vibe Sensor INOP"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT OILQLO
0 msg="L272B24 - Engine Oil Level OK"  color=Black 
1 msg="L272B24 - Engine Oil Level Below Limit"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT NFVIBA
0 msg="L272B25 - NF Vibe NOT Above Amber Line"  color=Black 
1 msg="L272B25 - NF Vibe Above Amber Line"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT TRBLKCMD
0 msg="L272B26 - Thrust Reverser Balk NOT Commanded"  color=Black 
1 msg="L272B26 - Thrust Reverser Balk Commanded"  color=Blue 
$END-MSGBIT
$MSGBIT P2T2REQ
0 msg="L272B27 - P2T2 Heater NOT Commanded"  color=Black 
1 msg="L272B27 - P2T2 Heater Commanded"  color=Blue  MSGQ
$END-MSGBIT
$MSGBIT REVSTOW
0 msg="L273B11 - Thrust Reverser NOT Stowed"  color=Black 
1 msg="L273B11 - Thrust Reverser Stowed"  color=Blue  
$END-MSGBIT
$MSGBIT REVTRANS
0 msg="L273B12 - Thrust Reverser NOT In-Transition"  color=Black  
1 msg="L273B12 - Thrust Reverser In-Transition"  color=Blue  
$END-MSGBIT
$MSGBIT REVDEPL
0 msg="L273B13 - Thrust Reverser NOT Deployed"  color=Black  
1 msg="L273B13 - Thrust Reverser Deployed"  color=Blue  
$END-MSGBIT
$MSGBIT TRICVINH
0 msg="L273B14 - Thrust Reverser ICV NOT Inhibited"  color=Black 
1 msg="L273B14 - Thrust Reverser ICV Inhibited"  color=BurntOrange  
$END-MSGBIT
$MSGBIT REVFAIL
0 msg="L273B16 - Thrust Reverser NOT Failed"  color=Black 
1 msg="L273B16 - Thrust Reverser Failed"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT REVFLT
0 msg="L273B17 - Thrust Reverser NO Fault"  color=Black 
1 msg="L273B17 - Thrust Reverser Fault"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT REVID
0 msg="L273B18 - Thrust Reverser NOT Inadvertent Deployment"  color=Black 
1 msg="L273B18 - Thrust Reverser Inadvertent Deployment"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT REVUNLCK
0 msg="L273B19 - Thrust Reverser NOT UnLocked"  color=Black 
1 msg="L273B19 - Thrust Reverser UnLocked"  color=Blue   
$END-MSGBIT
$MSGBIT REVHYDFLT
0 msg="L273B20 - Thrust Reverser Hydraulic Pressure NO Fault"  color=Black 
1 msg="L273B20 - Thrust Reverser Hydraulic Pressure Fault"  color=Blue  
$END-MSGBIT
$MSGBIT TQABLKTF
0 msg="L273B21 - TQA Baulk Sol NO Fault"  color=Black 
1 msg="L273B21 - TQA Baulk Sol Fault"  color=Blue  
$END-MSGBIT
$MSGBIT N1SYNCARM
0 msg="L273B24 - N1 Sync NOT ARMED"  color=Black 
1 msg="L273B24 - N1 Sync ARMED"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT N1SYNCF
0 msg="L273B25 - N1 Sync NOT FAILED"  color=Black 
1 msg="L273B25 - N1 Sync FAILED"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT TLLSDSBLD
0 msg="L273B26 - Thrust Limit Low Speed NOT Disabled"  color=Black 
1 msg="L273B26 - Thrust Limit Low Speed Disabled"  color=BurntOrange  
$END-MSGBIT
$MSGBIT APRARM
0 msg="L273B27 - APR Mode NOT Armed"  color=Black 
1 msg="L273B27 - APR Mode Armed"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT APRACT
0 msg="L273B28 - APR Mode NOT Active"  color=Black 
1 msg="L273B28 - APR Mode Active"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT N1SYNCACT
0 msg="L273B28 - N1 Sync NOT Active"  color=Black 
1 msg="L273B28 - N1 Sync Active"  color=Blue  MSGQ 
$END-MSGBIT
$MSGBIT CAIREQ
0 msg="L274B11 - CAI NOT Requested ON"  color=Black 
1 msg="L274B11 - CAI Requested ON"  color=Blue 
$END-MSGBIT
$MSGBIT CAISWOFF
0 msg="L274B12 - CAI Switch Indicates NOT OFF"  color=Black 
1 msg="L274B12 - CAI Switch Indicates OFF"  color=Blue 
$END-MSGBIT
$MSGBIT CAISWON
0 msg="L274B13 - CAI Switch Indicates NOT ON"  color=Black 
1 msg="L274B13 - CAI Switch Indicates ON"  color=Blue 
$END-MSGBIT
$MSGBIT CAIPOS
0 msg="L274B14 - CAI Valve is NOT OPEN"  color=Black 
1 msg="L274B14 - CAI Valve is OPEN"  color=Blue 
$END-MSGBIT
$MSGBIT ACCFAIL
0 msg="L274B21 - ACC NOT FAILED CLOSED"  color=Black 
1 msg="L274B21 - ACC FAILED CLOSED"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT IGNSCF
0 msg="L274B22 - IGN Single Channel OK"  color=Black 
1 msg="L274B22 - IGN Single Channel FAULT"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT CTRLSRL
0 msg="L274B23 - CTRL SYS Redund NO LOSS"  color=Black 
1 msg="L274B23 - CTRL SYS Redund LOSS"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT HPDSTF
0 msg="L274B24 - HPD Sol NO FAULT"  color=Black 
1 msg="L274B24 - HPD Sol Total FAULT"  color=Blue  
$END-MSGBIT
$MSGBIT STSYSINOP
0 msg="L274B25 - Starter System NOT INOP"  color=Black 
1 msg="L274B25 - Starter System INOP"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT WAIDEB
0 msg="L274B26 - WAI NO Debit"  color=Black 
1 msg="L274B26 - WAI Debit"  color=Blue  
$END-MSGBIT
$MSGBIT CAIDEB
0 msg="L274B27 - CAI NO Debit"  color=Black 
1 msg="L274B27 - CAI Debit"  color=Blue  
$END-MSGBIT
$MSGBIT CAIINHIB
0 msg="L274B28 - Cowl Anti-Ice Thermal NOT Inhibit"  color=Black 
1 msg="L274B28 - Cowl Anti-Ice Thermal Inhibit"  color=Blue  
$END-MSGBIT
$MSGBIT FLEAKDET
0 msg="L274B29 - Fuel Leak NOT Detected"  color=Black 
1 msg="L274B29 - Fuel Leak Detected"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT IGN_TST_STAT
0 msg="L275B13 - Igniter Test NOT Failed"  color=Black 
1 msg="L275B13 - Igniter Test Failed"  color=BurntOrange  MSGQ
$END-MSGBIT
$MSGBIT PCE_TST_STAT
0 msg="L275B14 - PCE Test NOT Failed"  color=Black 
1 msg="L275B14 - PCE Test Failed"  color=BurntOrange  MSGQ
$END-MSGBIT
$MSGBIT HPD_TST_STAT
0 msg="L275B25 - HPD Test NOT Failed"  color=Black 
1 msg="L275B25 - HPD Test Failed"  color=BurntOrange  MSGQ
$END-MSGBIT
$MSGBIT TR_TST_STAT
0 msg="L275B27 - TR Test NOT Failed Due to Balk"  color=Black 
1 msg="L275B27 - TR Test Failed Due to Balk"  color=BurntOrange  MSGQ
$END-MSGBIT
$MSGBIT TST_TIMEOUT
0 msg="L275B28 - Test NOT Timeout"  color=Black 
1 msg="L275B28 - Test Timeout"  color=BurntOrange  MSGQ
$END-MSGBIT
$MSGBIT N1REDL
0 msg="A276B11 - N1 NOT above Redline"  color=Black 
1 msg="A276B11 - N1 above Redline"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT N2REDL
0 msg="A276B13 - N2 NOT above Redline"  color=Black 
1 msg="A276B13 - N2 above Redline"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT ITTREDL
0 msg="A276B15 - ITT NOT above Redline"  color=Black 
1 msg="A276B15 - ITT above Redline"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT ITTAMBL
0 msg="A276B16 - ITT NOT above Amber Line"  color=Black 
1 msg="A276B16 - ITT above Amber Line"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT ENGEXC
0 msg="A276B19 - Engine Limit NOT Exceeded"  color=Black 
1 msg="A276B19 - Engine Limit Exceeded (N1, N2, ITT, TOil"  color=Red  MSGQ 
$END-MSGBIT
$MSGBIT PCESLF
0 msg="A276B20 - PCE Sol NO Fault"  color=Black 
1 msg="A276B20 - PCE Sol Total Fault"  color=Blue  
$END-MSGBIT
$MSGBIT FDVTF
0 msg="A276B21 - FDV NO Fault"  color=Black 
1 msg="A276B21 - FDV Total Fault"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT HTHMND
0 msg="A276B22 - Health Mon NOT Degraded"  color=Black 
1 msg="A276B22 - Health Mon Degraded"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT T3TOTF
0 msg="A276B23 - T3 NO Failure"  color=Black 
1 msg="A276B23 - T3 Total Failure"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT OFDPTF
0 msg="A276B24 - OFDP NO Failure"  color=Black 
1 msg="A276B24 - OFDP Total Failure"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT OLSTF
0 msg="A276B25 - OLS NO Failure"  color=Black 
1 msg="A276B25 - OLS Total Failure"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT FFDPTF
0 msg="A276B26 - FFDP NO Failure"  color=Black 
1 msg="A276B26 - FFDP Total Failure"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT REVREDL
0 msg="A276B27 - Reverser NO Redund Loss"  color=Black 
1 msg="A276B27 - Reverser Redund Loss"  color=BurntOrange  MSGQ 
$END-MSGBIT
$MSGBIT REVINOPI
0 msg="A276B28 - Reverser NO Inop INFO"  color=Black 
1 msg="A276B28 - Reverser Inop INFO"  color=BurntOrange  MSGQ
$END-MSGBIT
$END-MSGGROUP
