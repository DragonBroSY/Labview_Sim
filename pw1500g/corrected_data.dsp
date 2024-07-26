$DISPLAY "Corrected Data" background=LightGray loadflag=ctrlMEDRES_F editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Box font=1 startx=2 starty=5 endx=352 endy=847
style=2
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Digital font=100 startx=15 starty=69 endx=339 endy=285
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=2 paramboxcolor=LightGray shading=0
N2I type="FLOAT" width=8 prec=1 label="default" units="default" 
N2S type="FLOAT" width=8 prec=1 label="default" units="default" 
N2C2D type="FLOAT" width=8 prec=1 label="default" units="default" 
BitDummy type="FLOAT" width=0 prec=0 
N1I type="FLOAT" width=8 prec=1 label="default" units="default" 
N1S type="FLOAT" width=8 prec=1 label="default" units="default" 
N1C2D type="FLOAT" width=8 prec=1 label="default" units="default" 
BitDummy type="FLOAT" width=0 prec=0 
EEC_NF type="FLOAT" width=8 prec=1 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=15 starty=386 endx=339 endy=482
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
FnMeasure type="FLOAT" width=8 prec=1 label="FnMeas" units="default" 
FnI type="FLOAT" width=8 prec=1 label="default" units="default" 
FnS type="FLOAT" width=8 prec=1 label="default" units="default" 
FNTR2 type="FLOAT" width=8 prec=1 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=17 starty=570 endx=303 endy=810
labelspace=10 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
dFNTR2_Cell type="FLOAT" width=8 prec=4 label="default" 
dWFPLHCR2_Cell type="FLOAT" width=8 prec=4 label="default" 
dN1C2_Cell type="FLOAT" width=8 prec=4 label="default" 
dN2C2_Cell type="FLOAT" width=8 prec=4 label="default" 
dT25OP25_Cell type="FLOAT" width=8 prec=4 label="default" 
dT3OP3_Cell type="FLOAT" width=8 prec=4 label="default" 
dT45OP45_Cell type="FLOAT" width=8 prec=4 label="default" 
dT49OP49_Cell type="FLOAT" width=8 prec=4 label="default" 
dP25Q2_Cell type="FLOAT" width=8 prec=4 label="default" 
P2QPBar_Cell type="FLOAT" width=8 prec=4 label="default" 
$END-OBJECT
***********
$OBJECT Box font=1 startx=36 starty=511 endx=277 endy=553
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=117 startx=48 starty=518 endx=247 endy=546
Black direction=1 alignment=0
"Facility Modifiers"
$END-OBJECT
***********
$OBJECT Box font=1 startx=100 starty=335 endx=238 endy=377
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=108 starty=15 endx=246 endy=57
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=117 startx=126 starty=342 endx=204 endy=370
Black direction=1 alignment=0
"Thrust"
$END-OBJECT
***********
$OBJECT Text font=117 startx=131 starty=21 endx=212 endy=49
Black direction=1 alignment=0
"Speeds"
$END-OBJECT
***********
$OBJECT Box font=1 startx=358 starty=51 endx=745 endy=849
style=2
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Digital font=100 startx=374 starty=318 endx=717 endy=486
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
EEC_ITT type="FLOAT" width=8 prec=2 label="default" units="default" 
T45F type="FLOAT" width=8 prec=2 label="default" units="default" 
T45OP45 type="FLOAT" width=8 prec=2 label="default" units="default" 
dummy type="FLOAT" width=0 prec=0 
EEC_T5 type="FLOAT" width=8 prec=2 label="T5" units="default" 
T49F type="FLOAT" width=8 prec=2 label="default" units="default" 
T49OP49 type="FLOAT" width=8 prec=2 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=374 starty=566 endx=698 endy=830
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
VibFAmp type="FLOAT" width=8 prec=2 label="default" units="default" 
VibFPhs type="FLOAT" width=8 prec=2 label="default" units="default" 
VibFNF type="FLOAT" width=8 prec=2 label="default" units="default" 
VibFN1 type="FLOAT" width=8 prec=2 label="default" units="default" 
VibFN2 type="FLOAT" width=8 prec=2 label="default" units="default" 
BitDummy type="FLOAT" width=0 prec=0 
VibRAmp type="FLOAT" width=8 prec=2 label="default" units="default" 
VibRPhs type="FLOAT" width=8 prec=2 label="default" units="default" 
VibRNF type="FLOAT" width=8 prec=2 label="default" units="default" 
VibRN1 type="FLOAT" width=8 prec=2 label="default" units="default" 
VibRN2 type="FLOAT" width=8 prec=2 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=100 startx=378 starty=113 endx=721 endy=233
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=LightGray shading=0
FSG type="FLOAT" width=8 prec=4 label="default" units="default" 
WfGPM type="FLOAT" width=8 prec=3 label="default" units="default" 
WfS type="FLOAT" width=8 prec=3 label="default" units="default" 
WFPLHCR2 type="FLOAT" width=8 prec=3 label="default" units="default" 
TSFCPLHC type="FLOAT" width=8 prec=3 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Box font=1 startx=400 starty=0 endx=710 endy=45
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=104 startx=425 starty=4 endx=693 endy=43
Black direction=1 alignment=0
"Corrected Data "
$END-OBJECT
***********
$OBJECT Box font=1 startx=429 starty=263 endx=657 endy=307
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=429 starty=516 endx=657 endy=560
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=117 startx=437 starty=272 endx=638 endy=300
Black direction=1 alignment=0
"ITT from the EEC"
$END-OBJECT
***********
$OBJECT Text font=117 startx=455 starty=526 endx=623 endy=554
Black direction=1 alignment=0
"Vibration Data"
$END-OBJECT
***********
$OBJECT Box font=1 startx=463 starty=60 endx=601 endy=102
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=117 startx=481 starty=66 endx=591 endy=94
Black direction=1 alignment=0
"Fuel Flow"
$END-OBJECT
***********
$OBJECT Box font=1 startx=753 starty=3 endx=1190 endy=847
style=2
boxcolor=LightGray
shading=2
$END-OBJECT
***********
$OBJECT Digital font=100 startx=800 starty=82 endx=1162 endy=442
labelspace=8 unitspace=1 spacing=1 labelcolor=Black parambox=0 paramboxcolor=Black shading=0
PBarPSIA type="FLOAT" width=8 prec=2 label="default" units="default" 
CITF type="FLOAT" width=8 prec=2 label="default" units="default" 
CITDegC type="FLOAT" width=8 prec=3 label="default" units="default" 
ThetaT2 type="FLOAT" width=8 prec=4 label="default" units="default" 
DeltaP2 type="FLOAT" width=8 prec=4 label="default" units="default" 
RelHum type="FLOAT" width=8 prec=3 label="default" units="default" 
SHum type="FLOAT" width=8 prec=4 label="default" units="default" 
SHum_Grains type="FLOAT" width=8 prec=4 label="default" units="default" 
KHWF type="FLOAT" width=8 prec=3 label="default" units="default" 
KHNL type="FLOAT" width=8 prec=3 label="default" units="default" 
KHNH type="FLOAT" width=8 prec=3 label="default" units="default" 
KHT49 type="FLOAT" width=8 prec=3 label="default" units="default" 
KHT3 type="FLOAT" width=8 prec=3 label="default" units="default" 
KHT25 type="FLOAT" width=8 prec=3 label="default" units="default" 
KHT45 type="FLOAT" width=8 prec=3 label="default" units="default" 
$END-OBJECT
***********
$OBJECT Box font=1 startx=837 starty=518 endx=1079 endy=561
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Box font=1 startx=901 starty=10 endx=1018 endy=52
style=2
boxcolor=DarkGray
shading=-2
$END-OBJECT
***********
$OBJECT Text font=117 startx=916 starty=19 endx=998 endy=47
Black direction=1 alignment=0
"Facility"
$END-OBJECT
***********
$END-DISPLAY

