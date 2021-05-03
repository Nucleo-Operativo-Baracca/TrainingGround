// OnAct 	{ if (isPlayer _x) then {_x addAction ["Show Markers", "", nil, 10];}; } forEach unit in thisList;
// OnDeact 	{ if (isPlayer _x) then {removeAllActions _x;};} forEach unit in thisList; false call R3D_fnc_OrienteeringCourse;
//marker_35 - 40
params["_show"];
markers = ["marker_35", "marker_36", "marker_37", "marker_38", "marker_39", "marker_40", "marker_12", "marker_10", "marker_11", "marker_9"];

if(_show) then {
	{ _x setMarkerAlpha 1;} forEach markers;
} else {
	{ _x setMarkerAlpha 0;} forEach markers;
};