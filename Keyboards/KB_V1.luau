local UI = {};

UI["main_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["main_1"]["Name"] = [[main]];
UI["main_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

UI["Keyboard_2"] = Instance.new("Frame", UI["main_1"]);
UI["Keyboard_2"]["BorderSizePixel"] = 5;
UI["Keyboard_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Keyboard_2"]["Size"] = UDim2.new(0, 242, 0, 146);
UI["Keyboard_2"]["Position"] = UDim2.new(0, 16, 0, 2);
UI["Keyboard_2"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
UI["Keyboard_2"]["Name"] = [[Keyboard]];

UI["close_3"] = Instance.new("TextButton", UI["Keyboard_2"]);
UI["close_3"]["TextWrapped"] = true;
UI["close_3"]["BorderSizePixel"] = 0;
UI["close_3"]["TextScaled"] = true;
UI["close_3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["close_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["close_3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["close_3"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["close_3"]["Text"] = [[X]];
UI["close_3"]["Name"] = [[close]];
UI["close_3"]["Position"] = UDim2.new(0, 208, 0, 4);

UI["UICorner_4"] = Instance.new("UICorner", UI["close_3"]);
UI["UICorner_4"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_5"] = Instance.new("UIGradient", UI["close_3"]);
UI["UIGradient_5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_6"] = Instance.new("UIStroke", UI["close_3"]);
UI["UIStroke_6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_6"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_7"] = Instance.new("UIGradient", UI["UIStroke_6"]);
UI["UIGradient_7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UICorner_8"] = Instance.new("UICorner", UI["Keyboard_2"]);
UI["UICorner_8"]["CornerRadius"] = UDim.new(0, 4);

UI["line3_9"] = Instance.new("Frame", UI["Keyboard_2"]);
UI["line3_9"]["BorderSizePixel"] = 0;
UI["line3_9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["line3_9"]["Size"] = UDim2.new(0, 234, 0, 34);
UI["line3_9"]["Position"] = UDim2.new(0, 4, 0, 110);
UI["line3_9"]["Name"] = [[line3]];

UI["key_a"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_a"]["TextWrapped"] = true;
UI["key_a"]["BorderSizePixel"] = 0;
UI["key_a"]["TextScaled"] = true;
UI["key_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_a"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_a"]["Text"] = [[C]];
UI["key_a"]["Name"] = [[key]];
UI["key_a"]["Position"] = UDim2.new(0, 68, 0, 2);

UI["UICorner_b"] = Instance.new("UICorner", UI["key_a"]);
UI["UICorner_b"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_c"] = Instance.new("UIGradient", UI["key_a"]);
UI["UIGradient_c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_d"] = Instance.new("UIStroke", UI["key_a"]);
UI["UIStroke_d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_d"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_e"] = Instance.new("UIGradient", UI["UIStroke_d"]);
UI["UIGradient_e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_f"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_f"]["TextWrapped"] = true;
UI["key_f"]["BorderSizePixel"] = 0;
UI["key_f"]["TextScaled"] = true;
UI["key_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_f"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_f"]["Text"] = [[N]];
UI["key_f"]["Name"] = [[key]];
UI["key_f"]["Position"] = UDim2.new(0, 170, 0, 2);

UI["UICorner_10"] = Instance.new("UICorner", UI["key_f"]);
UI["UICorner_10"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_11"] = Instance.new("UIGradient", UI["key_f"]);
UI["UIGradient_11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_12"] = Instance.new("UIStroke", UI["key_f"]);
UI["UIStroke_12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_12"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_13"] = Instance.new("UIGradient", UI["UIStroke_12"]);
UI["UIGradient_13"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UICorner_14"] = Instance.new("UICorner", UI["line3_9"]);
UI["UICorner_14"]["CornerRadius"] = UDim.new(0, 4);

UI["key_15"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_15"]["TextWrapped"] = true;
UI["key_15"]["BorderSizePixel"] = 0;
UI["key_15"]["TextScaled"] = true;
UI["key_15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_15"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_15"]["Text"] = [[B]];
UI["key_15"]["Name"] = [[key]];
UI["key_15"]["Position"] = UDim2.new(0, 136, 0, 2);

UI["UICorner_16"] = Instance.new("UICorner", UI["key_15"]);
UI["UICorner_16"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_17"] = Instance.new("UIGradient", UI["key_15"]);
UI["UIGradient_17"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_18"] = Instance.new("UIStroke", UI["key_15"]);
UI["UIStroke_18"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_18"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_19"] = Instance.new("UIGradient", UI["UIStroke_18"]);
UI["UIGradient_19"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_1a"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_1a"]["TextWrapped"] = true;
UI["key_1a"]["BorderSizePixel"] = 0;
UI["key_1a"]["TextScaled"] = true;
UI["key_1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_1a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_1a"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_1a"]["Text"] = [[Z]];
UI["key_1a"]["Name"] = [[key]];
UI["key_1a"]["Position"] = UDim2.new(0, 0, 0, 2);

UI["UICorner_1b"] = Instance.new("UICorner", UI["key_1a"]);
UI["UICorner_1b"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_1c"] = Instance.new("UIGradient", UI["key_1a"]);
UI["UIGradient_1c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_1d"] = Instance.new("UIStroke", UI["key_1a"]);
UI["UIStroke_1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_1d"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_1e"] = Instance.new("UIGradient", UI["UIStroke_1d"]);
UI["UIGradient_1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_1f"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_1f"]["TextWrapped"] = true;
UI["key_1f"]["BorderSizePixel"] = 0;
UI["key_1f"]["TextScaled"] = true;
UI["key_1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_1f"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_1f"]["Text"] = [[M]];
UI["key_1f"]["Name"] = [[key]];
UI["key_1f"]["Position"] = UDim2.new(0, 204, 0, 2);

UI["UICorner_20"] = Instance.new("UICorner", UI["key_1f"]);
UI["UICorner_20"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_21"] = Instance.new("UIGradient", UI["key_1f"]);
UI["UIGradient_21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_22"] = Instance.new("UIStroke", UI["key_1f"]);
UI["UIStroke_22"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_22"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_23"] = Instance.new("UIGradient", UI["UIStroke_22"]);
UI["UIGradient_23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_24"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_24"]["TextWrapped"] = true;
UI["key_24"]["BorderSizePixel"] = 0;
UI["key_24"]["TextScaled"] = true;
UI["key_24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_24"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_24"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_24"]["Text"] = [[V]];
UI["key_24"]["Name"] = [[key]];
UI["key_24"]["Position"] = UDim2.new(0, 102, 0, 2);

UI["UICorner_25"] = Instance.new("UICorner", UI["key_24"]);
UI["UICorner_25"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_26"] = Instance.new("UIGradient", UI["key_24"]);
UI["UIGradient_26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_27"] = Instance.new("UIStroke", UI["key_24"]);
UI["UIStroke_27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_27"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_28"] = Instance.new("UIGradient", UI["UIStroke_27"]);
UI["UIGradient_28"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_29"] = Instance.new("TextButton", UI["line3_9"]);
UI["key_29"]["TextWrapped"] = true;
UI["key_29"]["BorderSizePixel"] = 0;
UI["key_29"]["TextScaled"] = true;
UI["key_29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_29"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_29"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_29"]["Text"] = [[X]];
UI["key_29"]["Name"] = [[key]];
UI["key_29"]["Position"] = UDim2.new(0, 34, 0, 2);

UI["UICorner_2a"] = Instance.new("UICorner", UI["key_29"]);
UI["UICorner_2a"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_2b"] = Instance.new("UIGradient", UI["key_29"]);
UI["UIGradient_2b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_2c"] = Instance.new("UIStroke", UI["key_29"]);
UI["UIStroke_2c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_2c"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_2d"] = Instance.new("UIGradient", UI["UIStroke_2c"]);
UI["UIGradient_2d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["line2_2e"] = Instance.new("Frame", UI["Keyboard_2"]);
UI["line2_2e"]["BorderSizePixel"] = 0;
UI["line2_2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["line2_2e"]["Size"] = UDim2.new(0, 200, 0, 34);
UI["line2_2e"]["Position"] = UDim2.new(0, 20, 0, 74);
UI["line2_2e"]["Name"] = [[line2]];

UI["key_2f"] = Instance.new("TextButton", UI["line2_2e"]);
UI["key_2f"]["TextWrapped"] = true;
UI["key_2f"]["BorderSizePixel"] = 0;
UI["key_2f"]["TextScaled"] = true;
UI["key_2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_2f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_2f"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_2f"]["Text"] = [[L]];
UI["key_2f"]["Name"] = [[key]];
UI["key_2f"]["Position"] = UDim2.new(0, 170, 0, 2);

UI["UICorner_30"] = Instance.new("UICorner", UI["key_2f"]);
UI["UICorner_30"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_31"] = Instance.new("UIGradient", UI["key_2f"]);
UI["UIGradient_31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_32"] = Instance.new("UIStroke", UI["key_2f"]);
UI["UIStroke_32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_32"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_33"] = Instance.new("UIGradient", UI["UIStroke_32"]);
UI["UIGradient_33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_34"] = Instance.new("TextButton", UI["line2_2e"]);
UI["key_34"]["TextWrapped"] = true;
UI["key_34"]["BorderSizePixel"] = 0;
UI["key_34"]["TextScaled"] = true;
UI["key_34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_34"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_34"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_34"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_34"]["Text"] = [[H]];
UI["key_34"]["Name"] = [[key]];
UI["key_34"]["Position"] = UDim2.new(0, 68, 0, 2);

UI["UICorner_35"] = Instance.new("UICorner", UI["key_34"]);
UI["UICorner_35"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_36"] = Instance.new("UIGradient", UI["key_34"]);
UI["UIGradient_36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_37"] = Instance.new("UIStroke", UI["key_34"]);
UI["UIStroke_37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_37"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_38"] = Instance.new("UIGradient", UI["UIStroke_37"]);
UI["UIGradient_38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UICorner_39"] = Instance.new("UICorner", UI["line2_2e"]);
UI["UICorner_39"]["CornerRadius"] = UDim.new(0, 4);

UI["key_3a"] = Instance.new("TextButton", UI["line2_2e"]);
UI["key_3a"]["TextWrapped"] = true;
UI["key_3a"]["BorderSizePixel"] = 0;
UI["key_3a"]["TextScaled"] = true;
UI["key_3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_3a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_3a"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_3a"]["Text"] = [[K]];
UI["key_3a"]["Name"] = [[key]];
UI["key_3a"]["Position"] = UDim2.new(0, 136, 0, 2);

UI["UICorner_3b"] = Instance.new("UICorner", UI["key_3a"]);
UI["UICorner_3b"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_3c"] = Instance.new("UIGradient", UI["key_3a"]);
UI["UIGradient_3c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_3d"] = Instance.new("UIStroke", UI["key_3a"]);
UI["UIStroke_3d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_3d"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_3e"] = Instance.new("UIGradient", UI["UIStroke_3d"]);
UI["UIGradient_3e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_3f"] = Instance.new("TextButton", UI["line2_2e"]);
UI["key_3f"]["TextWrapped"] = true;
UI["key_3f"]["BorderSizePixel"] = 0;
UI["key_3f"]["TextScaled"] = true;
UI["key_3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_3f"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_3f"]["Text"] = [[F]];
UI["key_3f"]["Name"] = [[key]];
UI["key_3f"]["Position"] = UDim2.new(0, 0, 0, 2);

UI["UICorner_40"] = Instance.new("UICorner", UI["key_3f"]);
UI["UICorner_40"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_41"] = Instance.new("UIGradient", UI["key_3f"]);
UI["UIGradient_41"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_42"] = Instance.new("UIStroke", UI["key_3f"]);
UI["UIStroke_42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_42"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_43"] = Instance.new("UIGradient", UI["UIStroke_42"]);
UI["UIGradient_43"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_44"] = Instance.new("TextButton", UI["line2_2e"]);
UI["key_44"]["TextWrapped"] = true;
UI["key_44"]["BorderSizePixel"] = 0;
UI["key_44"]["TextScaled"] = true;
UI["key_44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_44"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_44"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_44"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_44"]["Text"] = [[J]];
UI["key_44"]["Name"] = [[key]];
UI["key_44"]["Position"] = UDim2.new(0, 102, 0, 2);

UI["UICorner_45"] = Instance.new("UICorner", UI["key_44"]);
UI["UICorner_45"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_46"] = Instance.new("UIGradient", UI["key_44"]);
UI["UIGradient_46"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_47"] = Instance.new("UIStroke", UI["key_44"]);
UI["UIStroke_47"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_47"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_48"] = Instance.new("UIGradient", UI["UIStroke_47"]);
UI["UIGradient_48"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_49"] = Instance.new("TextButton", UI["line2_2e"]);
UI["key_49"]["TextWrapped"] = true;
UI["key_49"]["BorderSizePixel"] = 0;
UI["key_49"]["TextScaled"] = true;
UI["key_49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_49"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_49"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_49"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_49"]["Text"] = [[G]];
UI["key_49"]["Name"] = [[key]];
UI["key_49"]["Position"] = UDim2.new(0, 34, 0, 2);

UI["UICorner_4a"] = Instance.new("UICorner", UI["key_49"]);
UI["UICorner_4a"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_4b"] = Instance.new("UIGradient", UI["key_49"]);
UI["UIGradient_4b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_4c"] = Instance.new("UIStroke", UI["key_49"]);
UI["UIStroke_4c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_4c"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_4d"] = Instance.new("UIGradient", UI["UIStroke_4c"]);
UI["UIGradient_4d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["Title_4e"] = Instance.new("TextLabel", UI["Keyboard_2"]);
UI["Title_4e"]["TextWrapped"] = true;
UI["Title_4e"]["BorderSizePixel"] = 0;
UI["Title_4e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title_4e"]["TextScaled"] = true;
UI["Title_4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Title_4e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["Title_4e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Title_4e"]["BackgroundTransparency"] = 1;
UI["Title_4e"]["Size"] = UDim2.new(0, 200, 0, 30);
UI["Title_4e"]["Text"] = [[Kilobyte keyboard V1]];
UI["Title_4e"]["Name"] = [[Title]];
UI["Title_4e"]["Position"] = UDim2.new(0, 4, 0, 4);

UI["UIGradient_4f"] = Instance.new("UIGradient", UI["Title_4e"]);
UI["UIGradient_4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["line1_50"] = Instance.new("Frame", UI["Keyboard_2"]);
UI["line1_50"]["BorderSizePixel"] = 0;
UI["line1_50"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["line1_50"]["Size"] = UDim2.new(0, 232, 0, 34);
UI["line1_50"]["Position"] = UDim2.new(0, 4, 0, 38);
UI["line1_50"]["Name"] = [[line1]];

UI["key_51"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_51"]["TextWrapped"] = true;
UI["key_51"]["BorderSizePixel"] = 0;
UI["key_51"]["TextScaled"] = true;
UI["key_51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_51"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_51"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_51"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_51"]["Text"] = [[E]];
UI["key_51"]["Name"] = [[key]];
UI["key_51"]["Position"] = UDim2.new(0, 34, 0, 2);

UI["UICorner_52"] = Instance.new("UICorner", UI["key_51"]);
UI["UICorner_52"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_53"] = Instance.new("UIGradient", UI["key_51"]);
UI["UIGradient_53"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_54"] = Instance.new("UIStroke", UI["key_51"]);
UI["UIStroke_54"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_54"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_55"] = Instance.new("UIGradient", UI["UIStroke_54"]);
UI["UIGradient_55"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_56"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_56"]["TextWrapped"] = true;
UI["key_56"]["BorderSizePixel"] = 0;
UI["key_56"]["TextScaled"] = true;
UI["key_56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_56"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_56"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_56"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_56"]["Text"] = [[R]];
UI["key_56"]["Name"] = [[key]];
UI["key_56"]["Position"] = UDim2.new(0, 68, 0, 2);

UI["UICorner_57"] = Instance.new("UICorner", UI["key_56"]);
UI["UICorner_57"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_58"] = Instance.new("UIGradient", UI["key_56"]);
UI["UIGradient_58"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_59"] = Instance.new("UIStroke", UI["key_56"]);
UI["UIStroke_59"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_59"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_5a"] = Instance.new("UIGradient", UI["UIStroke_59"]);
UI["UIGradient_5a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UICorner_5b"] = Instance.new("UICorner", UI["line1_50"]);
UI["UICorner_5b"]["CornerRadius"] = UDim.new(0, 4);

UI["key_5c"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_5c"]["TextWrapped"] = true;
UI["key_5c"]["BorderSizePixel"] = 0;
UI["key_5c"]["TextScaled"] = true;
UI["key_5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_5c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_5c"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_5c"]["Text"] = [[P]];
UI["key_5c"]["Name"] = [[key]];
UI["key_5c"]["Position"] = UDim2.new(0, 204, 0, 2);

UI["UICorner_5d"] = Instance.new("UICorner", UI["key_5c"]);
UI["UICorner_5d"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_5e"] = Instance.new("UIGradient", UI["key_5c"]);
UI["UIGradient_5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_5f"] = Instance.new("UIStroke", UI["key_5c"]);
UI["UIStroke_5f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_5f"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_60"] = Instance.new("UIGradient", UI["UIStroke_5f"]);
UI["UIGradient_60"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_61"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_61"]["TextWrapped"] = true;
UI["key_61"]["BorderSizePixel"] = 0;
UI["key_61"]["TextScaled"] = true;
UI["key_61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_61"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_61"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_61"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_61"]["Text"] = [[Y]];
UI["key_61"]["Name"] = [[key]];
UI["key_61"]["Position"] = UDim2.new(0, 136, 0, 2);

UI["UICorner_62"] = Instance.new("UICorner", UI["key_61"]);
UI["UICorner_62"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_63"] = Instance.new("UIGradient", UI["key_61"]);
UI["UIGradient_63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_64"] = Instance.new("UIStroke", UI["key_61"]);
UI["UIStroke_64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_64"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_65"] = Instance.new("UIGradient", UI["UIStroke_64"]);
UI["UIGradient_65"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_66"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_66"]["TextWrapped"] = true;
UI["key_66"]["BorderSizePixel"] = 0;
UI["key_66"]["TextScaled"] = true;
UI["key_66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_66"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_66"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_66"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_66"]["Text"] = [[T]];
UI["key_66"]["Name"] = [[key]];
UI["key_66"]["Position"] = UDim2.new(0, 102, 0, 2);

UI["UICorner_67"] = Instance.new("UICorner", UI["key_66"]);
UI["UICorner_67"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_68"] = Instance.new("UIGradient", UI["key_66"]);
UI["UIGradient_68"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_69"] = Instance.new("UIStroke", UI["key_66"]);
UI["UIStroke_69"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_69"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_6a"] = Instance.new("UIGradient", UI["UIStroke_69"]);
UI["UIGradient_6a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_6b"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_6b"]["TextWrapped"] = true;
UI["key_6b"]["BorderSizePixel"] = 0;
UI["key_6b"]["TextScaled"] = true;
UI["key_6b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_6b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_6b"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_6b"]["Text"] = [[U]];
UI["key_6b"]["Name"] = [[key]];
UI["key_6b"]["Position"] = UDim2.new(0, 170, 0, 2);

UI["UICorner_6c"] = Instance.new("UICorner", UI["key_6b"]);
UI["UICorner_6c"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_6d"] = Instance.new("UIGradient", UI["key_6b"]);
UI["UIGradient_6d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_6e"] = Instance.new("UIStroke", UI["key_6b"]);
UI["UIStroke_6e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_6e"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_6f"] = Instance.new("UIGradient", UI["UIStroke_6e"]);
UI["UIGradient_6f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["key_70"] = Instance.new("TextButton", UI["line1_50"]);
UI["key_70"]["TextWrapped"] = true;
UI["key_70"]["BorderSizePixel"] = 0;
UI["key_70"]["TextScaled"] = true;
UI["key_70"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["key_70"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["key_70"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["key_70"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["key_70"]["Text"] = [[Q]];
UI["key_70"]["Name"] = [[key]];
UI["key_70"]["Position"] = UDim2.new(0, 0, 0, 2);

UI["UICorner_71"] = Instance.new("UICorner", UI["key_70"]);
UI["UICorner_71"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_72"] = Instance.new("UIGradient", UI["key_70"]);
UI["UIGradient_72"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_73"] = Instance.new("UIStroke", UI["key_70"]);
UI["UIStroke_73"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_73"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_74"] = Instance.new("UIGradient", UI["UIStroke_73"]);
UI["UIGradient_74"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_75"] = Instance.new("UIStroke", UI["Keyboard_2"]);
UI["UIStroke_75"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_75"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_76"] = Instance.new("UIGradient", UI["UIStroke_75"]);
UI["UIGradient_76"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

local VirtualInputManager = game:GetService("VirtualInputManager")

local keyMap = {
	Q = Enum.KeyCode.Q, E = Enum.KeyCode.E, R = Enum.KeyCode.R,
	T = Enum.KeyCode.T, Y = Enum.KeyCode.Y, U = Enum.KeyCode.U,
	P = Enum.KeyCode.P, F = Enum.KeyCode.F, G = Enum.KeyCode.G,
	H = Enum.KeyCode.H, J = Enum.KeyCode.J, K = Enum.KeyCode.K,
	L = Enum.KeyCode.L, Z = Enum.KeyCode.Z, X = Enum.KeyCode.X,
	C = Enum.KeyCode.C, V = Enum.KeyCode.V, B = Enum.KeyCode.B,
	N = Enum.KeyCode.N, M = Enum.KeyCode.M
}

local function dragify(Frame)
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    local dragSpeed = 0.25

    local function clampToScreen(gui, px, py)
        local screen = gui.AbsoluteSize
        local size = Frame.AbsoluteSize
        return math.clamp(px, 0, screen.X - size.X), math.clamp(py, 0, screen.Y - size.Y)
    end

    local function update(input)
        local gui = Frame:FindFirstAncestorOfClass("ScreenGui")
        if not gui then return end

        local delta = input.Position - dragStart
        local targetX = startPos.X + delta.X
        local targetY = startPos.Y + delta.Y
        targetX, targetY = clampToScreen(gui, targetX, targetY)

        if dragSpeed >= 1 then
            Frame.Position = UDim2.fromOffset(math.floor(targetX + 0.5), math.floor(targetY + 0.5))
            return
        end

        local cur = Frame.AbsolutePosition
        local interpX = cur.X + (targetX - cur.X) * math.clamp(dragSpeed, 0, 1)
        local interpY = cur.Y + (targetY - cur.Y) * math.clamp(dragSpeed, 0, 1)

        Frame.Position = UDim2.fromOffset(math.floor(interpX + 0.5), math.floor(interpY + 0.5))
    end

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragInput = input
            dragStart = input.Position
            startPos = Frame.AbsolutePosition

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    dragInput = nil
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)
end
dragify(UI["Keyboard_2"])

UI["close_3"].MouseButton1Click:Connect(function()
	UI["main_1"]:Destroy()
end)

for _, frame in pairs({UI["line1_50"], UI["line2_2e"], UI["line3_9"]}) do
	for _, child in pairs(frame:GetChildren()) do
		if child:IsA("TextButton") and child.Name == "key" then
			child.MouseButton1Click:Connect(function()
				local key = keyMap[child.Text]
				if key then
					VirtualInputManager:SendKeyEvent(true, key, false, game)
					task.wait()
					VirtualInputManager:SendKeyEvent(false, key, false, game)
				end
			end)
		end
	end
end

return UI["main_1"]