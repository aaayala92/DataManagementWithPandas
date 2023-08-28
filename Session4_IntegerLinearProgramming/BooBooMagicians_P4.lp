\ Model BooBooMagicians_P4
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  EntertainmentPackages[Standard] + 2 EntertainmentPackages[Joyful]
   + 3 EntertainmentPackages[Fabulous] - 10 PackageFixCost[Standard]
   - 5 PackageFixCost[Joyful] - PackageFixCost[Fabulous]
Subject To
 LaborConstraint: 3 EntertainmentPackages[Standard]
   + 5 EntertainmentPackages[Joyful] + 8 EntertainmentPackages[Fabulous]
   <= 500
 BalloonsConstraint: 2 EntertainmentPackages[Standard]
   + 5 EntertainmentPackages[Joyful] + 8 EntertainmentPackages[Fabulous]
   <= 360
 LinkingConst[Standard]: EntertainmentPackages[Standard]
   - 30000 PackageFixCost[Standard] <= 0
 LinkingConst[Joyful]: EntertainmentPackages[Joyful]
   - 30000 PackageFixCost[Joyful] <= 0
 LinkingConst[Fabulous]: EntertainmentPackages[Fabulous]
   - 30000 PackageFixCost[Fabulous] <= 0
Bounds
Binaries
 PackageFixCost[Standard] PackageFixCost[Joyful] PackageFixCost[Fabulous]
Generals
 EntertainmentPackages[Standard] EntertainmentPackages[Joyful]
 EntertainmentPackages[Fabulous]
End
