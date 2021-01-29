params ["_target", "_caller", "_actionId", "_arguments"];
//true  -> Activate targets
//false -> Deactivate targets
if (_arguments) then {
	{_x animate ["terc", 0];} forEach MediumRange;
	_target removeAction _actionId;
	mediumRangeAct = _target addAction ["Disattiva 60M", "call R3D_fnc_MediumRange", false, 8, false, true];
} else {
	{_x animate ["terc", 1];} forEach MediumRange;
	_target removeAction _actionId;
	mediumRangeAct = _target addAction ["Attiva 60M", "call R3D_fnc_MediumRange", true, 8, false, true];
};