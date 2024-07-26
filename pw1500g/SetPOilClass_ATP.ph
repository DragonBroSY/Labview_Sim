$PHASE SetPOilClass_ATP length=-1       level=0 controlrelay=None common=0
+0 SET InstPOilDiam (InstPOilClass_RB / 1000)
#if (InstPOilClass_RB = 10)
+0 SET InstPOilClass 1
#elseif (InstPOilClass_RB = 36)
+0 SET InstPOilClass 2
#elseif (InstPOilClass_RB = 50)
+0 SET InstPOilClass 3
#elseif (InstPOilClass_RB = 64)
+0 SET InstPOilClass 4
#elseif (InstPOilClass_RB = 79)
+0 SET InstPOilClass 5
#elseif (InstPOilClass_RB = 93)
+0 SET InstPOilClass 6
#elseif (InstPOilClass_RB = 107)
+0 SET InstPOilClass 7
#elseif (InstPOilClass_RB = 122)
+0 SET InstPOilClass 8
#elseif (InstPOilClass_RB = 136)
+0 SET InstPOilClass 9
#elseif (InstPOilClass_RB = 150)
+0 SET InstPOilClass 10
#elseif (InstPOilClass_RB = 165)
+0 SET InstPOilClass 11
#elseif (InstPOilClass_RB = 179)
+0 SET InstPOilClass 12
#endif
$END-PHASE
**********

