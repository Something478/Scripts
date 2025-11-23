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

UI["Hide_B"] = Instance.new("TextButton", UI["Credits_UI"]);
UI["Hide_B"]["TextWrapped"] = true;
UI["Hide_B"]["BorderSizePixel"] = 0;
UI["Hide_B"]["TextSize"] = 24;
UI["Hide_B"]["TextScaled"] = true;
UI["Hide_B"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Hide_B"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Hide_B"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Hide_B"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Hide_B"]["Text"] = [[X]];
UI["Hide_B"]["Name"] = [[Hide_B]];
UI["Hide_B"]["Position"] = UDim2.new(0.84762, 0, 0.01695, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["Hide_B"]);

UI["Toggle"] = Instance.new("TextButton", UI["Aimlock_UI"]);
UI["Toggle"]["TextWrapped"] = true;
UI["Toggle"]["BorderSizePixel"] = 0;
UI["Toggle"]["TextSize"] = 24;
UI["Toggle"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Toggle"]["BackgroundColor3"] = Color3.fromRGB(91, 0, 161);
UI["Toggle"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["Toggle"]["Size"] = UDim2.new(0, 206, 0, 38);
UI["Toggle"]["Text"] = [[Enable Aimbot]];
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
UI["Title"]["Text"] = [[Universal Aimbot]];
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
UI["Show"]["Text"] = [[Aimbot UI]];
UI["Show"]["Name"] = [[Show]];
UI["Show"]["Position"] = UDim2.new(0.4378, 0, -0.13015, 0);
UI["Show"]["Visible"] = false;

UI["UICorner_7"] = Instance.new("UICorner", UI["Show"]);
UI["UICorner_7"]["CornerRadius"] = UDim.new(0, 100);

local TW = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local function dg(F)
    local dt = nil
    local di = nil
    local ds = nil
    local sp = nil

    local function ui(i)
        local D = i.Position - ds
        local P = UDim2.new(sp.X.Scale, sp.X.Offset + D.X, sp.Y.Scale, sp.Y.Offset + D.Y)
        TW:Create(F, TweenInfo.new(0.1), {Position = P}):Play()
    end

    F.InputBegan:Connect(function(i)
        if (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch) then
            dt = true
            ds = i.Position
            sp = F.Position
            i.Changed:Connect(function()
                if (i.UserInputState == Enum.UserInputState.End) then
                    dt = false
                end
            end
        end
    end)

    F.InputChanged:Connect(function(i)
        if (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
            di = i
        end
    end)

    UIS.InputChanged:Connect(function(i)
        if (i == di and dt) then
            ui(i)
        end
    end)
end

dg(UI["Aimlock_UI"])
dg(UI["Credits_UI"])

local P = game:GetService("Players")
local RS = game:GetService("RunService")
local LP = P.LocalPlayer
local C = workspace.CurrentCamera

local AE = false
local ch = nil
local ct = nil
local cn = nil

function ge()
    local cp = nil
    local sd = math.huge
    local lc = LP.Character
    local lr = lc and lc:FindFirstChild("HumanoidRootPart")
    
    if not lr then return nil end
    
    for _, p in pairs(P:GetPlayers()) do
        if p ~= LP and p.Character then
            local char = p.Character
            local h = char:FindFirstChild("Humanoid")
            local head = char:FindFirstChild("Head")
            local rp = char:FindFirstChild("HumanoidRootPart")
            
            if h and h.Health > 0 and rp and head then
                local d = (lr.Position - rp.Position).Magnitude
                if d < sd then
                    sd = d
                    cp = p
                end
            end
        end
    end
    
    return cp
end

function he(p)
    if ch then
        ch:Destroy()
        ch = nil
    end
    
    if not p or not p.Character then return end
    
    local h = Instance.new("Highlight")
    h.Name = "AimlockHighlight"
    h.Adornee = p.Character
    h.FillColor = Color3.fromRGB(255, 0, 0)
    h.OutlineColor = Color3.fromRGB(255, 255, 255)
    h.FillTransparency = 0.3
    h.OutlineTransparency = 0
    h.Parent = p.Character
    
    ch = h
    ct = p
end

function lt()
    if not ct or not ct.Character then return end
    
    local head = ct.Character:FindFirstChild("Head")
    if head then
        local cam = workspace.CurrentCamera
        local cp = cam.CFrame.Position
        local lv = (head.Position - cp).Unit
        cam.CFrame = CFrame.new(cp, cp + lv)
    end
end

function al()
    if not AE then return end
    
    local ce = ge()
    
    if ce then
        if ct ~= ce then
            he(ce)
        end
        UI["Target"].Text = "Target: " .. ce.Name
        lt()
    else
        if ch then
            ch:Destroy()
            ch = nil
        end
        UI["Target"].Text = "Target: None"
        ct = nil
    end
end

function ta()
    AE = not AE
    
    if AE then
        TW:Create(UI["Toggle"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
        UI["Toggle"].Text = "Disable Aimbot"
        if not cn then
            cn = RS.RenderStepped:Connect(al)
        end
    else
        TW:Create(UI["Toggle"], TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        UI["Toggle"].Text = "Enable Aimbot"
        if ch then
            ch:Destroy()
            ch = nil
        end
        UI["Target"].Text = "Target: None"
        ct = nil
    end
end

UI["Hide_A"].MouseButton1Click:Connect(function()
    TW:Create(UI["Aimlock_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Aimlock_UI"].Visible = false
    UI["Aimlock_UI"].Size = UDim2.new(0, 214, 0, 154)
    UI["Show"].Visible = true
    TW:Create(UI["Show"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 118, 0, 44)}):Play()
end)

UI["Show"].MouseButton1Click:Connect(function()
    TW:Create(UI["Show"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Show"].Visible = false
    UI["Show"].Size = UDim2.new(0, 118, 0, 44)
    UI["Aimlock_UI"].Visible = true
    UI["Aimlock_UI"].Size = UDim2.new(0, 0, 0, 0)
    TW:Create(UI["Aimlock_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 214, 0, 154)}):Play()
end)

UI["About"].MouseButton1Click:Connect(function()
    UI["Credits_UI"].Visible = true
    UI["Credits_UI"].Size = UDim2.new(0, 0, 0, 0)
    TW:Create(UI["Credits_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 210, 0, 118)}):Play()
end)

UI["Hide_B"].MouseButton1Click:Connect(function()
    TW:Create(UI["Credits_UI"], TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.wait(0.3)
    UI["Credits_UI"].Visible = false
    UI["Credits_UI"].Size = UDim2.new(0, 210, 0, 118)
end)

UI["Toggle"].MouseButton1Click:Connect(function()
    ta()
end)

UIS.InputBegan:Connect(function(i, gp)
    if gp then return end
    
    if i.KeyCode == Enum.KeyCode.RightControl then
        ta()
    end
end)

return UI["ScreenGui"], require