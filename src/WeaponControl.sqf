fn_addSlingWeaponAction =
{
  params ["_targetUnit"];
  _targetUnit addAction [
    "Sling/holster weapon",
    {params ["_actionUnit"]; _actionUnit call fn_slingWeapon;},
    nil, 6, false, true, "user1", "_originalTarget == player", 2, false
  ];
};

fn_slingWeapon =
{
  params ["_targetUnit"];
  _targetUnit action ["SwitchWeapon", _targetUnit, _targetUnit, 100];
};

fn_switchToWeaponIndex =
{
  params ["_targetUnit", "_weaponIdx"];
  _targetUnit action ["SwitchWeapon", _targetUnit, _targetUnit, _weaponIdx];
};

fn_dropWeapon =
{
  params ["_targetUnit"];
  private _dropPos = getPosATL _targetUnit;
  private _dropPosCorr = [_dropPos select 0, _dropPos select 1, 1];
  private _dropPosVhc = "GroundWeaponHolder_Scripted" createVehicle _dropPosCorr;
  private _weapon = currentWeapon _targetUnit;
  _targetUnit action ["DropWeapon", _dropPosVhc, _weapon];
};

fn_makeVirtualArsenal =
{
  params ["_targetObj"];
  ["AmmoboxInit", [_targetObj, true]] call bis_fnc_arsenal;
};
