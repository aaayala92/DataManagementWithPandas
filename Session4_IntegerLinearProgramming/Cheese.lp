\ Model CheeseModel
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  17.514 Cheeses[Original] + 13.262 Cheeses[Cheddar]
   + 14.283 Cheeses[Wasabi]
Subject To
 Xray_Machine: 8.6 Cheeses[Original] + 2.2 Cheeses[Cheddar]
   + 5.1 Cheeses[Wasabi] <= 480
 Weight_Machine: 7 Cheeses[Original] + 6.8 Cheeses[Cheddar]
   + 9.8 Cheeses[Wasabi] <= 540
Bounds
End
