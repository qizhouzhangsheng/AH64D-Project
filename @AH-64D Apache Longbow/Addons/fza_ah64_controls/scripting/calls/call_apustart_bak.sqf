params["_heli"];

if(_heli animationphase "plt_apu" isEqualTo 1)then
{
    private _veh = "Land_ClutterCutter_small_F" createVehicle [0,0,0];
    _veh attachTo [_heli,[0,0,0]];
    hideObject _veh; 
    private _targetTime = time + 24.25;
    while {_heli animationphase "plt_apu" isEqualTo 1} do 
    {
        if (time > _targetTime) then 
        {
            _targetTime = time + 5.4;
            _veh say3D ["fza_ah64_loop_3D",200,1];
        };
    };
    deleteVehicle _veh;
};