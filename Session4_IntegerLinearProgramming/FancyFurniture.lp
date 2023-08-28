\ Model FancyFurniture
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  82 sku_flow[C1,WH1] + 83 sku_flow[C1,WH2] + 46 sku_flow[T1,WH1]
   + 49 sku_flow[T1,WH2] + 30 sku_flow[F,WH1] + 35 sku_flow[F,WH2]
   + 86 sku_flow[C2,WH1] + 81 sku_flow[C2,WH2] + 44 sku_flow[T2,WH1]
   + 52 sku_flow[T2,WH2] - 41700 NewPlantBinary[C2]
   - 21100 NewPlantBinary[T2]
Subject To
 DemandConstr[WH1]: sku_flow[C1,WH1] + sku_flow[T1,WH1] + sku_flow[F,WH1]
   + sku_flow[C2,WH1] + sku_flow[T2,WH1] = 6000
 DemandConstr[WH2]: sku_flow[C1,WH2] + sku_flow[T1,WH2] + sku_flow[F,WH2]
   + sku_flow[C2,WH2] + sku_flow[T2,WH2] = 5200
 CapacityConstr[C1]: sku_flow[C1,WH1] + sku_flow[C1,WH2] <= 1500
 CapacityConstr[T1]: sku_flow[T1,WH1] + sku_flow[T1,WH2] <= 1800
 CapacityConstr[F]: sku_flow[F,WH1] + sku_flow[F,WH2] <= 6000
 CapacityConstr[C2]: sku_flow[C2,WH1] + sku_flow[C2,WH2] <= 2000
 CapacityConstr[T2]: sku_flow[T2,WH1] + sku_flow[T2,WH2] <= 2200
 Only1NewPlant: NewPlantBinary[C2] + NewPlantBinary[T2] = 1
 LinkingConstrs[C2]: sku_flow[C2,WH1] + sku_flow[C2,WH2]
   - 10000 NewPlantBinary[C2] <= 0
 LinkingConstrs[T2]: sku_flow[T2,WH1] + sku_flow[T2,WH2]
   - 10000 NewPlantBinary[T2] <= 0
Bounds
Binaries
 NewPlantBinary[C2] NewPlantBinary[T2]
Generals
 sku_flow[C1,WH1] sku_flow[C1,WH2] sku_flow[T1,WH1] sku_flow[T1,WH2]
 sku_flow[F,WH1] sku_flow[F,WH2] sku_flow[C2,WH1] sku_flow[C2,WH2]
 sku_flow[T2,WH1] sku_flow[T2,WH2]
End
