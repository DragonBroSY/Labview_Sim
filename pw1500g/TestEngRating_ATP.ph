$PHASE TestEngRating_ATP length=-1       level=0 controlrelay=None common=0
**** Test data from open questions...
**** Moved from configini.cal. DJR 05/17/24...
#if PW1519G
+0 SET EngModel concat ("" "PW1519G")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6514")
+0 SET ACTypeTxt concat ("" "CS100")
**** NOTE: ACID = Aircraft Type ID (ACType)...
+0 SET ACID 38
+0 SET DSUBasePN concat ("" "5327258-")
+0 SET MapNetBaseName concat ("" "PW1519G")
+0 SET ACTORat 18875.0
+0 SET GTTORat 19775.0
#elseif PW1521G
+0 SET EngModel concat ("" "PW1521G")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6505")
+0 SET ACTypeTxt concat ("" "CS100")
+0 SET ACID 38
+0 SET DSUBasePN concat ("" "5327259-")
+0 SET MapNetBaseName concat ("" "PW1521G")
+0 SET ACTORat 20975.0
+0 SET GTTORat 21970.0
#elseif PW1524G
+0 SET EngModel concat ("" "PW1524G")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6504")
+0 SET ACTypeTxt concat ("" "CS100")
+0 SET ACID 38
+0 SET DSUBasePN concat ("" "5327260-")
+0 SET MapNetBaseName concat ("" "PW1524G")
+0 SET ACTORat 23300.0
+0 SET GTTORat 24400.0
#elseif PW1525G
****** No LONGER USED Per EA No: EM14CC592-1
+0 SET EngModel concat ("" "PW1525G")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6506")
+0 SET ACTypeTxt concat ("" "A220")
+0 SET DSUBasePN concat ("" "5327257-")
+0 SET ACID 38
+0 SET MapNetBaseName concat ("" "PW1525G")
+0 SET ACTORat 23300.0
+0 SET GTTORat 24400.0
#elseif PW1521GA
+0 SET EngModel concat ("" "PW1521GA")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6507")
+0 SET ACTypeTxt concat ("" "CS100")
+0 SET ACID 38
+0 SET DSUBasePN concat ("" "5327264-")
+0 SET MapNetBaseName concat ("" "PW1521GA")
+0 SET ACTORat 20975.0
+0 SET GTTORat 21970.0
#elseif PW1521G3
+0 SET EngModel concat ("" "PW1521G-3")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6512")
+0 SET ACTypeTxt concat ("" "CS300")
+0 SET ACID 39
+0 SET DSUBasePN concat ("" "5327261-")
+0 SET MapNetBaseName concat ("" "PW1521G-3")
+0 SET ACTORat 20975.0
+0 SET GTTORat 21970.0
#elseif PW1524G3
+0 SET EngModel concat ("" "PW1524G-3")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6511")
+0 SET ACTypeTxt concat ("" "CS300")
+0 SET ACID 39
+0 SET DSUBasePN concat ("" "5327263-")
+0 SET MapNetBaseName concat ("" "PW1524G-3")
+0 SET ACTORat 23300.0
+0 SET GTTORat 24400.0
#elseif PW1525G3
****** No LONGER USED Per EA No: EM14CC592-1
+0 SET EngModel concat ("" "PW1525G-3")
+0 SET ModelSeqNo concat ("" "UNK")
+0 SET EngSpecNo concat ("" "6510")
+0 SET ACTypeTxt concat ("" "A220-300")
+0 SET ACID 39
+0 SET DSUBasePN concat ("" "5327262-")
+0 SET MapNetBaseName concat ("" "PW1525G-3")
+0 SET ACTORat 23300.0
+0 SET GTTORat 24400.0
#else
+0 SET EngModel concat ("" "PW1500-UNK")
#endif
+0 SET TestDSUBasePN concat("" "5327260-")
+0 SET CustDSUDN      concat (TestDSUDN "")
+0 SET CustDSUPN      concat (DSUBasePN CustDSUDN)
+0 SET TestDSUPN      concat (TestDSUBasePN TestDSUDN)
**** For backward compatability...
+0 SET DSUDataPN      concat (TestDSUBasePN TestDSUDN)
+0 SET TestDSUDataPN  concat (TestDSUBasePN TestDSUDN)
$END-PHASE
**********

