waituntil {alive player};
// loop that checks if player has been detained
// globalized effect reassigns variable if player logs
sleep 5; // give time to load in?
PVDZ_ARST_AMOUNT = 600;
PVDZ_ARST_CHECK = true;
//diag_log format ["ARREST:Initialization check."];
// Keeps the loops alive
while { (alive player) } do {
// if player is in public variable then loop below.
//diag_log format ["ARREST:Loop alive check."];
while {(getPlayerUID player) in PVDZ_ply_Arrst} do {
	/*if (player getVariable "Detain" == 1) then { // Checking if player is arrested or not and hasn't logged.
	// Blank to do nothing meaning they are already arrested and detained in correct animation.
	// Shouldn't need anything here to prevent constant loop reassignments.
	//diag_log format ["ARREST:Already in animation."];
	} else { 
	// If player has logged re-arrest them into animation and set them to variable.
	// If player has logged when logging back in this will run for the first loop before going to the empty above.
	//diag_log format ["ARREST:Re-assignment needed!"]; // <----------- This is spamming somehow and causing crashes (might be me being stupid and only changing the setvariable and not public variable on myself)
	player setVariable ["Detain",1,true]; // assigning variable so fn_selfactions functions again.
	[objNull, player, rswitchmove ,"CivilSitting"] call RE; // Replacing player into sitting animation.
	};*/
	// Disables simulation, player can log but timer is reset upon re-entry.
	// Should run once to reduce spam of disabling simulation.
	if (PVDZ_ARST_CHECK) then {
	// Should run once per detain.
	//diag_log format ["ARREST:Simulation disabled!"];
	player enableSimulation false;
	PVDZ_ARST_CHECK = false;
	player setVariable ["Detain",1,true]; // assigning variable so fn_selfactions functions again.
	[objNull, player, rswitchmove ,"CivilSitting"] call RE; // Replacing player into sitting animation.
	};
	// Timer
	while { ( 0 <= PVDZ_ARST_AMOUNT) } do {
		cutText [format["You are tied up for %1 seconds",PVDZ_ARST_AMOUNT], "PLAIN"]; // Counts down from 300 to 0 before continuing to release.
		sleep 1; // adds 1 second between each cutText, simulates real time seconds I guess.
		if (player getVariable "Detain" == 0) then { // Not sure if this can be placed in a for loop.
			// If this check works will end the timer? Hopefully.
			//diag_log format ["ARREST:Timer end check!"];
			PVDZ_ARST_AMOUNT = 0;
		};
		PVDZ_ARST_AMOUNT = PVDZ_ARST_AMOUNT-1; // Timer countdown reassignment.<-- moved to end loop if undetained...
	};
	if (PVDZ_ARST_AMOUNT <= 0) then { // once timer has finished realease scripts will start.
		// Release start...
		//diag_log format ["ARREST:Release Start!"];
		player setVariable ["Detain",0,true]; // resetting variable
		player setVariable ["Escort",0,true]; // resetting variable
		detach player;	// detaching in-case bugged.
		player enableSimulation true; // enabling simulation
		[objNull, player, rswitchmove,""] call RE; // resetting Animation
		// Publicvariable removal from player.
		if (!isnil ("PVDZ_ply_Arrst")) then {
			// id removed from array
			_id = getPlayerUID player;
			PVDZ_ply_Arrst= PVDZ_ply_Arrst-[_id];
			publicVariable "PVDZ_ply_Arrst";
		} else {
			// just incase something goes wrong undefine the variable
			PVDZ_ply_Arrst= nil;
			publicVariable "PVDZ_ply_Arrst";
		};
		PVDZ_ARST_AMOUNT = 600;	// resetting incase re-detained
		PVDZ_ARST_CHECK = true; // resetting incase re-detained
	};
};

sleep 1;
};