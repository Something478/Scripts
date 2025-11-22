local UI = {};

UI["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["ScreenGui_1"]["ResetOnSpawn"] = false;

UI["Aimbot_UI_2"] = Instance.new("Frame", UI["ScreenGui_1"]);
UI["Aimbot_UI_2"]["BorderSizePixel"] = 0;
UI["Aimbot_UI_2"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Aimbot_UI_2"]["Size"] = UDim2.new(0, 210, 0, 152);
UI["Aimbot_UI_2"]["Position"] = UDim2.new(0.73368, 0, -0.01698, 0);
UI["Aimbot_UI_2"]["Name"] = [[Aimbot_UI]];

UI["Hide_3"] = Instance.new("TextButton", UI["Aimbot_UI_2"]);
UI["Hide_3"]["TextWrapped"] = true;
UI["Hide_3"]["BorderSizePixel"] = 0;
UI["Hide_3"]["TextSize"] = 24;
UI["Hide_3"]["TextScaled"] = true;
UI["Hide_3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_3"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_3"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_3"]["Text"] = [[-]];
UI["Hide_3"]["Name"] = [[Hide]];
UI["Hide_3"]["Position"] = UDim2.new(0.84762, 0, 0.01316, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["Hide_3"]);

UI["UICorner_5"] = Instance.new("UICorner", UI["Aimbot_UI_2"]);

UI["Toggle_6"] = Instance.new("TextButton", UI["Aimbot_UI_2"]);
UI["Toggle_6"]["TextWrapped"] = true;
UI["Toggle_6"]["BorderSizePixel"] = 0;
UI["Toggle_6"]["TextSize"] = 24;
UI["Toggle_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Toggle_6"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Toggle_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Toggle_6"]["Size"] = UDim2.new(0, 206, 0, 38);
UI["Toggle_6"]["Text"] = [[Enable Aimbot]];
UI["Toggle_6"]["Name"] = [[Toggle]];
UI["Toggle_6"]["Position"] = UDim2.new(0.00952, 0, 0.22368, 0);

UI["UICorner_7"] = Instance.new("UICorner", UI["Toggle_6"]);

UI["Title_8"] = Instance.new("TextLabel", UI["Aimbot_UI_2"]);
UI["Title_8"]["TextWrapped"] = true;
UI["Title_8"]["BorderSizePixel"] = 0;
UI["Title_8"]["TextSize"] = 14;
UI["Title_8"]["TextScaled"] = true;
UI["Title_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title_8"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Title_8"]["BackgroundTransparency"] = 1;
UI["Title_8"]["Size"] = UDim2.new(0, 172, 0, 30);
UI["Title_8"]["Text"] = [[Universal Aimbot]];
UI["Title_8"]["Name"] = [[Title]];
UI["Title_8"]["Position"] = UDim2.new(0.00952, 0, 0.01316, 0);

UI["Target_9"] = Instance.new("TextLabel", UI["Aimbot_UI_2"]);
UI["Target_9"]["TextWrapped"] = true;
UI["Target_9"]["BorderSizePixel"] = 0;
UI["Target_9"]["TextSize"] = 19;
UI["Target_9"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Target_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Target_9"]["TextColor3"] = Color3.fromRGB(252, 199, 253);
UI["Target_9"]["BackgroundTransparency"] = 1;
UI["Target_9"]["Size"] = UDim2.new(0, 206, 0, 36);
UI["Target_9"]["Text"] = [[Target:]];
UI["Target_9"]["Name"] = [[Target]];
UI["Target_9"]["Position"] = UDim2.new(0.00952, 0, 0.48684, 0);

UI["About_a"] = Instance.new("TextButton", UI["Aimbot_UI_2"]);
UI["About_a"]["TextWrapped"] = true;
UI["About_a"]["BorderSizePixel"] = 0;
UI["About_a"]["TextSize"] = 24;
UI["About_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["About_a"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["About_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["About_a"]["Size"] = UDim2.new(0, 206, 0, 38);
UI["About_a"]["Text"] = [[Creator Info]];
UI["About_a"]["Name"] = [[About]];
UI["About_a"]["Position"] = UDim2.new(0.00952, 0, 0.73684, 0);

UI["UICorner_b"] = Instance.new("UICorner", UI["About_a"]);

UI["Credits_UI_c"] = Instance.new("Frame", UI["ScreenGui_1"]);
UI["Credits_UI_c"]["BorderSizePixel"] = 0;
UI["Credits_UI_c"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Credits_UI_c"]["Size"] = UDim2.new(0, 210, 0, 152);
UI["Credits_UI_c"]["Position"] = UDim2.new(0.73368, 0, -0.01698, 0);
UI["Credits_UI_c"]["Name"] = [[Credits_UI]];
UI["Credits_UI_c"]["Visible"] = false;

UI["Hide_d"] = Instance.new("TextButton", UI["Credits_UI_c"]);
UI["Hide_d"]["TextWrapped"] = true;
UI["Hide_d"]["BorderSizePixel"] = 0;
UI["Hide_d"]["TextSize"] = 24;
UI["Hide_d"]["TextScaled"] = true;
UI["Hide_d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_d"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_d"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_d"]["Text"] = [[X]];
UI["Hide_d"]["Name"] = [[Hide]];
UI["Hide_d"]["Position"] = UDim2.new(0.84762, 0, 0.01316, 0);

UI["UICorner_e"] = Instance.new("UICorner", UI["Hide_d"]);

UI["UICorner_f"] = Instance.new("UICorner", UI["Credits_UI_c"]);

UI["Label_10"] = Instance.new("TextLabel", UI["Credits_UI_c"]);
UI["Label_10"]["TextWrapped"] = true;
UI["Label_10"]["BorderSizePixel"] = 0;
UI["Label_10"]["TextSize"] = 14;
UI["Label_10"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Label_10"]["TextScaled"] = true;
UI["Label_10"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Label_10"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Label_10"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Label_10"]["BackgroundTransparency"] = 1;
UI["Label_10"]["Size"] = UDim2.new(0, 170, 0, 30);
UI["Label_10"]["Text"] = [[Creator Info]];
UI["Label_10"]["Name"] = [[Label]];
UI["Label_10"]["Position"] = UDim2.new(0.01905, 0, 0.01316, 0);

UI["Label2_11"] = Instance.new("TextLabel", UI["Credits_UI_c"]);
UI["Label2_11"]["TextWrapped"] = true;
UI["Label2_11"]["BorderSizePixel"] = 0;
UI["Label2_11"]["TextSize"] = 19;
UI["Label2_11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Label2_11"]["TextYAlignment"] = Enum.TextYAlignment.Top;
UI["Label2_11"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Label2_11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Label2_11"]["TextColor3"] = Color3.fromRGB(252, 199, 253);
UI["Label2_11"]["BackgroundTransparency"] = 1;
UI["Label2_11"]["Size"] = UDim2.new(0, 200, 0, 110);
UI["Label2_11"]["Text"] = "YouTube: @StarFlow.0\nDiscord: St4rFl0w\nScriptblox: @StarFlow";
UI["Label2_11"]["Name"] = [[Label2]];
UI["Label2_11"]["Position"] = UDim2.new(0.02857, 0, 0.23684, 0);

UI["Show_12"] = Instance.new("TextButton", UI["ScreenGui_1"]);
UI["Show_12"]["TextWrapped"] = true;
UI["Show_12"]["BorderSizePixel"] = 0;
UI["Show_12"]["TextSize"] = 20;
UI["Show_12"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Show_12"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Show_12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Show_12"]["Size"] = UDim2.new(0, 103, 0, 44);
UI["Show_12"]["Text"] = [[Aimbot UI]];
UI["Show_12"]["Name"] = [[Show]];
UI["Show_12"]["Position"] = UDim2.new(0.73368, 0, -0.01698, 0);
UI["Show_12"]["Visible"] = false;

UI["UICorner_13"] = Instance.new("UICorner", UI["Show_12"]);
UI["UICorner_13"]["CornerRadius"] = UDim.new(0, 100);

local TweenService = game:GetService("TweenService")

local function dragify(Frame)
    local dragToggle = nil
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        TweenService:Create(Frame, TweenInfo.new(0.1), {Position = Position}):Play()
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
dragify(UI["Credits_UI_c"])

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
        UI["Target_9"].Text = "Target: " .. nearestPlayer.Name
        lockCameraToTarget()
    else
        if currentHighlight then
            currentHighlight:Destroy()
            currentHighlight = nil
        end
        UI["Target_9"].Text = "Target: None"
        currentTarget = nil
    end
end

UI["Hide_3"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Aimbot_UI_2"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Aimbot_UI_2"].Visible = false
    UI["Aimbot_UI_2"].Size = UDim2.new(0, 210, 0, 152)
    UI["Show_12"].Visible = true
    TweenService:Create(UI["Show_12"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 103, 0, 44)}):Play()
end)

UI["Show_12"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Show_12"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Show_12"].Visible = false
    UI["Show_12"].Size = UDim2.new(0, 103, 0, 44)
    UI["Aimbot_UI_2"].Visible = true
    UI["Aimbot_UI_2"].Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(UI["Aimbot_UI_2"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 210, 0, 152)}):Play()
end)

UI["About_a"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Aimbot_UI_2"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Aimbot_UI_2"].Visible = false
    UI["Aimbot_UI_2"].Size = UDim2.new(0, 210, 0, 152)
    UI["Credits_UI_c"].Visible = true
    UI["Credits_UI_c"].Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(UI["Credits_UI_c"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 210, 0, 152)}):Play()
end)

UI["Hide_d"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Credits_UI_c"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Credits_UI_c"].Visible = false
    UI["Credits_UI_c"].Size = UDim2.new(0, 210, 0, 152)
    UI["Aimbot_UI_2"].Visible = true
    UI["Aimbot_UI_2"].Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(UI["Aimbot_UI_2"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 210, 0, 152)}):Play()
end)

UI["Toggle_6"].MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    
    if aimbotEnabled then
        TweenService:Create(UI["Toggle_6"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
        UI["Toggle_6"].Text = "Disable Aimbot"
        if not connection then
            connection = RunService.RenderStepped:Connect(aimbotLoop)
        end
    else
        TweenService:Create(UI["Toggle_6"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        UI["Toggle_6"].Text = "Enable Aimbot"
        if currentHighlight then
            currentHighlight:Destroy()
            currentHighlight = nil
        end
        UI["Target_9"].Text = "Target: None"
        currentTarget = nil
    end
end)

return UI["ScreenGui_1"], require