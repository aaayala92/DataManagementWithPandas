\ Model MachuPichu
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  3177.5 DC[DC_1] + 2050 DC[DC_2] + 8200 DC[DC_3] + 4115 DC[DC_4]
   + 3860 DC[DC_5]
Subject To
 MinimumStorage: 410 DC[DC_1] + 410 DC[DC_2] + 320 DC[DC_3] + 420 DC[DC_4]
   + 380 DC[DC_5] >= 900
 AtLeast2DCs: DC[DC_1] + DC[DC_2] + DC[DC_3] + DC[DC_4] + DC[DC_5] >= 2
 AtMost3DCs: DC[DC_1] + DC[DC_2] + DC[DC_3] + DC[DC_4] + DC[DC_5] <= 3
Bounds
Binaries
 DC[DC_1] DC[DC_2] DC[DC_3] DC[DC_4] DC[DC_5]
End
