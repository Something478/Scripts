local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local TextChatService = game:GetService("TextChatService")

local plr = Players.LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

pcall(function()
    local DevTools = loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/refs/heads/main/Utility/Devtools.lua"))()
    DevTools("GetTag")
end)
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/StarFIow/Scripts/main/Utility/Unnamed.lua"))()
end)

local Wait = task.wait

local function Chat(message)
    TextChatService.TextChannels.RBXGeneral:SendAsync(message)
end

function notify(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 3
    })
end

local colorScheme = {
    primary = Color3.fromRGB(75, 0, 130),
    secondary = Color3.fromRGB(148, 0, 211),
    accent = Color3.fromRGB(123, 104, 238),
    danger = Color3.fromRGB(220, 20, 60),
    success = Color3.fromRGB(0, 200, 83),
    background = Color3.fromRGB(30, 30, 40),
    text = Color3.fromRGB(240, 240, 240),
    subtext = Color3.fromRGB(180, 180, 190)
}

local uiState = {
    enabled = false,
    minimized = false,
    lastSize = UDim2.new(0, 350, 0, 300)
}

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = playerGui

local minimizer = Instance.new("TextButton")
minimizer.Size = UDim2.new(0, 100, 0, 40)
minimizer.Position = UDim2.new(0, 10, 0, 10)
minimizer.BackgroundColor3 = colorScheme.primary
minimizer.Font = Enum.Font.Arcade
minimizer.TextSize = 16
minimizer.TextColor3 = colorScheme.text
minimizer.Text = "Enable"
minimizer.TextScaled = true
minimizer.TextWrapped = true
minimizer.Parent = gui
minimizer.ZIndex = 10

local corner = Instance.new("UICorner", minimizer)
corner.CornerRadius = UDim.new(0, 20)

local minimizerBg = Instance.new("Frame")
minimizerBg.Size = UDim2.new(1, 6, 1, 6)
minimizerBg.Position = UDim2.new(0, -3, 0, -3)
minimizerBg.BackgroundColor3 = colorScheme.accent
minimizerBg.ZIndex = 9
minimizerBg.Parent = minimizer

local cornerBg = Instance.new("UICorner", minimizerBg)
cornerBg.CornerRadius = UDim.new(0, 23)

local popup = Instance.new("Frame")
popup.Size = uiState.lastSize
popup.Position = UDim2.new(0.5, -175, 0.5, -150)
popup.BackgroundColor3 = colorScheme.background
popup.Visible = false
popup.ClipsDescendants = true
popup.Parent = gui

local corner = Instance.new("UICorner", popup)
corner.CornerRadius = UDim.new(0, 40)

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, colorScheme.background),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 35))
}
gradient.Rotation = 90
gradient.Parent = popup

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -40, 0, 40)
titleLabel.Position = UDim2.new(0, 20, 0, 20)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.Arcade
titleLabel.TextSize = 22
titleLabel.TextColor3 = colorScheme.text
titleLabel.Text = "Giant Dance"
titleLabel.TextScaled = true
titleLabel.TextWrapped = true
titleLabel.Parent = popup

local descLabel = Instance.new("TextLabel")
descLabel.Size = UDim2.new(1, -40, 0, 60)
descLabel.Position = UDim2.new(0, 20, 0, 60)
descLabel.BackgroundTransparency = 1
descLabel.Font = Enum.Font.Arcade
descLabel.TextSize = 14
descLabel.TextColor3 = colorScheme.subtext
descLabel.TextWrapped = true
descLabel.TextScaled = true
descLabel.Text = "I do not own Krystal Dance V3, press 'Click Me!' button for more details."
descLabel.Parent = popup

local function createButton(name, text, color, position)
    local buttonContainer = Instance.new("Frame")
    buttonContainer.Size = UDim2.new(0.45, 0, 0, 40)
    buttonContainer.Position = position
    buttonContainer.BackgroundTransparency = 1
    buttonContainer.Parent = popup

    local buttonBg = Instance.new("Frame")
    buttonBg.Size = UDim2.new(1, 6, 1, 6)
    buttonBg.Position = UDim2.new(0, -3, 0, -3)
    buttonBg.BackgroundColor3 = color
    buttonBg.ZIndex = 1
    buttonBg.Parent = buttonContainer

    local cornerBg = Instance.new("UICorner", buttonBg)
    cornerBg.CornerRadius = UDim.new(0, 15)

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 1, 0)
    button.BackgroundColor3 = color
    button.Font = Enum.Font.Arcade
    button.TextSize = 14
    button.TextColor3 = colorScheme.text
    button.Text = text
    button.TextScaled = true
    button.TextWrapped = true
    button.Name = name
    button.ZIndex = 2
    button.Parent = buttonContainer

    local corner = Instance.new("UICorner", button)
    corner.CornerRadius = UDim.new(0, 12)

    return button
end

local reanimateBtn = createButton("ReanimateBtn", "Reanimate", colorScheme.success, UDim2.new(0.05, 0, 0.6, 0))
local creditsBtn = createButton("CreditsBtn", "Click Me!", colorScheme.accent, UDim2.new(0.5, 0, 0.6, 0))
local stopBtn = createButton("StopBtn", "Stop Script", colorScheme.danger, UDim2.new(0.05, 0, 0.75, 0))
stopBtn.Parent.Size = UDim2.new(0.9, 0, 0, 40)

local footerLabel = Instance.new("TextLabel")
footerLabel.Size = UDim2.new(1, -40, 0, 20)
footerLabel.Position = UDim2.new(0, 20, 0.9, 0)
footerLabel.BackgroundTransparency = 1
footerLabel.Font = Enum.Font.Sarpanch
footerLabel.TextSize = 12
footerLabel.TextColor3 = colorScheme.subtext
footerLabel.Text = "Made by StarFlow"
footerLabel.TextScaled = true
footerLabel.TextWrapped = true
footerLabel.Parent = popup

local function toggleUI()
    uiState.enabled = not uiState.enabled
    if uiState.enabled then
        minimizer.Text = "Disable"
        popup.Visible = true
        -- Sped up the opening animation from 0.6 to 0.3 seconds
        local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        TweenService:Create(popup, tweenInfo, {Size = uiState.lastSize}):Play()
    else
        minimizer.Text = "Enable"
        uiState.lastSize = popup.Size
        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        local tween = TweenService:Create(popup, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)})
        tween:Play()
        tween.Completed:Connect(function()
            if not uiState.enabled then
                popup.Visible = false
            end
        end)
    end
end

minimizer.MouseButton1Click:Connect(toggleUI)

local function closePopup()
    uiState.enabled = false
    uiState.lastSize = popup.Size
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    local tween = TweenService:Create(popup, tweenInfo, {Size = UDim2.new(0, 0, 0, 0)})
    tween:Play()
    tween.Completed:Wait()
    if not uiState.enabled then
        popup.Visible = false
        minimizer.Text = "Enable"
    end
end

stopBtn.MouseButton1Click:Connect(function()
    closePopup()
    Chat("-rj ")
    notify("Giant Dance", "Rejooning :P", 3)
end)

reanimateBtn.MouseButton1Click:Connect(function()
    closePopup()
    Chat("-gh 6202063049,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885,4602533885")
    Wait(3)
    local reps = "4602533885,"
    local repped = reps:rep(13)
    local base = "-gh 6202063049,"
    repped = repped:sub(1, -2)
    local done = base .. repped
    if setclipboard then
        setclipboard(done)
    else
        print(done)
    end
    repeat Wait() until plr.Character:FindFirstChild("Smile")
    Wait(.8)

    local char = plr.Character
    local cons = {}
    local ti = table.insert
    local rs = RunService
    local stepped = rs.Stepped
    local heartbeat = rs.Heartbeat
    local oldpos = char.HumanoidRootPart.CFrame
    char.HumanoidRootPart.CFrame = oldpos + Vector3.new(0, 10000, 0)
    Wait(.3)

    local reanimstorage = Instance.new("Folder", char)
    reanimstorage.Name = "ReanimStorage"
    local reanim = game:GetObjects("rbxassetid://9678834251")[1]
    reanim.Humanoid.CameraOffset = Vector3.new(0, 9.5, 0)
    reanim.Name = "Reanim"

    local anim = char.Animate
    anim.Parent = reanim

    for i, v in pairs(reanim:GetDescendants()) do
        if v:IsA("BasePart") or v:IsA("Decal") then
            v.Transparency = 1
        end
        if v:IsA("ParticleEmitter") then
            v.Enabled = false
        end
    end

    reanim.Parent = reanimstorage
    reanim.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)

    local netless_Y = Vector3.new(0, 30, 0)
    local v3_101 = Vector3.new(1, 0, 1)
    local inf = math.huge
    local v3_0 = Vector3.new(0, 0, 0)

    local function getNetlessVelocity(realPartVelocity)
        if (realPartVelocity.Y > 1) or (realPartVelocity.Y < -1) then
            return realPartVelocity * (25.1 / realPartVelocity.Y)
        end
        realPartVelocity = realPartVelocity * v3_101
        local mag = realPartVelocity.Magnitude
        if mag > 1 then
            realPartVelocity = realPartVelocity * 100 / mag
        end
        return realPartVelocity + netless_Y
    end

    local function align(Part0, Part1, p, r)
        Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
        Part0.CFrame = Part1.CFrame
        local att0 = Instance.new("Attachment", Part0)
        att0.Orientation = r or v3_0
        att0.Position = v3_0
        att0.Name = "att0_" .. Part0.Name
        local att1 = Instance.new("Attachment", Part1)
        att1.Orientation = v3_0
        att1.Position = p or v3_0
        att1.Name = "att1_" .. Part1.Name

        local ape = Instance.new("AlignPosition", att0)
        ape.ApplyAtCenterOfMass = false
        ape.MaxForce = inf
        ape.MaxVelocity = inf
        ape.ReactionForceEnabled = false
        ape.Responsiveness = 200
        ape.Attachment1 = att1
        ape.Attachment0 = att0
        ape.Name = "AlignPositionRtrue"
        ape.RigidityEnabled = true

        local apd = Instance.new("AlignPosition", att0)
        apd.ApplyAtCenterOfMass = false
        apd.MaxForce = inf
        apd.MaxVelocity = inf
        apd.ReactionForceEnabled = false
        apd.Responsiveness = 200
        apd.Attachment1 = att1
        apd.Attachment0 = att0
        apd.Name = "AlignPositionRfalse"
        apd.RigidityEnabled = false

        local ao = Instance.new("AlignOrientation", att0)
        ao.MaxAngularVelocity = inf
        ao.MaxTorque = inf
        ao.PrimaryAxisOnly = false
        ao.ReactionTorqueEnabled = false
        ao.Responsiveness = 200
        ao.Attachment1 = att1
        ao.Attachment0 = att0
        ao.RigidityEnabled = false

        if type(getNetlessVelocity) == "function" then
            local realVelocity = Vector3.new(0, 30, 0)
            local steppedcon = stepped:Connect(function()
                Part0.Velocity = realVelocity
            end)
            local heartbeatcon = heartbeat:Connect(function()
                realVelocity = Part0.Velocity
                Part0.Velocity = getNetlessVelocity(realVelocity)
            end)
            Part0.Destroying:Connect(function()
                steppedcon:Disconnect()
                heartbeatcon:Disconnect()
            end)
            ti(cons, steppedcon)
            ti(cons, heartbeatcon)
        end

        att0.Orientation = r or v3_0
        att0.Position = v3_0
        att1.Orientation = v3_0
        att1.Position = p or v3_0
        Part0.CFrame = Part1.CFrame
    end

    for _, part in next, char:GetDescendants() do
        if part:IsA("BasePart") then
            ti(cons, stepped:Connect(function()
                part.CanCollide = false
            end))
        end
    end

    local bighats = {}
    local smile = char:FindFirstChild("Smile")

    for i, v in pairs(char:GetChildren()) do
        if v:IsA("BasePart") and (v.Name:find("Arm") or v.Name:find("Leg")) then
            v:Destroy()
        end
        if v:IsA("Accessory") and v.Handle.Size == Vector3.new(6, 6, 6) then
            table.insert(bighats, v)
            if v.Handle:FindFirstChild("SpecialMesh") then
                v.Handle.SpecialMesh:Destroy()
            end
        elseif v:IsA("Accessory") and v.Handle.Size ~= Vector3.new(6, 6, 6) and v.Name ~= "Smile" then
            v.Handle:BreakJoints()
            v:Destroy()
        end
    end

    align(char["HumanoidRootPart"], reanim["Head"], Vector3.new(0, 0.5, 0))

    for i, v in pairs(bighats) do
        v.Name = "bighat " .. tostring(i)
        v.Handle:BreakJoints()
    end

    smile.Handle:BreakJoints()
    align(bighats[1].Handle, reanim["Head"])
    align(smile.Handle, reanim["Head"], Vector3.new(0, 0, -3.01), Vector3.new(0, 90, 0))
    align(bighats[2].Handle, reanim["Torso"], Vector3.new(-3, 3, 0))
    align(bighats[3].Handle, reanim["Torso"], Vector3.new(3, 3, 0))
    align(bighats[4].Handle, reanim["Torso"], Vector3.new(-3, -3, 0))
    align(bighats[5].Handle, reanim["Torso"], Vector3.new(3, -3, 0))
    align(bighats[6].Handle, reanim["Right Arm"], Vector3.new(0, 3, 0))
    align(bighats[7].Handle, reanim["Right Arm"], Vector3.new(0, -3, 0))
    align(bighats[8].Handle, reanim["Left Arm"], Vector3.new(0, 3, 0))
    align(bighats[9].Handle, reanim["Left Arm"], Vector3.new(0, -3, 0))
    align(bighats[10].Handle, reanim["Right Leg"], Vector3.new(0, 3, 0))
    align(bighats[11].Handle, reanim["Right Leg"], Vector3.new(0, -3, 0))
    align(bighats[12].Handle, reanim["Left Leg"], Vector3.new(0, 3, 0))
    align(bighats[13].Handle, reanim["Left Leg"], Vector3.new(0, -3, 0))

    workspace.CurrentCamera.CameraSubject = reanim.Humanoid
    plr.Character = reanim
    anim.Disabled = true
    anim.Disabled = false
    Wait(.3)
    plr.Character.HumanoidRootPart.CFrame = oldpos + Vector3.new(0, 6, 0)

    for i, v in pairs(bighats) do
        v.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame
    end
    smile.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame

    Chat("-net")

    local reset = Instance.new("BindableEvent")
    ti(cons, reset.Event:Connect(function()
        reanim:Destroy()
        plr.Character = nil
        plr.Character = char
        plr.Character.Humanoid.Health = 0
        for i, v in pairs(cons) do
            v:Disconnect()
        end
        StarterGui:SetCore("ResetButtonCallback", true)
        reset:Destroy()
        notify("Resetting", "Please wait " .. tostring(Players.RespawnTime) .. " seconds", Players.RespawnTime)
    end))
    StarterGui:SetCore("ResetButtonCallback", reset)

    Wait(5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/somethingsimade/KDV3-Fixed/refs/heads/main/KrystalDance3"))()
end)

creditsBtn.MouseButton1Click:Connect(function()
    closePopup()
    print("------------------------------------------")
    print("Krystal Dance V3 - Made by NITRO-GT")
    Wait(.1)
    print("Krystal Dance V3 - Fixed by MrY7zz")
    Wait(.1)
    print("Krystal Dance V3 - Credits goes to them!!")
    Wait(.1)
    print("------------------Changelog------------------")
    Wait(.1)
    print("Renamed from Giant Krystal Dance to Giant Dance.")
    Wait(.1)
    print("Love from StarFlow 💖")
    Wait(.1)
    print("------------------------------------------")
    Wait(.1)
    notify("Giant Dance", "Check Console!")
end)

gui:GetPropertyChangedSignal("Enabled"):Connect(function()
    if gui.Enabled and uiState.enabled then
        popup.Visible = true
        popup.Size = uiState.lastSize
        minimizer.Text = "Disable"
    end
end)

Wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/DevTools/refs/heads/main/Keyboards"))()
notify("Giant Dance", "Please, choose a keyboard,")
Wait(.95)
notify("Giant Dance", "bc without one you")
Wait(.95)
notify("Giant Dance", "won't be able to use this")
Wait(.95)
notify("Giant Dance", "Supported games:")
Wait(.95)
notify("Giant Dance", "Just a baseplate,")
Wait(.95)
notify("Giant Dance", "Green Baseplate.")