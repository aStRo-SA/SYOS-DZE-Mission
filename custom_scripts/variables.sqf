// This is the custom variables section

//Shaun Riley - Enhanced Vehicle Deployment (EVD)
//</
EVDVehicleArray = ["MMT_Civ","TT650_Civ","CSJ_GyroC"];
dayz_allowedObjects = dayz_allowedObjects + EVDVehicleArray;

if(isServer) then {
	DZE_safeVehicle = DZE_safeVehicle + EVDVehicleArray;
};
// /> (EVD)

// Shaun Riley - Evac Chopper
// </Astro Evac Chopper
dayz_allowedObjects = dayz_allowedObjects + ["HeliHRescue"];
// /> Evac Chopper