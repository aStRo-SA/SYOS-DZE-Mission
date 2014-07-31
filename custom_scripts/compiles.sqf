// This is the custom compiles section

//Astro - Building limits
DZE_BuildingLimit = 300;
DZE_PlotPole = [30,30];

//Shaun Riley - Enhanced vehicle deployment (EVD)
if (!isDedicated) then {
	fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom_scripts\fn_selfActions.sqf";
	player_selectSlot =				compile preprocessFileLineNumbers "custom_scripts\ui_selectSlot.sqf";

//Astro - Snapping
	/* Use command menu instead of scroll menu? (default = false) */
	DZE_SNAP_PRO_USE_COMMAND_MENU = false;

	DZE_SNAP_BUILD_NUMKEYS = [0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B];

	player_build = compile preprocessFileLineNumbers "custom_mods\snapping\snap_pro\player_build.sqf";
	snap_build = compile preprocessFileLineNumbers "custom_mods\snapping\snap_pro\snap_build.sqf";
	dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom_mods\snapping\snap_pro\dayz_spaceInterrupt.sqf";
};

//Indestructable Vehicles By Plot Pole
if (isNil "fnc_vehicle_handleDamage") then {fnc_vehicle_handleDamage = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleDamage.sqf";};
vehicle_handleDamage = {
    private["_obj","_result"];
    _obj = _this select 0;
    if ((count(nearestObjects [_obj, ["Plastic_Pole_EP1_DZ"],90]) > 0) && (locked _obj && (count (crew _obj)) == 0)) exitWith {_obj allowDamage false;};
    _obj allowDamage true;
    _result = _this call fnc_vehicle_handleDamage;
    _result
};
vehicle_handleDamage = compile preprocessFileLineNumbers "custom_scripts\vehicle_handleDamage.sqf";