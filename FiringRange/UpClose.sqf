params ["_target", "_caller", "_actionId", "_arguments"];
//true  -> Activate targets
//false -> Deactivate targets
if (_arguments == true) then {
	{_x animate ["terc", 0];} forEach UpClose;
	_target removeAction _actionId;
	//upCloseAct = 
	_target addAction ["Disattiva 20M", "call R3D_fnc_UpClose", false, 10, false, true];
};
if (_arguments == false) then {
	{_x animate ["terc", 1];} forEach UpClose;
	_target removeAction _actionId;
	//upCloseAct = 
	_target addAction ["Attiva 20M", "call R3D_fnc_UpClose", true, 10, false, true];
};