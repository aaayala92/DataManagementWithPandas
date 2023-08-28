\ Model softdrinks
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  60 Drinks[Lemon] + 71 Drinks[Orange]
Subject To
 WaterConstr: 54 Drinks[Lemon] + 80 Drinks[Orange] <= 9800
 SugarConstr: 24 Drinks[Lemon] + 13 Drinks[Orange] <= 2980
 VitaminConstr: 24 Drinks[Lemon] + 15 Drinks[Orange] <= 2080
Bounds
End
