\ Model HW3_Extra
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  440 Routes[Monterrey,Chihuahua] + 401 Routes[Monterrey,Ciudad_Victoria]
   + 419 Routes[Monterrey,Durango] + 441 Routes[Monterrey,Guadalajara]
   + 434 Routes[Monterrey,Leon] + 445 Routes[Monterrey,Mexico_City]
   + 444 Routes[Monterrey,Morelia] + 472 Routes[Monterrey,Oaxaca]
   + 443 Routes[Monterrey,Queretaro] + 444 Routes[Monterrey,Toluca]
   + 480 Routes[Monterrey,Villahermosa] + 451 Routes[Monterrey,Xalapa]
   + 467 Routes[Puebla,Chihuahua] + 394 Routes[Puebla,Ciudad_Victoria]
   + 423 Routes[Puebla,Durango] + 367 Routes[Puebla,Guadalajara]
   + 383 Routes[Puebla,Leon] + 355 Routes[Puebla,Mexico_City]
   + 373 Routes[Puebla,Morelia] + 363 Routes[Puebla,Oaxaca]
   + 367 Routes[Puebla,Queretaro] + 358 Routes[Puebla,Toluca]
   + 384 Routes[Puebla,Villahermosa] + 357 Routes[Puebla,Xalapa]
   + 459 Routes[San_Luis_Potosi,Chihuahua]
   + 393 Routes[San_Luis_Potosi,Ciudad_Victoria]
   + 416 Routes[San_Luis_Potosi,Durango]
   + 386 Routes[San_Luis_Potosi,Guadalajara]
   + 380 Routes[San_Luis_Potosi,Leon]
   + 393 Routes[San_Luis_Potosi,Mexico_City]
   + 394 Routes[San_Luis_Potosi,Morelia]
   + 423 Routes[San_Luis_Potosi,Oaxaca]
   + 388 Routes[San_Luis_Potosi,Queretaro]
   + 391 Routes[San_Luis_Potosi,Toluca]
   + 438 Routes[San_Luis_Potosi,Villahermosa]
   + 406 Routes[San_Luis_Potosi,Xalapa] + 1e+07 PlantDecision[Monterrey]
   + 5e+06 PlantDecision[Puebla] + 3e+06 PlantDecision[San_Luis_Potosi]
Subject To
 Capacity[Monterrey]: Routes[Monterrey,Chihuahua]
   + Routes[Monterrey,Ciudad_Victoria] + Routes[Monterrey,Durango]
   + Routes[Monterrey,Guadalajara] + Routes[Monterrey,Leon]
   + Routes[Monterrey,Mexico_City] + Routes[Monterrey,Morelia]
   + Routes[Monterrey,Oaxaca] + Routes[Monterrey,Queretaro]
   + Routes[Monterrey,Toluca] + Routes[Monterrey,Villahermosa]
   + Routes[Monterrey,Xalapa] <= 150000
 Capacity[Puebla]: Routes[Puebla,Chihuahua]
   + Routes[Puebla,Ciudad_Victoria] + Routes[Puebla,Durango]
   + Routes[Puebla,Guadalajara] + Routes[Puebla,Leon]
   + Routes[Puebla,Mexico_City] + Routes[Puebla,Morelia]
   + Routes[Puebla,Oaxaca] + Routes[Puebla,Queretaro]
   + Routes[Puebla,Toluca] + Routes[Puebla,Villahermosa]
   + Routes[Puebla,Xalapa] <= 150000
 Capacity[San_Luis_Potosi]: Routes[San_Luis_Potosi,Chihuahua]
   + Routes[San_Luis_Potosi,Ciudad_Victoria]
   + Routes[San_Luis_Potosi,Durango] + Routes[San_Luis_Potosi,Guadalajara]
   + Routes[San_Luis_Potosi,Leon] + Routes[San_Luis_Potosi,Mexico_City]
   + Routes[San_Luis_Potosi,Morelia] + Routes[San_Luis_Potosi,Oaxaca]
   + Routes[San_Luis_Potosi,Queretaro] + Routes[San_Luis_Potosi,Toluca]
   + Routes[San_Luis_Potosi,Villahermosa] + Routes[San_Luis_Potosi,Xalapa]
   <= 150000
 R3: Routes[Monterrey,Chihuahua] + Routes[Puebla,Chihuahua]
   + Routes[San_Luis_Potosi,Chihuahua] >= 1000
 R4: Routes[Monterrey,Ciudad_Victoria] + Routes[Puebla,Ciudad_Victoria]
   + Routes[San_Luis_Potosi,Ciudad_Victoria] >= 7000
 R5: Routes[Monterrey,Durango] + Routes[Puebla,Durango]
   + Routes[San_Luis_Potosi,Durango] >= 8000
 R6: Routes[Monterrey,Guadalajara] + Routes[Puebla,Guadalajara]
   + Routes[San_Luis_Potosi,Guadalajara] >= 22000
 R7: Routes[Monterrey,Leon] + Routes[Puebla,Leon]
   + Routes[San_Luis_Potosi,Leon] >= 12000
 R8: Routes[Monterrey,Mexico_City] + Routes[Puebla,Mexico_City]
   + Routes[San_Luis_Potosi,Mexico_City] >= 50000
 R9: Routes[Monterrey,Morelia] + Routes[Puebla,Morelia]
   + Routes[San_Luis_Potosi,Morelia] >= 5000
 R10: Routes[Monterrey,Oaxaca] + Routes[Puebla,Oaxaca]
   + Routes[San_Luis_Potosi,Oaxaca] >= 2000
 R11: Routes[Monterrey,Queretaro] + Routes[Puebla,Queretaro]
   + Routes[San_Luis_Potosi,Queretaro] >= 22000
 R12: Routes[Monterrey,Toluca] + Routes[Puebla,Toluca]
   + Routes[San_Luis_Potosi,Toluca] >= 26000
 R13: Routes[Monterrey,Villahermosa] + Routes[Puebla,Villahermosa]
   + Routes[San_Luis_Potosi,Villahermosa] >= 11000
 R14: Routes[Monterrey,Xalapa] + Routes[Puebla,Xalapa]
   + Routes[San_Luis_Potosi,Xalapa] >= 10000
 LinkingConstr[Monterrey]: Routes[Monterrey,Chihuahua]
   + Routes[Monterrey,Ciudad_Victoria] + Routes[Monterrey,Durango]
   + Routes[Monterrey,Guadalajara] + Routes[Monterrey,Leon]
   + Routes[Monterrey,Mexico_City] + Routes[Monterrey,Morelia]
   + Routes[Monterrey,Oaxaca] + Routes[Monterrey,Queretaro]
   + Routes[Monterrey,Toluca] + Routes[Monterrey,Villahermosa]
   + Routes[Monterrey,Xalapa] - 100000 PlantDecision[Monterrey] <= 0
 LinkingConstr[Puebla]: Routes[Puebla,Chihuahua]
   + Routes[Puebla,Ciudad_Victoria] + Routes[Puebla,Durango]
   + Routes[Puebla,Guadalajara] + Routes[Puebla,Leon]
   + Routes[Puebla,Mexico_City] + Routes[Puebla,Morelia]
   + Routes[Puebla,Oaxaca] + Routes[Puebla,Queretaro]
   + Routes[Puebla,Toluca] + Routes[Puebla,Villahermosa]
   + Routes[Puebla,Xalapa] - 100000 PlantDecision[Puebla] <= 0
 LinkingConstr[San_Luis_Potosi]: Routes[San_Luis_Potosi,Chihuahua]
   + Routes[San_Luis_Potosi,Ciudad_Victoria]
   + Routes[San_Luis_Potosi,Durango] + Routes[San_Luis_Potosi,Guadalajara]
   + Routes[San_Luis_Potosi,Leon] + Routes[San_Luis_Potosi,Mexico_City]
   + Routes[San_Luis_Potosi,Morelia] + Routes[San_Luis_Potosi,Oaxaca]
   + Routes[San_Luis_Potosi,Queretaro] + Routes[San_Luis_Potosi,Toluca]
   + Routes[San_Luis_Potosi,Villahermosa] + Routes[San_Luis_Potosi,Xalapa]
   - 100000 PlantDecision[San_Luis_Potosi] <= 0
Bounds
Binaries
 PlantDecision[Monterrey] PlantDecision[Puebla]
 PlantDecision[San_Luis_Potosi]
Generals
 Routes[Monterrey,Chihuahua] Routes[Monterrey,Ciudad_Victoria]
 Routes[Monterrey,Durango] Routes[Monterrey,Guadalajara]
 Routes[Monterrey,Leon] Routes[Monterrey,Mexico_City]
 Routes[Monterrey,Morelia] Routes[Monterrey,Oaxaca]
 Routes[Monterrey,Queretaro] Routes[Monterrey,Toluca]
 Routes[Monterrey,Villahermosa] Routes[Monterrey,Xalapa]
 Routes[Puebla,Chihuahua] Routes[Puebla,Ciudad_Victoria]
 Routes[Puebla,Durango] Routes[Puebla,Guadalajara] Routes[Puebla,Leon]
 Routes[Puebla,Mexico_City] Routes[Puebla,Morelia] Routes[Puebla,Oaxaca]
 Routes[Puebla,Queretaro] Routes[Puebla,Toluca] Routes[Puebla,Villahermosa]
 Routes[Puebla,Xalapa] Routes[San_Luis_Potosi,Chihuahua]
 Routes[San_Luis_Potosi,Ciudad_Victoria] Routes[San_Luis_Potosi,Durango]
 Routes[San_Luis_Potosi,Guadalajara] Routes[San_Luis_Potosi,Leon]
 Routes[San_Luis_Potosi,Mexico_City] Routes[San_Luis_Potosi,Morelia]
 Routes[San_Luis_Potosi,Oaxaca] Routes[San_Luis_Potosi,Queretaro]
 Routes[San_Luis_Potosi,Toluca] Routes[San_Luis_Potosi,Villahermosa]
 Routes[San_Luis_Potosi,Xalapa]
End
