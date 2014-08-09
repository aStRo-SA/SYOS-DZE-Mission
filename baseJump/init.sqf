if ( isDedicated || isServer ) exitWith {};
call compile preprocessFileLineNumbers "basejump\config.sqf";
call compile preprocessFileLineNumbers "basejump\compiles.sqf";
waitUntil {(!isNull player)&&(alive player)&&(vehicle player == player)&&(!isNil "dayz_animalCheck")};
[] spawn ActionBaseJump;
