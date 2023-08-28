\ Model Frames
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  6 Frames[Homer] + 4 Frames[Turner] + 7 Frames[Sargent]
   - 200 Frames_binary[Homer] - 150 Frames_binary[Turner]
   - 100 Frames_binary[Sargent]
Subject To
 LaborConstr: 3 Frames[Homer] + 2 Frames[Turner] + 6 Frames[Sargent]
   <= 150
 GlassConstr: 4 Frames[Homer] + 3 Frames[Turner] + 4 Frames[Sargent]
   <= 160
 Linking[Homer]: Frames[Homer] - 100 Frames_binary[Homer] <= 0
 Linking[Turner]: Frames[Turner] - 100 Frames_binary[Turner] <= 0
 Linking[Sargent]: Frames[Sargent] - 100 Frames_binary[Sargent] <= 0
Bounds
Binaries
 Frames_binary[Homer] Frames_binary[Turner] Frames_binary[Sargent]
Generals
 Frames[Homer] Frames[Turner] Frames[Sargent]
End
