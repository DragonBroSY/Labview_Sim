$DISPLAY "Emissions Data" background=LightGray editres=MEDRES movegrid=0 resizegrid=0 showgrid=0 gridcolor=Cyan
$STOREDISPLAY Append
$OBJECT Digital font=103 startx=170 starty=200 endx=548 endy=464
labelspace=6 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TotalNOx type="FLOAT" width=8 prec=1 label="NOx" units="default" 
TotalCO type="FLOAT" width=8 prec=1 label="CO" units="default" 
TotalPM type="FLOAT" width=8 prec=1 label="PM" units="default" 
TotalSO2 type="FLOAT" width=8 prec=1 label="SO2" units="default" 
TotalVOC type="FLOAT" width=8 prec=1 label="VOC" units="default" 
TotalTHC type="FLOAT" width=8 prec=1 label="THC" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=280 starty=150 endx=491 endy=177
Blue direction=1 alignment=0
"EMISSIONS DATA"
$END-OBJECT
***********
$OBJECT String font=101 startx=440 starty=629 endx=658 endy=660
SysDate labelspace=5 label="Date" labelcolor=Black stringcolor=Green parambox=2 paramboxcolor=Black shading=-2
$END-OBJECT
***********
$OBJECT Digital font=101 startx=440 starty=675 endx=713 endy=716
labelspace=5 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
SysTime type="HOURS" width=8 prec=0 label="Time" units="default" 
$END-OBJECT
***********
$OBJECT Digital font=103 startx=645 starty=200 endx=1123 endy=288
labelspace=10 unitspace=1 spacing=10 labelcolor=Black parambox=2 paramboxcolor=Black shading=-2
TotalFuelUsed type="FLOAT" width=8 prec=1 label="Total Fuel Used" units="default" 
FuelUsedInTest type="FLOAT" width=8 prec=1 label="Fuel Burned" units="default" 
$END-OBJECT
***********
$OBJECT Text font=101 startx=779 starty=151 endx=921 endy=178
Blue direction=1 alignment=0
"FUEL DATA"
$END-OBJECT
***********
$END-DISPLAY

