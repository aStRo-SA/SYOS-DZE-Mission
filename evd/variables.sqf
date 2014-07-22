//Shaun Riley - Enhanced Vehicle Deployment (EVD)
//Start
EVDVehicleArray = ["MMT_Civ","TT650_Civ","CSJ_GyroC"];
dayz_allowedObjects = dayz_allowedObjects + EVDVehicleArray;

if(isServer) then {
	DZE_safeVehicle = DZE_safeVehicle + EVDVehicleArray;
};
//END (EVD)