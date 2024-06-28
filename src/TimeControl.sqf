fn_forwardToTime =
{
  params ["_targetHours", "_targetMinutes"];
  private _diffTime = (24 + (_targetHours + (_targetMinutes / 60) - dayTime)) % 24;
  skipTime _diffTime;
};

fn_backToTime =
{
  params ["_targetHours", "_targetMinutes"];
  private _diffTime = ((24 + dayTime - (_targetHours + (_targetMinutes / 60))) % 24) * -1;
  skipTime _diffTime;
};
