$PHASE StopData_ATP length=-1       level=1 controlrelay=None common=0
#if (StoreStopData = 1)
+0 SET StrStopData1 concat (" 1)" StrStopData0)
#elseif (StoreStopData = 2)
+0 SET StrStopData2 concat (" 2)" StrStopData0)
#elseif (StoreStopData = 3)
+0 SET StrStopData3 concat (" 3)" StrStopData0)
#elseif (StoreStopData = 4)
+0 SET StrStopData4 concat (" 4)" StrStopData0)
#elseif (StoreStopData = 5)
+0 SET StrStopData5 concat (" 5)" StrStopData0)
#elseif (StoreStopData = 6)
+0 SET StrStopData6 concat (" 6)" StrStopData0)
#elseif (StoreStopData = 7)
+0 SET StrStopData7 concat (" 7)" StrStopData0)
#elseif (StoreStopData = 8)
+0 SET StrStopData8 concat (" 8)" StrStopData0)
#elseif (StoreStopData = 9)
+0 SET StrStopData9 concat (" 9)" StrStopData0)
#elseif (StoreStopData = 10)
+0 SET StrStopData10 concat ("10)" StrStopData0)
#elseif (StoreStopData = 11)
+0 SET StrStopData11 concat ("11)" StrStopData0)
#elseif (StoreStopData = 12)
+0 SET StrStopData12 concat ("12)" StrStopData0)
#elseif (StoreStopData = 13)
+0 SET StrStopData13 concat ("13)" StrStopData0)
#elseif (StoreStopData = 14)
+0 SET StrStopData14 concat ("14)" StrStopData0)
#elseif (StoreStopData = 15)
+0 SET StrStopData15 concat ("15)" StrStopData0)
#elseif (StoreStopData = 16)
+0 SET StrStopData16 concat ("16)" StrStopData0)
#elseif (StoreStopData = 17)
+0 SET StrStopData17 concat ("17)" StrStopData0)
#elseif (StoreStopData = 18)
+0 SET StrStopData18 concat ("18)" StrStopData0)
#elseif (StoreStopData = 19)
+0 SET StrStopData19 concat ("19)" StrStopData0)
#elseif (StoreStopData = 20)
+0 SET StrStopData20 concat ("20)" StrStopData0)
#elseif (StoreStopData = 21)
+0 SET StrStopData21 concat ("21)" StrStopData0)
#elseif (StoreStopData = 22)
+0 SET StrStopData22 concat ("22)" StrStopData0)
#elseif (StoreStopData = 23)
+0 SET StrStopData23 concat ("23)" StrStopData0)
#elseif (StoreStopData = 24)
+0 SET StrStopData24 concat ("24)" StrStopData0)
#elseif (StoreStopData = 25)
+0 SET StrStopData25 concat ("25)" StrStopData0)
#elseif (StoreStopData > 25)
+0 SET StrStopData1 concat ("" StrStopData2)
+0 SET StrStopData2 concat ("" StrStopData3)
+0 SET StrStopData3 concat ("" StrStopData4)
+0 SET StrStopData4 concat ("" StrStopData5)
+0 SET StrStopData5 concat ("" StrStopData6)
+0 SET StrStopData6 concat ("" StrStopData7)
+0 SET StrStopData7 concat ("" StrStopData8)
+0 SET StrStopData8 concat ("" StrStopData9)
+0 SET StrStopData9 concat ("" StrStopData10)
+0 SET StrStopData10 concat ("" StrStopData11)
+0 SET StrStopData11 concat ("" StrStopData12)
+0 SET StrStopData12 concat ("" StrStopData13)
+0 SET StrStopData13 concat ("" StrStopData14)
+0 SET StrStopData14 concat ("" StrStopData15)
+0 SET StrStopData15 concat ("" StrStopData16)
+0 SET StrStopData16 concat ("" StrStopData17)
+0 SET StrStopData17 concat ("" StrStopData18)
+0 SET StrStopData18 concat ("" StrStopData19)
+0 SET StrStopData19 concat ("" StrStopData20)
+0 SET StrStopData20 concat ("" StrStopData21)
+0 SET StrStopData21 concat ("" StrStopData22)
+0 SET StrStopData22 concat ("" StrStopData23)
+0 SET StrStopData23 concat ("" StrStopData24)
+0 SET StrStopData24 concat ("" StrStopData25)
+0 SET StrStopData25 concat (StoreStopData ")")
+0 SET StrStopData25 concat (StrStopData25 StrStopData0)
#endif
+0 SET StoreStopPrev StoreStopData
$END-PHASE
**********

