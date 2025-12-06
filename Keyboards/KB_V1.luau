local UI = {};

UI["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["ScreenGui_1"]["Name"] = "KeyboardGui";

UI["Frame_2"] = Instance.new("Frame", UI["ScreenGui_1"]);
UI["Frame_2"]["BorderSizePixel"] = 0;
UI["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Frame_2"]["Size"] = UDim2.new(0, 240, 0, 136);
UI["Frame_2"]["Position"] = UDim2.new(0, 18, 0, 0);
UI["Frame_2"]["Name"] = "MainFrame";

UI["Key_3"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_3"]["TextWrapped"] = true;
UI["Key_3"]["BorderSizePixel"] = 0;
UI["Key_3"]["TextScaled"] = true;
UI["Key_3"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_3"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_3"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_3"]["Text"] = [[C]];
UI["Key_3"]["Name"] = [[Key]];
UI["Key_3"]["Position"] = UDim2.new(0, 70, 0, 102);

UI["UICorner_4"] = Instance.new("UICorner", UI["Key_3"]);
UI["UICorner_4"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_5"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_5"]["TextWrapped"] = true;
UI["Key_5"]["BorderSizePixel"] = 0;
UI["Key_5"]["TextScaled"] = true;
UI["Key_5"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_5"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_5"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_5"]["Text"] = [[G]];
UI["Key_5"]["Name"] = [[Key]];
UI["Key_5"]["Position"] = UDim2.new(0, 52, 0, 68);

UI["UICorner_6"] = Instance.new("UICorner", UI["Key_5"]);
UI["UICorner_6"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_7"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_7"]["TextWrapped"] = true;
UI["Key_7"]["BorderSizePixel"] = 0;
UI["Key_7"]["TextScaled"] = true;
UI["Key_7"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_7"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_7"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_7"]["Text"] = [[Y]];
UI["Key_7"]["Name"] = [[Key]];
UI["Key_7"]["Position"] = UDim2.new(0, 138, 0, 34);

UI["UICorner_8"] = Instance.new("UICorner", UI["Key_7"]);
UI["UICorner_8"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_9"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_9"]["TextWrapped"] = true;
UI["Key_9"]["BorderSizePixel"] = 0;
UI["Key_9"]["TextScaled"] = true;
UI["Key_9"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_9"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_9"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_9"]["Text"] = [[E]];
UI["Key_9"]["Name"] = [[Key]];
UI["Key_9"]["Position"] = UDim2.new(0, 36, 0, 34);

UI["UICorner_a"] = Instance.new("UICorner", UI["Key_9"]);
UI["UICorner_a"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_b"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_b"]["TextWrapped"] = true;
UI["Key_b"]["BorderSizePixel"] = 0;
UI["Key_b"]["TextScaled"] = true;
UI["Key_b"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_b"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_b"]["Text"] = [[R]];
UI["Key_b"]["Name"] = [[Key]];
UI["Key_b"]["Position"] = UDim2.new(0, 70, 0, 34);

UI["UICorner_c"] = Instance.new("UICorner", UI["Key_b"]);
UI["UICorner_c"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_d"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_d"]["TextWrapped"] = true;
UI["Key_d"]["BorderSizePixel"] = 0;
UI["Key_d"]["TextScaled"] = true;
UI["Key_d"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_d"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_d"]["Text"] = [[F]];
UI["Key_d"]["Name"] = [[Key]];
UI["Key_d"]["Position"] = UDim2.new(0, 18, 0, 68);

UI["UICorner_e"] = Instance.new("UICorner", UI["Key_d"]);
UI["UICorner_e"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_f"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_f"]["TextWrapped"] = true;
UI["Key_f"]["BorderSizePixel"] = 0;
UI["Key_f"]["TextScaled"] = true;
UI["Key_f"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_f"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_f"]["Text"] = [[L]];
UI["Key_f"]["Name"] = [[Key]];
UI["Key_f"]["Position"] = UDim2.new(0, 188, 0, 68);

UI["UICorner_10"] = Instance.new("UICorner", UI["Key_f"]);
UI["UICorner_10"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_11"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_11"]["TextWrapped"] = true;
UI["Key_11"]["BorderSizePixel"] = 0;
UI["Key_11"]["TextScaled"] = true;
UI["Key_11"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_11"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_11"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_11"]["Text"] = [[Q]];
UI["Key_11"]["Name"] = [[Key]];
UI["Key_11"]["Position"] = UDim2.new(0, 2, 0, 34);

UI["UICorner_12"] = Instance.new("UICorner", UI["Key_11"]);
UI["UICorner_12"]["CornerRadius"] = UDim.new(0, 4);

UI["TextLabel_13"] = Instance.new("TextLabel", UI["Frame_2"]);
UI["TextLabel_13"]["TextWrapped"] = true;
UI["TextLabel_13"]["BorderSizePixel"] = 0;
UI["TextLabel_13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["TextLabel_13"]["TextScaled"] = true;
UI["TextLabel_13"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["TextLabel_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["TextLabel_13"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["TextLabel_13"]["Size"] = UDim2.new(0, 204, 0, 32);
UI["TextLabel_13"]["Text"] = "Kilobyte keyboard [V1]"

UI["UICorner_14"] = Instance.new("UICorner", UI["TextLabel_13"]);
UI["UICorner_14"]["CornerRadius"] = UDim.new(0, 4);

UI["Frame_15"] = Instance.new("Frame", UI["TextLabel_13"]);
UI["Frame_15"]["BorderSizePixel"] = 0;
UI["Frame_15"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Frame_15"]["Size"] = UDim2.new(0, 166, 0, 4);
UI["Frame_15"]["Position"] = UDim2.new(0, 0, 0, 28);

UI["Key_16"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_16"]["TextWrapped"] = true;
UI["Key_16"]["BorderSizePixel"] = 0;
UI["Key_16"]["TextScaled"] = true;
UI["Key_16"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_16"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_16"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_16"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_16"]["Text"] = [[P]];
UI["Key_16"]["Name"] = [[Key]];
UI["Key_16"]["Position"] = UDim2.new(0, 206, 0, 34);

UI["UICorner_17"] = Instance.new("UICorner", UI["Key_16"]);
UI["UICorner_17"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_18"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_18"]["TextWrapped"] = true;
UI["Key_18"]["BorderSizePixel"] = 0;
UI["Key_18"]["TextScaled"] = true;
UI["Key_18"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_18"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_18"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_18"]["Text"] = [[Z]];
UI["Key_18"]["Name"] = [[Key]];
UI["Key_18"]["Position"] = UDim2.new(0, 2, 0, 102);

UI["UICorner_19"] = Instance.new("UICorner", UI["Key_18"]);
UI["UICorner_19"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_1a"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_1a"]["TextWrapped"] = true;
UI["Key_1a"]["BorderSizePixel"] = 0;
UI["Key_1a"]["TextScaled"] = true;
UI["Key_1a"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_1a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_1a"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_1a"]["Text"] = [[U]];
UI["Key_1a"]["Name"] = [[Key]];
UI["Key_1a"]["Position"] = UDim2.new(0, 172, 0, 34);

UI["UICorner_1b"] = Instance.new("UICorner", UI["Key_1a"]);
UI["UICorner_1b"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_1c"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_1c"]["TextWrapped"] = true;
UI["Key_1c"]["BorderSizePixel"] = 0;
UI["Key_1c"]["TextScaled"] = true;
UI["Key_1c"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_1c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_1c"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_1c"]["Text"] = [[X]];
UI["Key_1c"]["Name"] = [[Key]];
UI["Key_1c"]["Position"] = UDim2.new(0, 36, 0, 102);

UI["UICorner_1d"] = Instance.new("UICorner", UI["Key_1c"]);
UI["UICorner_1d"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_1e"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_1e"]["TextWrapped"] = true;
UI["Key_1e"]["BorderSizePixel"] = 0;
UI["Key_1e"]["TextScaled"] = true;
UI["Key_1e"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_1e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_1e"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_1e"]["Text"] = [[J]];
UI["Key_1e"]["Name"] = [[Key]];
UI["Key_1e"]["Position"] = UDim2.new(0, 120, 0, 68);

UI["UICorner_1f"] = Instance.new("UICorner", UI["Key_1e"]);
UI["UICorner_1f"]["CornerRadius"] = UDim.new(0, 4);

UI["Close_20"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Close_20"]["TextWrapped"] = true;
UI["Close_20"]["BorderSizePixel"] = 0;
UI["Close_20"]["TextScaled"] = true;
UI["Close_20"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
UI["Close_20"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
UI["Close_20"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Close_20"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Close_20"]["Text"] = [[X]];
UI["Close_20"]["Name"] = [[Close]];
UI["Close_20"]["Position"] = UDim2.new(0, 206, 0, 0);

UI["UICorner_21"] = Instance.new("UICorner", UI["Close_20"]);
UI["UICorner_21"]["CornerRadius"] = UDim.new(0, 4);

UI["UICorner_22"] = Instance.new("UICorner", UI["Frame_2"]);
UI["UICorner_22"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_23"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_23"]["TextWrapped"] = true;
UI["Key_23"]["BorderSizePixel"] = 0;
UI["Key_23"]["TextScaled"] = true;
UI["Key_23"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_23"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_23"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_23"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_23"]["Text"] = [[H]];
UI["Key_23"]["Name"] = [[Key]];
UI["Key_23"]["Position"] = UDim2.new(0, 86, 0, 68);

UI["UICorner_24"] = Instance.new("UICorner", UI["Key_23"]);
UI["UICorner_24"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_25"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_25"]["TextWrapped"] = true;
UI["Key_25"]["BorderSizePixel"] = 0;
UI["Key_25"]["TextScaled"] = true;
UI["Key_25"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_25"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_25"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_25"]["Text"] = [[N]];
UI["Key_25"]["Name"] = [[Key]];
UI["Key_25"]["Position"] = UDim2.new(0, 172, 0, 102);

UI["UICorner_26"] = Instance.new("UICorner", UI["Key_25"]);
UI["UICorner_26"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_27"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_27"]["TextWrapped"] = true;
UI["Key_27"]["BorderSizePixel"] = 0;
UI["Key_27"]["TextScaled"] = true;
UI["Key_27"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_27"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_27"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_27"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_27"]["Text"] = [[V]];
UI["Key_27"]["Name"] = [[Key]];
UI["Key_27"]["Position"] = UDim2.new(0, 104, 0, 102);

UI["UICorner_28"] = Instance.new("UICorner", UI["Key_27"]);
UI["UICorner_28"]["CornerRadius"] = UDim.new(0, 4);

UI["UIStroke_29"] = Instance.new("UIStroke", UI["Frame_2"]);
UI["UIStroke_29"]["Color"] = Color3.fromRGB(145, 0, 255);

UI["Key_2a"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_2a"]["TextWrapped"] = true;
UI["Key_2a"]["BorderSizePixel"] = 0;
UI["Key_2a"]["TextScaled"] = true;
UI["Key_2a"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_2a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_2a"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_2a"]["Text"] = [[K]];
UI["Key_2a"]["Name"] = [[Key]];
UI["Key_2a"]["Position"] = UDim2.new(0, 154, 0, 68);

UI["UICorner_2b"] = Instance.new("UICorner", UI["Key_2a"]);
UI["UICorner_2b"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_2c"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_2c"]["TextWrapped"] = true;
UI["Key_2c"]["BorderSizePixel"] = 0;
UI["Key_2c"]["TextScaled"] = true;
UI["Key_2c"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_2c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_2c"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_2c"]["Text"] = [[B]];
UI["Key_2c"]["Name"] = [[Key]];
UI["Key_2c"]["Position"] = UDim2.new(0, 138, 0, 102);

UI["UICorner_2d"] = Instance.new("UICorner", UI["Key_2c"]);
UI["UICorner_2d"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_2e"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_2e"]["TextWrapped"] = true;
UI["Key_2e"]["BorderSizePixel"] = 0;
UI["Key_2e"]["TextScaled"] = true;
UI["Key_2e"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_2e"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_2e"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_2e"]["Text"] = [[M]];
UI["Key_2e"]["Name"] = [[Key]];
UI["Key_2e"]["Position"] = UDim2.new(0, 206, 0, 102);

UI["UICorner_2f"] = Instance.new("UICorner", UI["Key_2e"]);
UI["UICorner_2f"]["CornerRadius"] = UDim.new(0, 4);

UI["Key_30"] = Instance.new("TextButton", UI["Frame_2"]);
UI["Key_30"]["TextWrapped"] = true;
UI["Key_30"]["BorderSizePixel"] = 0;
UI["Key_30"]["TextScaled"] = true;
UI["Key_30"]["TextColor3"] = Color3.fromRGB(172, 0, 255);
UI["Key_30"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Key_30"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Key_30"]["Size"] = UDim2.new(0, 32, 0, 32);
UI["Key_30"]["Text"] = [[T]];
UI["Key_30"]["Name"] = [[Key]];
UI["Key_30"]["Position"] = UDim2.new(0, 104, 0, 34);

UI["UICorner_31"] = Instance.new("UICorner", UI["Key_30"]);
UI["UICorner_31"]["CornerRadius"] = UDim.new(0, 4);

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

dragify(UI["Frame_2"])

UI["Close_20"].MouseButton1Click:Connect(function()
    UI["ScreenGui_1"]:Destroy()
end)

local UIS = game:GetService("UserInputService")
for _, key in pairs(UI["Frame_2"]:GetChildren()) do
    if key.Name == "Key" then
        key.MouseButton1Click:Connect(function()
            local keyCode
            local keyText = key.Text
            
            if keyText == "Q" then
                keyCode = Enum.KeyCode.Q
            elseif keyText == "W" then
                keyCode = Enum.KeyCode.W
            elseif keyText == "E" then
                keyCode = Enum.KeyCode.E
            elseif keyText == "R" then
                keyCode = Enum.KeyCode.R
            elseif keyText == "T" then
                keyCode = Enum.KeyCode.T
            elseif keyText == "Y" then
                keyCode = Enum.KeyCode.Y
            elseif keyText == "U" then
                keyCode = Enum.KeyCode.U
            elseif keyText == "I" then
                keyCode = Enum.KeyCode.I
            elseif keyText == "O" then
                keyCode = Enum.KeyCode.O
            elseif keyText == "P" then
                keyCode = Enum.KeyCode.P
            elseif keyText == "A" then
                keyCode = Enum.KeyCode.A
            elseif keyText == "S" then
                keyCode = Enum.KeyCode.S
            elseif keyText == "D" then
                keyCode = Enum.KeyCode.D
            elseif keyText == "F" then
                keyCode = Enum.KeyCode.F
            elseif keyText == "G" then
                keyCode = Enum.KeyCode.G
            elseif keyText == "H" then
                keyCode = Enum.KeyCode.H
            elseif keyText == "J" then
                keyCode = Enum.KeyCode.J
            elseif keyText == "K" then
                keyCode = Enum.KeyCode.K
            elseif keyText == "L" then
                keyCode = Enum.KeyCode.L
            elseif keyText == "Z" then
                keyCode = Enum.KeyCode.Z
            elseif keyText == "X" then
                keyCode = Enum.KeyCode.X
            elseif keyText == "C" then
                keyCode = Enum.KeyCode.C
            elseif keyText == "V" then
                keyCode = Enum.KeyCode.V
            elseif keyText == "B" then
                keyCode = Enum.KeyCode.B
            elseif keyText == "N" then
                keyCode = Enum.KeyCode.N
            elseif keyText == "M" then
                keyCode = Enum.KeyCode.M
            end
            
            if keyCode then
                UIS:SendKeyEvent(true, keyCode, false, game)
                task.wait(0.05)
                UIS:SendKeyEvent(false, keyCode, false, game)
            end
        end)
    end
end

return UI["ScreenGui_1"], require