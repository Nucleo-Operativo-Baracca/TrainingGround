params["_argument"];
//targets
UpClose = [Target1, Target2, Target3, Target1_1, Target2_1, Target3_1, Target1_2, Target2_2, Target3_2, Target1_3, Target2_3, Target3_3, Target1_4, Target2_4, Target3_4, Target1_5, Target2_5, Target3_5, Target1_6, Target2_6, Target3_6];
ShortRange = [Target4, Target5, Target6, Target4_1, Target5_1, Target6_1, Target4_2, Target5_2, Target6_2, Target4_3, Target5_3, Target6_3, Target4_4, Target5_4, Target6_4, Target4_5, Target5_5, Target6_5, Target4_6, Target5_6, Target6_6];
MediumRange = [Target7, Target8, Target9, Target7_1, Target8_1, Target9_1, Target7_2, Target8_2, Target9_2, Target7_3, Target8_3, Target9_3, Target7_4, Target8_4, Target9_4, Target7_5, Target8_5, Target9_5, Target7_6, Target8_6, Target9_6];
Cluster = [Target10, Target11, Target12, Target13, Target14, Target10_1, Target11_1, Target12_1, Target13_1, Target14_1, Target10_2, Target11_2, Target12_2, Target13_2, Target14_2, Target10_3, Target11_3, Target12_3, Target13_3, Target14_3, Target10_4, Target11_4, Target12_4, Target13_4, Target14_4, Target10_5, Target11_5, Target12_5, Target13_5, Target14_5, Target10_6, Target11_6, Target12_6, Target13_6, Target14_6];

upCloseAct = _argument addAction ["Attiva 20M", "call R3D_fnc_UpClose", true, 10, false, true]; 
shortRangeAct = _argument addAction ["Attiva 40M", "call R3D_fnc_ShortRange", true, 9, false, true]; 
mediumRangeAct = _argument addAction ["Attiva 60M", "call R3D_fnc_MediumRange", true, 8, false, true]; 
clusterAct = _argument addAction ["Attiva 75M", "call R3D_fnc_Cluster", true, 7, false, true];