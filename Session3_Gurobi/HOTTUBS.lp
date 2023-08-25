\ Model Hot_Tub
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  350 AQUA_SPA + 300 HYDRO_LUX
Subject To
 PUMP_LIMIT: AQUA_SPA + HYDRO_LUX <= 200
 TUBING_LIMIT: 12 AQUA_SPA + 16 HYDRO_LUX <= 2880
 LABOR_LIMIT: 9 AQUA_SPA + 6 HYDRO_LUX <= 1566
Bounds
End
