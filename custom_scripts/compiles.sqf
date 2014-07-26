// This is the custom compiles section

// Shaun Riley - EVD
call compile preprocessFileLineNumbers "evd\compiles.sqf";

//Shaun Riley - Undestructable vehicles within radius of Plot Role
call compile preprocessFileLineNumbers "undestrucable_locked_vehicle\compiles.sqf";
vehicle_handleDamage = compile preprocessFileLineNumbers "custom_scripts\vehicle_handleDamage.sqf";


