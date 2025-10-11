local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local FPSBooster = {}

FPSBooster.ScreenGui = Instance.new("ScreenGui")
FPSBooster.ScreenGui.Name = "FPSBoosterGUI"
FPSBooster.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
FPSBooster.ScreenGui.ResetOnSpawn = false
FPSBooster.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local function dragify(Frame)
    local dragToggle = nil
    local dragSpeed = .25
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
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

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end)
end

local function createFlowingEffect(frame)
    local gradient = Instance.new("UIGradient")
    gradient.Rotation = 45
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 0, 200)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 0, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 200))
    })
    gradient.Parent = frame
    
    local connection
    connection = RunService.Heartbeat:Connect(function(delta)
        gradient.Offset += Vector2.new(delta * 0.5, delta * 0.5)
        if gradient.Offset.X >= 1 then
            gradient.Offset = Vector2.new(0, 0)
        end
    end)
    
    return connection
end

local function setupHoverEffects(button)
    local originalColor = button.BackgroundColor3
    local originalTextColor = button.TextColor3
    local originalSize = button.Size
    
    button.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(80, 0, 180),
            TextColor3 = Color3.fromRGB(220, 180, 255),
            Size = originalSize + UDim2.new(0.02, 0, 0.02, 0)
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = originalColor,
            TextColor3 = originalTextColor,
            Size = originalSize
        }):Play()
    end)
    
    button.MouseButton1Down:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(120, 0, 220),
            TextColor3 = Color3.fromRGB(255, 220, 255),
            Size = originalSize - UDim2.new(0.02, 0, 0.02, 0)
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(80, 0, 180),
            TextColor3 = Color3.fromRGB(220, 180, 255),
            Size = originalSize
        }):Play()
    end)
end

FPSBooster.MainFrame = Instance.new("Frame")
FPSBooster.MainFrame.Size = UDim2.new(0, 300, 0, 350)
FPSBooster.MainFrame.Position = UDim2.new(0, 50, 0, 50)
FPSBooster.MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FPSBooster.MainFrame.BorderSizePixel = 0
FPSBooster.MainFrame.ClipsDescendants = true
FPSBooster.MainFrame.Parent = FPSBooster.ScreenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0.08, 0)
mainCorner.Parent = FPSBooster.MainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Thickness = 3
mainStroke.Color = Color3.fromRGB(100, 0, 200)
mainStroke.Parent = FPSBooster.MainFrame
createFlowingEffect(mainStroke)

dragify(FPSBooster.MainFrame)

FPSBooster.Title = Instance.new("TextLabel")
FPSBooster.Title.Size = UDim2.new(0.9, 0, 0.1, 0)
FPSBooster.Title.Position = UDim2.new(0.05, 0, 0.02, 0)
FPSBooster.Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FPSBooster.Title.TextColor3 = Color3.fromRGB(140, 0, 255)
FPSBooster.Title.Text = "FPS BOOSTER"
FPSBooster.Title.TextScaled = true
FPSBooster.Title.Font = Enum.Font.GothamBold
FPSBooster.Title.BorderSizePixel = 0
FPSBooster.Title.Parent = FPSBooster.MainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0.2, 0)
titleCorner.Parent = FPSBooster.Title

FPSBooster.BoostButton = Instance.new("TextButton")
FPSBooster.BoostButton.Size = UDim2.new(0.9, 0, 0.15, 0)
FPSBooster.BoostButton.Position = UDim2.new(0.05, 0, 0.15, 0)
FPSBooster.BoostButton.BackgroundColor3 = Color3.fromRGB(60, 0, 140)
FPSBooster.BoostButton.TextColor3 = Color3.fromRGB(220, 180, 255)
FPSBooster.BoostButton.Text = "BOOST FPS"
FPSBooster.BoostButton.TextScaled = true
FPSBooster.BoostButton.Font = Enum.Font.GothamBold
FPSBooster.BoostButton.BorderSizePixel = 0
FPSBooster.BoostButton.Parent = FPSBooster.MainFrame

local boostCorner = Instance.new("UICorner")
boostCorner.CornerRadius = UDim.new(0.2, 0)
boostCorner.Parent = FPSBooster.BoostButton
createFlowingEffect(FPSBooster.BoostButton)

FPSBooster.ResetButton = Instance.new("TextButton")
FPSBooster.ResetButton.Size = UDim2.new(0.9, 0, 0.15, 0)
FPSBooster.ResetButton.Position = UDim2.new(0.05, 0, 0.33, 0)
FPSBooster.ResetButton.BackgroundColor3 = Color3.fromRGB(60, 0, 140)
FPSBooster.ResetButton.TextColor3 = Color3.fromRGB(220, 180, 255)
FPSBooster.ResetButton.Text = "RESET SETTINGS"
FPSBooster.ResetButton.TextScaled = true
FPSBooster.ResetButton.Font = Enum.Font.GothamBold
FPSBooster.ResetButton.BorderSizePixel = 0
FPSBooster.ResetButton.Parent = FPSBooster.MainFrame

local resetCorner = Instance.new("UICorner")
resetCorner.CornerRadius = UDim.new(0.2, 0)
resetCorner.Parent = FPSBooster.ResetButton
createFlowingEffect(FPSBooster.ResetButton)

FPSBooster.FPSCounter = Instance.new("TextLabel")
FPSBooster.FPSCounter.Size = UDim2.new(0.9, 0, 0.1, 0)
FPSBooster.FPSCounter.Position = UDim2.new(0.05, 0, 0.51, 0)
FPSBooster.FPSCounter.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
FPSBooster.FPSCounter.TextColor3 = Color3.fromRGB(140, 0, 255)
FPSBooster.FPSCounter.Text = "FPS: --"
FPSBooster.FPSCounter.TextScaled = true
FPSBooster.FPSCounter.Font = Enum.Font.GothamBold
FPSBooster.FPSCounter.BorderSizePixel = 0
FPSBooster.FPSCounter.Parent = FPSBooster.MainFrame

local fpsCorner = Instance.new("UICorner")
fpsCorner.CornerRadius = UDim.new(0.2, 0)
fpsCorner.Parent = FPSBooster.FPSCounter

FPSBooster.Status = Instance.new("TextLabel")
FPSBooster.Status.Size = UDim2.new(0.9, 0, 0.1, 0)
FPSBooster.Status.Position = UDim2.new(0.05, 0, 0.63, 0)
FPSBooster.Status.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
FPSBooster.Status.TextColor3 = Color3.fromRGB(140, 0, 255)
FPSBooster.Status.Text = "Status: Idle"
FPSBooster.Status.TextScaled = true
FPSBooster.Status.Font = Enum.Font.GothamBold
FPSBooster.Status.BorderSizePixel = 0
FPSBooster.Status.Parent = FPSBooster.MainFrame

local statusCorner = Instance.new("UICorner")
statusCorner.CornerRadius = UDim.new(0.2, 0)
statusCorner.Parent = FPSBooster.Status

FPSBooster.CloseButton = Instance.new("TextButton")
FPSBooster.CloseButton.Size = UDim2.new(0.15, 0, 0.08, 0)
FPSBooster.CloseButton.Position = UDim2.new(0.8, 0, 0.02, 0)
FPSBooster.CloseButton.BackgroundColor3 = Color3.fromRGB(60, 0, 140)
FPSBooster.CloseButton.TextColor3 = Color3.fromRGB(220, 180, 255)
FPSBooster.CloseButton.Text = "×"
FPSBooster.CloseButton.TextScaled = true
FPSBooster.CloseButton.Font = Enum.Font.GothamBold
FPSBooster.CloseButton.BorderSizePixel = 0
FPSBooster.CloseButton.Parent = FPSBooster.MainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0.2, 0)
closeCorner.Parent = FPSBooster.CloseButton
createFlowingEffect(FPSBooster.CloseButton)

setupHoverEffects(FPSBooster.BoostButton)
setupHoverEffects(FPSBooster.ResetButton)
setupHoverEffects(FPSBooster.CloseButton)

local originalLightingSettings = {}
local isBoosted = false

local function saveOriginalSettings()
    originalLightingSettings.GlobalShadows = Lighting.GlobalShadows
    originalLightingSettings.ShadowQuality = Lighting.ShadowQuality
    originalLightingSettings.Brightness = Lighting.Brightness
    originalLightingSettings.GeographicLatitude = Lighting.GeographicLatitude
    originalLightingSettings.OutdoorAmbient = Lighting.OutdoorAmbient
    originalLightingSettings.ClockTime = Lighting.ClockTime
    originalLightingSettings.FogEnd = Lighting.FogEnd
    originalLightingSettings.FogStart = Lighting.FogStart
end

local function boostFPS()
    if isBoosted then return end
    
    saveOriginalSettings()
    
    Lighting.GlobalShadows = false
    Lighting.ShadowQuality = Enum.ShadowQuality.Disabled
    Lighting.Brightness = 2
    Lighting.GeographicLatitude = 41.733
    Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    Lighting.ClockTime = 14
    Lighting.FogEnd = 100000
    Lighting.FogStart = 100000
    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Part") then
            obj.Material = Enum.Material.Plastic
            obj.Reflectance = 0
        elseif obj:IsA("Decal") then
            obj:Destroy()
        elseif obj:IsA("ParticleEmitter") then
            obj:Destroy()
        elseif obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
            obj:Destroy()
        end
    end
    
    settings().Rendering.QualityLevel = 1
    
    if game:GetService("StarterGui"):GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
    end
    
    if game:GetService("StarterGui"):GetCoreGuiEnabled(Enum.CoreGuiType.Chat) then
        game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
    end
    
    RunService:Set3dRenderingEnabled(false)
    
    isBoosted = true
    FPSBooster.Status.Text = "Status: BOOSTED"
    FPSBooster.BoostButton.Text = "BOOSTED!"
    FPSBooster.BoostButton.BackgroundColor3 = Color3.fromRGB(80, 0, 180)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FPS BOOSTER",
        Text = "FPS optimization applied!",
        Duration = 3,
    })
end

local function resetSettings()
    if not isBoosted then return end
    
    Lighting.GlobalShadows = originalLightingSettings.GlobalShadows
    Lighting.ShadowQuality = originalLightingSettings.ShadowQuality
    Lighting.Brightness = originalLightingSettings.Brightness
    Lighting.GeographicLatitude = originalLightingSettings.GeographicLatitude
    Lighting.OutdoorAmbient = originalLightingSettings.OutdoorAmbient
    Lighting.ClockTime = originalLightingSettings.ClockTime
    Lighting.FogEnd = originalLightingSettings.FogEnd
    Lighting.FogStart = originalLightingSettings.FogStart
    
    settings().Rendering.QualityLevel = 10
    
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    
    RunService:Set3dRenderingEnabled(true)
    
    isBoosted = false
    FPSBooster.Status.Text = "Status: Idle"
    FPSBooster.BoostButton.Text = "BOOST FPS"
    FPSBooster.BoostButton.BackgroundColor3 = Color3.fromRGB(60, 0, 140)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FPS BOOSTER",
        Text = "Settings reset to normal!",
        Duration = 3,
    })
end

local frameCount = 0
local lastTime = tick()

local function updateFPSCounter()
    frameCount = frameCount + 1
    local currentTime = tick()
    
    if currentTime - lastTime >= 1 then
        local fps = math.floor(frameCount / (currentTime - lastTime))
        FPSBooster.FPSCounter.Text = "FPS: " .. fps
        frameCount = 0
        lastTime = currentTime
    end
end

FPSBooster.BoostButton.MouseButton1Click:Connect(boostFPS)
FPSBooster.ResetButton.MouseButton1Click:Connect(resetSettings)
FPSBooster.CloseButton.MouseButton1Click:Connect(function()
    FPSBooster.ScreenGui:Destroy()
end)

RunService.RenderStepped:Connect(updateFPSCounter)

saveOriginalSettings()

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "FPS BOOSTER",
    Text = "FPS Booster loaded! Click BOOST FPS to optimize.",
    Duration = 5,
})

return FPSBooster.ScreenGui