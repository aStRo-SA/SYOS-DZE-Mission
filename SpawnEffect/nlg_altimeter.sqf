sleep 2;
_myalt = getPos player select 2;
_myalt = round(_myalt);
//debug start
diag_log(format["HÖHENMESSER GESTARTET: %1m ", _myalt]);
 
while {(_myalt) > 0} do {
 
// Display my altitude text.
_myalt = getPos player select 2;
_myalt = round(_myalt);
 
titleText [("                                      HÖHE: " + str _myalt + "\nAb 500m wirds kritisch!"), "PLAIN DOWN", 0.1];
 
};
//debug Stop
diag_log(format["ALTIMETER STOPPED: %1m ", _myalt]);