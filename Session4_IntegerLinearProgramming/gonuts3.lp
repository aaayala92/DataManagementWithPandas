\ Model GoNuts3
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  21 PRODUCTS_MADE[Ethiopia,Ginko] + 22.5 PRODUCTS_MADE[Ethiopia,Kola]
   + 22.5 PRODUCTS_MADE[Tanzania,Ginko] + 24.5 PRODUCTS_MADE[Tanzania,Kola]
   + 23 PRODUCTS_MADE[Nigeria,Ginko] + 25.5 PRODUCTS_MADE[Nigeria,Kola]
   + 1500 PLANT_OPEN[Ethiopia] + 2000 PLANT_OPEN[Tanzania]
   + 3000 PLANT_OPEN[Nigeria]
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
 Linking[Ethiopia]: PRODUCTS_MADE[Ethiopia,Ginko]
   + PRODUCTS_MADE[Ethiopia,Kola] - 425 PLANT_OPEN[Ethiopia] <= 0
 Linking[Tanzania]: PRODUCTS_MADE[Tanzania,Ginko]
   + PRODUCTS_MADE[Tanzania,Kola] - 400 PLANT_OPEN[Tanzania] <= 0
 Linking[Nigeria]: PRODUCTS_MADE[Nigeria,Ginko]
   + PRODUCTS_MADE[Nigeria,Kola] - 750 PLANT_OPEN[Nigeria] <= 0
 MinProduction[Ethiopia]: PRODUCTS_MADE[Ethiopia,Ginko]
   + PRODUCTS_MADE[Ethiopia,Kola] - 100 PLANT_OPEN[Ethiopia] >= 0
 MinProduction[Tanzania]: PRODUCTS_MADE[Tanzania,Ginko]
   + PRODUCTS_MADE[Tanzania,Kola] - 250 PLANT_OPEN[Tanzania] >= 0
 MinProduction[Nigeria]: PRODUCTS_MADE[Nigeria,Ginko]
   + PRODUCTS_MADE[Nigeria,Kola] - 600 PLANT_OPEN[Nigeria] >= 0
Bounds
Binaries
 PLANT_OPEN[Ethiopia] PLANT_OPEN[Tanzania] PLANT_OPEN[Nigeria]
Generals
 PRODUCTS_MADE[Ethiopia,Ginko] PRODUCTS_MADE[Ethiopia,Kola]
 PRODUCTS_MADE[Tanzania,Ginko] PRODUCTS_MADE[Tanzania,Kola]
 PRODUCTS_MADE[Nigeria,Ginko] PRODUCTS_MADE[Nigeria,Kola]
End
