player removeAction act4; // removing stop escort
_newCiv = _this select 3;

sleep 1;

detach _newCiv; // Just in case
_newCiv setVariable ["Escort",0,true];

player forceWalk false;
// Animation Sitting
[objNull, _newCiv, rswitchmove ,"CivilSitting"] call RE;