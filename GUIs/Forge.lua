local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

local player = Players.LocalPlayer
local Forge = {}

local CollectionService = game:GetService("CollectionService");
local G2L = {};

G2L["FG"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["FG"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["FG"]["ResetOnSpawn"] = false

CollectionService:AddTag(G2L["FG"], [[main]]);

G2L["Show_2"] = Instance.new("Frame", G2L["FG"]);
G2L["Show_2"]["BorderSizePixel"] = 0;
G2L["Show_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Show_2"]["Size"] = UDim2.new(0.05292, 0, 0.12449, 0);
G2L["Show_2"]["Position"] = UDim2.new(0, 16, 0, 0);
G2L["Show_2"]["Name"] = [[Show]];
G2L["Show_2"]["Visible"] = false

G2L["UICorner_3"] = Instance.new("UICorner", G2L["Show_2"]);
G2L["UICorner_3"]["CornerRadius"] = UDim.new(1, 0);

G2L["TextButton_4"] = Instance.new("TextButton", G2L["Show_2"]);
G2L["TextButton_4"]["TextWrapped"] = true;
G2L["TextButton_4"]["BorderSizePixel"] = 0;
G2L["TextButton_4"]["TextScaled"] = true;
G2L["TextButton_4"]["TextColor3"] = Color3.fromRGB(23, 0, 255);
G2L["TextButton_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextButton_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextButton_4"]["BackgroundTransparency"] = 1;
G2L["TextButton_4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["TextButton_4"]["Text"] = [[F]];

G2L["UICorner_5"] = Instance.new("UICorner", G2L["TextButton_4"]);
G2L["UICorner_5"]["CornerRadius"] = UDim.new(1, 0);

G2L["UIGradient_6"] = Instance.new("UIGradient", G2L["TextButton_4"]);
G2L["UIGradient_6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["UIStroke_7"] = Instance.new("UIStroke", G2L["Show_2"]);
G2L["UIStroke_7"]["Color"] = Color3.fromRGB(255, 255, 255);

G2L["UIGradient_8"] = Instance.new("UIGradient", G2L["UIStroke_7"]);
G2L["UIGradient_8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["MainFrame_2"] = Instance.new("Frame", G2L["FG"]);
G2L["MainFrame_2"]["BorderSizePixel"] = 0;
G2L["MainFrame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["MainFrame_2"]["Size"] = UDim2.new(0.57251, 0, 0.9903, 0);
G2L["MainFrame_2"]["Position"] = UDim2.new(0, 96, 0, 0);
G2L["MainFrame_2"]["Name"] = [[MainFrame]];

G2L["Stats_3"] = Instance.new("Frame", G2L["MainFrame_2"]);
G2L["Stats_3"]["BorderSizePixel"] = 0;
G2L["Stats_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Stats_3"]["Size"] = UDim2.new(0.34034, 0, 1, 0);
G2L["Stats_3"]["Position"] = UDim2.new(0, 480, 0, 0);
G2L["Stats_3"]["Name"] = [[Stats]];

G2L["UICorner_4"] = Instance.new("UICorner", G2L["Stats_3"]);

G2L["StatsLabel_5"] = Instance.new("TextLabel", G2L["Stats_3"]);
G2L["StatsLabel_5"]["TextWrapped"] = true;
G2L["StatsLabel_5"]["BorderSizePixel"] = 0;
G2L["StatsLabel_5"]["TextSize"] = 14;
G2L["StatsLabel_5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["StatsLabel_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["StatsLabel_5"]["TextColor3"] = Color3.fromRGB(0, 33, 255);
G2L["StatsLabel_5"]["BackgroundTransparency"] = 1;
G2L["StatsLabel_5"]["RichText"] = true;
G2L["StatsLabel_5"]["Size"] = UDim2.new(0.97531, 0, 0.89143, 0);
G2L["StatsLabel_5"]["Text"] = [[FPS: Calculating...\nPing: Calculating...\nUsername: Loading...\nUserID: Loading...\nGame: Loading...\nGameID: Loading...]];
G2L["StatsLabel_5"]["Name"] = [[StatsLabel]];
G2L["StatsLabel_5"]["Position"] = UDim2.new(0, 2, 0, 36);

G2L["UICorner_6"] = Instance.new("UICorner", G2L["StatsLabel_5"]);

G2L["UIGradient2_7"] = Instance.new("UIGradient", G2L["StatsLabel_5"]);
G2L["UIGradient2_7"]["Name"] = [[UIGradient2]];
G2L["UIGradient2_7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["UIGradient_8"] = Instance.new("UIGradient", G2L["Stats_3"]);
G2L["UIGradient_8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

G2L["StatsTitle_9"] = Instance.new("TextLabel", G2L["Stats_3"]);
G2L["StatsTitle_9"]["BorderSizePixel"] = 0;
G2L["StatsTitle_9"]["TextSize"] = 40;
G2L["StatsTitle_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["StatsTitle_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["StatsTitle_9"]["TextColor3"] = Color3.fromRGB(0, 15, 255);
G2L["StatsTitle_9"]["BackgroundTransparency"] = 1;
G2L["StatsTitle_9"]["Size"] = UDim2.new(1, 0, 0.10286, 0);
G2L["StatsTitle_9"]["Text"] = [[Statistics]];
G2L["StatsTitle_9"]["Name"] = [[StatsTitle]];
G2L["StatsTitle_9"]["Position"] = UDim2.new(0, 0, 0, -2);

G2L["UIGradient_a"] = Instance.new("UIGradient", G2L["StatsTitle_9"]);
G2L["UIGradient_a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Frame_b"] = Instance.new("Frame", G2L["StatsTitle_9"]);
G2L["Frame_b"]["BorderSizePixel"] = 0;
G2L["Frame_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_b"]["Size"] = UDim2.new(1, 0, 0.05556, 0);
G2L["Frame_b"]["Position"] = UDim2.new(0, 0, 0, 34);

G2L["UIGradient_c"] = Instance.new("UIGradient", G2L["Frame_b"]);
G2L["UIGradient_c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["UIStroke_d"] = Instance.new("UIStroke", G2L["Stats_3"]);
G2L["UIStroke_d"]["Color"] = Color3.fromRGB(0, 15, 255);

G2L["UIGradient_e"] = Instance.new("UIGradient", G2L["UIStroke_d"]);
G2L["UIGradient_e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Save_f"] = Instance.new("TextButton", G2L["MainFrame_2"]);
G2L["Save_f"]["TextWrapped"] = true;
G2L["Save_f"]["BorderSizePixel"] = 0;
G2L["Save_f"]["TextSize"] = 12;
G2L["Save_f"]["TextColor3"] = Color3.fromRGB(0, 15, 255);
G2L["Save_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Save_f"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0);
G2L["Save_f"]["Text"] = [[Save]];
G2L["Save_f"]["Name"] = [[Save]];
G2L["Save_f"]["Position"] = UDim2.new(0, 170, 0, 320);

G2L["UICorner_10"] = Instance.new("UICorner", G2L["Save_f"]);

G2L["TopBar_11"] = Instance.new("Frame", G2L["MainFrame_2"]);
G2L["TopBar_11"]["BorderSizePixel"] = 0;
G2L["TopBar_11"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TopBar_11"]["Size"] = UDim2.new(0.98319, 0, 0.10857, 0);
G2L["TopBar_11"]["Position"] = UDim2.new(0, 4, 0, 24);
G2L["TopBar_11"]["Name"] = [[TopBar]];

G2L["F9_Tab_12"] = Instance.new("TextButton", G2L["TopBar_11"]);
G2L["F9_Tab_12"]["TextWrapped"] = true;
G2L["F9_Tab_12"]["BorderSizePixel"] = 0;
G2L["F9_Tab_12"]["TextScaled"] = true;
G2L["F9_Tab_12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["F9_Tab_12"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["F9_Tab_12"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0);
G2L["F9_Tab_12"]["Text"] = [[Console]];
G2L["F9_Tab_12"]["Name"] = [[F9_Tab]];
G2L["F9_Tab_12"]["Position"] = UDim2.new(0, 260, 0, 4);

G2L["UICorner_13"] = Instance.new("UICorner", G2L["F9_Tab_12"]);

G2L["UIGradient_14"] = Instance.new("UIGradient", G2L["F9_Tab_12"]);
G2L["UIGradient_14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Frame_15"] = Instance.new("Frame", G2L["F9_Tab_12"]);
G2L["Frame_15"]["BorderSizePixel"] = 0;
G2L["Frame_15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_15"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0);
G2L["Frame_15"]["Position"] = UDim2.new(0, 84, 0, -4);

G2L["UIGradient_16"] = Instance.new("UIGradient", G2L["Frame_15"]);
G2L["UIGradient_16"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Search_Tab_17"] = Instance.new("TextButton", G2L["TopBar_11"]);
G2L["Search_Tab_17"]["TextWrapped"] = true;
G2L["Search_Tab_17"]["BorderSizePixel"] = 0;
G2L["Search_Tab_17"]["TextScaled"] = true;
G2L["Search_Tab_17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Search_Tab_17"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["Search_Tab_17"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0);
G2L["Search_Tab_17"]["Text"] = [[Search]];
G2L["Search_Tab_17"]["Name"] = [[Search_Tab]];
G2L["Search_Tab_17"]["Position"] = UDim2.new(0, 88, 0, 4);

G2L["UICorner_18"] = Instance.new("UICorner", G2L["Search_Tab_17"]);

G2L["UIGradient_19"] = Instance.new("UIGradient", G2L["Search_Tab_17"]);
G2L["UIGradient_19"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Frame_1a"] = Instance.new("Frame", G2L["Search_Tab_17"]);
G2L["Frame_1a"]["BorderSizePixel"] = 0;
G2L["Frame_1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_1a"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0);
G2L["Frame_1a"]["Position"] = UDim2.new(0, 84, 0, -4);

G2L["UIGradient_1b"] = Instance.new("UIGradient", G2L["Frame_1a"]);
G2L["UIGradient_1b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Fav_Tab_1c"] = Instance.new("TextButton", G2L["TopBar_11"]);
G2L["Fav_Tab_1c"]["TextWrapped"] = true;
G2L["Fav_Tab_1c"]["BorderSizePixel"] = 0;
G2L["Fav_Tab_1c"]["TextScaled"] = true;
G2L["Fav_Tab_1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Fav_Tab_1c"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["Fav_Tab_1c"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0);
G2L["Fav_Tab_1c"]["Text"] = [[Favorites]];
G2L["Fav_Tab_1c"]["Name"] = [[Fav_Tab]];
G2L["Fav_Tab_1c"]["Position"] = UDim2.new(0, 174, 0, 4);

G2L["UICorner_1d"] = Instance.new("UICorner", G2L["Fav_Tab_1c"]);

G2L["UIGradient_1e"] = Instance.new("UIGradient", G2L["Fav_Tab_1c"]);
G2L["UIGradient_1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Frame_1f"] = Instance.new("Frame", G2L["Fav_Tab_1c"]);
G2L["Frame_1f"]["BorderSizePixel"] = 0;
G2L["Frame_1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_1f"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0);
G2L["Frame_1f"]["Position"] = UDim2.new(0, 84, 0, -4);

G2L["UIGradient_20"] = Instance.new("UIGradient", G2L["Frame_1f"]);
G2L["UIGradient_20"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["UICorner_21"] = Instance.new("UICorner", G2L["TopBar_11"]);

G2L["UIGradient_22"] = Instance.new("UIGradient", G2L["TopBar_11"]);
G2L["UIGradient_22"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))};

G2L["UIGradient2_23"] = Instance.new("UIGradient", G2L["TopBar_11"]);
G2L["UIGradient2_23"]["Name"] = [[UIGradient2]];
G2L["UIGradient2_23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

G2L["Exe_Tab_24"] = Instance.new("TextButton", G2L["TopBar_11"]);
G2L["Exe_Tab_24"]["TextWrapped"] = true;
G2L["Exe_Tab_24"]["BorderSizePixel"] = 0;
G2L["Exe_Tab_24"]["TextScaled"] = true;
G2L["Exe_Tab_24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Exe_Tab_24"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["Exe_Tab_24"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0);
G2L["Exe_Tab_24"]["Text"] = [[Executor]];
G2L["Exe_Tab_24"]["Name"] = [[Exe_Tab]];
G2L["Exe_Tab_24"]["Position"] = UDim2.new(0, 2, 0, 4);

G2L["UICorner_25"] = Instance.new("UICorner", G2L["Exe_Tab_24"]);

G2L["UIGradient_26"] = Instance.new("UIGradient", G2L["Exe_Tab_24"]);
G2L["UIGradient_26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Frame_27"] = Instance.new("Frame", G2L["Exe_Tab_24"]);
G2L["Frame_27"]["BorderSizePixel"] = 0;
G2L["Frame_27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_27"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0);
G2L["Frame_27"]["Position"] = UDim2.new(0, 84, 0, -4);

G2L["UIGradient_28"] = Instance.new("UIGradient", G2L["Frame_27"]);
G2L["UIGradient_28"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["UIStroke_29"] = Instance.new("UIStroke", G2L["TopBar_11"]);
G2L["UIStroke_29"]["Color"] = Color3.fromRGB(0, 15, 255);

G2L["UIGradient_2a"] = Instance.new("UIGradient", G2L["UIStroke_29"]);
G2L["UIGradient_2a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["UIStroke_2b"] = Instance.new("UIStroke", G2L["MainFrame_2"]);
G2L["UIStroke_2b"]["Color"] = Color3.fromRGB(0, 15, 255);

G2L["UIGradient_2c"] = Instance.new("UIGradient", G2L["UIStroke_2b"]);
G2L["UIGradient_2c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Exe_2d"] = Instance.new("TextButton", G2L["MainFrame_2"]);
G2L["Exe_2d"]["TextWrapped"] = true;
G2L["Exe_2d"]["BorderSizePixel"] = 0;
G2L["Exe_2d"]["TextSize"] = 12;
G2L["Exe_2d"]["TextColor3"] = Color3.fromRGB(0, 15, 255);
G2L["Exe_2d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Exe_2d"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0);
G2L["Exe_2d"]["Text"] = [[Execute]];
G2L["Exe_2d"]["Name"] = [[Exe]];
G2L["Exe_2d"]["Position"] = UDim2.new(0, 4, 0, 320);

G2L["UICorner_2e"] = Instance.new("UICorner", G2L["Exe_2d"]);

G2L["UICorner_2f"] = Instance.new("UICorner", G2L["MainFrame_2"]);

G2L["Hide_30"] = Instance.new("TextButton", G2L["MainFrame_2"]);
G2L["Hide_30"]["TextWrapped"] = true;
G2L["Hide_30"]["BorderSizePixel"] = 0;
G2L["Hide_30"]["TextScaled"] = true;
G2L["Hide_30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Hide_30"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Hide_30"]["Size"] = UDim2.new(0.05882, 0, 0.05143, 0);
G2L["Hide_30"]["Text"] = [[—]];
G2L["Hide_30"]["Name"] = [[Hide]];
G2L["Hide_30"]["Position"] = UDim2.new(0, 446, 0, 2);

G2L["UICorner_31"] = Instance.new("UICorner", G2L["Hide_30"]);

G2L["UIGradient2_32"] = Instance.new("UIGradient", G2L["Hide_30"]);
G2L["UIGradient2_32"]["Name"] = [[UIGradient2]];
G2L["UIGradient2_32"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["Clr_33"] = Instance.new("TextButton", G2L["MainFrame_2"]);
G2L["Clr_33"]["TextWrapped"] = true;
G2L["Clr_33"]["BorderSizePixel"] = 0;
G2L["Clr_33"]["TextSize"] = 12;
G2L["Clr_33"]["TextColor3"] = Color3.fromRGB(0, 15, 255);
G2L["Clr_33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Clr_33"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0);
G2L["Clr_33"]["Text"] = [[Clear]];
G2L["Clr_33"]["Name"] = [[Clr]];
G2L["Clr_33"]["Position"] = UDim2.new(0, 86, 0, 320);

G2L["UICorner_34"] = Instance.new("UICorner", G2L["Clr_33"]);

G2L["InputTextbox_35"] = Instance.new("Frame", G2L["MainFrame_2"]);
G2L["InputTextbox_35"]["ZIndex"] = 0;
G2L["InputTextbox_35"]["BorderSizePixel"] = 0;
G2L["InputTextbox_35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["InputTextbox_35"]["Size"] = UDim2.new(0.98319, 0, 0.71429, 0);
G2L["InputTextbox_35"]["Position"] = UDim2.new(0, 4, 0, 66);
G2L["InputTextbox_35"]["Name"] = [[InputTextbox]];

G2L["UIGradient_36"] = Instance.new("UIGradient", G2L["InputTextbox_35"]);
G2L["UIGradient_36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))};

G2L["TextBox_37"] = Instance.new("TextBox", G2L["InputTextbox_35"]);
G2L["TextBox_37"]["CursorPosition"] = -1;
G2L["TextBox_37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["TextBox_37"]["BorderSizePixel"] = 0;
G2L["TextBox_37"]["TextWrapped"] = true;
G2L["TextBox_37"]["TextSize"] = 18;
G2L["TextBox_37"]["TextColor3"] = Color3.fromRGB(104, 255, 0);
G2L["TextBox_37"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["TextBox_37"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TextBox_37"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextBox_37"]["PlaceholderText"] = [[Script here...]];
G2L["TextBox_37"]["Size"] = UDim2.new(0.98718, 0, 0.984, 0);
G2L["TextBox_37"]["Position"] = UDim2.new(0, 2, 0, 2);
G2L["TextBox_37"]["Text"] = [[]];

G2L["UIGradient_38"] = Instance.new("UIGradient", G2L["MainFrame_2"]);
G2L["UIGradient_38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};

G2L["Title_39"] = Instance.new("TextLabel", G2L["MainFrame_2"]);
G2L["Title_39"]["TextWrapped"] = true;
G2L["Title_39"]["ZIndex"] = 2;
G2L["Title_39"]["BorderSizePixel"] = 0;
G2L["Title_39"]["TextSize"] = 48;
G2L["Title_39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Title_39"]["TextScaled"] = true;
G2L["Title_39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Title_39"]["TextColor3"] = Color3.fromRGB(0, 15, 255);
G2L["Title_39"]["BackgroundTransparency"] = 1;
G2L["Title_39"]["Size"] = UDim2.new(0.9916, 0, 0.06286, 0);
G2L["Title_39"]["Text"] = [[Forge]];
G2L["Title_39"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Title_39"]["Name"] = [[Title]];
G2L["Title_39"]["Position"] = UDim2.new(0, 2, 0, 0);

G2L["ExecutorContent"] = Instance.new("Frame", G2L["MainFrame_2"])
G2L["ExecutorContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["ExecutorContent"]["BackgroundTransparency"] = 1
G2L["ExecutorContent"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["ExecutorContent"]["Name"] = "ExecutorContent"

G2L["FavoritesContent"] = Instance.new("Frame", G2L["MainFrame_2"])
G2L["FavoritesContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["FavoritesContent"]["BackgroundTransparency"] = 1
G2L["FavoritesContent"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["FavoritesContent"]["Name"] = "FavoritesContent"
G2L["FavoritesContent"]["Visible"] = false

G2L["SearchContent"] = Instance.new("Frame", G2L["MainFrame_2"])
G2L["SearchContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["SearchContent"]["BackgroundTransparency"] = 1
G2L["SearchContent"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["SearchContent"]["Name"] = "SearchContent"
G2L["SearchContent"]["Visible"] = false

G2L["SearchBox"] = Instance.new("TextBox", G2L["SearchContent"])
G2L["SearchBox"]["CursorPosition"] = -1
G2L["SearchBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["SearchBox"]["BorderSizePixel"] = 0
G2L["SearchBox"]["TextSize"] = 10
G2L["SearchBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["SearchBox"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
G2L["SearchBox"]["PlaceholderText"] = "Search scripts (Powered by ScriptBlox.com)"
G2L["SearchBox"]["Size"] = UDim2.new(0.9916, 0, 0.08571, 0)
G2L["SearchBox"]["Position"] = UDim2.new(0, 2, 0, 68)
G2L["SearchBox"]["Text"] = ""

G2L["UICorner_3d"] = Instance.new("UICorner", G2L["SearchBox"])

G2L["SearchList"] = Instance.new("ScrollingFrame", G2L["SearchContent"])
G2L["SearchList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["SearchList"]["BackgroundTransparency"] = 1
G2L["SearchList"]["Size"] = UDim2.new(1, -12, 1, -100)
G2L["SearchList"]["Position"] = UDim2.new(0, 6, 0, 100)
G2L["SearchList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
G2L["SearchList"]["ScrollBarThickness"] = 8
G2L["SearchList"]["Name"] = "SearchList"

G2L["FavoritesList"] = Instance.new("ScrollingFrame", G2L["FavoritesContent"])
G2L["FavoritesList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["FavoritesList"]["BackgroundTransparency"] = 1
G2L["FavoritesList"]["Size"] = UDim2.new(1, -12, 1, -80)
G2L["FavoritesList"]["Position"] = UDim2.new(0, 6, 0, 80)
G2L["FavoritesList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
G2L["FavoritesList"]["ScrollBarThickness"] = 8
G2L["FavoritesList"]["Name"] = "FavoritesList"

Forge = G2L

local FavoritesData = {scripts = {}}
local DATA_STORE_KEY = "ForgeExecutorFavorites"

pcall(function()
    if readfile then
        local success, data = pcall(function()
            return HttpService:JSONDecode(readfile(DATA_STORE_KEY .. ".json"))
        end)
        if success and data then
            FavoritesData = data
        end
    end
end)

local function saveFavorites()
    if writefile then
        pcall(function()
            writefile(DATA_STORE_KEY .. ".json", HttpService:JSONEncode(FavoritesData))
        end)
    end
end

local statsConnections = {}
local fpsCounter = 0
local lastTime = tick()
local frameCount = 0

local function getPing()
    local ping = player:GetNetworkPing()
    return math.floor(ping * 1000) 
end

local function updateStats()
    local statsLabel = Forge["StatsLabel_5"]
    if statsLabel then
        frameCount = frameCount + 1
        local currentTime = tick()
        if currentTime - lastTime >= 1 then
            fpsCounter = math.floor(frameCount / (currentTime - lastTime))
            frameCount = 0
            lastTime = currentTime
        end
        
        local ping = getPing()
        local username = player.Name
        local userId = player.UserId
        local gameName = "Unknown"
        local gameId = game.PlaceId
        
        local success, result = pcall(function()
            return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
        end)
        if success and result then
            gameName = result.Name
        end
        
        statsLabel.Text = string.format("FPS: %d\nPing: %d ms\nUsername: %s\nUserID: %d\nGame: %s\nGameID: %d", 
            fpsCounter, ping, username, userId, gameName, gameId)
    end
end

local currentTab = "executor"
local function switchTab(tabName)
    currentTab = tabName
    
    Forge["ExecutorContent"].Visible = (tabName == "executor")
    Forge["FavoritesContent"].Visible = (tabName == "favorites")
    Forge["SearchContent"].Visible = (tabName == "search")
    Forge["InputTextbox_35"].Visible = (tabName == "executor")
    Forge["Exe_2d"].Visible = (tabName == "executor")
    Forge["Clr_33"].Visible = (tabName == "executor")
    Forge["Save_f"].Visible = (tabName == "executor")
    
    local executorBtn = Forge["Exe_Tab_24"]
    local favoritesBtn = Forge["Fav_Tab_1c"]
    local searchBtn = Forge["Search_Tab_17"]
    local consoleBtn = Forge["F9_Tab_12"]
    
    if executorBtn then
        executorBtn.BackgroundColor3 = (tabName == "executor") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    end
    if favoritesBtn then
        favoritesBtn.BackgroundColor3 = (tabName == "favorites") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    end
    if searchBtn then
        searchBtn.BackgroundColor3 = (tabName == "search") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    end
    if consoleBtn then
        consoleBtn.BackgroundColor3 = (tabName == "console") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    end
end

local function createSavePopup()
    local popup = Instance.new("Frame")
    popup.Size = UDim2.new(0, 300, 0, 150)
    popup.Position = UDim2.new(0.5, -150, 0.5, -75)
    popup.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    popup.BorderSizePixel = 0
    popup.ZIndex = 10
    
    local corner = Instance.new("UICorner")
    corner.Parent = popup
    
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
    }
    gradient.Parent = popup
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(0, 15, 255)
    stroke.Parent = popup
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "Save Script"
    title.TextColor3 = Color3.fromRGB(0, 15, 255)
    title.TextSize = 20
    title.Font = Enum.Font.GothamBold
    title.Parent = popup
    
    local nameBox = Instance.new("TextBox")
    nameBox.Size = UDim2.new(0, 260, 0, 30)
    nameBox.Position = UDim2.new(0, 20, 0, 50)
    nameBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    nameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameBox.PlaceholderText = "Enter script name..."
    nameBox.Text = ""
    nameBox.Parent = popup
    
    local nameCorner = Instance.new("UICorner")
    nameCorner.Parent = nameBox
    
    local saveBtn = Instance.new("TextButton")
    saveBtn.Size = UDim2.new(0, 120, 0, 30)
    saveBtn.Position = UDim2.new(0, 30, 0, 100)
    saveBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
    saveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    saveBtn.Text = "Confirm"
    saveBtn.Parent = popup
    
    local saveCorner = Instance.new("UICorner")
    saveCorner.Parent = saveBtn
    
    local cancelBtn = Instance.new("TextButton")
    cancelBtn.Size = UDim2.new(0, 120, 0, 30)
    cancelBtn.Position = UDim2.new(0, 150, 0, 100)
    cancelBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
    cancelBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    cancelBtn.Text = "Cancel"
    cancelBtn.Parent = popup
    
    local cancelCorner = Instance.new("UICorner")
    cancelCorner.Parent = cancelBtn
    
    popup.Parent = Forge["MainFrame_2"]
    
    local function closePopup()
        popup:Destroy()
    end
    
    saveBtn.MouseButton1Click:Connect(function()
        local scriptName = nameBox.Text
        if scriptName and scriptName ~= "" then
            local scriptText = Forge["TextBox_37"].Text
            FavoritesData.scripts[scriptName] = {
                code = scriptText,
                timestamp = os.time()
            }
            saveFavorites()
            updateFavoritesList()
            closePopup()
        end
    end)
    
    cancelBtn.MouseButton1Click:Connect(closePopup)
end

local function updateFavoritesList()
    local favoritesList = Forge["FavoritesList"]
    if not favoritesList then return end
    
    for _, child in pairs(favoritesList:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    local yPosition = 0
    local itemHeight = 35
    local spacing = 5
    
    for name, scriptData in pairs(FavoritesData.scripts) do
        local favoriteFrame = Instance.new("Frame")
        favoriteFrame.Name = "Saved_" .. name
        favoriteFrame.Size = UDim2.new(1, -10, 0, 30)
        favoriteFrame.Position = UDim2.new(0, 5, 0, yPosition)
        favoriteFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        favoriteFrame.BackgroundTransparency = 0
        
        local corner = Instance.new("UICorner")
        corner.Parent = favoriteFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 300, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = name
        nameLabel.TextWrapped = true
        nameLabel.RichText = true
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.Parent = favoriteFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "LoadFav"
        loadButton.Size = UDim2.new(0, 26, 0, 26)
        loadButton.Position = UDim2.new(1, -60, 0, 2)
        loadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        loadButton.BackgroundTransparency = 0
        loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        loadButton.Text = "►"
        loadButton.TextSize = 12
        loadButton.Parent = favoriteFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local deleteButton = Instance.new("TextButton")
        deleteButton.Name = "DeleteFav"
        deleteButton.Size = UDim2.new(0, 26, 0, 26)
        deleteButton.Position = UDim2.new(1, -30, 0, 2)
        deleteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        deleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        deleteButton.Text = "🗑️"
        deleteButton.TextSize = 10
        deleteButton.Parent = favoriteFrame
        
        local deleteCorner = Instance.new("UICorner")
        deleteCorner.Parent = deleteButton
        
        loadButton.MouseButton1Click:Connect(function()
            Forge["TextBox_37"].Text = scriptData.code
            switchTab("executor")
        end)
        
        deleteButton.MouseButton1Click:Connect(function()
            FavoritesData.scripts[name] = nil
            saveFavorites()
            updateFavoritesList()
        end)
        
        favoriteFrame.Parent = favoritesList
        yPosition = yPosition + itemHeight + spacing
    end
    
    favoritesList.CanvasSize = UDim2.new(0, 0, 0, yPosition)
end

local function searchScripts(query)
    local searchList = Forge["SearchList"]
    if not searchList then return end
    
    for _, child in pairs(searchList:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    searchList.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    local loadingText = Instance.new("TextLabel")
    loadingText.Size = UDim2.new(1, 0, 0, 30)
    loadingText.Position = UDim2.new(0, 0, 0, 0)
    loadingText.BackgroundTransparency = 1
    loadingText.Text = "Searching..."
    loadingText.TextColor3 = Color3.fromRGB(0, 15, 255)
    loadingText.TextSize = 14
    loadingText.Parent = searchList
    
    local url = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(query) .. "&max=15&strict=true"
    
    local success, result = pcall(function()
        return game:HttpGetAsync(url)
    end)
    
    loadingText:Destroy()
    
    if not success then
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(1, 0, 0, 30)
        errorText.Position = UDim2.new(0, 0, 0, 0)
        errorText.BackgroundTransparency = 1
        errorText.Text = "Failed to search scripts"
        errorText.TextColor3 = Color3.fromRGB(255, 0, 0)
        errorText.TextSize = 14
        errorText.Parent = searchList
        return
    end
    
    local data
    success, data = pcall(function()
        return HttpService:JSONDecode(result)
    end)
    
    if not success or not data.result or not data.result.scripts then
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(1, 0, 0, 30)
        errorText.Position = UDim2.new(0, 0, 0, 0)
        errorText.BackgroundTransparency = 1
        errorText.Text = "No scripts found"
        errorText.TextColor3 = Color3.fromRGB(255, 255, 255)
        errorText.TextSize = 14
        errorText.Parent = searchList
        return
    end
    
    local yPosition = 0
    local itemHeight = 37
    local spacing = 5
    
    for _, scriptData in pairs(data.result.scripts) do
        local scriptFrame = Instance.new("Frame")
        scriptFrame.Size = UDim2.new(1, -10, 0, 32)
        scriptFrame.Position = UDim2.new(0, 5, 0, yPosition)
        scriptFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        
        local corner = Instance.new("UICorner")
        corner.Parent = scriptFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 350, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = scriptData.title .. " [👁️" .. scriptData.views .. "] [👍" .. (scriptData.likeCount or 0) .. "]"
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
        nameLabel.TextWrapped = true
        nameLabel.RichText = true
        nameLabel.Parent = scriptFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "Load"
        loadButton.Size = UDim2.new(0, 24, 0, 24)
        loadButton.Position = UDim2.new(1, -56, 0, 4)
        loadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        loadButton.Text = "►"
        loadButton.TextSize = 12
        loadButton.Parent = scriptFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local favoriteButton = Instance.new("TextButton")
        favoriteButton.Name = "Favorite"
        favoriteButton.Size = UDim2.new(0, 24, 0, 24)
        favoriteButton.Position = UDim2.new(1, -28, 0, 4)
        favoriteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        favoriteButton.TextColor3 = Color3.fromRGB(191, 191, 191)
        favoriteButton.Text = "★"
        favoriteButton.TextSize = 12
        favoriteButton.Parent = scriptFrame
        
        local favoriteCorner = Instance.new("UICorner")
        favoriteCorner.Parent = favoriteButton
        
        loadButton.MouseButton1Click:Connect(function()
            local scriptUrl = "https://scriptblox.com/api/script/raw/" .. scriptData.slug
            
            local success, scriptContent = pcall(function()
                return game:HttpGetAsync(scriptUrl)
            end)
            
            if success then
                Forge["TextBox_37"].Text = scriptContent
                switchTab("executor")
            else
                warn("Failed to load script: " .. scriptData.title)
            end
        end)
        
        favoriteButton.MouseButton1Click:Connect(function()
            local scriptUrl = "https://scriptblox.com/api/script/raw/" .. scriptData.slug
            
            local success, scriptContent = pcall(function()
                return game:HttpGetAsync(scriptUrl)
            end)
            
            if success then
                FavoritesData.scripts[scriptData.title] = {
                    code = scriptContent,
                    timestamp = os.time()
                }
                saveFavorites()
                updateFavoritesList()
                favoriteButton.TextColor3 = Color3.fromRGB(255, 215, 0)
            end
        end)
        
        scriptFrame.Parent = searchList
        yPosition = yPosition + itemHeight + spacing
    end
    
    searchList.CanvasSize = UDim2.new(0, 0, 0, yPosition)
end

Forge["Exe_2d"].MouseButton1Click:Connect(function()
    local scriptText = Forge["TextBox_37"].Text
    if scriptText and scriptText ~= "" then
        local success, error = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            warn("Execution error: " .. error)
        end
    end
end)

Forge["Clr_33"].MouseButton1Click:Connect(function()
    Forge["TextBox_37"].Text = ""
end)

Forge["Save_f"].MouseButton1Click:Connect(function()
    local scriptText = Forge["TextBox_37"].Text
    if scriptText and scriptText ~= "" then
        createSavePopup()
    end
end)

Forge["Exe_Tab_24"].MouseButton1Click:Connect(function()
    switchTab("executor")
end)

Forge["Fav_Tab_1c"].MouseButton1Click:Connect(function()
    switchTab("favorites")
    updateFavoritesList()
end)

Forge["Search_Tab_17"].MouseButton1Click:Connect(function()
    switchTab("search")
end)

Forge["F9_Tab_12"].MouseButton1Click:Connect(function()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
    task.wait()
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
end)

Forge["SearchBox"].FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local query = Forge["SearchBox"].Text
        if query and query ~= "" then
            searchScripts(query)
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.F9 then
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
        task.wait()
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
    end
end)

local minimized = false
Forge["Hide_30"].MouseButton1Click:Connect(function()
    minimized = true
    Forge["MainFrame_2"].Visible = false
    Forge["Show_2"].Visible = true
end)

Forge["TextButton_4"].MouseButton1Click:Connect(function()
    minimized = false
    Forge["MainFrame_2"].Visible = true
    Forge["Show_2"].Visible = false
end)

local function dragify(Frame)
    local dragToggle = nil
    local dragSpeed = .25
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if (input.UserInputState == Enum.UserInputState.End) then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end)
end

dragify(Forge["Show_2"])

local dragging = false
local dragInput2, dragStart2, startPos2

local function update2(input)
    local delta = input.Position - dragStart2
    Forge["MainFrame_2"].Position = UDim2.new(startPos2.X.Scale, startPos2.X.Offset + delta.X, startPos2.Y.Scale, startPos2.Y.Offset + delta.Y)
end

Forge["Title_39"].InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart2 = input.Position
        startPos2 = Forge["MainFrame_2"].Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Forge["Title_39"].InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput2 = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput2 and dragging then
        update2(input)
    end
end)

updateStats()
table.insert(statsConnections, RunService.RenderStepped:Connect(updateStats))
updateFavoritesList()
switchTab("executor")

return Forge["FG"], require