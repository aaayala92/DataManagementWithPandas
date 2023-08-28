\ Model NetworkDesign_Team:AnacondaArtillery
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  211 Routes[Atlanta,East] + 232 Routes[Atlanta,South]
   + 240 Routes[Atlanta,Midwest] + 300 Routes[Atlanta,West]
   + 232 Routes[Chicago,East] + 212 Routes[Chicago,South]
   + 230 Routes[Chicago,Midwest] + 280 Routes[Chicago,West]
   + 238 Routes[NewYork,East] + 230 Routes[NewYork,South]
   + 215 Routes[NewYork,Midwest] + 270 Routes[NewYork,West]
   + 299 Routes[SanDiego,East] + 280 Routes[SanDiego,South]
   + 270 Routes[SanDiego,Midwest] + 225 Routes[SanDiego,West]
   + 4.5e+06 Capacity_type[Atlanta,150k]
   + 7e+06 Capacity_type[Atlanta,300k] + 5e+06 Capacity_type[Chicago,150k]
   + 8e+06 Capacity_type[Chicago,300k]
   + 5.5e+06 Capacity_type[NewYork,150k]
   + 8.5e+06 Capacity_type[NewYork,300k]
   + 6e+06 Capacity_type[SanDiego,150k]
   + 1e+07 Capacity_type[SanDiego,300k]
Subject To
 Demand[East]: Routes[Atlanta,East] + Routes[Chicago,East]
   + Routes[NewYork,East] + Routes[SanDiego,East] >= 100000
 Demand[South]: Routes[Atlanta,South] + Routes[Chicago,South]
   + Routes[NewYork,South] + Routes[SanDiego,South] >= 150000
 Demand[Midwest]: Routes[Atlanta,Midwest] + Routes[Chicago,Midwest]
   + Routes[NewYork,Midwest] + Routes[SanDiego,Midwest] >= 110000
 Demand[West]: Routes[Atlanta,West] + Routes[Chicago,West]
   + Routes[NewYork,West] + Routes[SanDiego,West] >= 90000
 Capacity[Atlanta]: Routes[Atlanta,East] + Routes[Atlanta,South]
   + Routes[Atlanta,Midwest] + Routes[Atlanta,West]
   - 150000 Capacity_type[Atlanta,150k]
   - 300000 Capacity_type[Atlanta,300k] <= 0
 Capacity[Chicago]: Routes[Chicago,East] + Routes[Chicago,South]
   + Routes[Chicago,Midwest] + Routes[Chicago,West]
   - 150000 Capacity_type[Chicago,150k]
   - 300000 Capacity_type[Chicago,300k] <= 0
 Capacity[NewYork]: Routes[NewYork,East] + Routes[NewYork,South]
   + Routes[NewYork,Midwest] + Routes[NewYork,West]
   - 150000 Capacity_type[NewYork,150k]
   - 300000 Capacity_type[NewYork,300k] <= 0
 Capacity[SanDiego]: Routes[SanDiego,East] + Routes[SanDiego,South]
   + Routes[SanDiego,Midwest] + Routes[SanDiego,West]
   - 150000 Capacity_type[SanDiego,150k]
   - 300000 Capacity_type[SanDiego,300k] <= 0
 Only1Capacity[Atlanta]: Capacity_type[Atlanta,150k]
   + Capacity_type[Atlanta,300k] <= 1
 Only1Capacity[Chicago]: Capacity_type[Chicago,150k]
   + Capacity_type[Chicago,300k] <= 1
 Only1Capacity[NewYork]: Capacity_type[NewYork,150k]
   + Capacity_type[NewYork,300k] <= 1
 Only1Capacity[SanDiego]: Capacity_type[SanDiego,150k]
   + Capacity_type[SanDiego,300k] <= 1
 AtLeast1Site: Capacity_type[Atlanta,150k] + Capacity_type[Atlanta,300k]
   + Capacity_type[Chicago,150k] + Capacity_type[Chicago,300k]
   + Capacity_type[NewYork,150k] + Capacity_type[NewYork,300k]
   + Capacity_type[SanDiego,150k] + Capacity_type[SanDiego,300k] >= 1
 Linking[Atlanta]: Routes[Atlanta,East] + Routes[Atlanta,South]
   + Routes[Atlanta,Midwest] + Routes[Atlanta,West]
   - 1e+07 Capacity_type[Atlanta,150k] - 1e+07 Capacity_type[Atlanta,300k]
   <= 0
 Linking[Chicago]: Routes[Chicago,East] + Routes[Chicago,South]
   + Routes[Chicago,Midwest] + Routes[Chicago,West]
   - 1e+07 Capacity_type[Chicago,150k] - 1e+07 Capacity_type[Chicago,300k]
   <= 0
 Linking[NewYork]: Routes[NewYork,East] + Routes[NewYork,South]
   + Routes[NewYork,Midwest] + Routes[NewYork,West]
   - 1e+07 Capacity_type[NewYork,150k] - 1e+07 Capacity_type[NewYork,300k]
   <= 0
 Linking[SanDiego]: Routes[SanDiego,East] + Routes[SanDiego,South]
   + Routes[SanDiego,Midwest] + Routes[SanDiego,West]
   - 1e+07 Capacity_type[SanDiego,150k]
   - 1e+07 Capacity_type[SanDiego,300k] <= 0
Bounds
Binaries
 Capacity_type[Atlanta,150k] Capacity_type[Atlanta,300k]
 Capacity_type[Chicago,150k] Capacity_type[Chicago,300k]
 Capacity_type[NewYork,150k] Capacity_type[NewYork,300k]
 Capacity_type[SanDiego,150k] Capacity_type[SanDiego,300k]
Generals
 Routes[Atlanta,East] Routes[Atlanta,South] Routes[Atlanta,Midwest]
 Routes[Atlanta,West] Routes[Chicago,East] Routes[Chicago,South]
 Routes[Chicago,Midwest] Routes[Chicago,West] Routes[NewYork,East]
 Routes[NewYork,South] Routes[NewYork,Midwest] Routes[NewYork,West]
 Routes[SanDiego,East] Routes[SanDiego,South] Routes[SanDiego,Midwest]
 Routes[SanDiego,West]
End
