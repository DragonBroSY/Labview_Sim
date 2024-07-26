$DISPLAY "Throttle Rig Procedure FHD" background=White loadflag=ctrlFHD_F editres=FHD movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=101 startx=478 starty=13 endx=1222 endy=69
style=3
linewidth=4 linecolor=DarkGray
boxcolor=Charcoal
shading=2
$END-OBJECT
***********
$OBJECT Text font=96 startx=511 starty=23 endx=1192 endy=62
BurntOrange direction=1 alignment=0
"PW1500G RVDT Throttle Rig Procedure"
$END-OBJECT
***********
$OBJECT Text font=100 startx=514 starty=97 endx=1329 endy=787
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
""
""
$END-HELP
$END-DISPLAY

