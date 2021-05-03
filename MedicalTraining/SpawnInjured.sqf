params[_injuredPos, _severity];

_InjuredGrp = createGroup[blufor];
_unit = _injuredGrp createUnit["B_Soldier_unarmed_F", _injuredPos, ["injuredPos1", "injuredPos2", "injuredPos3", "injuredPos4", "injuredPos5"], "NONE"];

//call ace_medical_fnc_addDamageToUnit;
