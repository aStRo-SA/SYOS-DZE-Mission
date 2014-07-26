_newCiv = _this select 3;

// Global animation
player playActionNow "Medic";

sleep 15; // 15 seconds to get away

detach _newCiv; // Just in case
// animation reset
[objNull, _newCiv, rswitchmove,""] call RE;

player forceWalk False;
// Public Var
_newCiv setVariable ["Detain",0,true];
_newCiv setVariable ["Escort",0,true];

if (!isnil ("PVDZ_ply_Arrst")) then {
	// id removed from array
	_id = getPlayerUID _newCiv;
	PVDZ_ply_Arrst= PVDZ_ply_Arrst-[_id];
	publicVariable "PVDZ_ply_Arrst";
} else {
	_id = getPlayerUID _newCiv;
	PVDZ_ply_Arrst= nil;
	publicVariable "PVDZ_ply_Arrst";
};