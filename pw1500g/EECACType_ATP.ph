$PHASE EECACType_ATP length=-1       level=0 controlrelay=None common=0
#if (EECACType = 151)
+0 SET EECACTypeTxt concat ("" "CS100")
#elseif (EECACType = 152)
+0 SET EECACTypeTxt concat ("" "CS300")
#else
+0 SET EECACTypeTxt concat ("" "UNK")
#endif
$END-PHASE
**********

