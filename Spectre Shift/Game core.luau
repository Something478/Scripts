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
local Checkpoints = {}
local CurrentCheckpoint = 1
local MessagesSent = false
local OriginalMapParts = {}
local SpawnLocation = workspace:FindFirstChild("SpawnLocation") or Instance.new("Part")

for _, obj in pairs(workspace:GetChildren()) do
    if obj.Name == "SpectreGame" then
        obj:Destroy()
    end
end

for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") and obj.Parent ~= workspace.Terrain and obj.Parent.Name ~= "SpectreGame" and obj.Name ~= "SpawnLocation" then
        table.insert(OriginalMapParts, obj)
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

local function HideOriginalMap()
    for _, part in pairs(OriginalMapParts) do
        part.Transparency = 1
        part.CanCollide = false
    end
end

local function ShowOriginalMap()
    for _, part in pairs(OriginalMapParts) do
        part.Transparency = 0
        part.CanCollide = true
    end
end

local function CreateMaterialMap()
    local startPlatform = Instance.new("Part")
    startPlatform.Name = "MaterialStart"
    startPlatform.Size = Vector3.new(20, 2, 20)
    startPlatform.Position = Vector3.new(0, 50, 0)
    startPlatform.Anchored = true
    startPlatform.CanCollide = true
    startPlatform.BrickColor = BrickColor.new("Bright green")
    startPlatform.Material = Enum.Material.Neon
    startPlatform.Parent = SpectreGame
    
    local movingPlatform1 = Instance.new("Part")
    movingPlatform1.Name = "MaterialMoving1"
    movingPlatform1.Size = Vector3.new(10, 1, 4)
    movingPlatform1.Position = Vector3.new(30, 52, 0)
    movingPlatform1.Anchored = true
    movingPlatform1.CanCollide = true
    movingPlatform1.BrickColor = BrickColor.new("Bright blue")
    movingPlatform1.Material = Enum.Material.Neon
    movingPlatform1.Parent = SpectreGame
    
    local materialPlatform1 = Instance.new("Part")
    materialPlatform1.Name = "MaterialPlatform1"
    materialPlatform1.Size = Vector3.new(8, 1, 20)
    materialPlatform1.Position = Vector3.new(60, 55, 0)
    materialPlatform1.Anchored = true
    materialPlatform1.CanCollide = true
    materialPlatform1.BrickColor = BrickColor.new("Bright blue")
    materialPlatform1.Material = Enum.Material.Neon
    materialPlatform1.Parent = SpectreGame
    
    local laserWall1 = Instance.new("Part")
    laserWall1.Name = "MaterialLaser1"
    laserWall1.Size = Vector3.new(1, 20, 10)
    laserWall1.Position = Vector3.new(75, 60, 0)
    laserWall1.Anchored = true
    laserWall1.CanCollide = true
    laserWall1.BrickColor = BrickColor.new("Bright red")
    laserWall1.Material = Enum.Material.Neon
    laserWall1.Parent = SpectreGame
    
    local jumpPad = Instance.new("Part")
    jumpPad.Name = "MaterialJumpPad"
    jumpPad.Size = Vector3.new(6, 1, 6)
    jumpPad.Position = Vector3.new(90, 58, 0)
    jumpPad.Anchored = true
    jumpPad.CanCollide = true
    jumpPad.BrickColor = BrickColor.new("Bright yellow")
    jumpPad.Material = Enum.Material.Neon
    jumpPad.Parent = SpectreGame
    
    local jumpBoost = Instance.new("BodyVelocity")
    jumpBoost.Velocity = Vector3.new(0, 120, 0)
    jumpBoost.Parent = jumpPad
    
    local finishPlatform = Instance.new("Part")
    finishPlatform.Name = "MaterialFinish"
    finishPlatform.Size = Vector3.new(15, 2, 15)
    finishPlatform.Position = Vector3.new(120, 65, 0)
    finishPlatform.Anchored = true
    finishPlatform.CanCollide = true
    finishPlatform.BrickColor = BrickColor.new("Bright red")
    finishPlatform.Material = Enum.Material.Neon
    finishPlatform.Parent = SpectreGame
    
    Checkpoints = {
        Vector3.new(0, 52, 0),
        Vector3.new(60, 56, 0),
        Vector3.new(90, 59, 0),
        Vector3.new(120, 67, 0)
    }
    
    coroutine.wrap(function()
        while GameActive do
            for i = 1, 20 do
                if movingPlatform1 and movingPlatform1.Parent then
                    movingPlatform1.Position = Vector3.new(30 + math.sin(tick()) * 10, 52, 0)
                end
                task.wait(0.1)
            end
        end
    end)()
end

local function CreateSpectralMap()
    local startPlatform = Instance.new("Part")
    startPlatform.Name = "SpectralStart"
    startPlatform.Size = Vector3.new(15, 1, 15)
    startPlatform.Position = Vector3.new(0, 80, 0)
    startPlatform.Anchored = true
    startPlatform.CanCollide = true
    startPlatform.BrickColor = BrickColor.new("Bright violet")
    startPlatform.Material = Enum.Material.Neon
    startPlatform.Parent = SpectreGame
    
    local spectralPlatform1 = Instance.new("Part")
    spectralPlatform1.Name = "SpectralPlatform1"
    spectralPlatform1.Size = Vector3.new(6, 1, 6)
    spectralPlatform1.Position = Vector3.new(25, 85, 0)
    spectralPlatform1.Anchored = true
    spectralPlatform1.CanCollide = true
    spectralPlatform1.BrickColor = BrickColor.new("Bright violet")
    spectralPlatform1.Material = Enum.Material.Neon
    spectralPlatform1.Parent = SpectreGame
    
    local disappearingPlatform = Instance.new("Part")
    disappearingPlatform.Name = "SpectralDisappearing"
    disappearingPlatform.Size = Vector3.new(8, 1, 3)
    disappearingPlatform.Position = Vector3.new(45, 88, 0)
    disappearingPlatform.Anchored = true
    disappearingPlatform.CanCollide = true
    disappearingPlatform.BrickColor = BrickColor.new("Hot pink")
    disappearingPlatform.Material = Enum.Material.Neon
    disappearingPlatform.Parent = SpectreGame
    
    local spectralPlatform2 = Instance.new("Part")
    spectralPlatform2.Name = "SpectralPlatform2"
    spectralPlatform2.Size = Vector3.new(4, 1, 12)
    spectralPlatform2.Position = Vector3.new(65, 92, 5)
    spectralPlatform2.Anchored = true
    spectralPlatform2.CanCollide = true
    spectralPlatform2.BrickColor = BrickColor.new("Bright violet")
    spectralPlatform2.Material = Enum.Material.Neon
    spectralPlatform2.Parent = SpectreGame
    
    local spectralJumpPad = Instance.new("Part")
    spectralJumpPad.Name = "SpectralJumpPad"
    spectralJumpPad.Size = Vector3.new(5, 1, 5)
    spectralJumpPad.Position = Vector3.new(85, 95, 0)
    spectralJumpPad.Anchored = true
    spectralJumpPad.CanCollide = true
    spectralJumpPad.BrickColor = BrickColor.new("Bright yellow")
    spectralJumpPad.Material = Enum.Material.Neon
    spectralJumpPad.Parent = SpectreGame
    
    local jumpBoost = Instance.new("BodyVelocity")
    jumpBoost.Velocity = Vector3.new(0, 150, 0)
    jumpBoost.Parent = spectralJumpPad
    
    local spectralFinish = Instance.new("Part")
    spectralFinish.Name = "SpectralFinish"
    spectralFinish.Size = Vector3.new(12, 2, 12)
    spectralFinish.Position = Vector3.new(110, 105, 0)
    spectralFinish.Anchored = true
    spectralFinish.CanCollide = true
    spectralFinish.BrickColor = BrickColor.new("Hot pink")
    spectralFinish.Material = Enum.Material.Neon
    spectralFinish.Parent = SpectreGame
    
    coroutine.wrap(function()
        while GameActive do
            if disappearingPlatform and disappearingPlatform.Parent then
                disappearingPlatform.Transparency = 0
                disappearingPlatform.CanCollide = true
                task.wait(1.5)
                disappearingPlatform.Transparency = 0.8
                disappearingPlatform.CanCollide = false
                task.wait(1)
            end
        end
    end)()
end

local function SwitchToOriginal()
    CurrentDimension = "Original"
    Lighting.Ambient = Color3.fromRGB(150, 150, 150)
    Lighting.Brightness = 1
    workspace.Gravity = 196.2
    
    local sky = Instance.new("Sky")
    sky.SkyboxBk = "rbxassetid://8139676635"
    sky.SkyboxDn = "rbxassetid://8139677123"
    sky.SkyboxFt = "rbxassetid://8139677457"
    sky.SkyboxLf = "rbxassetid://8139677769"
    sky.SkyboxRt = "rbxassetid://8139678067"
    sky.SkyboxUp = "rbxassetid://8139678358"
    sky.Parent = Lighting
    
    MaterialMusic:Stop()
    SpectralMusic:Stop()
    
    ShowOriginalMap()
    
    for _, obj in pairs(SpectreGame:GetChildren()) do
        obj.Transparency = 1
        obj.CanCollide = false
    end
    
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(SpawnLocation.Position + Vector3.new(0, 5, 0))
    end
end

local function SwitchDimension()
    if CurrentDimension == "Material" then
        CurrentDimension = "Spectral"
        Lighting.Ambient = Color3.fromRGB(50, 0, 100)
        Lighting.Brightness = 0.3
        workspace.Gravity = 30
        
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
        
        HideOriginalMap()
        for _, obj in pairs(SpectreGame:GetChildren()) do
            if obj.Name:find("Spectral") then
                obj.Transparency = 0
                obj.CanCollide = true
            else
                obj.Transparency = 1
                obj.CanCollide = false
            end
        end
    elseif CurrentDimension == "Spectral" then
        CurrentDimension = "Material"
        Lighting.Ambient = Color3.fromRGB(100, 100, 100)
        Lighting.Brightness = 1
        workspace.Gravity = 196.2
        
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
        
        HideOriginalMap()
        for _, obj in pairs(SpectreGame:GetChildren()) do
            if obj.Name:find("Material") then
                obj.Transparency = 0
                obj.CanCollide = true
            else
                obj.Transparency = 1
                obj.CanCollide = false
            end
        end
    else
        SwitchDimension()
    end
    
    local character = LocalPlayer.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = CurrentDimension == "Spectral" and 24 or 16
        end
    end
end

local function TeleportToCheckpoint()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        if CurrentDimension == "Original" then
            character.HumanoidRootPart.CFrame = CFrame.new(SpawnLocation.Position + Vector3.new(0, 5, 0))
        else
            character.HumanoidRootPart.CFrame = CFrame.new(Checkpoints[CurrentCheckpoint])
        end
    end
end

local function AddSmoothControls()
    local doubleJumpAvailable = true
    
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        
        if input.KeyCode == Enum.KeyCode.Q then
            SwitchDimension()
        elseif input.KeyCode == Enum.KeyCode.Space and CurrentDimension == "Spectral" and doubleJumpAvailable then
            local character = LocalPlayer.Character
            if character then
                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.Jump = true
                    doubleJumpAvailable = false
                    task.delay(1, function()
                        doubleJumpAvailable = true
                    end)
                end
            end
        end
    end)
end

local function SetupCheckpoints()
    RunService.Heartbeat:Connect(function()
        if not GameActive then return end
        
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local hrp = character.HumanoidRootPart
            
            if hrp.Position.Y < 20 then
                TeleportToCheckpoint()
            end
            
            if CurrentDimension ~= "Original" then
                for i, checkpoint in ipairs(Checkpoints) do
                    if (hrp.Position - checkpoint).Magnitude < 10 and i > CurrentCheckpoint then
                        CurrentCheckpoint = i
                    end
                end
                
                local finishPos = CurrentDimension == "Material" and Checkpoints[#Checkpoints] or Vector3.new(110, 107, 0)
                if (hrp.Position - finishPos).Magnitude < 10 then
                    local message = TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='#00FF00'>[Spectre Shift]</font> 🎉 YOU WIN! 🎉")
                    GameActive = false
                end
            end
        end
    end)
end

local function SendMessage(message)
    local chatCmd = TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='#00FF00'>[Spectre Shift]</font> " .. message)
end

local function AddGameUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = LocalPlayer.PlayerGui
    screenGui.Name = "GameUI"
    
    local switchButton = Instance.new("TextButton")
    switchButton.Text = "Switch Dim"
    switchButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    switchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    switchButton.Size = UDim2.new(0, 100, 0, 40)
    switchButton.Position = UDim2.new(0, 10, 0, 60)
    switchButton.ZIndex = 100
    switchButton.Parent = screenGui
    
    local checkpointButton = Instance.new("TextButton")
    checkpointButton.Text = "To Checkpoint"
    checkpointButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    checkpointButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkpointButton.Size = UDim2.new(0, 100, 0, 40)
    checkpointButton.Position = UDim2.new(0, 10, 0, 110)
    checkpointButton.ZIndex = 100
    checkpointButton.Parent = screenGui
    
    local originalButton = Instance.new("TextButton")
    originalButton.Text = "To Original"
    originalButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    originalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    originalButton.Size = UDim2.new(0, 100, 0, 40)
    originalButton.Position = UDim2.new(0, 10, 0, 160)
    originalButton.ZIndex = 100
    originalButton.Parent = screenGui
    
    local menuButton = Instance.new("TextButton")
    menuButton.Text = "Menu"
    menuButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    menuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    menuButton.Size = UDim2.new(0, 100, 0, 40)
    menuButton.Position = UDim2.new(0, 10, 0, 210)
    menuButton.ZIndex = 100
    menuButton.Parent = screenGui
    
    switchButton.MouseButton1Click:Connect(SwitchDimension)
    checkpointButton.MouseButton1Click:Connect(TeleportToCheckpoint)
    originalButton.MouseButton1Click:Connect(SwitchToOriginal)
    
    menuButton.MouseButton1Click:Connect(function()
        for _, obj in pairs(workspace:GetChildren()) do
            if obj.Name == "SpectreGame" then
                obj:Destroy()
            end
        end
        ShowOriginalMap()
        screenGui:Destroy()
        MaterialMusic:Stop()
        SpectralMusic:Stop()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/Spectre%20Shift/Main%20menu.luau"))()
    end)
    
    return screenGui
end

HideOriginalMap()
CreateMaterialMap()
CreateSpectralMap()
AddSmoothControls()
SetupCheckpoints()
AddGameUI()
MaterialMusic:Play()

for _, obj in pairs(SpectreGame:GetChildren()) do
    if not obj.Name:find("Material") then
        obj.Transparency = 1
        obj.CanCollide = false
    end
end

if not MessagesSent then
    task.wait(2)
    SendMessage("Welcome to Spectre Shift")
    SendMessage("Use buttons to switch dimensions and teleport!")
    MessagesSent = true
end