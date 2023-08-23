\ Model BannerChemicals
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  80 HIGH_GRADE + 200 SUPREME
Subject To
 PLANT_CAPACITY: HIGH_GRADE + SUPREME <= 110
 ADDITIVE_A_LIMIT: 3 HIGH_GRADE + 2 SUPREME <= 300
 ADDITIVE_B_LIMIT: HIGH_GRADE + 3 SUPREME <= 280
Bounds
End
