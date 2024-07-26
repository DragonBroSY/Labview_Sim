$PHASE WSLookup_ATP length=-1       level=0 controlrelay=None common=0
*** Lookup the Workscope Level Values...
*** Input string parameter WSLookup
*** Output Value parameter WSLookupVal
#if compare (WSLookup, "Level 0 (L0)")
+0 SET WSLookupStr concat ("" "0")
+0 SET WSLookupVal 0.0
#elseif compare (WSLookup, "Level 1 (L1)")
+0 SET WSLookupStr concat ("" "1.0")
+0 SET WSLookupVal 1.0
#elseif compare (WSLookup, "Level 1.3 (L1.3)")
+0 SET WSLookupStr concat ("" "1.3")
+0 SET WSLookupVal 1.3
#elseif compare (WSLookup, "Level 1.9 (L1.9)")
+0 SET WSLookupStr concat ("" "1.9")
+0 SET WSLookupVal 1.9
#elseif compare (WSLookup, "Level 2.3 (L2.3)")
+0 SET WSLookupStr concat ("" "2.3")
+0 SET WSLookupVal 2.3
#elseif compare (WSLookup, "Level 2.9 (L2.9)")
+0 SET WSLookupStr concat ("" "2.9")
+0 SET WSLookupVal 2.9
#elseif compare (WSLookup, "Level 3 (L3)")
+0 SET WSLookupStr concat ("" "3.0")
+0 SET WSLookupVal 3.0
#else
+0 SET WSLookupStr concat ("" "0")
+0 SET WSLookupVal 0.0
#endif
$END-PHASE
**********

