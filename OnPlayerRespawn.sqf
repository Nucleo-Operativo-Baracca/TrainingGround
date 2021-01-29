params ["_newUnit", "_oldUnit"];
if (isNull _oldUnit) exitWith {};
_newUnit setUnitLoadout (getUnitLoadout _oldUnit);
