params ["_target", "_caller", "_actionId", "_arguments"];
//true  -> Activate targets
//false -> Deactivate targets
if (_arguments) then {
	{_x animate ["terc", 0];} forEach ShortRange;
	_target removeAction _actionId;
	shortRangeAct = _target addAction ["Disattiva 40M", "call R3D_fnc_ShortRange", false, 9, false, true];
} else {
	{_x animate ["terc", 1];} forEach ShortRange;
	_target removeAction _actionId;
	shortRangeAct = _target addAction ["Attiva 40M", "call R3D_fnc_ShortRange", true, 9, false, true];
};