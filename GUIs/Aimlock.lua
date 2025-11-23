local function S(n) return (cloneref and cloneref(game:GetService(n))) or game:GetService(n) end

local function UIRoot(gui)
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	gui.DisplayOrder = 999999999
	gui.IgnoreGuiInset = true
	gui.ResetOnSpawn = false
	local cg = S("CoreGui")
	local lp = S("Players").LocalPlayer
	if cg and cg:FindFirstChild("RobloxGui") then gui.Parent = cg.RobloxGui return end
	if cg then gui.Parent = cg return end
	if lp and lp:FindFirstChild("PlayerGui") then gui.Parent = lp.PlayerGui return end
end

local UI = {};

UI["ScreenGui"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UIRoot(UI["ScreenGui"])

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

UI["Title_A_B"] = Instance.new("TextLabel", UI["Credits_UI"]);
UI["Title_A_B"]["TextWrapped"] = true;
UI["Title_A_B"]["BorderSizePixel"] = 0;
UI["Title_A_B"]["TextSize"] = 14;
UI["Title_A_B"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title_A_B"]["TextScaled"] = true;
UI["Title_A_B"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title_A_B"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title_A_B"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Title_A_B"]["BackgroundTransparency"] = 1;
UI["Title_A_B"]["Size"] = UDim2.new(0, 170, 0, 30);
UI["Title_A_B"]["Text"] = [[Creator Info]];
UI["Title_A_B"]["Name"] = [[Title_A_B]];
UI["Title_A_B"]["Position"] = UDim2.new(0.01905, 0, 0.01695, 0);

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
UI["CreditsText"]["Text"] = "YouTube: @StarFlow.0\nDiscord: @St4rFl0w\nScriptblox: @StarFlow"
UI["CreditsText"]["Name"] = [[CreditsText]];
UI["CreditsText"]["Position"] = UDim2.new(0.02857, 0, 0.28814, 0);

UI["Hide_A_B"] = Instance.new("TextButton", UI["Credits_UI"]);
UI["Hide_A_B"]["TextWrapped"] = true;
UI["Hide_A_B"]["BorderSizePixel"] = 0;
UI["Hide_A_B"]["TextSize"] = 24;
UI["Hide_A_B"]["TextScaled"] = true;
UI["Hide_A_B"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_A_B"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_A_B"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_A_B"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_A_B"]["Text"] = [[X]];
UI["Hide_A_B"]["Name"] = [[Hide_A_B]];
UI["Hide_A_B"]["Position"] = UDim2.new(0.84762, 0, 0.01695, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["Hide_A_B"]);

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

UI["Title_A"] = Instance.new("TextLabel", UI["Aimlock_UI"]);
UI["Title_A"]["TextWrapped"] = true;
UI["Title_A"]["BorderSizePixel"] = 0;
UI["Title_A"]["TextSize"] = 14;
UI["Title_A"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title_A"]["TextScaled"] = true;
UI["Title_A"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title_A"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title_A"]["TextColor3"] = Color3.fromRGB(188, 121, 250);
UI["Title_A"]["BackgroundTransparency"] = 1;
UI["Title_A"]["Size"] = UDim2.new(0, 172, 0, 30);
UI["Title_A"]["Text"] = [[Universal Aimlock]];
UI["Title_A"]["Name"] = [[Title_A]];
UI["Title_A"]["Position"] = UDim2.new(0.01869, 0, 0.01299, 0);

UI["Target"] = Instance.new("TextLabel", UI["Aimlock_UI"]);
UI["Target"]["TextWrapped"] = true;
UI["Target"]["BorderSizePixel"] = 0;
UI["Target"]["TextSize"] = 19;
UI["Target"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Target"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Target"]["TextColor3"] = Color3.fromRGB(252, 199, 253);
UI["Target"]["BackgroundTransparency"] = 1;
UI["Target"]["Size"] = UDim2.new(0, 206, 0, 36);
UI["Target"]["Text"] = [[Target: None]];
UI["Target"]["Name"] = [[Target]];
UI["Target"]["Position"] = UDim2.new(0.00935, 0, 0.48052, 0);

UI["Hide_A"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["Hide_A"]["TextWrapped"] = true;
UI["Hide_A"]["BorderSizePixel"] = 0;
UI["Hide_A"]["TextSize"] = 24;
UI["Hide_A"]["TextScaled"] = true;
UI["Hide_A"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_A"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_A"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_A"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_A"]["Text"] = [[-]];
UI["Hide_A"]["Name"] = [[Hide_A]];
UI["Hide_A"]["Position"] = UDim2.new(0.84112, 0, 0.01299, 0);

UI["UICorner_6"] = Instance.new("UICorner", UI["Hide_A"]);

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

function AimlockLoop()
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

function tlock()
    AimlockEnabled = not AimlockEnabled
    
    if AimlockEnabled then
        TweenService:Create(UI["Toggle"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
        UI["Toggle"].Text = "Disable Aimlock"
        if not connection then
            connection = RunService.RenderStepped:Connect(AimlockLoop)
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

UI["Hide_A"].MouseButton1Click:Connect(function()
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

UI["Hide_A_B"].MouseButton1Click:Connect(function()
    TweenService:Create(UI["Credits_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Credits_UI"].Visible = false
    UI["Credits_UI"].Size = UDim2.new(0, 210, 0, 118)
end)

UI["Toggle"].MouseButton1Click:Connect(function()
    tlock()
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.RightControl then
        tlock()
    end
end)

return UI["ScreenGui"], require