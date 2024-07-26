$PHASE StoreVibPackage_ATP length=-1       level=0 controlrelay=None common=0
*#if ~AccelDecelButton
*+1 SYSCOM "/users/bin/OpWarning 'No data in the Plot Buffer...Exiting' &"
*+1 EXIT
*#endif
#if (PlotRec_Mins = PrevPlotRec_Mins)
+1 SYSCOM "/users/bin/OpWarning 'Data in buffer already saved, exiting...' &"
+1 EXIT
#endif
+1 SYSCOM "/users/bin/VibPackageMsg &"
+1 SUSPEND "Are all displays minimized?" "Yes" "No"
#if ~OpResponse
+1 MESSAGE "Please minimize all displays and press again"
+1 EXIT
#endif
+1 SUSPEND "Save all data, Store all Vib displays, Vib peaks and Plot data?" "Yes" "ABORT"
#if ~OpResponse
+1 EXIT
#endif
+1 SUSPEND "As-Received or Final?" "As-Recieved" "Final"
#if opresponse
+1 EXECUTE StoreARVibPeaks_ATP
+1 EXECUTE StoreARDVibPeaks_ATP
+1 SET OpResponse FALSE
#else
+1 EXECUTE StoreVibPeaks_ATP
+1 EXECUTE StoreDVibPeaks_ATP
#endif
+1 SYSCOM "/users/bin/OpInfo 'This will take a minute you will be notified when complete.' &"
+1 DISPLAY "QUAD2" CHANGE "Signal List"
+1 DISPLAY "QUAD3" CHANGE "Signal List"
#if	ctrlFHD_F
+2 DISPLAY NA STORE "Vib Survey FHD"
+2 DISPLAY "QUAD3" CHANGE "Vibration Peaks FHD"
+2 DISPLAY NA STORE "Vibration Peaks FHD"
+1 DISPLAY NA PRINT "Vibration Peaks FHD"
* #else
* +2 DISPLAY NA STORE "Vib Survey"
* +2 DISPLAY "QUAD3" CHANGE "Vibration Peaks"
* +2 DISPLAY NA STORE "Vibration Peaks"
* +1 DISPLAY NA PRINT "Vibration Peaks"
#endif
+1 PLOT HARDCOPY "QUAD1"
+1 PLOT RECORD OFF
+1 PLOT STOREPLOT
+1 SET PrevPlotRec_Mins PlotRec_Mins
+1 SYSCOM "/users/bin/OpInfo 'Vib Package save process complete.' &"
*+1 SYSCOM "/users/bin/OpInfo 'If you have not done so already, click Store Plot Data' &"
+1 MESSAGE "Saving of Data, Displays, and Peaks complete"
+1 MESSAGE "Review your prints and plots"
$END-PHASE
**********

