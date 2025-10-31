local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")
local TextChatService = game:GetService("TextChatService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

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

local function CreateMap()
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
    
    local spectralPlatform1 = Instance.new("Part")
    spectralPlatform1.Name = "SpectralPlatform1"
    spectralPlatform1.Size = Vector3.new(15, 1, 5)
    spectralPlatform1.Position = Vector3.new(30, 25, 0)
    spectralPlatform1.Anchored = true
    spectralPlatform1.CanCollide = true
    spectralPlatform1.BrickColor = BrickColor.new("Bright violet")
    spectralPlatform1.Material = Enum.Material.Neon
    spectralPlatform1.Transparency = 0.5
    spectralPlatform1.Parent = SpectreGame
    
    local jumpPad = Instance.new("Part")
    jumpPad.Name = "JumpPad1"
    jumpPad.Size = Vector3.new(4, 1, 4)
    jumpPad.Position = Vector3.new(50, 20, 0)
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
    finishPlatform.Position = Vector3.new(100, 30, 0)
    finishPlatform.Anchored = true
    finishPlatform.CanCollide = true
    finishPlatform.BrickColor = BrickColor.new("Bright red")
    finishPlatform.Material = Enum.Material.Neon
    finishPlatform.Parent = SpectreGame
    
    Checkpoints = {
        Vector3.new(0, 12, 0),
        Vector3.new(50, 22, 0),
        Vector3.new(100, 32, 0)
    }
end

local function SwitchDimension()
    if CurrentDimension == "Material" then
        CurrentDimension = "Spectral"
        Lighting.Ambient = Color3.fromRGB(50, 0, 100)
        Lighting.Brightness = 0.3
        workspace.Gravity = 30
        
        for _, obj in pairs(SpectreGame:GetChildren()) do
            if obj.Name:find("Spectral") then
                obj.Transparency = 0
                obj.CanCollide = true
            elseif obj.Name:find("Material") then
                obj.Transparency = 0.8
                obj.CanCollide = false
            end
        end
    else
        CurrentDimension = "Material"
        Lighting.Ambient = Color3.fromRGB(100, 100, 100)
        Lighting.Brightness = 1
        workspace.Gravity = 196.2
        
        for _, obj in pairs(SpectreGame:GetChildren()) do
            if obj.Name:find("Material") then
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
                RespawnAtCheckpoint()
            end
            
            for i, checkpoint in ipairs(Checkpoints) do
                if (hrp.Position - checkpoint).Magnitude < 10 and i > CurrentCheckpoint then
                    CurrentCheckpoint = i
                    SendMessage("Checkpoint " .. i .. " reached!")
                end
            end
            
            if (hrp.Position - Checkpoints[#Checkpoints]).Magnitude < 10 then
                SendMessage("🎉 YOU WIN! 🎉")
                GameActive = false
            end
        end
    end)
end

local function RespawnAtCheckpoint()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.Position = Checkpoints[CurrentCheckpoint]
        character.Humanoid.Health = character.Humanoid.MaxHealth
    end
end

local function SendMessage(message)
    local chatCmd = TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='#00FF00'>[Spectre Shift]</font> " .. message)
end

local function ShowGameUI()
    SendMessage("Welcome to SPECTRE SHIFT!")
    SendMessage("Q - Switch Dimensions")
    SendMessage("Space - Jump (Double jump in Spectral world)")
    SendMessage("Reach the red platform to win!")
    SendMessage("Current Dimension: " .. CurrentDimension)
end

local function AddMenuReturn()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local returnButton = Instance.new("TextButton")
    returnButton.Text = "Menu"
    returnButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    returnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    returnButton.Size = UDim2.new(0, 100, 0, 40)
    returnButton.Position = UDim2.new(0, 10, 0, 10)
    returnButton.ZIndex = 100
    returnButton.Parent = LocalPlayer.PlayerGui
    
    returnButton.MouseButton1Click:Connect(function()
        for _, obj in pairs(workspace:GetChildren()) do
            if obj.Name == "SpectreGame" then
                obj:Destroy()
            end
        end
        returnButton:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/Spectre%20Shift/Main%20menu.luau"))()
    end)
end

CreateMap()
AddSmoothControls()
SetupCheckpoints()
ShowGameUI()
AddMenuReturn()

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
        end
    end
end)

SendMessage("System: Use Q to switch between Material and Spectral dimensions!")
