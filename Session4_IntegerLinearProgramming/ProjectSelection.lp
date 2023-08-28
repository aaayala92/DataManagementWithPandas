\ Model CapitalBudgeting
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  30 Projects[1] + 20 Projects[2] + 25 Projects[3] + 23 Projects[4]
   + 27 Projects[5]
Subject To
 FundsAvailable: 12 Projects[1] + 7 Projects[2] + 9 Projects[3]
   + 2 Projects[4] + 4 Projects[5] <= 25
 FundsAvailable: 8 Projects[1] + 5 Projects[2] + 6 Projects[3]
   + 4 Projects[4] + 6 Projects[5] <= 20
 FundsAvailable: 4 Projects[1] + Projects[2] + 3 Projects[3]
   + 8 Projects[4] + 10 Projects[5] <= 20
 AtLeastOneProject: Projects[1] + Projects[2] + Projects[3] + Projects[4]
   + Projects[5] >= 1
Bounds
Binaries
 Projects[1] Projects[2] Projects[3] Projects[4] Projects[5]
End
