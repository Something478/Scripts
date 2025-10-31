local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")
local TextChatService = game:GetService("TextChatService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")

local CurrentDimension = "Material"
local GameActive = true
local Checkpoints = {}
local CurrentCheckpoint = 1

for _, obj in pairs(workspace:GetChildren()) do
    if obj.Name == "SpectreGame" then
        obj:Destroy()
    end
end

local SpectreGame = Instance.new("Folder")
SpectreGame.Name = "SpectreGame"
SpectreGame.Parent = workspace

local MaterialMusic = Instance.new("Sound")
MaterialMusic.SoundId = "rbxassetid://15729957864"
MaterialMusic.Looped = true
MaterialMusic.Volume = 0.5
MaterialMusic.Parent = SoundService

local SpectralMusic = Instance.new("Sound")
SpectralMusic.SoundId = "rbxassetid://9116399100"
SpectralMusic.Looped = true
SpectralMusic.Volume = 0.5
SpectralMusic.Parent = SoundService

local function CreateMaterialMap()
    local startPlatform = Instance.new("Part")
    startPlatform.Name = "StartPlatform"
    startPlatform.Size = Vector3.new(20, 2, 20)
    startPlatform.Position = Vector3.new(0, 10, 0)
    startPlatform.Anchored = true
    startPlatform.CanCollide = true
    startPlatform.BrickColor = BrickColor.new("Bright green")
    startPlatform.Material = Enum.Material.Neon
    startPlatform.Parent = SpectreGame
    
    local materialPlatform1 = Instance.new("Part")
    materialPlatform1.Name = "MaterialPlatform1"
    materialPlatform1.Size = Vector3.new(15, 1, 5)
    materialPlatform1.Position = Vector3.new(30, 15, 0)
    materialPlatform1.Anchored = true
    materialPlatform1.CanCollide = true
    materialPlatform1.BrickColor = BrickColor.new("Bright blue")
    materialPlatform1.Material = Enum.Material.Neon
    materialPlatform1.Parent = SpectreGame
    
    local materialPlatform2 = Instance.new("Part")
    materialPlatform2.Name = "MaterialPlatform2"
    materialPlatform2.Size = Vector3.new(10, 1, 8)
    materialPlatform2.Position = Vector3.new(60, 18, 0)
    materialPlatform2.Anchored = true
    materialPlatform2.CanCollide = true
    materialPlatform2.BrickColor = BrickColor.new("Bright blue")
    materialPlatform2.Material = Enum.Material.Neon
    materialPlatform2.Parent = SpectreGame
    
    local jumpPad = Instance.new("Part")
    jumpPad.Name = "JumpPad1"
    jumpPad.Size = Vector3.new(4, 1, 4)
    jumpPad.Position = Vector3.new(80, 20, 0)
    jumpPad.Anchored = true
    jumpPad.CanCollide = true
    jumpPad.BrickColor = BrickColor.new("Bright yellow")
    jumpPad.Material = Enum.Material.Neon
    jumpPad.Parent = SpectreGame
    
    local jumpBoost = Instance.new("BodyVelocity")
    jumpBoost.Velocity = Vector3.new(0, 100, 0)
    jumpBoost.Parent = jumpPad
    
    local finishPlatform = Instance.new("Part")
    finishPlatform.Name = "FinishPlatform"
    finishPlatform.Size = Vector3.new(20, 2, 20)
    finishPlatform.Position = Vector3.new(120, 25, 0)
    finishPlatform.Anchored = true
    finishPlatform.CanCollide = true
    finishPlatform.BrickColor = BrickColor.new("Bright red")
    finishPlatform.Material = Enum.Material.Neon
    finishPlatform.Parent = SpectreGame
    
    Checkpoints = {
        Vector3.new(0, 12, 0),
        Vector3.new(30, 16, 0),
        Vector3.new(60, 19, 0),
        Vector3.new(120, 27, 0)
    }
end

local function CreateSpectralMap()
    local spectralPlatform1 = Instance.new("Part")
    spectralPlatform1.Name = "SpectralPlatform1"
    spectralPlatform1.Size = Vector3.new(12, 1, 12)
    spectralPlatform1.Position = Vector3.new(25, 22, 0)
    spectralPlatform1.Anchored = true
    spectralPlatform1.CanCollide = true
    spectralPlatform1.BrickColor = BrickColor.new("Bright violet")
    spectralPlatform1.Material = Enum.Material.Neon
    spectralPlatform1.Transparency = 0
    spectralPlatform1.Parent = SpectreGame
    
    local spectralPlatform2 = Instance.new("Part")
    spectralPlatform2.Name = "SpectralPlatform2"
    spectralPlatform2.Size = Vector3.new(8, 1, 15)
    spectralPlatform2.Position = Vector3.new(50, 28, 5)
    spectralPlatform2.Anchored = true
    spectralPlatform2.CanCollide = true
    spectralPlatform2.BrickColor = BrickColor.new("Bright violet")
    spectralPlatform2.Material = Enum.Material.Neon
    spectralPlatform2.Transparency = 0
    spectralPlatform2.Parent = SpectreGame
    
    local spectralPlatform3 = Instance.new("Part")
    spectralPlatform3.Name = "SpectralPlatform3"
    spectralPlatform3.Size = Vector3.new(6, 1, 6)
    spectralPlatform3.Position = Vector3.new(75, 35, -3)
    spectralPlatform3.Anchored = true
    spectralPlatform3.CanCollide = true
    spectralPlatform3.BrickColor = BrickColor.new("Bright violet")
    spectralPlatform3.Material = Enum.Material.Neon
    spectralPlatform3.Transparency = 0
    spectralPlatform3.Parent = SpectreGame
    
    local spectralFinish = Instance.new("Part")
    spectralFinish.Name = "SpectralFinish"
    spectralFinish.Size = Vector3.new(15, 2, 15)
    spectralFinish.Position = Vector3.new(100, 40, 0)
    spectralFinish.Anchored = true
    spectralFinish.CanCollide = true
    spectralFinish.BrickColor = BrickColor.new("Hot pink")
    spectralFinish.Material = Enum.Material.Neon
    spectralFinish.Transparency = 0
    spectralFinish.Parent = SpectreGame
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
        
        for _, obj in pairs(SpectreGame:GetChildren()) do
            if obj.Name:find("Spectral") then
                obj.Transparency = 0
                obj.CanCollide = true
            elseif obj.Name:find("Material") or obj.Name == "StartPlatform" or obj.Name == "FinishPlatform" or obj.Name == "JumpPad1" then
                obj.Transparency = 0.8
                obj.CanCollide = false
            end
        end
    else
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
        
        for _, obj in pairs(SpectreGame:GetChildren()) do
            if obj.Name:find("Material") or obj.Name == "StartPlatform" or obj.Name == "FinishPlatform" or obj.Name == "JumpPad1" then
                obj.Transparency = 0
                obj.CanCollide = true
            elseif obj.Name:find("Spectral") then
                obj.Transparency = 0.8
                obj.CanCollide = false
            end
        end
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
        character.HumanoidRootPart.Position = Checkpoints[CurrentCheckpoint]
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
            
            if hrp.Position.Y < -50 then
                TeleportToCheckpoint()
            end
            
            for i, checkpoint in ipairs(Checkpoints) do
                if (hrp.Position - checkpoint).Magnitude < 10 and i > CurrentCheckpoint then
                    CurrentCheckpoint = i
                end
            end
            
            local finishPos = CurrentDimension == "Material" and Checkpoints[#Checkpoints] or Vector3.new(100, 42, 0)
            if (hrp.Position - finishPos).Magnitude < 10 then
                local message = TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='#00FF00'>[Spectre Shift]</font> 🎉 YOU WIN! 🎉")
                GameActive = false
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
    
    local tpButton = Instance.new("TextButton")
    tpButton.Text = "TP"
    tpButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    tpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    tpButton.Size = UDim2.new(0, 80, 0, 40)
    tpButton.Position = UDim2.new(0, 10, 0, 60)
    tpButton.ZIndex = 100
    tpButton.Parent = screenGui
    
    local menuButton = Instance.new("TextButton")
    menuButton.Text = "Menu"
    menuButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    menuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    menuButton.Size = UDim2.new(0, 80, 0, 40)
    menuButton.Position = UDim2.new(0, 10, 0, 110)
    menuButton.ZIndex = 100
    menuButton.Parent = screenGui
    
    tpButton.MouseButton1Click:Connect(TeleportToCheckpoint)
    
    menuButton.MouseButton1Click:Connect(function()
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

CreateMaterialMap()
CreateSpectralMap()
AddSmoothControls()
SetupCheckpoints()
AddGameUI()
MaterialMusic:Play()

local heartbeatConnection
heartbeatConnection = RunService.Heartbeat:Connect(function()
    if not GameActive then
        heartbeatConnection:Disconnect()
        return
    end
    
    for _, obj in pairs(SpectreGame:GetChildren()) do
        if obj.Name:find("Spectral") and CurrentDimension == "Material" then
            local pulse = math.sin(tick() * 3) * 0.3 + 0.7
            obj.Transparency = pulse
        elseif (obj.Name:find("Material") or obj.Name == "StartPlatform" or obj.Name == "FinishPlatform") and CurrentDimension == "Spectral" then
            local pulse = math.sin(tick() * 3) * 0.3 + 0.7
            obj.Transparency = pulse
        end
    end
end)

task.wait(1)
SendMessage("Welcome to Spectre Shift")
SendMessage("Use the 'TP' button to teleport between dimensions")