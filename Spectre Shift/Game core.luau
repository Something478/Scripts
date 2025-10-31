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
    
    local wall1 = Instance.new("Part")
    wall1.Name = "Wall1"
    wall1.Size = Vector3.new(100, 30, 5)
    wall1.Position = Vector3.new(0, 65, -50)
    wall1.Anchored = true
    wall1.CanCollide = true
    wall1.BrickColor = BrickColor.new("Dark stone grey")
    wall1.Parent = SpectreGame
    
    local wall2 = Instance.new("Part")
    wall2.Name = "Wall2"
    wall2.Size = Vector3.new(100, 30, 5)
    wall2.Position = Vector3.new(0, 65, 50)
    wall2.Anchored = true
    wall2.CanCollide = true
    wall2.BrickColor = BrickColor.new("Dark stone grey")
    wall2.Parent = SpectreGame
    
    local wall3 = Instance.new("Part")
    wall3.Name = "Wall3"
    wall3.Size = Vector3.new(5, 30, 100)
    wall3.Position = Vector3.new(-50, 65, 0)
    wall3.Anchored = true
    wall3.CanCollide = true
    wall3.BrickColor = BrickColor.new("Dark stone grey")
    wall3.Parent = SpectreGame
    
    local wall4 = Instance.new("Part")
    wall4.Name = "Wall4"
    wall4.Size = Vector3.new(5, 30, 100)
    wall4.Position = Vector3.new(50, 65, 0)
    wall4.Anchored = true
    wall4.CanCollide = true
    wall4.BrickColor = BrickColor.new("Dark stone grey")
    wall4.Parent = SpectreGame
end

local function CreateBoss()
    local aetherius = Instance.new("Model")
    aetherius.Name = "Aetherius"
    aetherius.Parent = workspace
    
    local humanoid = Instance.new("Humanoid")
    humanoid.WalkSpeed = 16
    humanoid.JumpPower = 50
    humanoid.MaxHealth = BossHealth
    humanoid.Health = BossHealth
    humanoid.Parent = aetherius
    
    local rootPart = Instance.new("Part")
    rootPart.Name = "Torso"
    rootPart.Size = Vector3.new(3, 5, 2)
    rootPart.Position = Vector3.new(0, 55, 0)
    rootPart.Anchored = false
    rootPart.CanCollide = true
    rootPart.BrickColor = BrickColor.new("Bright violet")
    rootPart.Material = Enum.Material.Neon
    rootPart.Parent = aetherius
    
    local head = Instance.new("Part")
    head.Name = "Head"
    head.Size = Vector3.new(2, 2, 2)
    head.Position = Vector3.new(0, 60, 0)
    head.Anchored = false
    head.CanCollide = true
    head.BrickColor = BrickColor.new("Bright violet")
    head.Material = Enum.Material.Neon
    head.Parent = aetherius
    
    local leftArm = Instance.new("Part")
    leftArm.Name = "LeftArm"
    leftArm.Size = Vector3.new(1, 3, 1)
    leftArm.Position = Vector3.new(-2, 57, 0)
    leftArm.Anchored = false
    leftArm.CanCollide = true
    leftArm.BrickColor = BrickColor.new("Bright violet")
    leftArm.Material = Enum.Material.Neon
    leftArm.Parent = aetherius
    
    local rightArm = Instance.new("Part")
    rightArm.Name = "RightArm"
    rightArm.Size = Vector3.new(1, 3, 1)
    rightArm.Position = Vector3.new(2, 57, 0)
    rightArm.Anchored = false
    rightArm.CanCollide = true
    rightArm.BrickColor = BrickColor.new("Bright violet")
    rightArm.Material = Enum.Material.Neon
    rightArm.Parent = aetherius
    
    local leftLeg = Instance.new("Part")
    leftLeg.Name = "LeftLeg"
    leftLeg.Size = Vector3.new(1, 3, 1)
    leftLeg.Position = Vector3.new(-1, 52, 0)
    leftLeg.Anchored = false
    leftLeg.CanCollide = true
    leftLeg.BrickColor = BrickColor.new("Bright violet")
    leftLeg.Material = Enum.Material.Neon
    leftLeg.Parent = aetherius
    
    local rightLeg = Instance.new("Part")
    rightLeg.Name = "RightLeg"
    rightLeg.Size = Vector3.new(1, 3, 1)
    rightLeg.Position = Vector3.new(1, 52, 0)
    rightLeg.Anchored = false
    rightLeg.CanCollide = true
    rightLeg.BrickColor = BrickColor.new("Bright violet")
    rightLeg.Material = Enum.Material.Neon
    rightLeg.Parent = aetherius
    
    local sword = Instance.new("Part")
    sword.Name = "Sword"
    sword.Size = Vector3.new(1, 5, 0.5)
    sword.Position = Vector3.new(3, 57, 0)
    sword.Anchored = false
    sword.CanCollide = true
    sword.BrickColor = BrickColor.new("Bright orange")
    sword.Material = Enum.Material.Neon
    sword.Parent = aetherius
    
    local weld = Instance.new("Weld")
    weld.Part0 = rightArm
    weld.Part1 = sword
    weld.C0 = CFrame.new(0, -1.5, 0)
    weld.Parent = sword
    
    Boss = aetherius
    return aetherius
end

local function CreatePlayerSword()
    local character = LocalPlayer.Character
    if character then
        local rightArm = character:FindFirstChild("RightArm") or character:FindFirstChild("RightHand")
        if rightArm then
            local sword = Instance.new("Part")
            sword.Name = "PlayerSword"
            sword.Size = Vector3.new(0.8, 4, 0.4)
            sword.BrickColor = BrickColor.new("Bright blue")
            sword.Material = Enum.Material.Neon
            sword.Parent = character
            
            local weld = Instance.new("Weld")
            weld.Part0 = rightArm
            weld.Part1 = sword
            weld.C0 = CFrame.new(0, -1, 0)
            weld.Parent = sword
        end
    end
end

local function BossWalkAnimation()
    if not Boss then return end
    
    coroutine.wrap(function()
        while Boss and Boss.Parent and GameActive do
            local leftLeg = Boss:FindFirstChild("LeftLeg")
            local rightLeg = Boss:FindFirstChild("RightLeg")
            
            if leftLeg and rightLeg then
                for i = 1, 20 do
                    leftLeg.CFrame = leftLeg.CFrame * CFrame.Angles(0.1, 0, 0)
                    rightLeg.CFrame = rightLeg.CFrame * CFrame.Angles(-0.1, 0, 0)
                    task.wait(0.05)
                end
                for i = 1, 20 do
                    leftLeg.CFrame = leftLeg.CFrame * CFrame.Angles(-0.1, 0, 0)
                    rightLeg.CFrame = rightLeg.CFrame * CFrame.Angles(0.1, 0, 0)
                    task.wait(0.05)
                end
            end
        end
    end)()
end

local function BossSwordAttack()
    if not Boss then return end
    
    local sword = Boss:FindFirstChild("Sword")
    local rightArm = Boss:FindFirstChild("RightArm")
    
    if sword and rightArm then
        local originalPosition = sword.CFrame
        
        for i = 1, 10 do
            sword.CFrame = sword.CFrame * CFrame.Angles(0.3, 0, 0)
            task.wait(0.03)
        end
        
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local distance = (character.HumanoidRootPart.Position - Boss.Torso.Position).Magnitude
            if distance < 10 then
                character.Humanoid.Health = character.Humanoid.Health - 30
            end
        end
        
        for i = 1, 10 do
            sword.CFrame = sword.CFrame * CFrame.Angles(-0.3, 0, 0)
            task.wait(0.03)
        end
    end
end

local function BossShootBow()
    if not Boss then return end
    
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    
    local arrow = Instance.new("Part")
    arrow.Name = "BossArrow"
    arrow.Size = Vector3.new(0.2, 0.2, 3)
    arrow.Position = Boss.Torso.Position + Vector3.new(0, 3, 0)
    arrow.BrickColor = BrickColor.new("Bright red")
    arrow.Material = Enum.Material.Neon
    arrow.Velocity = (character.HumanoidRootPart.Position - arrow.Position).Unit * 50
    arrow.Parent = workspace
    
    game.Debris:AddItem(arrow, 5)
    
    arrow.Touched:Connect(function(hit)
        if hit.Parent == LocalPlayer.Character then
            local humanoid = hit.Parent:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.Health = humanoid.Health - 15
            end
            arrow:Destroy()
        end
    end)
end

local function BossAI()
    coroutine.wrap(function()
        while Boss and Boss.Parent and GameActive do
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local bossTorso = Boss:FindFirstChild("Torso")
                if bossTorso then
                    local distance = (character.HumanoidRootPart.Position - bossTorso.Position).Magnitude
                    
                    if LastPlayerPosition then
                        local movement = (character.HumanoidRootPart.Position - LastPlayerPosition).Magnitude
                        table.insert(PlayerPatterns, {position = character.HumanoidRootPart.Position, speed = movement})
                        
                        if #PlayerPatterns > 10 then
                            table.remove(PlayerPatterns, 1)
                        end
                    end
                    LastPlayerPosition = character.HumanoidRootPart.Position
                    
                    if distance < 8 then
                        BossSwordAttack()
                        task.wait(1)
                    elseif distance < 25 then
                        local moveDirection = (character.HumanoidRootPart.Position - bossTorso.Position).Unit
                        bossTorso.Velocity = moveDirection * 16
                        BossWalkAnimation()
                        
                        if math.random(1, 3) == 1 then
                            BossShootBow()
                        end
                        task.wait(0.5)
                    else
                        local moveDirection = (character.HumanoidRootPart.Position - bossTorso.Position).Unit
                        bossTorso.Velocity = moveDirection * 16
                        BossWalkAnimation()
                        task.wait(0.3)
                    end
                    
                    if distance > 5 and distance < 15 then
                        local playerSpeed = 0
                        for _, pattern in pairs(PlayerPatterns) do
                            playerSpeed = playerSpeed + pattern.speed
                        end
                        playerSpeed = playerSpeed / #PlayerPatterns
                        
                        if playerSpeed > 20 then
                            local leftLeg = Boss:FindFirstChild("LeftLeg")
                            if leftLeg then
                                for i = 1, 15 do
                                    leftLeg.CFrame = leftLeg.CFrame * CFrame.Angles(0.2, 0, 0)
                                    task.wait(0.02)
                                end
                                
                                local character = LocalPlayer.Character
                                if character and character:FindFirstChild("HumanoidRootPart") then
                                    local distance = (character.HumanoidRootPart.Position - Boss.Torso.Position).Magnitude
                                    if distance < 8 then
                                        character.Humanoid.Health = character.Humanoid.Health - 20
                                    end
                                end
                                
                                for i = 1, 15 do
                                    leftLeg.CFrame = leftLeg.CFrame * CFrame.Angles(-0.2, 0, 0)
                                    task.wait(0.02)
                                end
                            end
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
    if sword then
        local originalPosition = sword.CFrame
        
        for i = 1, 8 do
            sword.CFrame = sword.CFrame * CFrame.Angles(0.4, 0, 0)
            task.wait(0.02)
        end
        
        if Boss and Boss.Parent then
            local distance = (Boss.Torso.Position - character.HumanoidRootPart.Position).Magnitude
            if distance < 10 then
                Boss.Humanoid.Health = Boss.Humanoid.Health - 25
            end
        end
        
        for i = 1, 8 do
            sword.CFrame = sword.CFrame * CFrame.Angles(-0.4, 0, 0)
            task.wait(0.02)
        end
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

local function SetupGame()
    CreateArena()
    CreateBoss()
    CreatePlayerSword()
    BossAI()
    BossWalkAnimation()
    
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.Position = Vector3.new(0, 55, 20)
    end
end

SetupGame()
AddGameUI()
MaterialMusic:Play()

if not MessagesSent then
    task.wait(2)
    SendMessage("Survive Aetherius, The Dimension Warden!")
    SendMessage("Use ATTACK button and Switch Dimensions to fight!")
    MessagesSent = true
end

RunService.Heartbeat:Connect(function()
    if not GameActive then return end
    
    if Boss and Boss.Parent then
        if Boss.Humanoid.Health <= 0 then
            SendMessage("🎉 VICTORY! You defeated Aetherius! 🎉")
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