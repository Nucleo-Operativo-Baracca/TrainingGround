//Veicoli: M1097A2Veh M1097A2Veh2 UH60MVeh UH60Mmed
//Gruppi: recruitsGrp recruitsGrp1 officersGrp MedevacGrp UH60MTransportGrp
//Markers: FiringRange HospitalMrk

//Reclute
[recruitsGrp, recruitsGrp, "Gruppo Reclute"] call BIS_fnc_addRespawnPosition;
[recruitsGrp1, recruitsGrp1, "Gruppo Reclute"] call BIS_fnc_addRespawnPosition;
[recruitsGrp, M1097A2Veh, "HMMWV Transport"] call BIS_fnc_addRespawnPosition;
[recruitsGrp1, M1097A2Veh1, "HMMWV Transport 2"] call BIS_fnc_addRespawnPosition;
[recruitsGrp, UH60MVeh, "UH-60M Transport"] call BIS_fnc_addRespawnPosition;
[recruitsGrp1, UH60MVeh, "UH-60M Transport"] call BIS_fnc_addRespawnPosition;
//Ufficiali
[officersGrp, officersGrp, "Gruppo Ufficiali"] call BIS_fnc_addRespawnPosition;
[officersGrp, M1097A2Veh, "HMMWV Transport"] call BIS_fnc_addRespawnPosition;
[officersGrp, M1097A2Veh1, "HMMWV Transport 2"] call BIS_fnc_addRespawnPosition;
[officersGrp, UH60MVeh, "UH-60M Transport"] call BIS_fnc_addRespawnPosition;
//Piloti elicottero
[UH60MTransportGrp, UH60MVeh, "UH-60M Transport"] call BIS_fnc_addRespawnPosition;
//Piloti Medevac
[MedevacGrp, UH60Mmed, "UH-60M Medevac"] call BIS_fnc_addRespawnPosition;
//Side
[west, "FiringRange", "Firing Range"] call BIS_fnc_addRespawnPosition;
[west, "HospitalMrk", "Ospedale"] call BIS_fnc_addRespawnPosition;