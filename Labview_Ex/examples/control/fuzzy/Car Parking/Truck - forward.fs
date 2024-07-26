      vehicle-position           @$              @$            left                    ?�      @       �         left-center     @      @      @       3 f       center     @      @      @         �       right-center     @      @      @       �3�       right    @      @"      @$      @$        ff       vehicle-orientation   �V�     @p�     �V�     @p�           	left-down    �V�     �V�     �F�     @4      �         left     �4     @4     @Q�      3 f       left-up     @F�     @Q�     @V�      �3�       up     @R�     @V�     @Z?�����   �       right-up     @V�     @[�     @`�      �3        right     @[�     @d      @i        3        
right-down    @d      @l      @p�     @p�       ff          steering-angle   �>      @>      �>      @>            NegBig     �>      �>      �.       �         NegMed     �>      �.      ������� 3 f       NegSmall     �.      �������         �3�       Zero     �������        @        �       PosSmall             @     @.       �3        PosMed     @     @.      @>        3        PosBig     @.      @>      @>        ff       #                                      ?�                                           ?�                                           ?�                                           ?�                                           ?�                                           ?�                                            ?�                                           ?�                                          ?�                                          ?�                                          ?�                                          ?�                                          ?�                                          ?�                                           ?�                                          ?�                                          ?�                                          ?�                                          ?�                                          ?�                                          ?�                                           ?�                                          ?�                                          ?�                                          ?�                                          ?�                                           ?�                                           ?�                                           ?�                                          ?�                                          ?�                                          ?�                                          ?�                                           ?�                                           ?�          �Dual input Fuzzy Controller that is used to automate the maneuvering process leading a truck from an arbitrary start position in backward direction to a loading ramp. The Truck is supposed to be run at constant low speed. 

The maneuvering algorithm is represented by an appropriate rule base (knowledge basis).  

The current maneuvering situation is at least represented by the two linguistic input variables "vehicle-position" towards the loading ramp position and "vehicle-orientation".

The controller output variable "steering-angle" serves as process command variable. 

This Fuzzy Controller is responsible for foreward maneuvering operations necessary to bring the vehicle in a good start position when backward operation fails to hit the ramp..     