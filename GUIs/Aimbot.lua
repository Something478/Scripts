local UI = {};

UI["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["ScreenGui_1"]["ResetOnSpawn"] = false;

UI["Aimbot_UI_2"] = Instance.new("Frame", UI["ScreenGui_1"]);
UI["Aimbot_UI_2"]["BorderSizePixel"] = 0;
UI["Aimbot_UI_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Aimbot_UI_2"]["Size"] = UDim2.new(0, 208, 0, 128);
UI["Aimbot_UI_2"]["Position"] = UDim2.new(0.73368, 0, 0.01132, 0);
UI["Aimbot_UI_2"]["Name"] = [[Aimbot_UI]];

UI["Close_3"] = Instance.new("TextButton", UI["Aimbot_UI_2"]);
UI["Close_3"]["TextWrapped"] = true;
UI["Close_3"]["BorderSizePixel"] = 0;
UI["Close_3"]["TextScaled"] = true;
UI["Close_3"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
UI["Close_3"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Close_3"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Close_3"]["Text"] = [[X]];
UI["Close_3"]["Name"] = [[Close]];
UI["Close_3"]["Position"] = UDim2.new(0.85577, 0, 0.01563, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["Close_3"]);
UI["UICorner_4"]["CornerRadius"] = UDim.new(0, 4);

UI["UICorner_5"] = Instance.new("UICorner", UI["Aimbot_UI_2"]);
UI["UICorner_5"]["CornerRadius"] = UDim.new(0, 4);

UI["Title_6"] = Instance.new("TextLabel", UI["Aimbot_UI_2"]);
UI["Title_6"]["TextWrapped"] = true;
UI["Title_6"]["BorderSizePixel"] = 0;
UI["Title_6"]["TextSize"] = 14;
UI["Title_6"]["TextScaled"] = true;
UI["Title_6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Title_6"]["TextColor3"] = Color3.fromRGB(130, 0, 255);
UI["Title_6"]["Size"] = UDim2.new(0, 172, 0, 30);
UI["Title_6"]["Text"] = [[Universal Aimbot]];
UI["Title_6"]["Name"] = [[Title]];
UI["Title_6"]["Position"] = UDim2.new(0.00962, 0, 0.01563, 0);

UI["UICorner_7"] = Instance.new("UICorner", UI["Title_6"]);
UI["UICorner_7"]["CornerRadius"] = UDim.new(0, 4);

UI["Toggle_8"] = Instance.new("TextButton", UI["Aimbot_UI_2"]);
UI["Toggle_8"]["TextWrapped"] = true;
UI["Toggle_8"]["BorderSizePixel"] = 0;
UI["Toggle_8"]["TextSize"] = 16;
UI["Toggle_8"]["TextColor3"] = Color3.fromRGB(130, 0, 255);
UI["Toggle_8"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Toggle_8"]["Size"] = UDim2.new(0, 206, 0, 34);
UI["Toggle_8"]["Text"] = [[Enable Aimbot]];
UI["Toggle_8"]["Name"] = [[Toggle]];
UI["Toggle_8"]["Position"] = UDim2.new(0.00962, 0, 0.5625, 0);

UI["UICorner_9"] = Instance.new("UICorner", UI["Toggle_8"]);
UI["UICorner_9"]["CornerRadius"] = UDim.new(0, 4);

UI["UIStroke_a"] = Instance.new("UIStroke", UI["Aimbot_UI_2"]);
UI["UIStroke_a"]["Color"] = Color3.fromRGB(130, 0, 255);

UI["Credits_b"] = Instance.new("TextLabel", UI["Aimbot_UI_2"]);
UI["Credits_b"]["TextWrapped"] = true;
UI["Credits_b"]["BorderSizePixel"] = 0;
UI["Credits_b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Credits_b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
UI["Credits_b"]["TextScaled"] = true;
UI["Credits_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Credits_b"]["TextColor3"] = Color3.fromRGB(130, 0, 255);
UI["Credits_b"]["BackgroundTransparency"] = 1;
UI["Credits_b"]["Size"] = UDim2.new(0, 152, 0, 18);
UI["Credits_b"]["Text"] = [[Made by StarFlow]];
UI["Credits_b"]["Name"] = [[Credits]];
UI["Credits_b"]["Position"] = UDim2.new(0.01923, 0, 0.84375, 0);

UI["Target_c"] = Instance.new("TextLabel", UI["Aimbot_UI_2"]);
UI["Target_c"]["TextWrapped"] = true;
UI["Target_c"]["BorderSizePixel"] = 0;
UI["Target_c"]["TextSize"] = 12;
UI["Target_c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
UI["Target_c"]["TextColor3"] = Color3.fromRGB(130, 0, 255);
UI["Target_c"]["Size"] = UDim2.new(0, 206, 0, 32);
UI["Target_c"]["Text"] = [[Target:]];
UI["Target_c"]["Name"] = [[Target]];
UI["Target_c"]["Position"] = UDim2.new(0.00962, 0, 0.28125, 0);

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

dragify(UI["Aimbot_UI_2"])

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local aimbotEnabled = false
local currentHighlight = nil
local currentTarget = nil
local connection = nil

function findNearestPlayer()
    local nearestPlayer = nil
    local shortestDistance = math.huge
    local localCharacter = LocalPlayer.Character
    local localRoot = localCharacter and localCharacter:FindFirstChild("HumanoidRootPart")
    
    if not localRoot then return nil end
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local character = player.Character
            local humanoid = character:FindFirstChild("Humanoid")
            local head = character:FindFirstChild("Head")
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            
            if humanoid and humanoid.Health > 0 and rootPart and head then
                local distance = (localRoot.Position - rootPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestPlayer = player
                end
            end
        end
    end
    
    return nearestPlayer
end

function highlightTarget(player)
    if currentHighlight then
        currentHighlight:Destroy()
        currentHighlight = nil
    end
    
    if not player or not player.Character then return end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = "AimbotHighlight"
    highlight.Adornee = player.Character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0
    highlight.Parent = player.Character
    
    currentHighlight = highlight
    currentTarget = player
end

function lockCameraToTarget()
    if not currentTarget or not currentTarget.Character then return end
    
    local head = currentTarget.Character:FindFirstChild("Head")
    if head then
        local camera = workspace.CurrentCamera
        local cameraPosition = camera.CFrame.Position
        local lookVector = (head.Position - cameraPosition).Unit
        camera.CFrame = CFrame.new(cameraPosition, cameraPosition + lookVector)
    end
end

function aimbotLoop()
    if not aimbotEnabled then return end
    
    local nearestPlayer = findNearestPlayer()
    
    if nearestPlayer then
        if currentTarget ~= nearestPlayer then
            highlightTarget(nearestPlayer)
        end
        UI["Target_c"].Text = "Target: " .. nearestPlayer.Name
        lockCameraToTarget()
    else
        if currentHighlight then
            currentHighlight:Destroy()
            currentHighlight = nil
        end
        UI["Target_c"].Text = "Target: None"
        currentTarget = nil
    end
end

UI["Close_3"].MouseButton1Click:Connect(function()
    UI["ScreenGui_1"]:Destroy()
    if connection then
        connection:Disconnect()
        connection = nil
    end
end)

UI["Toggle_8"].MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    
    if aimbotEnabled then
        UI["Toggle_8"].Text = "Disable Aimbot"
        UI["Toggle_8"].TextColor3 = Color3.fromRGB(255, 0, 0)
        if not connection then
            connection = RunService.RenderStepped:Connect(aimbotLoop)
        end
    else
        UI["Toggle_8"].Text = "Enable Aimbot"
        UI["Toggle_8"].TextColor3 = Color3.fromRGB(130, 0, 255)
        if currentHighlight then
            currentHighlight:Destroy()
            currentHighlight = nil
        end
        UI["Target_c"].Text = "Target: None"
        currentTarget = nil
    end
end)

return UI["ScreenGui_1"], require