$PHASE EECEngRating_ATP length=-1       level=0 controlrelay=None common=0
**** CDFRD v2.11.8 page 692 INFO63149 ****
#if (EECACType = 151)
+0 SET EECACTypeTxt concat ("" "CS100")
**** NOTE: ACID = Aircraft Type ID (ACType)...
+0 SET EECACID 38
#elseif (EECACType = 152)
+0 SET EECACTypeTxt concat ("" "CS300")
+0 SET EECACID 39
#else
+0 SET EECACTypeTxt concat ("" "UNK")
#endif
#if (EECEngRat = 0.0)
+0 SET EECEngModel concat ("" "PW1500-UNK")
#elseif ((EECEngRat = 1.0) & (EECACType = 151))
+0 SET EECEngModel concat ("" "PW1519G")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6514")
+0 SET EECDSUBasePN concat ("" "5327258-")
+0 SET EECACTORat 18875.0
+0 SET EECGTTORat 19775.0
#elseif ((EECEngRat = 2.0) & (EECACType = 151))
+0 SET EECEngModel concat ("" "PW1521G")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6505")
+0 SET EECDSUBasePN concat ("" "5327259-")
+0 SET EECACTORat 20975.0
+0 SET EECGTTORat 21970.0
#elseif ((EECEngRat = 3.0) & (EECACType = 151))
+0 SET EECEngModel concat ("" "PW1524G")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6504")
+0 SET EECDSUBasePN concat ("" "5327260-")
+0 SET EECACTORat 23300.0
+0 SET EECGTTORat 24400.0
#elseif ((EECEngRat = 4.0) & (EECACType = 151))
****** No LONGER USED Per EA No: EM14CC592-1
+0 SET EECEngModel concat ("" "PW1525G")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6506")
+0 SET EECDSUBasePN concat ("" "5327257-")
+0 SET EECACTORat 23300.0
+0 SET EECGTTORat 24400.0
#elseif ((EECEngRat = 5.0) & (EECACType = 151))
+0 SET EECEngModel concat ("" "PW1521GA")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6507")
+0 SET EECDSUBasePN concat ("" "5327264-")
+0 SET EECACTORat 20975.0
+0 SET EECGTTORat 21970.0
#elseif ((EECEngRat = 2.0) & (EECACType = 152))
+0 SET EECEngModel concat ("" "PW1521G-3")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6512")
+0 SET EECDSUBasePN concat ("" "5327261-")
+0 SET EECACTORat 20975.0
+0 SET EECGTTORat 21970.0
#elseif ((EECEngRat = 3.0) & (EECACType = 152))
+0 SET EECEngModel concat ("" "PW1524G-3")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6511")
+0 SET EECDSUBasePN concat ("" "5327263-")
+0 SET EECACTORat 23300.0
+0 SET EECGTTORat 24400.0
#elseif ((EECEngRat = 4.0) & (EECACType = 152))
****** No LONGER USED Per EA No: EM14CC592-1
+0 SET EECEngModel concat ("" "PW1525G-3")
+0 SET EECModelSeqNo concat ("" "UNK")
+0 SET EECEngSpecNo concat ("" "6510")
+0 SET EECDSUBasePN concat ("" "5327262-")
+0 SET EECACTORat 23300.0
+0 SET EECGTTORat 24400.0
#else
+0 SET EECEngModel concat ("" "PW1500-UNK")
#endif
$END-PHASE
**********

