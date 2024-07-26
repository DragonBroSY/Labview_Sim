$PHASE mldstart_ATP length=-1       level=0 controlrelay=None common=0
*** ChannelMask = Record Channel 0 = 1, 1 = 2, 0&1 = 3, 2 = 4, 3 = 8, 2 & 3 = 12
+0 MESSAGE "STARTING MLD"
+0 SET datapoint (datapoint + 1)
+0 VXICOMMAND VXINAME 256 MLDSTART %vchannelmask %vdatapoint %vSerialNum
*+0 VXICOMMAND VXINAME 256 MLDSTART 12 2 770528
+0 SET MLD_Recording_F ON
+0 EVENT ("MLD Recording (Started)")
$END-PHASE
**********

