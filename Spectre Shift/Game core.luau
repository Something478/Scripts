local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")
local TextChatService = game:GetService("TextChatService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")
local Workspace = game:GetService("Workspace")

local CurrentDimension = "Material"
local GameActive = true
local BossHealth = 1000
local PlayerHealth = 100
local MessagesSent = false
local Boss = nil
local PlayerPatterns = {}
local LastPlayerPosition = nil

for _, obj in pairs(workspace:GetChildren()) do
    if obj.Name == "SpectreGame" or obj.Name == "Aetherius" then
        obj:Destroy()
    end
end

local SpectreGame = Instance.new("Folder")
SpectreGame.Name = "SpectreGame"
SpectreGame.Parent = workspace

local MaterialMusic = Instance.new("Sound")
MaterialMusic.SoundId = "rbxassetid://15729957864"
MaterialMusic.Looped = true
MaterialMusic.Volume = 1
MaterialMusic.Parent = workspace

local SpectralMusic = Instance.new("Sound")
SpectralMusic.SoundId = "rbxassetid://9116399100"
SpectralMusic.Looped = true
SpectralMusic.Volume = 1
SpectralMusic.Parent = workspace

local function CreateArena()
    local arena = Instance.new("Part")
    arena.Name = "Arena"
    arena.Size = Vector3.new(100, 5, 100)
    arena.Position = Vector3.new(0, 50, 0)
    arena.Anchored = true
    arena.CanCollide = true
    arena.BrickColor = BrickColor.new("Dark stone grey")
    arena.Material = Enum.Material.Neon
    arena.Parent = SpectreGame
end

local function CreateBoss()
    local aetherius = Instance.new("Model")
    aetherius.Name = "Aetherius"
    aetherius.Parent = workspace
    
    local humanoid = Instance.new("Humanoid")
    humanoid.WalkSpeed = 16
    humanoid.JumpPower = 0
    humanoid.MaxHealth = BossHealth
    humanoid.Health = BossHealth
    humanoid.PlatformStand = false
    humanoid.Parent = aetherius
    
    local rootPart = Instance.new("Part")
    rootPart.Name = "HumanoidRootPart"
    rootPart.Size = Vector3.new(4, 6, 2)
    rootPart.Position = Vector3.new(0, 55, 0)
    rootPart.Anchored = false
    rootPart.CanCollide = true
    rootPart.BrickColor = BrickColor.new("Bright violet")
    rootPart.Material = Enum.Material.Neon
    rootPart.Parent = aetherius
    
    local head = Instance.new("Part")
    head.Name = "Head"
    head.Size = Vector3.new(3, 3, 3)
    head.BrickColor = BrickColor.new("Bright violet")
    head.Material = Enum.Material.Neon
    head.Parent = aetherius
    
    local headWeld = Instance.new("Weld")
    headWeld.Part0 = rootPart
    headWeld.Part1 = head
    headWeld.C0 = CFrame.new(0, 3.5, 0)
    headWeld.Parent = head
    
    local leftArm = Instance.new("Part")
    leftArm.Name = "LeftArm"
    leftArm.Size = Vector3.new(2, 5, 2)
    leftArm.BrickColor = BrickColor.new("Bright violet")
    leftArm.Material = Enum.Material.Neon
    leftArm.Parent = aetherius
    
    local leftArmWeld = Instance.new("Weld")
    leftArmWeld.Part0 = rootPart
    leftArmWeld.Part1 = leftArm
    leftArmWeld.C0 = CFrame.new(-3, 1.5, 0)
    leftArmWeld.Parent = leftArm
    
    local rightArm = Instance.new("Part")
    rightArm.Name = "RightArm"
    rightArm.Size = Vector3.new(2, 5, 2)
    rightArm.BrickColor = BrickColor.new("Bright violet")
    rightArm.Material = Enum.Material.Neon
    rightArm.Parent = aetherius
    
    local rightArmWeld = Instance.new("Weld")
    rightArmWeld.Part0 = rootPart
    rightArmWeld.Part1 = rightArm
    rightArmWeld.C0 = CFrame.new(3, 1.5, 0)
    rightArmWeld.Parent = rightArm
    
    local leftLeg = Instance.new("Part")
    leftLeg.Name = "LeftLeg"
    leftLeg.Size = Vector3.new(2, 4, 2)
    leftLeg.BrickColor = BrickColor.new("Bright violet")
    leftLeg.Material = Enum.Material.Neon
    leftLeg.Parent = aetherius
    
    local leftLegWeld = Instance.new("Weld")
    leftLegWeld.Part0 = rootPart
    leftLegWeld.Part1 = leftLeg
    leftLegWeld.C0 = CFrame.new(-1, -4, 0)
    leftLegWeld.Parent = leftLeg
    
    local rightLeg = Instance.new("Part")
    rightLeg.Name = "RightLeg"
    rightLeg.Size = Vector3.new(2, 4, 2)
    rightLeg.BrickColor = BrickColor.new("Bright violet")
    rightLeg.Material = Enum.Material.Neon
    rightLeg.Parent = aetherius
    
    local rightLegWeld = Instance.new("Weld")
    rightLegWeld.Part0 = rootPart
    rightLegWeld.Part1 = rightLeg
    rightLegWeld.C0 = CFrame.new(1, -4, 0)
    rightLegWeld.Parent = rightLeg
    
    local sword = Instance.new("Part")
    sword.Name = "Sword"
    sword.Size = Vector3.new(1, 6, 1)
    sword.BrickColor = BrickColor.new("Bright orange")
    sword.Material = Enum.Material.Neon
    sword.Parent = aetherius
   
    local swordWeld = Instance.new("Weld")
    swordWeld.Part0 = rightArm
    swordWeld.Part1 = sword
    swordWeld.C0 = CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(90), 0, 0)
    swordWeld.Parent = sword
    
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.MaxForce = Vector3.new(4000, 0, 4000)
    bodyVelocity.Parent = rootPart
    
    local bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(4000, 4000, 4000)
    bodyGyro.P = 1000
    bodyGyro.D = 100
    bodyGyro.Parent = rootPart
    
    Boss = aetherius
    return aetherius
end

local function CreatePlayerSword()
    local character = LocalPlayer.Character
    if character then
        local rightArm = character:FindFirstChild("RightArm") or character:FindFirstChild("RightHand")
        if not rightArm then return end
        
        local sword = Instance.new("Part")
        sword.Name = "PlayerSword"
        sword.Size = Vector3.new(1, 5, 1)
        sword.BrickColor = BrickColor.new("Bright blue")
        sword.Material = Enum.Material.Neon
        sword.CanCollide = false
        sword.Parent = character
        
        local weld = Instance.new("Weld")
        weld.Part0 = rightArm
        weld.Part1 = sword
        weld.C0 = CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
        weld.Parent = sword
    end
end

local function BossWalkAnimation()
    if not Boss then return end
    
    coroutine.wrap(function()
        while Boss and Boss.Parent and GameActive do
            local leftLeg = Boss:FindFirstChild("LeftLeg")
            local rightLeg = Boss:FindFirstChild("RightLeg")
            local leftLegWeld = leftLeg and leftLeg:FindFirstChildOfClass("Weld")
            local rightLegWeld = rightLeg and rightLeg:FindFirstChildOfClass("Weld")
            
            if leftLegWeld and rightLegWeld then
                for i = 1, 10 do
                    leftLegWeld.C0 = leftLegWeld.C0 * CFrame.Angles(math.rad(3), 0, 0)
                    rightLegWeld.C0 = rightLegWeld.C0 * CFrame.Angles(math.rad(-3), 0, 0)
                    task.wait(0.05)
                end
                for i = 1, 10 do
                    leftLegWeld.C0 = leftLegWeld.C0 * CFrame.Angles(math.rad(-3), 0, 0)
                    rightLegWeld.C0 = rightLegWeld.C0 * CFrame.Angles(math.rad(3), 0, 0)
                    task.wait(0.05)
                end
            end
            task.wait(0.1)
        end
    end)()
end

local function BossSwordAttack()
    if not Boss then return end
    
    local sword = Boss:FindFirstChild("Sword")
    local swordWeld = sword and sword:FindFirstChildOfClass("Weld")
    
    if swordWeld then
        local originalC0 = swordWeld.C0
        
        for i = 1, 8 do
            swordWeld.C0 = swordWeld.C0 * CFrame.Angles(math.rad(-15), 0, 0)
            task.wait(0.03)
        end
        
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local distance = (character.HumanoidRootPart.Position - Boss.HumanoidRootPart.Position).Magnitude
            if distance < 12 then
                character.Humanoid.Health = character.Humanoid.Health - 30
            end
        end
        
        for i = 1, 8 do
            swordWeld.C0 = swordWeld.C0 * CFrame.Angles(math.rad(15), 0, 0)
            task.wait(0.03)
        end
        
        swordWeld.C0 = originalC0
    end
end

local function BossShootBow()
    if not Boss then return end
    
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    
    local arrow = Instance.new("Part")
    arrow.Name = "BossArrow"
    arrow.Size = Vector3.new(0.3, 0.3, 4)
    arrow.Position = Boss.HumanoidRootPart.Position + Vector3.new(0, 3, 0)
    arrow.BrickColor = BrickColor.new("Bright red")
    arrow.Material = Enum.Material.Neon
    arrow.CanCollide = false
    arrow.Parent = workspace
    
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = (character.HumanoidRootPart.Position - arrow.Position).Unit * 80
    bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
    bodyVelocity.Parent = arrow
    
    game.Debris:AddItem(arrow, 3)
    
    arrow.Touched:Connect(function(hit)
        if hit.Parent == LocalPlayer.Character then
            local humanoid = hit.Parent:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.Health = humanoid.Health - 15
            end
            arrow:Destroy()
        elseif hit.Parent ~= Boss and hit.Name ~= "Arena" then
            arrow:Destroy()
        end
    end)
end

local function MoveBossToPosition(targetPosition)
    if not Boss then return end
    
    local rootPart = Boss.HumanoidRootPart
    local bodyVelocity = rootPart:FindFirstChild("BodyVelocity")
    local bodyGyro = rootPart:FindFirstChild("BodyGyro")
    
    if bodyVelocity and bodyGyro then
        local direction = (targetPosition - rootPart.Position).Unit
        bodyVelocity.Velocity = direction * 16
        
        bodyGyro.CFrame = CFrame.new(rootPart.Position, targetPosition)
    end
end

local function BossAI()
    coroutine.wrap(function()
        while Boss and Boss.Parent and GameActive do
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local playerPos = character.HumanoidRootPart.Position
                local bossPos = Boss.HumanoidRootPart.Position
                local distance = (playerPos - bossPos).Magnitude
                
                if LastPlayerPosition then
                    local movement = (playerPos - LastPlayerPosition).Magnitude
                    table.insert(PlayerPatterns, {position = playerPos, speed = movement})
                    
                    if #PlayerPatterns > 10 then
                        table.remove(PlayerPatterns, 1)
                    end
                end
                LastPlayerPosition = playerPos
                
                if distance < 10 then
                    MoveBossToPosition(playerPos)
                    if math.random(1, 2) == 1 then
                        BossSwordAttack()
                    end
                    task.wait(0.8)
                elseif distance < 25 then
                    MoveBossToPosition(playerPos)
                    if math.random(1, 3) == 1 then
                        BossShootBow()
                    end
                    task.wait(0.5)
                else
                    MoveBossToPosition(playerPos)
                    task.wait(0.3)
                end
                
                if distance > 5 and distance < 15 then
                    local playerSpeed = 0
                    for _, pattern in pairs(PlayerPatterns) do
                        playerSpeed = playerSpeed + pattern.speed
                    end
                    playerSpeed = playerSpeed / math.max(#PlayerPatterns, 1)
                    
                    if playerSpeed > 25 then
                        local leftLegWeld = Boss.LeftLeg:FindFirstChildOfClass("Weld")
                        if leftLegWeld then
                            local originalC0 = leftLegWeld.C0
                            
                            for i = 1, 10 do
                                leftLegWeld.C0 = leftLegWeld.C0 * CFrame.Angles(math.rad(8), 0, 0)
                                task.wait(0.02)
                            end
                            
                            local character = LocalPlayer.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                local distance = (character.HumanoidRootPart.Position - bossPos).Magnitude
                                if distance < 10 then
                                    character.Humanoid.Health = character.Humanoid.Health - 20
                                end
                            end
                            
                            for i = 1, 10 do
                                leftLegWeld.C0 = leftLegWeld.C0 * CFrame.Angles(math.rad(-8), 0, 0)
                                task.wait(0.02)
                            end
                            
                            leftLegWeld.C0 = originalC0
                        end
                    end
                end
            end
            task.wait(0.1)
        end
    end)()
end

local function SwitchDimension()
    if CurrentDimension == "Material" then
        CurrentDimension = "Spectral"
        Lighting.Ambient = Color3.fromRGB(50, 0, 100)
        Lighting.Brightness = 0.3
        
        local sky = Instance.new("Sky")
        sky.SkyboxBk = "rbxassetid://323494035"
        sky.SkyboxDn = "rbxassetid://323494368"
        sky.SkyboxFt = "rbxassetid://323494130"
        sky.SkyboxLf = "rbxassetid://323494252"
        sky.SkyboxRt = "rbxassetid://323494067"
        sky.SkyboxUp = "rbxassetid://323493360"
        sky.Parent = Lighting
        
        MaterialMusic:Stop()
        SpectralMusic:Play()
    else
        CurrentDimension = "Material"
        Lighting.Ambient = Color3.fromRGB(100, 100, 100)
        Lighting.Brightness = 1
        
        local sky = Instance.new("Sky")
        sky.SkyboxBk = "rbxassetid://6237790466"
        sky.SkyboxDn = "rbxassetid://6237791216"
        sky.SkyboxFt = "rbxassetid://6237792119"
        sky.SkyboxLf = "rbxassetid://6237792729"
        sky.SkyboxRt = "rbxassetid://6237793337"
        sky.SkyboxUp = "rbxassetid://6237793905"
        sky.Parent = Lighting
        
        SpectralMusic:Stop()
        MaterialMusic:Play()
    end
end

local function PlayerAttack()
    local character = LocalPlayer.Character
    if not character then return end
    
    local sword = character:FindFirstChild("PlayerSword")
    local swordWeld = sword and sword:FindFirstChildOfClass("Weld")
    
    if swordWeld then
        local originalC0 = swordWeld.C0
        
        for i = 1, 6 do
            swordWeld.C0 = swordWeld.C0 * CFrame.Angles(math.rad(-20), 0, 0)
            task.wait(0.02)
        end
        
        if Boss and Boss.Parent then
            local distance = (Boss.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude
            if distance < 10 then
                Boss.Humanoid.Health = Boss.Humanoid.Health - 25
            end
        end
        
        for i = 1, 6 do
            swordWeld.C0 = swordWeld.C0 * CFrame.Angles(math.rad(20), 0, 0)
            task.wait(0.02)
        end
        
        swordWeld.C0 = originalC0
    end
end

local function TeleportPlayerToArena()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(0, 55, 20)
    end
end

local function AddGameUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = LocalPlayer.PlayerGui
    screenGui.Name = "GameUI"
    
    local attackButton = Instance.new("TextButton")
    attackButton.Text = "ATTACK"
    attackButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    attackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    attackButton.Size = UDim2.new(0, 100, 0, 40)
    attackButton.Position = UDim2.new(1, -110, 1, -50)
    attackButton.ZIndex = 100
    attackButton.Parent = screenGui
    
    local switchButton = Instance.new("TextButton")
    switchButton.Text = "Switch Dim"
    switchButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    switchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    switchButton.Size = UDim2.new(0, 100, 0, 40)
    switchButton.Position = UDim2.new(1, -110, 1, -100)
    switchButton.ZIndex = 100
    switchButton.Parent = screenGui
    
    local teleportButton = Instance.new("TextButton")
    teleportButton.Text = "TP to Arena"
    teleportButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    teleportButton.Size = UDim2.new(0, 100, 0, 40)
    teleportButton.Position = UDim2.new(1, -110, 1, -150)
    teleportButton.ZIndex = 100
    teleportButton.Parent = screenGui
    
    local menuButton = Instance.new("TextButton")
    menuButton.Text = "Menu"
    menuButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    menuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    menuButton.Size = UDim2.new(0, 100, 0, 40)
    menuButton.Position = UDim2.new(0, 10, 0, 10)
    menuButton.ZIndex = 100
    menuButton.Parent = screenGui
    
    attackButton.MouseButton1Click:Connect(PlayerAttack)
    switchButton.MouseButton1Click:Connect(SwitchDimension)
    teleportButton.MouseButton1Click:Connect(TeleportPlayerToArena)
    
    menuButton.MouseButton1Click:Connect(function()
        if Boss then
            Boss:Destroy()
        end
        for _, obj in pairs(workspace:GetChildren()) do
            if obj.Name == "SpectreGame" then
                obj:Destroy()
            end
        end
        screenGui:Destroy()
        MaterialMusic:Stop()
        SpectralMusic:Stop()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/Spectre%20Shift/Main%20menu.luau"))()
    end)
    
    return screenGui
end

local function SendMessage(message)
    local chatCmd = TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='#00FF00'>[Spectre Shift]</font> " .. message)
end

local function SetupGame()
    CreateArena()
    CreateBoss()
    CreatePlayerSword()
    BossAI()
    BossWalkAnimation()
    TeleportPlayerToArena()
end

SetupGame()
AddGameUI()
MaterialMusic:Play()

if not MessagesSent then
    task.wait(2)
    SendMessage("Survive AETHERIUS, The Dimension Warden!")
    SendMessage("ATTACK with sword, Switch Dimensions strategically!")
    MessagesSent = true
end

RunService.Heartbeat:Connect(function()
    if not GameActive then return end
    
    if Boss and Boss.Parent then
        if Boss.Humanoid.Health <= 0 then
            SendMessage("🎉 VICTORY! You defeated AETHERIUS! 🎉")
            GameActive = false
        end
    end
    
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        if character.Humanoid.Health <= 0 then
            SendMessage("💀 DEFEAT! Aetherius has won...")
            GameActive = false
        end
    end
end)