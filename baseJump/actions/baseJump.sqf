/********************
	BaseJump 0.2
	Author: Nightmare @ http://n8m4re.de
********************/
private["_bjVeh","_bjPos","_inVehicle","_onLadder"];
    
if (isNil "bjAct1") exitWith {
	_bjVeh = vehicle player;		
	if !( _bjVeh isKindOf "Air" ) then {
		bjAct1 = _bjVeh addAction [ ("<t color='#FE9A2E'>" + ( "PREPARE BASEJUMP" ) + "</t>" ),"baseJump\actions\baseJump.sqf",[_bjVeh],99,false,false,"",""];
	};
};

_bjVeh = _this select 1;

if ( !isNil "_bjVeh" ) exitWith {
	while { alive player } do {	
		_bjPos = [_bjVeh] call FNC_GetPos;	
		_inVehicle = ( _bjVeh != player);
		_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;			
		if ( isNil "bjAct2" ) then {	
			bjAct2 = _bjVeh addAction [ ("<t color='#FE9A2E'> -> jump </t>" ),"baseJump\actions\onJump.sqf",[_bjVeh],98,false,true,"",""];
		};
					
		if ( _onLadder || _inVehicle ) exitWith {
			if ( !isNil "bjAct2" ) then { _bjVeh removeAction bjAct2; bjAct2=nil; };
			888 cutText ["not a good place to perform a base jump!","PLAIN",0];
			sleep 1.5;
			888 cutText ["","PLAIN",0];
		};
		
		if ( ( _bjPos select 2 ) <= AllowToJumpOnMeters ) exitWith {
			if ( !isNil "bjAct2" ) then { _bjVeh removeAction bjAct2; bjAct2=nil; };
			999 cutText ["You are not high enough to perform a base jump!","PLAIN",0];
			sleep 1.5;
			999 cutText ["","PLAIN",0];
		};
	};
};