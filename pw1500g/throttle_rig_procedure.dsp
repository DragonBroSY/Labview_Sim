$DISPLAY "Throttle Rig Procedure" background=White loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Text font=97 startx=230 starty=75 endx=1094 endy=892
Black direction=1 alignment=0
"1)  On the (Test Cell Console), reset [Emergency Idle]."
""
"2)  On the (ECM) display, Turn [EEC Power] ON."
""
"3)  On the (Control) display, Select [Calibrate Functions] in the lower left corner."
"     Then Select [Power Lever Rig] from the Menu."
"     The (Power Lever Rig) dialog display will appear in the 4th quad."
""
"4)  On the (Test Cell Console), set the (Throttle Lever) to the lowest position."
""
"5)  On the (Power Lever Rig) dialog, click the [Idle Position] button."
"     This will set [Reverse] at -33.5 degs TRA."
""
"6)  Advance the (Throttle Lever) to the (Takeoff Position)."
""
"7)  On the (Power Lever Rig) dialog, click the [Takeoff Position] button."
"    This will set [Takeoff] at 33.5 degs TRA."
""
"8)  On the (Power Lever Rig) dialog, Click the [Rig Complete] button."
""
"9)  Finally, set your [Idle Stop] to -14.0 Degs TRA."
""
"10) Check the TRA Rig on the (Critical) Display."
"          Takeoff:  33.5 Degs TRA    |    47.5 Degs TLA"
"             Idle: -14.0 Degs TRA    |     0.0 Degs TLA"
"     Full Reverse: -33.5 Degs TRA    |   -19.5 Degs TLA"
""
"11) Return the (PLA Throttle) Power Lever to the Idle stop."
""
"Note: Open HELP and select Print for a Hard Copy of this procedure."
$END-OBJECT
***********
$OBJECT Box font=101 startx=260 starty=10 endx=954 endy=66
style=2
boxcolor=LightGray
shading=3
$END-OBJECT
***********
$OBJECT Text font=104 startx=283 starty=20 endx=867 endy=59
Black direction=1 alignment=0
"PW1500G RVDT Throttle Rig Procedure"
$END-OBJECT
***********
$HELP
"---------------------- PW1500G RVDT Throttle Rig Procedure ------------------------"
""
"1)  Open Engine Test, then on the (Test Cell Console), reset [Emergency Idle]."
""
"2)  On the (ECM) display, Turn [EEC Power] ON."
""
"3)  On the (Control) display, Select [Calibrate Functions] in the lower left corner."
"     Then Select [Power Lever Rig] from the Menu."
"     The (Power Lever Rig) dialog display will appear in the 4th quad."
""
"4)  On the (Test Cell Console), set the (Throttle Lever) to the lowest position."
""
"5)  On the (Power Lever Rig) dialog, click the [Idle Position] button."
"     This will set [Reverse] at -33.5 degs TRA."
""
"6)  Advance the (Throttle Lever) to the (Takeoff Position)."
""
"7)  On the (Power Lever Rig) dialog, click the [Takeoff Position] button."
"     This will set [Takeoff] at 33.5 degs TRA."
""
"8)  On the (Power Lever Rig) dialog, Click the [Rig Complete] button."
""
"9)  Finally, set your [Idle Stop] to a value of -14.0 Degs TRA."
""
"10) Check the TRA Rig on the (Critical) Display."
"          Takeoff:  33.5 Degs TRA    |    47.5 Degs TLA"
"             Idle: -14.0 Degs TRA    |     0.0 Degs TLA"
"     Full Reverse: -33.5 Degs TRA    |   -19.5 Degs TLA"
""
""
"11) Return the (PLA Throttle) Power Lever to the Idle stop."
"------------------------------------------------------------------------------------"
""
""
""
""
$END-HELP
$END-DISPLAY

