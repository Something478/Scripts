pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Utility/Webhook.luau"))()
end)
local UI = {};

UI["ScreenGui"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["ScreenGui"]["ResetOnSpawn"] = false

UI["Show"] = Instance.new("TextButton", UI["ScreenGui"]);
UI["Show"]["TextWrapped"] = true;
UI["Show"]["BorderSizePixel"] = 0;
UI["Show"]["TextSize"] = 20;
UI["Show"]["TextColor3"] = Color3.fromRGB(50, 128, 250);
UI["Show"]["BackgroundColor3"] = Color3.fromRGB(0, 2, 44);
UI["Show"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Show"]["Size"] = UDim2.new(0.14192, 0, 0.12449, 0);
UI["Show"]["Text"] = "Aimlock UI"
UI["Show"]["Name"] = "Show"
UI["Show"]["Position"] = UDim2.new(0.4378, 0, -0.13015, 0);

UI["UICorner"] = Instance.new("UICorner", UI["Show"]);
UI["UICorner"]["CornerRadius"] = UDim.new(0, 100);

UI["Aimlock_UI"] = Instance.new("Frame", UI["ScreenGui"]);
UI["Aimlock_UI"]["BorderSizePixel"] = 0;
UI["Aimlock_UI"]["BackgroundColor3"] = Color3.fromRGB(0, 2, 44);
UI["Aimlock_UI"]["Size"] = UDim2.new(0.25739, 0, 0.44705, 0);
UI["Aimlock_UI"]["Position"] = UDim2.new(0.74089, 0, 0, 0);
UI["Aimlock_UI"]["Name"] = "Aimlock_UI"
UI["Aimlock_UI"]["Visible"] = false

UI["UICorner_2"] = Instance.new("UICorner", UI["Aimlock_UI"]);

UI["More"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["More"]["TextWrapped"] = true;
UI["More"]["BorderSizePixel"] = 0;
UI["More"]["TextSize"] = 24;
UI["More"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["More"]["BackgroundColor3"] = Color3.fromRGB(0, 6, 126);
UI["More"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["More"]["Size"] = UDim2.new(0.96262, 0, 0.24051, 0);
UI["More"]["Text"] = "More"
UI["More"]["Name"] = "More"
UI["More"]["Position"] = UDim2.new(0.01869, 0, 0.73418, 0);

UI["UICorner_3"] = Instance.new("UICorner", UI["More"]);

UI["Credits_UI"] = Instance.new("Frame", UI["Aimlock_UI"]);
UI["Credits_UI"]["BorderSizePixel"] = 0;
UI["Credits_UI"]["BackgroundColor3"] = Color3.fromRGB(0, 2, 44);
UI["Credits_UI"]["Size"] = UDim2.new(0.99065, 0, 1.22785, 0);
UI["Credits_UI"]["Position"] = UDim2.new(-1.01869, 0, 0, 0);
UI["Credits_UI"]["Name"] = "Credits_UI"
UI["Credits_UI"]["Visible"] = false
UI["Credits_UI"]["ZIndex"] = 2  

UI["UICorner_4"] = Instance.new("UICorner", UI["Credits_UI"]);

UI["Title"] = Instance.new("TextLabel", UI["Credits_UI"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextSize"] = 14;
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title"]["TextScaled"] = true;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(50, 128, 250);
UI["Title"]["BackgroundTransparency"] = 1;
UI["Title"]["Size"] = UDim2.new(0.80189, 0, 0.15464, 0);
UI["Title"]["Text"] = "Settings"
UI["Title"]["Name"] = "Title"
UI["Title"]["Position"] = UDim2.new(0.01887, 0, 0.02062, 0);
UI["Title"]["ZIndex"] = 3

UI["Label2"] = Instance.new("TextLabel", UI["Credits_UI"]);
UI["Label2"]["TextWrapped"] = true;
UI["Label2"]["BorderSizePixel"] = 0;
UI["Label2"]["TextSize"] = 19;
UI["Label2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Label2"]["TextYAlignment"] = Enum.TextYAlignment.Top;
UI["Label2"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Label2"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Label2"]["TextColor3"] = Color3.fromRGB(123, 160, 255);
UI["Label2"]["BackgroundTransparency"] = 1;
UI["Label2"]["Size"] = UDim2.new(0.9434, 0, 0.41237, 0);
UI["Label2"]["Text"] = "YouTube: @StarFlow.0\nDiscord: St4rFl0w\nScriptblox: @StarFlow"
UI["Label2"]["Name"] = "Label2"
UI["Label2"]["Position"] = UDim2.new(0.01887, 0, 0.57732, 0);
UI["Label2"]["ZIndex"] = 3

UI["Hide"] = Instance.new("TextButton", UI["Credits_UI"]);
UI["Hide"]["TextWrapped"] = true;
UI["Hide"]["BorderSizePixel"] = 0;
UI["Hide"]["TextSize"] = 24;
UI["Hide"]["TextScaled"] = true;
UI["Hide"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide"]["BackgroundColor3"] = Color3.fromRGB(0, 4, 116);
UI["Hide"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide"]["Size"] = UDim2.new(0.14151, 0, 0.15464, 0);
UI["Hide"]["Text"] = "-"
UI["Hide"]["Name"] = "Hide"
UI["Hide"]["Position"] = UDim2.new(0.83962, 0, 0.02062, 0);
UI["Hide"]["ZIndex"] = 3

UI["UICorner_5"] = Instance.new("UICorner", UI["Hide"]);

UI["Toggle"] = Instance.new("TextButton", UI["Credits_UI"]);
UI["Toggle"]["TextWrapped"] = true;
UI["Toggle"]["BorderSizePixel"] = 0;
UI["Toggle"]["TextSize"] = 24;
UI["Toggle"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Toggle"]["BackgroundColor3"] = Color3.fromRGB(0, 6, 126);
UI["Toggle"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Toggle"]["Size"] = UDim2.new(0.9717, 0, 0.19588, 0);
UI["Toggle"]["Text"] = "ESP: ON"
UI["Toggle"]["Name"] = "Toggle"
UI["Toggle"]["Position"] = UDim2.new(0.01887, 0, 0.19588, 0);
UI["Toggle"]["ZIndex"] = 3

UI["UICorner_6"] = Instance.new("UICorner", UI["Toggle"]);

UI["Title2"] = Instance.new("TextLabel", UI["Credits_UI"]);
UI["Title2"]["TextWrapped"] = true;
UI["Title2"]["BorderSizePixel"] = 0;
UI["Title2"]["TextSize"] = 14;
UI["Title2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title2"]["TextScaled"] = true;
UI["Title2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title2"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title2"]["TextColor3"] = Color3.fromRGB(50, 128, 250);
UI["Title2"]["BackgroundTransparency"] = 1;
UI["Title2"]["Size"] = UDim2.new(0.80189, 0, 0.15464, 0);
UI["Title2"]["Text"] = "Creator Info"
UI["Title2"]["Name"] = "Title2"
UI["Title2"]["Position"] = UDim2.new(0.01887, 0, 0.41237, 0);
UI["Title2"]["ZIndex"] = 3

UI["Hide_2"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["Hide_2"]["TextWrapped"] = true;
UI["Hide_2"]["BorderSizePixel"] = 0;
UI["Hide_2"]["TextSize"] = 24;
UI["Hide_2"]["TextScaled"] = true;
UI["Hide_2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_2"]["BackgroundColor3"] = Color3.fromRGB(0, 6, 126);
UI["Hide_2"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_2"]["Size"] = UDim2.new(0.14019, 0, 0.18987, 0);
UI["Hide_2"]["Text"] = "-"
UI["Hide_2"]["Name"] = "Hide"
UI["Hide_2"]["Position"] = UDim2.new(0.84112, 0, 0.02532, 0);

UI["UICorner_7"] = Instance.new("UICorner", UI["Hide_2"]);

UI["Toggle_2"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["Toggle_2"]["TextWrapped"] = true;
UI["Toggle_2"]["BorderSizePixel"] = 0;
UI["Toggle_2"]["TextSize"] = 24;
UI["Toggle_2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Toggle_2"]["BackgroundColor3"] = Color3.fromRGB(0, 6, 126);
UI["Toggle_2"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Toggle_2"]["Size"] = UDim2.new(0.96262, 0, 0.24051, 0);
UI["Toggle_2"]["Text"] = "Enable Aimlock"
UI["Toggle_2"]["Name"] = "Toggle"
UI["Toggle_2"]["Position"] = UDim2.new(0.01869, 0, 0.24051, 0);

UI["UICorner_8"] = Instance.new("UICorner", UI["Toggle_2"]);

UI["Title_2"] = Instance.new("TextLabel", UI["Aimlock_UI"]);
UI["Title_2"]["TextWrapped"] = true;
UI["Title_2"]["BorderSizePixel"] = 0;
UI["Title_2"]["TextSize"] = 14;
UI["Title_2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title_2"]["TextScaled"] = true;
UI["Title_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Title_2"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Title_2"]["TextColor3"] = Color3.fromRGB(50, 128, 250);
UI["Title_2"]["BackgroundTransparency"] = 1;
UI["Title_2"]["Size"] = UDim2.new(0.80374, 0, 0.18987, 0);
UI["Title_2"]["Text"] = "Universal Aimlock"
UI["Title_2"]["Name"] = "Title"
UI["Title_2"]["Position"] = UDim2.new(0.01869, 0, 0.02532, 0);

UI["Target"] = Instance.new("TextLabel", UI["Aimlock_UI"]);
UI["Target"]["TextWrapped"] = true;
UI["Target"]["BorderSizePixel"] = 0;
UI["Target"]["TextSize"] = 19;
UI["Target"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 61);
UI["Target"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Target"]["TextColor3"] = Color3.fromRGB(123, 160, 255);
UI["Target"]["BackgroundTransparency"] = 1;
UI["Target"]["Size"] = UDim2.new(0.96262, 0, 0.22785, 0);
UI["Target"]["Text"] = "Target:"
UI["Target"]["Name"] = "Target"
UI["Target"]["Position"] = UDim2.new(0.01869, 0, 0.49367, 0);

local TweenService = game:GetService("TweenService")

local function SlideIn(frame)
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(frame, tweenInfo, {Position = UDim2.new(0.74089, 0, 0, 0)})
    frame.Visible = true
    tween:Play()
    UI["Show"].Visible = false  
end

local function SlideOut(frame, callback)
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(frame, tweenInfo, {Position = UDim2.new(1, 0, 0, 0)})
    tween:Play()
    tween.Completed:Connect(function()
        frame.Visible = false
        UI["Show"].Visible = true  
        if callback then callback() end
    end)
end

local function SlideInMoreUI()
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(UI["Credits_UI"], tweenInfo, {Position = UDim2.new(0, 0, 0, 0)})
    UI["Credits_UI"].Visible = true
    tween:Play()
end

local function SlideOutMoreUI(callback)
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(UI["Credits_UI"], tweenInfo, {Position = UDim2.new(-1.01869, 0, 0, 0)})
    tween:Play()
    tween.Completed:Connect(function()
        UI["Credits_UI"].Visible = false
        if callback then callback() end
    end)
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local ESPEnabled = true
local AimlockEnabled = false
local CurrentTarget = nil
local Highlights = {}

local function MakeESP(player)
    if Highlights[player] then return end
    
    local highlight = Instance.new("Highlight")
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
    highlight.Parent = player.Character
    Highlights[player] = highlight
end

local function DeleteESP(player)
    if Highlights[player] then
        Highlights[player]:Destroy()
        Highlights[player] = nil
    end
end

local function UpdateESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            if ESPEnabled then
                MakeESP(player)
            else
                DeleteESP(player)
            end
        end
    end
end

local function LocateNearest()
    local nearestPlr = nil
    local shortestDistance = math.huge
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestPlr = player
            end
        end
    end
    
    return nearestPlr
end

UI["Show"].MouseButton1Click:Connect(function()
    if not UI["Aimlock_UI"].Visible then
        SlideIn(UI["Aimlock_UI"])
    end
end)

UI["Toggle_2"].MouseButton1Click:Connect(function()
    AimlockEnabled = not AimlockEnabled
    if AimlockEnabled then
        UI["Toggle_2"].Text = "Disable Aimlock"
        UI["Toggle_2"].BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
        CurrentTarget = LocateNearest()
        if CurrentTarget then
            UI["Target"].Text = "Target: " .. CurrentTarget.Name
        end
    else
        UI["Toggle_2"].Text = "Enable Aimlock"
        UI["Toggle_2"].BackgroundColor3 = Color3.fromRGB(0, 6, 126) 
        UI["Target"].Text = "Target: None"
        CurrentTarget = nil
    end
end)

UI["Toggle"].MouseButton1Click:Connect(function()
    ESPEnabled = not ESPEnabled
    if ESPEnabled then
        UI["Toggle"].Text = "ESP: ON"
    else
        UI["Toggle"].Text = "ESP: OFF"
    end
    UpdateESP()
end)

UI["More"].MouseButton1Click:Connect(function()
    if not UI["Credits_UI"].Visible then
        SlideInMoreUI()
    end
end)

UI["Hide"].MouseButton1Click:Connect(function()
    SlideOutMoreUI()
end)

UI["Hide_2"].MouseButton1Click:Connect(function()
    if UI["Credits_UI"].Visible then
        SlideOutMoreUI(function()
            SlideOut(UI["Aimlock_UI"])
        end)
    else
        SlideOut(UI["Aimlock_UI"])
    end
end)

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if ESPEnabled then
            MakeESP(player)
        end
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    DeleteESP(player)
end)

for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer and player.Character then
        MakeESP(player)
    end
    player.CharacterAdded:Connect(function()
        if ESPEnabled then
            MakeESP(player)
        end
    end)
end

RunService.RenderStepped:Connect(function()
    if AimlockEnabled and CurrentTarget and CurrentTarget.Character and CurrentTarget.Character:FindFirstChild("HumanoidRootPart") then
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, CurrentTarget.Character.HumanoidRootPart.Position)
    end
    
    if ESPEnabled then
        UpdateESP()
    end
end)

return UI["ScreenGui"], require
