/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500

MaxVehicleLimit = 300; // Default = 50
MaxDynamicDebris = 500; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 

//astro selfBB
DZE_SelfTransfuse = true;
DZE_selfTransfuse_Values = [6000, 0.30, (60)];
//astro selfBB

//astro
DZE_ForceNameTagsInTrader = true;
//astro

dayz_minpos = -1; 
dayz_maxpos = 16000;

dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100

DZE_BuildOnRoads = false; // Default: False

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
dayz_fullMoonNights = true;

//astro Custom Loadout
DefaultMagazines = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked","15Rnd_W1866_Slug"];
DefaultWeapons = ["Winchester1866","glock17_EP1","ItemFlashlight","ItemHatchet","ItemMap"];
DefaultBackpack = "DZ_Patrol_Pack_EP1";
DefaultBackpackWeapon = "";
//astro Custom Loadout

//astro
DZE_requireplot = 1;
//astro

//astro Indestructable Bases
DZE_GodModeBase = true;
//astro Indestructable Bases

//astro
dayz_paraSpawn = true;
//astro

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "custom_scripts\variables.sqf";							//Shaun Riley - Call Custom Variables
call compile preprocessFileLineNumbers "crafting\variables.sqf";								//astro crafting limits
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
call compile preprocessFileLineNumbers "custom_scripts\compiles.sqf";							//Shaun Riley - Call Custom Compiles
call compile preprocessFileLineNumbers "snapping\compiles.sqf";							 //Compile custom compiles snapping
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";								//Compile trader configs
//progressloadingScreen 0.7	
//compile preprocessFileLineNumbers "crafting\player_build.sqf";	
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	
	//safezone
	[] execVM "safezones\safezone.sqf"; 
	
	//anti Hack 
	//[] execVM "\z\addons\dayz_code\system\antihack.sqf";

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	
	//astro evac
	_nil = [] execVM "evac\JAEM\EvacChopper_init.sqf";
	//astro evac
};

//astro credits
	[] execVM "WelcomeCredits\Server_WelcomeCredits.sqf";
//astro credits
	
//Login screen
    [] execVM "WelcomeCredits\loginCamera.sqf";
//Login screen

//astro Watermark
	server_name = "SYOS"; 
//astro Watermark



//astro Servicepoint
	execVM "ServicePoint\service_point.sqf";
//astro Servicepoint

//astro Tow and lift
	execVM "R3F_ARTY_AND_LOG\init.sqf";
//astro Tow and lift

//astro KillMessages
	//enableRadio false;
	enableRadio true;
	DZE_DeathMsgGlobal = true;
	DZE_DeathMsgSide = true;
	DZE_DeathMsgTitleText = true;
//astro KillMessages

//astro custom monitor
	[] execVM "CustomMonitor\custom_monitor.sqf";
//astro custom monitor


//astro Watermark
	if (!isNil "server_name") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		5 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
	};
};
//astro Watermark
//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

_nul = [] execVM "arrest\detaincheck.sqf";
