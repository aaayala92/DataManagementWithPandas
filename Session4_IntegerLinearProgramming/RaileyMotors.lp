\ Model RaileyMotors
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  16500 ShippingUnits[Ahmedabad,Bhopal]
   + 10600 ShippingUnits[Ahmedabad,Indore]
   + 12200 ShippingUnits[Patna,Bhopal] + 12600 ShippingUnits[Patna,Indore]
   + 10300 ShippingUnits[Hyderabad,Bhopal]
   + 9240 ShippingUnits[Hyderabad,Indore]
Subject To
 R0: ShippingUnits[Ahmedabad,Bhopal] + ShippingUnits[Ahmedabad,Indore]
   <= 4800
 R1: ShippingUnits[Patna,Bhopal] + ShippingUnits[Patna,Indore] <= 3500
 R2: ShippingUnits[Hyderabad,Bhopal] + ShippingUnits[Hyderabad,Indore]
   <= 2200
 R3: ShippingUnits[Ahmedabad,Bhopal] + ShippingUnits[Patna,Bhopal]
   + ShippingUnits[Hyderabad,Bhopal] >= 4800
 R4: ShippingUnits[Ahmedabad,Indore] + ShippingUnits[Patna,Indore]
   + ShippingUnits[Hyderabad,Indore] >= 5700
Bounds
Generals
 ShippingUnits[Ahmedabad,Bhopal] ShippingUnits[Ahmedabad,Indore]
 ShippingUnits[Patna,Bhopal] ShippingUnits[Patna,Indore]
 ShippingUnits[Hyderabad,Bhopal] ShippingUnits[Hyderabad,Indore]
End
