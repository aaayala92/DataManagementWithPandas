\ Model GreekYogurt
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  1.04 UnitsShipped[Chicago,Boston] + 1.27 UnitsShipped[Chicago,Seattle]
   + 1.22 UnitsShipped[Chicago,Tampa] + 1.23 UnitsShipped[Atlanta,Boston]
   + 1.93 UnitsShipped[Atlanta,Seattle] + 0.6 UnitsShipped[Atlanta,Tampa]
   + 1.92 UnitsShipped[Denver,Boston] + 0.94 UnitsShipped[Denver,Seattle]
   + 1.03 UnitsShipped[Denver,Tampa]
Subject To
 CapacityConstr[Chicago]: UnitsShipped[Chicago,Boston]
   + UnitsShipped[Chicago,Seattle] + UnitsShipped[Chicago,Tampa] <= 10000
 CapacityConstr[Atlanta]: UnitsShipped[Atlanta,Boston]
   + UnitsShipped[Atlanta,Seattle] + UnitsShipped[Atlanta,Tampa] <= 10000
 CapacityConstr[Denver]: UnitsShipped[Denver,Boston]
   + UnitsShipped[Denver,Seattle] + UnitsShipped[Denver,Tampa] <= 10000
 DemandConstr[Boston]: UnitsShipped[Chicago,Boston]
   + UnitsShipped[Atlanta,Boston] + UnitsShipped[Denver,Boston] >= 11000
 DemandConstr[Seattle]: UnitsShipped[Chicago,Seattle]
   + UnitsShipped[Atlanta,Seattle] + UnitsShipped[Denver,Seattle] >= 6300
 DemandConstr[Tampa]: UnitsShipped[Chicago,Tampa]
   + UnitsShipped[Atlanta,Tampa] + UnitsShipped[Denver,Tampa] >= 7400
Bounds
Generals
 UnitsShipped[Chicago,Boston] UnitsShipped[Chicago,Seattle]
 UnitsShipped[Chicago,Tampa] UnitsShipped[Atlanta,Boston]
 UnitsShipped[Atlanta,Seattle] UnitsShipped[Atlanta,Tampa]
 UnitsShipped[Denver,Boston] UnitsShipped[Denver,Seattle]
 UnitsShipped[Denver,Tampa]
End
