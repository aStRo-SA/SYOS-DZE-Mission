/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file adds the ArmA 2 and Arrowhead objetcs in the configuration variables of the logistics system.
 * Fichier ajoutant les objets d'ArmA 2 et Arrowhead dans la configuration du système de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes dérivant de celles utilisées dans les variables de configuration seront aussi valables.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of vehicles which can tow towable objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets remorquables.
 */
//Addition of DayZ Epoch Vehicles at 1.0.2.5 

R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
"ArmoredSUV_PMC_DZ",
"car_hatchback",
"car_sedan",
"datsun1_civil_1_open",
"datsun1_civil_2_covered",
"datsun1_civil_3_open",
"Fishing_Boat",
"GAZ_Vodnik_DZ",
"GAZ_Vodnik_MedEvac",
"GLT_M300_LT",
"GLT_M300_ST",
"GNT_C1105",
"GNT_C1105C",
"GNT_C1105R",
"GNT_C1105U",
"hilux1_civil_1_open",
"hilux1_civil_2_covered",
"hilux1_civil_3_open_EP1",
"HMMWV_Ambulance",
"HMMWV_Ambulance_CZ_DES_EP1",
"HMMWV_DES_EP1",
"HMMWV_DZ",
"HMMWV_M1035_DES_EP1",
"HMMWV_M1151_M2_CZ_DES_EP1_DZ",
"HMMWV_M9910A2_SOV_DES_EP1_DZ",
"Ikarus",
"Ikarus_TK_CIV_EP1",
"JetSkiYanahui_Case_Blue",
"JetSkiYanahui_Case_Green",
"JetSkiYanahui_Case_Red",
"JetSkiYanahui_Case_Yellow",
"Kamaz",
"KamazRefuel_DZ",
"Lada1",
"Lada1_TK_CIV_EP1",
"Lada2",
"Lada2_TK_CIV_EP1",
"LadaLM",
"LandRover_CZ_EP1",
"LandRover_MG_TK_EP1_DZ",
"LandRover_Special_CZ_EP1_DZ",
"LandRover_TK_CIV_EP1",
"MMT_Civ",
"MtvrRefuel_DES_EP1_DZ",
"MTVR_DES_EP1",
"Offroad_DSHKM_Gue_DZ",
"PBX",
"Pickup_PK_GUE_DZ",
"Pickup_PK_INS_DZ",
"Pickup_PK_TK_GUE_EP1_DZ",
"RHIB",
"S1203_ambulance_EP1",
"S1203_TK_CIV_EP1",
"Skoda",
"SkodaBlue",
"SkodaGreen",
"SkodaRed",
"Smallboat_1",
"Smallboat_2",
"SUV_Blue",
"SUV_Camo",
"SUV_Charcoal",
"SUV_Green",
"SUV_Orange",
"SUV_Pink",
"SUV_Red",
"SUV_Silver",
"SUV_TK_CIV_EP1",
"SUV_White",
"SUV_Yellow",
"tractor",
"TT650_Civ",
"TT650_Ins",
"TT650_TK_CIV_EP1",
"UAZ_CDF",
"UAZ_INS",
"UAZ_MG_TK_EP1_DZ",
"UAZ_RU",
"UAZ_Unarmed_TK_CIV_EP1",
"UAZ_Unarmed_TK_EP1",
"UAZ_Unarmed_UN_EP1",
"UralRefuel_TK_EP1_DZ",
"Ural_CDF",
"Ural_TK_CIV_EP1",
"Ural_UN_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_Open_TK_EP1",
"V3S_Refuel_TK_GUE_EP1_DZ",
"VolhaLimo_TK_CIV_EP1",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"VWGolf",
"V3S_Civ",
"V3S_TK_EP1_DZE",
"V3S_RA_TK_GUE_EP1_DZE",
"UralCivil_DZE",
"UralCivil2_DZE",
"KamazOpen_DZE",
"MtvrRefuel_DZ",
"MTVR",
"Zodiac"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
"AN2_DZ",
"ArmoredSUV_PMC_DZ",
"ATV_CZ_EP1",
"ATV_US_EP1",
"car_hatchback",
"car_sedan",
"CSJ_GyroC",
"CSJ_GyroCover",
"CSJ_GyroP",
"datsun1_civil_1_open",
"datsun1_civil_2_covered",
"datsun1_civil_3_open",
"Fishing_Boat",
"GAZ_Vodnik_DZ",
"GAZ_Vodnik_MedEvac",
"GLT_M300_LT",
"GLT_M300_ST",
"GNT_C1105",
"GNT_C1105C",
"GNT_C1105R",
"GNT_C1105U",
"hilux1_civil_1_open",
"hilux1_civil_2_covered",
"hilux1_civil_3_open_EP1",
"HMMWV_Ambulance",
"HMMWV_Ambulance_CZ_DES_EP1",
"HMMWV_DES_EP1",
"HMMWV_DZ",
"HMMWV_M1035_DES_EP1",
"HMMWV_M1151_M2_CZ_DES_EP1_DZ",
"HMMWV_M9910A2_SOV_DES_EP1_DZ",
"Ikarus",
"Ikarus_TK_CIV_EP1",
"JetSkiYanahui_Case_Blue",
"JetSkiYanahui_Case_Green",
"JetSkiYanahui_Case_Red",
"JetSkiYanahui_Case_Yellow",
"Kamaz",
"KamazRefuel_DZ",
"Lada1",
"Lada1_TK_CIV_EP1",
"Lada2",
"Lada2_TK_CIV_EP1",
"LadaLM",
"LandRover_CZ_EP1",
"LandRover_MG_TK_EP1_DZ",
"LandRover_Special_CZ_EP1_DZ",
"LandRover_TK_CIV_EP1",
"M1030_US_DES_EP1",
"MMT_Civ",
"MtvrRefuel_DES_EP1_DZ",
"MTVR_DES_EP1",
"Offroad_DSHKM_Gue_DZ",
"Old_bike_TK_INS_EP1",
"Old_moto_TK_Civ_EP1",
"PBX",
"Pickup_PK_GUE_DZ",
"Pickup_PK_INS_DZ",
"Pickup_PK_TK_GUE_EP1_DZ",
"RHIB",
"S1203_ambulance_EP1",
"S1203_TK_CIV_EP1",
"Skoda",
"SkodaBlue",
"SkodaGreen",
"SkodaRed",
"Smallboat_1",
"Smallboat_2",
"SUV_Blue",
"SUV_Camo",
"SUV_Charcoal",
"SUV_Green",
"SUV_Orange",
"SUV_Pink",
"SUV_Red",
"SUV_Silver",
"SUV_TK_CIV_EP1",
"SUV_White",
"SUV_Yellow",
"tractor",
"TT650_Civ",
"TT650_Ins",
"TT650_TK_CIV_EP1",
"UAZ_CDF",
"UAZ_INS",
"UAZ_MG_TK_EP1_DZ",
"UAZ_RU",
"UAZ_Unarmed_TK_CIV_EP1",
"UAZ_Unarmed_TK_EP1",
"UAZ_Unarmed_UN_EP1",
"UralRefuel_TK_EP1_DZ",
"Ural_CDF",
"Ural_TK_CIV_EP1",
"Ural_UN_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_Open_TK_EP1",
"V3S_Refuel_TK_GUE_EP1_DZ",
"VolhaLimo_TK_CIV_EP1",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"VWGolf",
"V3S_Civ",
"V3S_TK_EP1_DZE",
"V3S_RA_TK_GUE_EP1_DZE",
"UralCivil_DZE",
"UralCivil2_DZE",
"KamazOpen_DZE",
"MtvrRefuel_DZ",
"MTVR",
"Zodiac"
	
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 * Liste des noms de classes des véhicules aériens pouvant héliporter des objets héliportables.
 */
R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
[
	"CH47_base_EP1",
	"Mi17_base",
	"Mi24_Base",
	"UH1H_base",
	"UH1_Base",
	"UH60_Base",
	"MV22",
	"CH_47F_EP1_DZ",
	"MH6J_DZ",
	"Mi17_Civilian_DZ",
	"Mi17_DZ",
	"MV22_DZ",
	"UH1H_DZ",
    "UH1Y_DZ",
	"BAF_Merlin_HC3_D",
    "UH60M_EP1_DZ"
];

/**
 * List of class names of liftable objects.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
"ATV_Base_EP1",
"HMMWV_Base",
"Ikarus_TK_CIV_EP1",
"Lada_base",
"LandRover_Base",
"Offroad_DSHKM_base",
"Pickup_PK_base",
"S1203_TK_CIV_EP1",
"SUV_Base_EP1",
"SkodaBase",
"TowingTractor",
"Tractor",
"Kamaz_Base",
"MTVR",
"GRAD_Base",
"Ural_Base",
"Ural_ZU23_Base",
"V3S_Base",
"UAZ_Base",
"VWGolf",
"Volha_TK_CIV_Base_EP1",
"BTR40_MG_base_EP1",
"hilux1_civil_1_open",
"hilux1_civil_3_open_EP1",
"D30_base",
"M119",
"ZU23_base",
"Boat",
"Fishing_Boat",
"SeaFox",
"Smallboat_1",
"ArmoredSUV_PMC_DZ",
"ATV_CZ_EP1",
"ATV_US_EP1",
"car_hatchback",
"car_sedan",
"datsun1_civil_1_open",
"datsun1_civil_2_covered",
"datsun1_civil_3_open",
"Fishing_Boat",
"GAZ_Vodnik_DZ",
"GAZ_Vodnik_MedEvac",
"GLT_M300_LT",
"GLT_M300_ST",
"GNT_C1105",
"GNT_C1105C",
"GNT_C1105R",
"GNT_C1105U",
"hilux1_civil_1_open",
"hilux1_civil_2_covered",
"hilux1_civil_3_open_EP1",
"HMMWV_Ambulance",
"HMMWV_Ambulance_CZ_DES_EP1",
"HMMWV_DES_EP1",
"HMMWV_DZ",
"HMMWV_M1035_DES_EP1",
"HMMWV_M1151_M2_CZ_DES_EP1_DZ",
"HMMWV_M9910A2_SOV_DES_EP1_DZ",
"Ikarus",
"Ikarus_TK_CIV_EP1",
"JetSkiYanahui_Case_Blue",
"JetSkiYanahui_Case_Green",
"JetSkiYanahui_Case_Red",
"JetSkiYanahui_Case_Yellow",
"Kamaz",
"KamazRefuel_DZ",
"Lada1",
"Lada1_TK_CIV_EP1",
"Lada2",
"Lada2_TK_CIV_EP1",
"LadaLM",
"LandRover_CZ_EP1",
"LandRover_MG_TK_EP1_DZ",
"LandRover_Special_CZ_EP1_DZ",
"LandRover_TK_CIV_EP1",
"MtvrRefuel_DES_EP1_DZ",
"MTVR_DES_EP1",
"Offroad_DSHKM_Gue_DZ",
"Old_moto_TK_Civ_EP1",
"PBX",
"Pickup_PK_GUE_DZ",
"Pickup_PK_INS_DZ",
"Pickup_PK_TK_GUE_EP1_DZ",
"RHIB",
"S1203_ambulance_EP1",
"S1203_TK_CIV_EP1",
"Skoda",
"SkodaBlue",
"SkodaGreen",
"SkodaRed",
"Smallboat_1",
"Smallboat_2",
"SUV_Blue",
"SUV_Camo",
"SUV_Charcoal",
"SUV_Green",
"SUV_Orange",
"SUV_Pink",
"SUV_Red",
"SUV_Silver",
"SUV_TK_CIV_EP1",
"SUV_White",
"SUV_Yellow",
"tractor",
"UAZ_CDF",
"UAZ_INS",
"UAZ_MG_TK_EP1_DZ",
"UAZ_RU",
"UAZ_Unarmed_TK_CIV_EP1",
"UAZ_Unarmed_TK_EP1",
"UAZ_Unarmed_UN_EP1",
"UralRefuel_TK_EP1_DZ",
"Ural_CDF",
"Ural_TK_CIV_EP1",
"Ural_UN_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_Open_TK_EP1",
"V3S_Refuel_TK_GUE_EP1_DZ",
"VolhaLimo_TK_CIV_EP1",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"VWGolf",
"V3S_Civ",
"V3S_TK_EP1_DZE",
"V3S_RA_TK_GUE_EP1_DZE",
"UralCivil_DZE",
"UralCivil2_DZE",
"KamazOpen_DZE",
"MtvrRefuel_DZ",
"MTVR",
"Zodiac"
	
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USSpecialWeaponsBox "weights" 5 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le référentiel arbitraire utilisé est : une caisse de munition de type USSpecialWeaponsBox "pèse" 5 unités.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorité d'une déclaration de capacité sur une autre correspond à leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient à la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est déclaré avec une capacité de 140 avant "Car". Et que "Car" est déclaré après "Truck" avec une capacité de 40,
 *   Alors toutes les sous-classes appartenant à "Truck" auront une capacité de 140. Et toutes les sous-classes appartenant
 *   à "Car", exceptées celles de "Truck", auront une capacité de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des véhicules (terrestres ou aériens) pouvant transporter des objets transportables.
 * Le deuxième élément des tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[

];
/**
 * List of class names of transportable objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxième élément des tableaux est le coût de capacité (en relation avec la capacité des véhicules).
 */
R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[

];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[

];