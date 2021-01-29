params ["_target", "_caller", "_actionId", "_arguments"];
//true  -> Activate targets
//false -> Deactivate targets
if (_arguments) then {
	{_x animate ["terc", 0];} forEach Cluster;
	_target removeAction _actionId;
	clusterAct = _target addAction ["Disattiva 70M", "call R3D_fnc_Cluster", false, 7, false, true];
} else {
	{_x animate ["terc", 1];} forEach Cluster;
	_target removeAction _actionId;
	clusterAct = _target addAction ["Attiva 70M", "call R3D_fnc_Cluster", true, 7, false, true];
};