// OnAct 	{ if (isPlayer _x) then {_x addAction ["Show Markers", "", nil, 10];}; } forEach unit in thisList;
// OnDeact 	{ if (isPlayer _x) then {removeAllActions _x;};} forEach unit in thisList;
//marker_14 - 25
params["_show"];
markers = [];

if(_show) then {
	{ _x setMarkerAlpha 1;} forEach markers;
} else {
	{ _x setMarkerAlpha 0;} forEach markers;
};