// OnAct 	{ if (isPlayer _x) then {_x addAction ["Show Markers", "", nil, 10];}; } forEach unit in thisList;
// OnDeact 	{ if (isPlayer _x) then {removeAllActions _x;};} forEach unit in thisList;
//marker_14 - 25
params["_show"];
markers = [marker_14, marker_15, marker_16, marker_17, marker_18, marker_19, marker_20, marker_21, marker_22, marker_23, marker_24, marker_25];

if(_show) then {
	{ _x setMarkerAlpha 1;} forEach markers;
} else {
	{ _x setMarkerAlpha 0;} forEach markers;
};