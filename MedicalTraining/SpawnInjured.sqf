params["_injuredPos", "_severity"];
_pos = getMarkerPos _injuredPos;
_InjuredGrp = createGroup blufor;
_unit = _injuredGrp createUnit["B_Soldier_unarmed_F", _pos, ["injuredPos1", "injuredPos2", "injuredPos3", "injuredPos4", "injuredPos5"], 0.5, "NONE"];

switch (_severity) do {
	case 1: {
		private _bodyPart = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _damageType = selectRandom ["bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "ropeburn", "unknown"];
		private _damage = random [0.2, 0.3, 0.5];
		[_unit, _damage, _bodyPart, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
	};
	case 2: {
		private _bodyPart1 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _bodyPart2 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _damageType = selectRandom ["bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "ropeburn", "unknown"];
		private _damage = random [0.1, 0.25, 0.4];
		[_unit, _damage, _bodyPart1, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
		[_unit, _damage, _bodyPart2, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
	};
	case 3: {
		private _bodyPart1 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _bodyPart2 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _bodyPart3 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _damageType = selectRandom ["bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "ropeburn", "unknown"];
		private _damage = random [0.2, 0.25, 0.45];
		[_unit, _damage, _bodyPart1, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
		[_unit, _damage, _bodyPart2, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
		[_unit, _damage, _bodyPart3, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
	};
	default {
		private _bodyPart = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
		private _damageType = selectRandom ["bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "ropeburn", "unknown"];
		private _damage = random [0.2, 0.3, 0.5];
		[_unit, _damage, _bodyPart, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
	};
};

//call ace_medical_fnc_addDamageToUnit;
//{_x addAction ["Spawn 1 Light Injured", "["injuredPos1", 1] call R3D_fnc_SpawnInjured", true, 10]; } forEach units officersGrp;

//{_x addAction ["Spawn 1 Light Injured", "[""injuredPos1"", 1] call R3D_fnc_SpawnInjured", true, 10]; } forEach units officersGrp;