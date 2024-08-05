fn_addCommandAction =
{
  params ["_targetUnit"];
  _targetUnit addAction [
    "Command this person",
    {params ["_actionUnit"]; [_actionUnit] joinSilent group player;},
    nil, 3, false, true, "", "_originalTarget != player && !(_originalTarget in units group player)", 2, false
  ];
};

fn_addDismissAction =
{
  params ["_targetUnit"];
  _targetUnit addAction [
    "Dismiss this person",
    {params ["_actionUnit"]; [_actionUnit] joinSilent grpNull;},
    nil, 2.9, false, true, "", "_originalTarget != player && _originalTarget in units group player", 2, false
  ];
};

fn_addDismissToGroupAction =
{
  params ["_targetUnit", "_targetGroup"];
  _targetUnit addAction [
    "Dismiss this person",
    {params ["_actionUnit", "_caller", "_actionId", "_actionGroup"]; [_actionUnit] joinSilent _actionGroup;},
    _targetGroup, 2.9, false, true, "", "_originalTarget != player && _originalTarget in units group player", 2, false
  ];
};

fn_surrender =
{
  params ["_targetUnit"];
  _targetUnit setCombatMode "BLUE";
  _targetUnit setCombatBehaviour "SAFE";
  _targetUnit setUnitPos "MIDDLE";
  _targetUnit setCaptive true;
  _targetUnit action ["Surrender", _targetUnit];
  _targetUnit setCaptive true;
};
