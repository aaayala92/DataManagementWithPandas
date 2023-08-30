\ Model Sany3
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  5 Service[SanyShared] + 23 Service[SanyPersonal] + 14 Service[SanyFood]
   + 16 Service[SanyCourier] + 20 Service_Binary[SanyShared]
   + 25 Service_Binary[SanyPersonal] + 10 Service_Binary[SanyFood]
   + 30 Service_Binary[SanyCourier]
Subject To
 MaxRequests: Service[SanyShared] + Service[SanyPersonal]
   + Service[SanyFood] + Service[SanyCourier] <= 20
 LaborHours: 30 Service[SanyShared] + 40 Service[SanyPersonal]
   + 20 Service[SanyFood] + 20 Service[SanyCourier] <= 480
 Linking[SanyShared]: - 1000 Service[SanyShared]
   + Service_Binary[SanyShared] <= 0
 Linking[SanyPersonal]: - 1000 Service[SanyPersonal]
   + Service_Binary[SanyPersonal] <= 0
 Linking[SanyFood]: - 1000 Service[SanyFood] + Service_Binary[SanyFood]
   <= 0
 Linking[SanyCourier]: - 1000 Service[SanyCourier]
   + Service_Binary[SanyCourier] <= 0
 Only2Services: Service_Binary[SanyShared] + Service_Binary[SanyPersonal]
   + Service_Binary[SanyFood] + Service_Binary[SanyCourier] <= 2
Bounds
Binaries
 Service_Binary[SanyShared] Service_Binary[SanyPersonal]
 Service_Binary[SanyFood] Service_Binary[SanyCourier]
Generals
 Service[SanyShared] Service[SanyPersonal] Service[SanyFood]
 Service[SanyCourier]
End
