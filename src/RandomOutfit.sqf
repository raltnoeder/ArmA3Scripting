CIV_CLOTH_COLLECTION =
[
  "U_I_C_Soldier_Bandit_1_F",
  "U_I_C_Soldier_Bandit_2_F",
  "U_I_C_Soldier_Bandit_3_F",
  "U_I_C_Soldier_Bandit_4_F",
  "U_I_C_Soldier_Bandit_5_F",
  "U_C_Man_casual_1_F",
  "U_C_Man_casual_2_F",
  "U_C_ArtTShirt_01_v1_F",
  "U_C_ArtTShirt_01_v2_F",
  "U_C_ArtTShirt_01_v3_F",
  "U_C_ArtTShirt_01_v4_F",
  "U_C_ArtTShirt_01_v5_F",
  "U_C_Poloshirt_blue",
  "U_C_Poloshirt_burgundy",
  "U_C_Poloshirt_redwhite",
  "U_C_Poloshirt_stripped",
  "U_C_Poloshirt_salmon",
  "U_C_Uniform_Farmer_01_F",
  "U_C_FormalSuit_01_black_F",
  "U_C_FormalSuit_01_blue_F",
  "U_C_FormalSuit_01_gray_F",
  "U_C_FormalSuit_01_khaki_F",
  "U_C_FormalSuit_01_tshirt_black_F",
  "U_C_FormalSuit_01_tshirt_gray_F",
  "U_C_HunterBody_grn",
  "U_C_Mechanic_01_F",
  "U_Marshal",
  "U_C_Man_casual_4_F",
  "U_C_Man_casual_5_F",
  "U_C_Man_casual_6_F",
  "U_C_man_sport_1_F",
  "U_C_man_sport_2_F",
  "U_C_man_sport_3_F"
];

CIV_FORMAL_CLOTH_COLLECTION =
[
  "U_C_FormalSuit_01_black_F",
  "U_C_FormalSuit_01_blue_F",
  "U_C_FormalSuit_01_gray_F",
  "U_C_FormalSuit_01_khaki_F",
  "U_C_FormalSuit_01_tshirt_black_F",
  "U_C_FormalSuit_01_tshirt_gray_F"
];

GUERRILLA_CLOTH_COLLECTION =
[
  "U_BG_Guerilla1_1",
  "U_BG_Guerilla2_1",
  "U_BG_Guerilla2_2",
  "U_BG_Guerilla2_3",
  "U_BG_Guerilla3_1",
  "U_BG_leader",
  "U_BG_Guerilla1_2_F"
];

fn_randomUniform =
{
  params ["_targetUnit", "_uniformCollection"];

  private _selUniform = selectRandom _uniformCollection;
  _targetUnit forceAddUniform _selUniform;
};

fn_randomCivilian =
{
  params ["_targetUnit"];
  [_targetUnit, CIV_CLOTH_COLLECTION] call fn_randomUniform;
};

fn_randomFormalCivilian =
{
  params ["_targetUnit"];
  [_targetUnit, CIV_FORMAL_CLOTH_COLLECTION] call fn_randomUniform;
};

fn_randomGuerrilla =
{
  params ["_targetUnit"];
  [_targetUnit, GUERRILLA_CLOTH_COLLECTION] call fn_randomUniform;
};
