/*******
- FNC_GetPos 
	Author: 
		http://dayzmod.com/  
		http://dayzepoch.com/
*******/
FNC_GetPos = {
	private "_pos";
	if (isNil {_this select 0}) exitWith {[0,0,0]};
	_thingy = _this select 0;
	_pos = getPosASL _thingy;
	if !(surfaceIsWater _pos) then { _pos =  ASLToATL _pos;};
	_pos
};

/*******
- fn_halo.sqf
	Author: 
		Karel Moricky
	Modified: 
		http://dayzmod.com/  
		http://dayzepoch.com/
		Nightmare @ http://n8m4re.de
*******/
BIS_fnc_halo2 = compile preprocessFileLineNumbers "baseJump\actions\fn_halo.sqf";
ActionBaseJump = compile preprocessFileLineNumbers "baseJump\actions\baseJump.sqf";