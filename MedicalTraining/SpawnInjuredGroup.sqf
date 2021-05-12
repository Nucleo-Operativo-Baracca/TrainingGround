params["_injuredPos", "_severity", "_count"];

_InjuredGrp = createGroup blufor;
_pos = getMarkerPos _injuredPos;
_posMarkers = ["injuredPos1", "injuredPos2", "injuredPos3", "injuredPos4", "injuredPos5"];

_units = [];


for "_i" from 1 to _count do {
	_pos = getMarkerPos (_posMarkers select _i-1);
	_unit = _injuredGrp createUnit["B_Soldier_unarmed_F", _pos, ["injuredPos1", "injuredPos2", "injuredPos3", "injuredPos4", "injuredPos5"], 0.5, "NONE"];
	switch (_severity) do {
		case 1: {
				private _bodyPart = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
				private _damageType = selectRandom ["bullet", "vehiclecrash", "stab", "falling", "ropeburn"];
				private _damage = random [0.3, 0.5, 0.90];
				[_unit, _damage, _bodyPart, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
				[_unit, true, 100, false] call ace_medical_fnc_setUnconscious;
		};
		case 2: {
			private _bodyPart1 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
			private _bodyPart2 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
			private _damageType = selectRandom ["bullet", "grenade", "explosive", "shell"];
			private _damage = random [0.7, 0.9, 1.2];
			[_unit, _damage, _bodyPart1, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
			[_unit, _damage, _bodyPart2, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
			[_unit, true, 100, false] call ace_medical_fnc_setUnconscious;
		};
		case 3: {
			private _bodyPart1 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
			private _bodyPart2 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
			private _bodyPart3 = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
			private _damageType = selectRandom ["bullet", "grenade", "explosive", "shell"];
			private _damage = random [0.9, 1.5, 2];
			[_unit, _damage, _bodyPart1, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
			[_unit, _damage, _bodyPart2, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
			[_unit, _damage, _bodyPart3, _damageType, objNull] call ace_medical_fnc_addDamageToUnit;
			[_unit, true, 100, false] call ace_medical_fnc_setUnconscious;
		};
	};
	_units pushBack _unit;
};
 


