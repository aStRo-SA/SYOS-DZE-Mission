/*dayz_spaceInterrupt = {
    private ["_dikCode", "_handled"];
    _dikCode = _this select 1;
    _handled = false;
 
    if (_dikCode == 0x44) then {
        if (debugMonitor) then {
            debugMonitor = false;
            hintSilent "";
        } else {[] spawn fnc_debug;};
    };
    _handled
};
*/
 
fnc_debug = {
    debugMonitor = true;
    while {debugMonitor} do
    {
		_weaponname = 	(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName'));
		
		_nearestCity = nearestLocations [getPos player, ["NameCityCapital","NameCity","NameVillage","NameLocal"],750];
		_textCity = "Wilderness";
		if (count _nearestCity > 0) then {_textCity = text (_nearestCity select 0)};
		
		
        _kills =        player getVariable["zombieKills",0];
        _killsH =        player getVariable["humanKills",0];
        _killsB =        player getVariable["banditKills",0];
        _humanity =        player getVariable["humanity",0];
        _headShots =    player getVariable["headShots",0];
        _zombies =              count entities "zZombie_Base";
        _zombiesA =    {alive _x} count entities "zZombie_Base";
        _banditCount = {(isPlayer _x) && ((_x getVariable ["humanity",0]) < 0)} count playableUnits;
        _heroCount  = {(isPlayer _x) && ((_x getVariable ["humanity",0]) >= 5000)} count playableUnits;
        _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
            if (player == vehicle player) then
            {
                _pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
            }
                else
            {
                _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
            };
        hintSilent parseText format ["
        
		<t size='1.0'font='Bitstream'align='center' color='#EE0000' >[ Days Survived: %14 ]</t><br/><br/>
		<img size='4' image='%13'/><br/>
		<t size='1.0'font='Bitstream'align='center' color='#EE0000' >[ %15 ]</t><br/><br/>
		
		<t size='1.0'font='Bitstream'align='left' color='#DCCEB0' >Place:</t><t size='1.0'font='Bitstream'align='right' color='#DCCEB0' >%16</t><br/>
        <t size='1.0'font='Bitstream'align='left' color='#EE0000' >Blood:</t><t size='1.0' font='Bitstream'align='right' color='#EE0000' >%2</t><br/>
        <t size='1.0'font='Bitstream'align='left' color='#298DEF' >Humanity:</t><t size='1.0'font='Bitstream'align='right' color='#298DEF' >%3</t><br/>
        <t size='1.0'font='Bitstream'align='left' color='#B5DAFF' >Survivors kill:</t><t size='1.0'font='Bitstream'align='right' color='#B5DAFF' >%4</t><br/>
        <t size='1.0'font='Bitstream'align='left' color='#B5DAFF' >Bandits kill:</t><t size='1.0'font='Bitstream'align='right' color='#B5DAFF' >%5</t><br/>
        <t size='1.0'font='Bitstream'align='left' color='#B5DAFF' >Zombies kill:</t><t size='1.0'font='Bitstream'align='right' color='#B5DAFF' >%6</t><br/>
        <t size='1.0'font='Bitstream'align='left' color='#B5DAFF' >Head Shots:</t><t size='1.0'font='Bitstream'align='right' color='#B5DAFF' >%7</t><br/>
        <t size='1.0' font='Bitstream' align='left' color='#B5DAFF' >FPS: </t><t size='1.0' font='Bitstream' align='right' color='#B5DAFF' >%10</t><br/>
        <t size='1.0' font='Bitstream' align='left' color='#B5DAFF' >Restart every 3 Hours </t><br/><br/>
		<t size='1.0' font='Bitstream' align='center' color='#B5DAFF' >www.syos.co.za </t><br/><br/>
		<t size='0.9'font='Bitstream'align='center' color='#298DEF' >ts: 197.242.148.180:9987</t><br/>
 
        ",dayz_playerName,r_player_blood,round _humanity,_killsH,_killsB,_kills,_headShots,count entities "zZombie_Base",{alive _x} count entities "zZombie_Base",round diag_fps,_banditCount,_heroCount,_pic,(dayz_Survived),_weaponname,_textCity];
    sleep 1;
    };
};
 
[] spawn fnc_debug;
//		  <t size='1.0'font='Bitstream'align='center' color='#DDDDDD' >Servus %1 !</t><br/>
//        <t size='1.0'font='Bitstream'align='left' color='#CADCB0' >F10 zum Ein/Ausblenden</t><br/>