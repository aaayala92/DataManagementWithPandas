\ Model facility_location
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  200 y[1,A] + 300 y[1,B] + 110 y[2,A] + 220 y[2,B] + 20 y[3,A] + 20 y[3,B]
   + 30 y[4,A] + 60 y[4,B]
Subject To
 1FacilityPerCustomer[1]: y[1,A] + y[1,B] = 1
 1FacilityPerCustomer[2]: y[2,A] + y[2,B] = 1
 1FacilityPerCustomer[3]: y[3,A] + y[3,B] = 1
 1FacilityPerCustomer[4]: y[4,A] + y[4,B] = 1
 LimitFacilitiesToP: x[A] + x[B] = 1
 OnlyAllowServiceAt1IfFacilityA: - x[A] + y[1,A] <= 0
 OnlyAllowServiceAt1IfFacilityB: - x[B] + y[1,B] <= 0
 OnlyAllowServiceAt2IfFacilityA: - x[A] + y[2,A] <= 0
 OnlyAllowServiceAt2IfFacilityB: - x[B] + y[2,B] <= 0
 OnlyAllowServiceAt3IfFacilityA: - x[A] + y[3,A] <= 0
 OnlyAllowServiceAt3IfFacilityB: - x[B] + y[3,B] <= 0
 OnlyAllowServiceAt4IfFacilityA: - x[A] + y[4,A] <= 0
 OnlyAllowServiceAt4IfFacilityB: - x[B] + y[4,B] <= 0
Bounds
Binaries
 x[A] x[B] y[1,A] y[1,B] y[2,A] y[2,B] y[3,A] y[3,B] y[4,A] y[4,B]
End
