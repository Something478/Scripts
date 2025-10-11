--[[--------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/Interface/Notify.lua"))()
-----------------------------------------]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "WelcomeNotify"
screenGui.Parent = playerGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local mainFrame = Instance.new("Frame")
mainFrame.BorderSizePixel = 0
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.Size = UDim2.new(0.16838, 0, 0.11884, 0)
mainFrame.Position = UDim2.new(0.42096, 0, -0.12449, 0)
mainFrame.Parent = screenGui

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(178, 0, 255)
uiStroke.Parent = mainFrame

local uiCorner = Instance.new("UICorner")
uiCorner.Parent = mainFrame

local textLabel = Instance.new("TextLabel")
textLabel.BorderSizePixel = 0
textLabel.TextSize = 20
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextColor3 = Color3.fromRGB(178, 0, 255)
textLabel.BackgroundTransparency = 1
textLabel.Size = UDim2.new(1.01429, 0, 1, 0)
textLabel.Text = "Welcome!"
textLabel.Parent = mainFrame

local aspectRatio = Instance.new("UIAspectRatioConstraint")
aspectRatio.AspectRatio = 3.33333
aspectRatio.Parent = mainFrame

local slideIn = TweenService:Create(
    mainFrame,
    TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
    {Position = UDim2.new(0.42096, 0, 0.1, 0)}
)

local slideOut = TweenService:Create(
    mainFrame,
    TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
    {Position = UDim2.new(0.42096, 0, -0.12449, 0)}
)

slideIn:Play()
task.wait(3)
slideOut:Play()
task.wait(0.6)
screenGui:Destroy()