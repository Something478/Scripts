local UI = {};

UI["Radio_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["Radio_1"]["Name"] = [[Radio]];
UI["Radio_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


UI["UI_2"] = Instance.new("Frame", UI["Radio_1"]);
UI["UI_2"]["BorderSizePixel"] = 0;
UI["UI_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["UI_2"]["Size"] = UDim2.new(0.41134, 0, 0.5772, 0);
UI["UI_2"]["Position"] = UDim2.new(0.26701, 0, 0.13015, 0);
UI["UI_2"]["Name"] = [[UI]];


UI["Handle3_3"] = Instance.new("Frame", UI["UI_2"]);
UI["Handle3_3"]["BorderSizePixel"] = 0;
UI["Handle3_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Handle3_3"]["Size"] = UDim2.new(0.02924, 0, 0.23529, 0);
UI["Handle3_3"]["Position"] = UDim2.new(0.76608, 0, -0.21569, 0);
UI["Handle3_3"]["Name"] = [[Handle3]];


UI["UICorner_4"] = Instance.new("UICorner", UI["Handle3_3"]);



UI["UIGradient_5"] = Instance.new("UIGradient", UI["Handle3_3"]);
UI["UIGradient_5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 203, 0))};


UI["UIElement2_6"] = Instance.new("Frame", UI["UI_2"]);
UI["UIElement2_6"]["BorderSizePixel"] = 0;
UI["UIElement2_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["UIElement2_6"]["Size"] = UDim2.new(0.97661, 0, 0.66667, 0);
UI["UIElement2_6"]["Position"] = UDim2.new(0.0117, 0, 0.31373, 0);
UI["UIElement2_6"]["Name"] = [[UIElement2]];


UI["UICorner_7"] = Instance.new("UICorner", UI["UIElement2_6"]);



UI["Middle_8"] = Instance.new("Frame", UI["UIElement2_6"]);
UI["Middle_8"]["BorderSizePixel"] = 0;
UI["Middle_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Middle_8"]["Size"] = UDim2.new(0.1976, 0, 0.94118, 0);
UI["Middle_8"]["Position"] = UDim2.new(0.4012, 0, 0.02941, 0);
UI["Middle_8"]["Name"] = [[Middle]];


UI["UICorner_9"] = Instance.new("UICorner", UI["Middle_8"]);



UI["UIStroke_a"] = Instance.new("UIStroke", UI["Middle_8"]);
UI["UIStroke_a"]["Color"] = Color3.fromRGB(255, 255, 255);


UI["UIGradient_b"] = Instance.new("UIGradient", UI["UIStroke_a"]);
UI["UIGradient_b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(149, 117, 0)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(110, 86, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(110, 86, 0))};


UI["UIGradient_c"] = Instance.new("UIGradient", UI["Middle_8"]);
UI["UIGradient_c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(149, 117, 0)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(110, 86, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(110, 86, 0))};


UI["Stop_d"] = Instance.new("TextButton", UI["Middle_8"]);
UI["Stop_d"]["BorderSizePixel"] = 0;
UI["Stop_d"]["TextSize"] = 18;
UI["Stop_d"]["TextColor3"] = Color3.fromRGB(114, 114, 114);
UI["Stop_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Stop_d"]["Size"] = UDim2.new(0.93939, 0, 0.3125, 0);
UI["Stop_d"]["Text"] = [[Stop]];
UI["Stop_d"]["Name"] = [[Stop]];
UI["Stop_d"]["Position"] = UDim2.new(0.0303, 0, 0.01563, 0);


UI["UICorner_e"] = Instance.new("UICorner", UI["Stop_d"]);



UI["UIGradient_f"] = Instance.new("UIGradient", UI["Stop_d"]);
UI["UIGradient_f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Play_10"] = Instance.new("TextButton", UI["Middle_8"]);
UI["Play_10"]["TextWrapped"] = true;
UI["Play_10"]["BorderSizePixel"] = 0;
UI["Play_10"]["TextSize"] = 18;
UI["Play_10"]["TextColor3"] = Color3.fromRGB(114, 114, 114);
UI["Play_10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Play_10"]["Size"] = UDim2.new(0.93939, 0, 0.3125, 0);
UI["Play_10"]["Text"] = [[Play]];
UI["Play_10"]["Name"] = [[Play]];
UI["Play_10"]["Position"] = UDim2.new(0.0303, 0, 0.67188, 0);


UI["UICorner_11"] = Instance.new("UICorner", UI["Play_10"]);



UI["UIGradient_12"] = Instance.new("UIGradient", UI["Play_10"]);
UI["UIGradient_12"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["TextBox_13"] = Instance.new("TextBox", UI["Middle_8"]);
UI["TextBox_13"]["PlaceholderColor3"] = Color3.fromRGB(114, 114, 114);
UI["TextBox_13"]["BorderSizePixel"] = 0;
UI["TextBox_13"]["TextWrapped"] = true;
UI["TextBox_13"]["TextSize"] = 16;
UI["TextBox_13"]["TextColor3"] = Color3.fromRGB(114, 114, 114);
UI["TextBox_13"]["TextScaled"] = true;
UI["TextBox_13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["TextBox_13"]["PlaceholderText"] = [[Sound ID here]];
UI["TextBox_13"]["Size"] = UDim2.new(0.93939, 0, 0.3125, 0);
UI["TextBox_13"]["Position"] = UDim2.new(0.0303, 0, 0.34375, 0);
UI["TextBox_13"]["Text"] = [[]];


UI["UICorner_14"] = Instance.new("UICorner", UI["TextBox_13"]);



UI["UIGradient_15"] = Instance.new("UIGradient", UI["TextBox_13"]);
UI["UIGradient_15"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["UIGradient_16"] = Instance.new("UIGradient", UI["UIElement2_6"]);
UI["UIGradient_16"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 181, 0)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(231, 181, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(213, 164, 0))};


UI["Speaker1_17"] = Instance.new("Frame", UI["UIElement2_6"]);
UI["Speaker1_17"]["BorderSizePixel"] = 0;
UI["Speaker1_17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Speaker1_17"]["Size"] = UDim2.new(0.38323, 0, 0.94118, 0);
UI["Speaker1_17"]["Position"] = UDim2.new(0.00599, 0, 0.02941, 0);
UI["Speaker1_17"]["Name"] = [[Speaker1]];


UI["UICorner_18"] = Instance.new("UICorner", UI["Speaker1_17"]);
UI["UICorner_18"]["CornerRadius"] = UDim.new(0, 999);


UI["UIStroke_19"] = Instance.new("UIStroke", UI["Speaker1_17"]);
UI["UIStroke_19"]["Color"] = Color3.fromRGB(255, 255, 255);


UI["UIGradient_1a"] = Instance.new("UIGradient", UI["UIStroke_19"]);
UI["UIGradient_1a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Circle1_1b"] = Instance.new("Frame", UI["Speaker1_17"]);
UI["Circle1_1b"]["ZIndex"] = 99;
UI["Circle1_1b"]["BorderSizePixel"] = 0;
UI["Circle1_1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Circle1_1b"]["Size"] = UDim2.new(0.40625, 0, 0.40625, 0);
UI["Circle1_1b"]["Position"] = UDim2.new(0.29688, 0, 0.29688, 0);
UI["Circle1_1b"]["Name"] = [[Circle1]];


UI["UICorner_1c"] = Instance.new("UICorner", UI["Circle1_1b"]);
UI["UICorner_1c"]["CornerRadius"] = UDim.new(0, 999);


UI["UIGradient_1d"] = Instance.new("UIGradient", UI["Circle1_1b"]);
UI["UIGradient_1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(23, 23, 23)),ColorSequenceKeypoint.new(0.694, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


UI["UIStroke_1e"] = Instance.new("UIStroke", UI["Circle1_1b"]);
UI["UIStroke_1e"]["Thickness"] = 2;
UI["UIStroke_1e"]["Color"] = Color3.fromRGB(255, 255, 255);


UI["UIGradient_1f"] = Instance.new("UIGradient", UI["UIStroke_1e"]);
UI["UIGradient_1f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["TextLabel_20"] = Instance.new("TextLabel", UI["Circle1_1b"]);
UI["TextLabel_20"]["TextWrapped"] = true;
UI["TextLabel_20"]["BorderSizePixel"] = 0;
UI["TextLabel_20"]["TextScaled"] = true;
UI["TextLabel_20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["TextLabel_20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["TextLabel_20"]["BackgroundTransparency"] = 1;
UI["TextLabel_20"]["Size"] = UDim2.new(0.92308, 0, 0.92308, 0);
UI["TextLabel_20"]["Text"] = "• •\n• •"
UI["TextLabel_20"]["Position"] = UDim2.new(0.03846, 0, 0.03846, 0);


UI["UIGradient_21"] = Instance.new("UIGradient", UI["TextLabel_20"]);
UI["UIGradient_21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_22"] = Instance.new("Frame", UI["Speaker1_17"]);
UI["Frame_22"]["BorderSizePixel"] = 0;
UI["Frame_22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_22"]["Size"] = UDim2.new(0.04688, 0, 1.01563, 0);
UI["Frame_22"]["Position"] = UDim2.new(0.46875, 0, 0, 0);
UI["Frame_22"]["Rotation"] = -45;


UI["UIGradient_23"] = Instance.new("UIGradient", UI["Frame_22"]);
UI["UIGradient_23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_24"] = Instance.new("Frame", UI["Speaker1_17"]);
UI["Frame_24"]["BorderSizePixel"] = 0;
UI["Frame_24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_24"]["Size"] = UDim2.new(0.04688, 0, 1, 0);
UI["Frame_24"]["Position"] = UDim2.new(0.51563, 0, -0.04688, 0);
UI["Frame_24"]["Rotation"] = -45;


UI["UIGradient_25"] = Instance.new("UIGradient", UI["Frame_24"]);
UI["UIGradient_25"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_26"] = Instance.new("Frame", UI["Speaker1_17"]);
UI["Frame_26"]["BorderSizePixel"] = 0;
UI["Frame_26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_26"]["Size"] = UDim2.new(0.04688, 0, 1.01563, 0);
UI["Frame_26"]["Position"] = UDim2.new(0.48438, 0, 0, 0);
UI["Frame_26"]["Rotation"] = 45;


UI["UIGradient_27"] = Instance.new("UIGradient", UI["Frame_26"]);
UI["UIGradient_27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_28"] = Instance.new("Frame", UI["Speaker1_17"]);
UI["Frame_28"]["BorderSizePixel"] = 0;
UI["Frame_28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_28"]["Size"] = UDim2.new(0.04688, 0, 1.01563, 0);
UI["Frame_28"]["Position"] = UDim2.new(0.4375, 0, -0.04688, 0);
UI["Frame_28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["Frame_28"]["Rotation"] = 45;


UI["UIGradient_29"] = Instance.new("UIGradient", UI["Frame_28"]);
UI["UIGradient_29"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["UIGradient_2a"] = Instance.new("UIGradient", UI["Speaker1_17"]);
UI["UIGradient_2a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(149, 117, 0)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(110, 86, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(110, 86, 0))};


UI["Speaker2_2b"] = Instance.new("Frame", UI["UIElement2_6"]);
UI["Speaker2_2b"]["BorderSizePixel"] = 0;
UI["Speaker2_2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Speaker2_2b"]["Size"] = UDim2.new(0.38323, 0, 0.94118, 0);
UI["Speaker2_2b"]["Position"] = UDim2.new(0.61078, 0, 0.02941, 0);
UI["Speaker2_2b"]["Name"] = [[Speaker2]];


UI["UICorner_2c"] = Instance.new("UICorner", UI["Speaker2_2b"]);
UI["UICorner_2c"]["CornerRadius"] = UDim.new(0, 999);


UI["UIStroke_2d"] = Instance.new("UIStroke", UI["Speaker2_2b"]);
UI["UIStroke_2d"]["Color"] = Color3.fromRGB(255, 255, 255);


UI["UIGradient_2e"] = Instance.new("UIGradient", UI["UIStroke_2d"]);
UI["UIGradient_2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Circle1_2f"] = Instance.new("Frame", UI["Speaker2_2b"]);
UI["Circle1_2f"]["ZIndex"] = 99;
UI["Circle1_2f"]["BorderSizePixel"] = 0;
UI["Circle1_2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Circle1_2f"]["Size"] = UDim2.new(0.40625, 0, 0.40625, 0);
UI["Circle1_2f"]["Position"] = UDim2.new(0.29688, 0, 0.29688, 0);
UI["Circle1_2f"]["Name"] = [[Circle1]];


UI["UICorner_30"] = Instance.new("UICorner", UI["Circle1_2f"]);
UI["UICorner_30"]["CornerRadius"] = UDim.new(0, 999);


UI["UIGradient_31"] = Instance.new("UIGradient", UI["Circle1_2f"]);
UI["UIGradient_31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(23, 23, 23)),ColorSequenceKeypoint.new(0.694, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


UI["UIStroke_32"] = Instance.new("UIStroke", UI["Circle1_2f"]);
UI["UIStroke_32"]["Thickness"] = 2;
UI["UIStroke_32"]["Color"] = Color3.fromRGB(255, 255, 255);


UI["UIGradient_33"] = Instance.new("UIGradient", UI["UIStroke_32"]);
UI["UIGradient_33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["TextLabel_34"] = Instance.new("TextLabel", UI["Circle1_2f"]);
UI["TextLabel_34"]["TextWrapped"] = true;
UI["TextLabel_34"]["BorderSizePixel"] = 0;
UI["TextLabel_34"]["TextScaled"] = true;
UI["TextLabel_34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["TextLabel_34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["TextLabel_34"]["BackgroundTransparency"] = 1;
UI["TextLabel_34"]["Size"] = UDim2.new(0.92308, 0, 0.92308, 0);
UI["TextLabel_34"]["Text"] = "• •\n• •"
UI["TextLabel_34"]["Position"] = UDim2.new(0.03846, 0, 0.03846, 0);


UI["UIGradient_35"] = Instance.new("UIGradient", UI["TextLabel_34"]);
UI["UIGradient_35"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_36"] = Instance.new("Frame", UI["Speaker2_2b"]);
UI["Frame_36"]["BorderSizePixel"] = 0;
UI["Frame_36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_36"]["Size"] = UDim2.new(0.04688, 0, 1.01563, 0);
UI["Frame_36"]["Position"] = UDim2.new(0.46875, 0, 0, 0);
UI["Frame_36"]["Rotation"] = -45;


UI["UIGradient_37"] = Instance.new("UIGradient", UI["Frame_36"]);
UI["UIGradient_37"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_38"] = Instance.new("Frame", UI["Speaker2_2b"]);
UI["Frame_38"]["BorderSizePixel"] = 0;
UI["Frame_38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_38"]["Size"] = UDim2.new(0.04688, 0, 1, 0);
UI["Frame_38"]["Position"] = UDim2.new(0.51563, 0, -0.04688, 0);
UI["Frame_38"]["Rotation"] = -45;


UI["UIGradient_39"] = Instance.new("UIGradient", UI["Frame_38"]);
UI["UIGradient_39"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_3a"] = Instance.new("Frame", UI["Speaker2_2b"]);
UI["Frame_3a"]["BorderSizePixel"] = 0;
UI["Frame_3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_3a"]["Size"] = UDim2.new(0.04688, 0, 1.01563, 0);
UI["Frame_3a"]["Position"] = UDim2.new(0.48438, 0, 0, 0);
UI["Frame_3a"]["Rotation"] = 45;


UI["UIGradient_3b"] = Instance.new("UIGradient", UI["Frame_3a"]);
UI["UIGradient_3b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["Frame_3c"] = Instance.new("Frame", UI["Speaker2_2b"]);
UI["Frame_3c"]["BorderSizePixel"] = 0;
UI["Frame_3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame_3c"]["Size"] = UDim2.new(0.04688, 0, 1.01563, 0);
UI["Frame_3c"]["Position"] = UDim2.new(0.4375, 0, -0.04688, 0);
UI["Frame_3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["Frame_3c"]["Rotation"] = 45;


UI["UIGradient_3d"] = Instance.new("UIGradient", UI["Frame_3c"]);
UI["UIGradient_3d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["UIGradient_3e"] = Instance.new("UIGradient", UI["Speaker2_2b"]);
UI["UIGradient_3e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(149, 117, 0)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(110, 86, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(110, 86, 0))};


UI["Handle2_3f"] = Instance.new("Frame", UI["UI_2"]);
UI["Handle2_3f"]["BorderSizePixel"] = 0;
UI["Handle2_3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Handle2_3f"]["Size"] = UDim2.new(0.02924, 0, 0.23529, 0);
UI["Handle2_3f"]["Position"] = UDim2.new(0.20468, 0, -0.21569, 0);
UI["Handle2_3f"]["Name"] = [[Handle2]];


UI["UICorner_40"] = Instance.new("UICorner", UI["Handle2_3f"]);



UI["UIGradient_41"] = Instance.new("UIGradient", UI["Handle2_3f"]);
UI["UIGradient_41"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 203, 0))};


UI["Handle1_42"] = Instance.new("Frame", UI["UI_2"]);
UI["Handle1_42"]["BorderSizePixel"] = 0;
UI["Handle1_42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Handle1_42"]["Size"] = UDim2.new(0.59064, 0, 0.04902, 0);
UI["Handle1_42"]["Position"] = UDim2.new(0.20468, 0, -0.21569, 0);
UI["Handle1_42"]["Name"] = [[Handle1]];


UI["UICorner_43"] = Instance.new("UICorner", UI["Handle1_42"]);



UI["UIGradient_44"] = Instance.new("UIGradient", UI["Handle1_42"]);
UI["UIGradient_44"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 203, 0))};


UI["UIGradient_45"] = Instance.new("UIGradient", UI["UI_2"]);
UI["UIGradient_45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 204, 0))};


UI["UICorner_46"] = Instance.new("UICorner", UI["UI_2"]);



UI["UIElement_47"] = Instance.new("Frame", UI["UI_2"]);
UI["UIElement_47"]["BorderSizePixel"] = 0;
UI["UIElement_47"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["UIElement_47"]["Size"] = UDim2.new(0.97661, 0, 0.28431, 0);
UI["UIElement_47"]["Position"] = UDim2.new(0.0117, 0, 0.01961, 0);
UI["UIElement_47"]["Name"] = [[UIElement]];


UI["UICorner_48"] = Instance.new("UICorner", UI["UIElement_47"]);



UI["UIGradient_49"] = Instance.new("UIGradient", UI["UIElement_47"]);
UI["UIGradient_49"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(23, 23, 23)),ColorSequenceKeypoint.new(0.694, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


UI["TextLabel_4a"] = Instance.new("TextLabel", UI["UIElement_47"]);
UI["TextLabel_4a"]["TextWrapped"] = true;
UI["TextLabel_4a"]["BorderSizePixel"] = 0;
UI["TextLabel_4a"]["TextScaled"] = true;
UI["TextLabel_4a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["TextLabel_4a"]["TextColor3"] = Color3.fromRGB(255, 216, 0);
UI["TextLabel_4a"]["BackgroundTransparency"] = 1;
UI["TextLabel_4a"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["TextLabel_4a"]["Text"] = "• • • • •\n• • • •"


UI["UIGradient_4b"] = Instance.new("UIGradient", UI["TextLabel_4a"]);
UI["UIGradient_4b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 203, 0))};


UI["TextLabel_4c"] = Instance.new("TextLabel", UI["UIElement_47"]);
UI["TextLabel_4c"]["TextWrapped"] = true;
UI["TextLabel_4c"]["BorderSizePixel"] = 0;
UI["TextLabel_4c"]["TextScaled"] = true;
UI["TextLabel_4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["TextLabel_4c"]["TextColor3"] = Color3.fromRGB(255, 216, 0);
UI["TextLabel_4c"]["BackgroundTransparency"] = 1;
UI["TextLabel_4c"]["Size"] = UDim2.new(0.10778, 0, 1, 0);
UI["TextLabel_4c"]["Text"] = [[••]];
UI["TextLabel_4c"]["Rotation"] = 90;
UI["TextLabel_4c"]["Position"] = UDim2.new(0.8024, 0, 0, 0);


UI["UIGradient_4d"] = Instance.new("UIGradient", UI["TextLabel_4c"]);
UI["UIGradient_4d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 203, 0))};


UI["Hide_4e"] = Instance.new("TextButton", UI["UIElement_47"]);
UI["Hide_4e"]["TextWrapped"] = true;
UI["Hide_4e"]["BorderSizePixel"] = 0;
UI["Hide_4e"]["TextSize"] = 18;
UI["Hide_4e"]["TextColor3"] = Color3.fromRGB(179, 151, 0);
UI["Hide_4e"]["BackgroundColor3"] = Color3.fromRGB(255, 216, 0);
UI["Hide_4e"]["Size"] = UDim2.new(0.08982, 0, 0.51724, 0);
UI["Hide_4e"]["Text"] = [[-]];
UI["Hide_4e"]["Name"] = [[Hide]];
UI["Hide_4e"]["Position"] = UDim2.new(0.90419, 0, 0.03448, 0);


UI["UICorner_4f"] = Instance.new("UICorner", UI["Hide_4e"]);
UI["UICorner_4f"]["CornerRadius"] = UDim.new(0, 99);


UI["UIGradient_50"] = Instance.new("UIGradient", UI["Hide_4e"]);
UI["UIGradient_50"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 216, 0)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(241, 203, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(241, 203, 0))};


UI["Show_51"] = Instance.new("TextButton", UI["Radio_1"]);
UI["Show_51"]["TextWrapped"] = true;
UI["Show_51"]["BorderSizePixel"] = 0;
UI["Show_51"]["TextSize"] = 18;
UI["Show_51"]["TextColor3"] = Color3.fromRGB(114, 114, 114);
UI["Show_51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Show_51"]["Size"] = UDim2.new(0.13471, 0, 0.11318, 0);
UI["Show_51"]["Text"] = [[Boombox]];
UI["Show_51"]["Name"] = [[Show]];
UI["Show_51"]["Position"] = UDim2.new(0.02068, 0, 0.00413, 0);


UI["UICorner_52"] = Instance.new("UICorner", UI["Show_51"]);



UI["UIGradient_53"] = Instance.new("UIGradient", UI["Show_51"]);
UI["UIGradient_53"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};


UI["UIStroke_54"] = Instance.new("UIStroke", UI["Show_51"]);
UI["UIStroke_54"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_54"]["Color"] = Color3.fromRGB(114, 114, 114);


UI["UIGradient_55"] = Instance.new("UIGradient", UI["UIStroke_54"]);
UI["UIGradient_55"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(202, 157, 0)),ColorSequenceKeypoint.new(0.469, Color3.fromRGB(185, 139, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(185, 139, 0))};

--// Dragify
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

dragify(UI["UI_2"])

--// Music Player Functionality
local currentSound = nil

local function playSound(soundId)
    if currentSound then
        currentSound:Stop()
        currentSound:Destroy()
        currentSound = nil
    end
    
    if not soundId or tonumber(soundId) == nil then
        warn("Invalid Sound ID")
        return
    end
    
    currentSound = Instance.new("Sound")
    currentSound.SoundId = "rbxassetid://" .. soundId
    currentSound.Parent = game:GetService("SoundService")
    currentSound:Play()
    
    print("Now playing sound: " .. soundId)
end

local function stopSound()
    if currentSound then
        currentSound:Stop()
        currentSound:Destroy()
        currentSound = nil
        print("Sound stopped")
    else
        print("No sound is currently playing")
    end
end

local function hideUI()
    UI["UI_2"].Visible = false
    UI["Show_51"].Visible = true
end

local function showUI()
    UI["UI_2"].Visible = true
    UI["Show_51"].Visible = false
end

UI["Play_10"].MouseButton1Click:Connect(function()
    local soundId = UI["TextBox_13"].Text
    if soundId and soundId ~= "" then
        playSound(soundId)
    else
        warn("Please enter a Sound ID")
    end
end)

UI["Stop_d"].MouseButton1Click:Connect(function()
    stopSound()
end)

UI["Hide_4e"].MouseButton1Click:Connect(function()
    hideUI()
end)

UI["Show_51"].MouseButton1Click:Connect(function()
    showUI()
end)

showUI()

game:GetService("Players").LocalPlayer.AncestryChanged:Connect(function(_, parent)
    if not parent then
        if currentSound then
            currentSound:Stop()
            currentSound:Destroy()
        end
    end
end)

return UI["Radio_1"], require