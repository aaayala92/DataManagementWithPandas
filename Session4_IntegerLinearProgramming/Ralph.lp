\ Model Ralph
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  30 Factory_2_CR[CR1,Factory1] + 23 Factory_2_CR[CR1,Factory2]
   + 35 Factory_2_CR[CR1,Factory3] + 70 Factory_2_CR[CR1,Factory4]
   + 65 Factory_2_CR[CR1,Factory5] + 50 Factory_2_CR[CR2,Factory1]
   + 66 Factory_2_CR[CR2,Factory2] + 14 Factory_2_CR[CR2,Factory3]
   + 12 Factory_2_CR[CR2,Factory4] + 70 Factory_2_CR[CR2,Factory5]
   + 12 CR_2_DC[CR1,DC1] + 25 CR_2_DC[CR1,DC2] + 22 CR_2_DC[CR1,DC3]
   + 40 CR_2_DC[CR1,DC4] + 41 CR_2_DC[CR1,DC5] + 65 CR_2_DC[CR2,DC1]
   + 22 CR_2_DC[CR2,DC2] + 23 CR_2_DC[CR2,DC3] + 12 CR_2_DC[CR2,DC4]
   + 15 CR_2_DC[CR2,DC5]
Subject To
 CapacityConst[Factory1]: Factory_2_CR[CR1,Factory1]
   + Factory_2_CR[CR2,Factory1] <= 200
 CapacityConst[Factory2]: Factory_2_CR[CR1,Factory2]
   + Factory_2_CR[CR2,Factory2] <= 300
 CapacityConst[Factory3]: Factory_2_CR[CR1,Factory3]
   + Factory_2_CR[CR2,Factory3] <= 100
 CapacityConst[Factory4]: Factory_2_CR[CR1,Factory4]
   + Factory_2_CR[CR2,Factory4] <= 150
 CapacityConst[Factory5]: Factory_2_CR[CR1,Factory5]
   + Factory_2_CR[CR2,Factory5] <= 220
 DemandConstr[DC1]: CR_2_DC[CR1,DC1] + CR_2_DC[CR2,DC1] >= 150
 DemandConstr[DC2]: CR_2_DC[CR1,DC2] + CR_2_DC[CR2,DC2] >= 100
 DemandConstr[DC3]: CR_2_DC[CR1,DC3] + CR_2_DC[CR2,DC3] >= 110
 DemandConstr[DC4]: CR_2_DC[CR1,DC4] + CR_2_DC[CR2,DC4] >= 200
 DemandConstr[DC5]: CR_2_DC[CR1,DC5] + CR_2_DC[CR2,DC5] >= 180
 Conservation_of_flow[CR1]: Factory_2_CR[CR1,Factory1]
   + Factory_2_CR[CR1,Factory2] + Factory_2_CR[CR1,Factory3]
   + Factory_2_CR[CR1,Factory4] + Factory_2_CR[CR1,Factory5]
   - CR_2_DC[CR1,DC1] - CR_2_DC[CR1,DC2] - CR_2_DC[CR1,DC3]
   - CR_2_DC[CR1,DC4] - CR_2_DC[CR1,DC5] = 0
 Conservation_of_flow[CR2]: Factory_2_CR[CR2,Factory1]
   + Factory_2_CR[CR2,Factory2] + Factory_2_CR[CR2,Factory3]
   + Factory_2_CR[CR2,Factory4] + Factory_2_CR[CR2,Factory5]
   - CR_2_DC[CR2,DC1] - CR_2_DC[CR2,DC2] - CR_2_DC[CR2,DC3]
   - CR_2_DC[CR2,DC4] - CR_2_DC[CR2,DC5] = 0
Bounds
Generals
 Factory_2_CR[CR1,Factory1] Factory_2_CR[CR1,Factory2]
 Factory_2_CR[CR1,Factory3] Factory_2_CR[CR1,Factory4]
 Factory_2_CR[CR1,Factory5] Factory_2_CR[CR2,Factory1]
 Factory_2_CR[CR2,Factory2] Factory_2_CR[CR2,Factory3]
 Factory_2_CR[CR2,Factory4] Factory_2_CR[CR2,Factory5] CR_2_DC[CR1,DC1]
 CR_2_DC[CR1,DC2] CR_2_DC[CR1,DC3] CR_2_DC[CR1,DC4] CR_2_DC[CR1,DC5]
 CR_2_DC[CR2,DC1] CR_2_DC[CR2,DC2] CR_2_DC[CR2,DC3] CR_2_DC[CR2,DC4]
 CR_2_DC[CR2,DC5]
End
