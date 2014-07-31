if (isnil ("sirensOn")) then {
    sirensOn = 0;
};
if (sirensOn == 1) then {
	sirensOn = 0;
	dayz_addsirens removeAction s_player_sirens_off;
        cutText ["Sirens OFF!","PLAIN DOWN"];
	sleep 5; //wait until old loop is finished before giving an option to start a new one
	s_player_sirens_on = -1;
	s_player_sirens_off = -1;
	} else {
	cutText ["Sirens OFF!","PLAIN DOWN"];
};