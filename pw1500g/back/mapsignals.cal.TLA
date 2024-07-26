$GROUP "mapsignals" 
#C __________
FnI:Lbs	FnMeasure
NFI:RPM	(NFHz * NFTimeBase)
NFPct:%	value2pct (NFI NF100)
N1I:RPM	(N1Hz * N1TimeBase)
N1Pct:%	value2pct (N1I N1100)
N2I:RPM	(N2Hz * N2TimeBase)
N2Pct:%	value2pct (N2I N2100)
PAIRsN2:RPM	N2I
#if	(WfI < 20000)
WfS:PPH	Wf_Avg
#else	
WfS:PPH	WfI
#endif	
OilQtyGal:Gal   (OilQ / 4.0)
TDEWPT:DegF     DewPtF
#C =========================================================
#C Replace OLD TLA_UNIQUE Parameter.
#C Added for Ceres 7. DJR 9/24/12
TLAPriCHResolver:DEGS	(PLA_TLA_mcoeff * PLA_Handle + PLA_TLA_bcoeff)
TLASecCHResolver:DEGS	TLAPriCHResolver
#C =========================================================
#C Calculate VDC value for PLA_Handle Autothrottle...
#C AutoPLA:VDC  (TLA_PLA_mcoeff * RigPLA + TLA_PLA_bcoeff)
#C =========================================================
#C ===== Yanos CRio Throttle Resolver ======================
yaiTLACmd1:Deg  TLAPriCHResolver
#C =========================================================
$END-GROUP
