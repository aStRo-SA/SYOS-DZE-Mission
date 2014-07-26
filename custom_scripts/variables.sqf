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

//Safezone list
safezones = [
    [[12061.648,12636.292],100,"Air"],
    [[1606.6443,7803.5156],100,"Bandit"],
    [[4063.4226,11664.19],100,"Bash"],
    [[12944.227,12766.889],100,"Hero"],
    [[11447.472,11364.504],100,"Klen"],
    [[6315.88,7791.3],100,"Stary"]
];