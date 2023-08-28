\ Model PureCoffee
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  51 plant_2_dc[A,N] + 57 plant_2_dc[A,S] + 59 plant_2_dc[B,N]
   + 53 plant_2_dc[B,S] + 73 DC_2_Market[A,M1] + 62 DC_2_Market[A,M2]
   + 53 DC_2_Market[A,M3] + 56 DC_2_Market[B,M1] + 73 DC_2_Market[B,M2]
   + 64 DC_2_Market[B,M3]
Subject To
 DemandConstr[M1]: DC_2_Market[A,M1] + DC_2_Market[B,M1] >= 500
 DemandConstr[M2]: DC_2_Market[A,M2] + DC_2_Market[B,M2] >= 500
 DemandConstr[M3]: DC_2_Market[A,M3] + DC_2_Market[B,M3] >= 350
 CapacityConstr[N]: plant_2_dc[A,N] + plant_2_dc[B,N] <= 1000
 CapacityConstr[S]: plant_2_dc[A,S] + plant_2_dc[B,S] <= 350
 ConservationOfFlow[A]: - plant_2_dc[A,N] - plant_2_dc[A,S]
   + DC_2_Market[A,M1] + DC_2_Market[A,M2] + DC_2_Market[A,M3] = 0
 ConservationOfFlow[B]: - plant_2_dc[B,N] - plant_2_dc[B,S]
   + DC_2_Market[B,M1] + DC_2_Market[B,M2] + DC_2_Market[B,M3] = 0
Bounds
Generals
 plant_2_dc[A,N] plant_2_dc[A,S] plant_2_dc[B,N] plant_2_dc[B,S]
 DC_2_Market[A,M1] DC_2_Market[A,M2] DC_2_Market[A,M3] DC_2_Market[B,M1]
 DC_2_Market[B,M2] DC_2_Market[B,M3]
End
