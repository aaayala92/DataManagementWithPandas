\ Model BooBooMagicians
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  EntertainmentPackages[Standard] + 2 EntertainmentPackages[Joyful]
   + 3 EntertainmentPackages[Fabulous]
Subject To
 LaborAvailable: 3 EntertainmentPackages[Standard]
   + 5 EntertainmentPackages[Joyful] + 8 EntertainmentPackages[Fabulous]
   <= 400
 BaloonAvailable: 2 EntertainmentPackages[Standard]
   + 5 EntertainmentPackages[Joyful] + 8 EntertainmentPackages[Fabulous]
   <= 325
Bounds
Generals
 EntertainmentPackages[Standard] EntertainmentPackages[Joyful]
 EntertainmentPackages[Fabulous]
End
