//Shaun Riley - Enhanced vehicle deployment (EVD)
//Start EVD
if (!isDedicated) then {
	fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom_scripts\fn_selfActions.sqf";
	player_selectSlot =				compile preprocessFileLineNumbers "custom_scripts\ui_selectSlot.sqf";
};
//END EVD