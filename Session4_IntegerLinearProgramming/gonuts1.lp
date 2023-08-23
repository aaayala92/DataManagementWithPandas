\ Model GoNuts1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  21 PRODUCTS_MADE[Ethiopia,Ginko] + 22.5 PRODUCTS_MADE[Ethiopia,Kola]
   + 22.5 PRODUCTS_MADE[Tanzania,Ginko] + 24.5 PRODUCTS_MADE[Tanzania,Kola]
   + 23 PRODUCTS_MADE[Nigeria,Ginko] + 25.5 PRODUCTS_MADE[Nigeria,Kola]
Subject To
 Capacity[Ethiopia]: PRODUCTS_MADE[Ethiopia,Ginko]
   + PRODUCTS_MADE[Ethiopia,Kola] <= 425
 Capacity[Tanzania]: PRODUCTS_MADE[Tanzania,Ginko]
   + PRODUCTS_MADE[Tanzania,Kola] <= 400
 Capacity[Nigeria]: PRODUCTS_MADE[Nigeria,Ginko]
   + PRODUCTS_MADE[Nigeria,Kola] <= 750
 Demand[Ginko]: PRODUCTS_MADE[Ethiopia,Ginko]
   + PRODUCTS_MADE[Tanzania,Ginko] + PRODUCTS_MADE[Nigeria,Ginko] >= 550
 Demand[Kola]: PRODUCTS_MADE[Ethiopia,Kola] + PRODUCTS_MADE[Tanzania,Kola]
   + PRODUCTS_MADE[Nigeria,Kola] >= 450
Bounds
Generals
 PRODUCTS_MADE[Ethiopia,Ginko] PRODUCTS_MADE[Ethiopia,Kola]
 PRODUCTS_MADE[Tanzania,Ginko] PRODUCTS_MADE[Tanzania,Kola]
 PRODUCTS_MADE[Nigeria,Ginko] PRODUCTS_MADE[Nigeria,Kola]
End
