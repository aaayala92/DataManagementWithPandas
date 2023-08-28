\ Model Meats
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  9.3 Meats[Chuck] + 8.4 Meats[Sirloin]
Subject To
 LeanMeat%_Const: - 0.21 Meats[Chuck] + 0.3 Meats[Sirloin] >= 0
 FatMeat%_Const: - 0.03 Meats[Chuck] + 0.01 Meats[Sirloin] <= 0
 AtLeast50Pounds: Meats[Chuck] + Meats[Sirloin] >= 50
Bounds
End
