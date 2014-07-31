private [ "_camera", "_welcomeMessage"];
_welcomeMessage = format["Willkommen %1",format["%1", name player]];

waitUntil {!isNil "dayz_animalCheck"};
showCinemaBorder true;
camUseNVG false;
_camera = "camera" camCreate [(position player select 0)-100*sin (round(random 359)), (position player select 1)-100*cos (round(random 359)),(position player select 2)+60];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
_camera camSetTarget vehicle player;
//_camera camSetRelPos [0,0,0];
_camera camSetRelPos [0,0,2];
_camera camCommit 8;

cutText [_welcomeMessage, "PLAIN DOWN"];

waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;