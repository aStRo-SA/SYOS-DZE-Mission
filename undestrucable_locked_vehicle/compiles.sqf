if (isNil "fnc_vehicle_handleDamage") then {fnc_vehicle_handleDamage = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_handleDamage.sqf";};
vehicle_handleDamage = {
    private["_obj","_result"];
    _obj = _this select 0;
    if ((count(nearestObjects [_obj, ["Plastic_Pole_EP1_DZ"],90]) > 0) && (locked _obj && (count (crew _obj)) == 0)) exitWith {_obj allowDamage false;};
    _obj allowDamage true;
    _result = _this call fnc_vehicle_handleDamage;
    _result
};