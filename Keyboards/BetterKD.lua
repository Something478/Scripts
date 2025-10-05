local CollectionService = game:GetService("CollectionService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local plr = Players.LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

local Keyboard = Instance.new("ScreenGui")
Keyboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Keyboard.Name = "Keyboard"
Keyboard.ResetOnSpawn = false
Keyboard.Parent = playerGui

CollectionService:AddTag(Keyboard, "main")

local MainFrame = Instance.new("Frame")
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Size = UDim2.new(0.46186, 0, 0.59418, 0)
MainFrame.Position = UDim2.new(0.29107, 0, 0.11318, 0)
MainFrame.BackgroundTransparency = 0.4
MainFrame.Active = true
MainFrame.Selectable = true
MainFrame.Parent = Keyboard

local MainCorner = Instance.new("UICorner")
MainCorner.Parent = MainFrame

local TitleBar = Instance.new("TextLabel")
TitleBar.TextWrapped = true
TitleBar.BorderSizePixel = 0
TitleBar.TextSize = 12
TitleBar.TextXAlignment = Enum.TextXAlignment.Left
TitleBar.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
TitleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleBar.BackgroundTransparency = 0.5
TitleBar.Size = UDim2.new(0.79167, 0, 0.13333, 0)
TitleBar.Text = "Better Keyboard・Made by StarFlow"
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.Parent = TitleBar

local Minimizer = Instance.new("TextButton")
Minimizer.BorderSizePixel = 0
Minimizer.TextSize = 20
Minimizer.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimizer.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Minimizer.BackgroundTransparency = 0.5
Minimizer.Size = UDim2.new(0.08854, 0, 0.13333, 0)
Minimizer.Text = "-"
Minimizer.Position = UDim2.new(0.80208, 0, 0, 0)
Minimizer.Parent = MainFrame

local MinimizerCorner = Instance.new("UICorner")
MinimizerCorner.Parent = Minimizer

local Show = Instance.new("TextButton")
Show.BorderSizePixel = 0
Show.TextSize = 20
Show.TextColor3 = Color3.fromRGB(255, 255, 255)
Show.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Show.BackgroundTransparency = 0.5
Show.Size = UDim2.new(0, 30, 0, 30)
Show.Position = UDim2.new(0, 10, 0, 10)
Show.Text = "+"
Show.Visible = false
Show.Parent = Keyboard

local ShowCorner = Instance.new("UICorner")
ShowCorner.Parent = Show

local Close = Instance.new("TextButton")
Close.BorderSizePixel = 0
Close.TextSize = 20
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Close.BackgroundTransparency = 0.5
Close.Size = UDim2.new(0.08854, 0, 0.13333, 0)
Close.Text = "×"
Close.Position = UDim2.new(0.90104, 0, 0, 0)
Close.Parent = MainFrame

local CloseCorner = Instance.new("UICorner")
CloseCorner.Parent = Close

local Line1 = Instance.new("Folder")
Line1.Name = "Line1"
Line1.Parent = MainFrame

local Line2 = Instance.new("Folder")
Line2.Name = "Line2"
Line2.Parent = MainFrame

local Line3 = Instance.new("Folder")
Line3.Name = "Line3"
Line3.Parent = MainFrame

local Line4 = Instance.new("Folder")
Line4.Name = "Line4"
Line4.Parent = MainFrame

local Line5 = Instance.new("Folder")
Line5.Name = "Line5"
Line5.Parent = MainFrame

local function createKey(parent, name, text, position)
    local key = Instance.new("TextButton")
    key.BorderSizePixel = 0
    key.TextSize = 12
    key.TextColor3 = Color3.fromRGB(255, 255, 255)
    key.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    key.BackgroundTransparency = 0.5
    key.Size = UDim2.new(0.08854, 0, 0.15238, 0)
    key.Text = text
    key.Position = position
    key.Name = name
    key.Parent = parent
    
    local corner = Instance.new("UICorner")
    corner.Parent = key
    
    return key
end

local function createSpecialKey(parent, name, text, position, size)
    local key = Instance.new("TextButton")
    key.BorderSizePixel = 0
    key.TextSize = 12
    key.TextColor3 = Color3.fromRGB(255, 255, 255)
    key.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    key.BackgroundTransparency = 0.5
    key.Size = size
    key.Text = text
    key.Position = position
    key.Name = name
    key.Parent = parent
    
    local corner = Instance.new("UICorner")
    corner.Parent = key
    
    return key
end

local ESC = createKey(Line1, "ESC", "ESC", UDim2.new(0, 4, 0, 30))
local Key1 = createKey(Line1, "1", "1", UDim2.new(0, 42, 0, 30))
local Key2 = createKey(Line1, "2", "2", UDim2.new(0, 80, 0, 30))
local Key3 = createKey(Line1, "3", "3", UDim2.new(0, 118, 0, 30))
local Key4 = createKey(Line1, "4", "4", UDim2.new(0, 156, 0, 30))
local Key5 = createKey(Line1, "5", "5", UDim2.new(0, 194, 0, 30))
local Key6 = createKey(Line1, "6", "6", UDim2.new(0, 232, 0, 30))
local Key7 = createKey(Line1, "7", "7", UDim2.new(0, 270, 0, 30))
local Key8 = createKey(Line1, "8", "8", UDim2.new(0, 308, 0, 30))
local F9 = createKey(Line1, "F9", "F9", UDim2.new(0, 346, 0, 30))

local Q = createKey(Line2, "Q", "Q", UDim2.new(0, 4, 0, 66))
local W = createKey(Line2, "W", "W", UDim2.new(0, 42, 0, 66))
local E = createKey(Line2, "E", "E", UDim2.new(0, 80, 0, 66))
local R = createKey(Line2, "R", "R", UDim2.new(0, 118, 0, 66))
local T = createKey(Line2, "T", "T", UDim2.new(0, 156, 0, 66))
local Y = createKey(Line2, "Y", "Y", UDim2.new(0, 194, 0, 66))
local U = createKey(Line2, "U", "U", UDim2.new(0, 232, 0, 66))
local I = createKey(Line2, "I", "I", UDim2.new(0, 270, 0, 66))
local O = createKey(Line2, "O", "O", UDim2.new(0, 308, 0, 66))
local P = createKey(Line2, "P", "P", UDim2.new(0, 346, 0, 66))

local A = createKey(Line3, "A", "A", UDim2.new(0, 4, 0, 102))
local S = createKey(Line3, "S", "S", UDim2.new(0, 42, 0, 102))
local D = createKey(Line3, "D", "D", UDim2.new(0, 80, 0, 102))
local F = createKey(Line3, "F", "F", UDim2.new(0, 118, 0, 102))
local G = createKey(Line3, "G", "G", UDim2.new(0, 156, 0, 102))
local H = createKey(Line3, "H", "H", UDim2.new(0, 194, 0, 102))
local J = createKey(Line3, "J", "J", UDim2.new(0, 232, 0, 102))
local K = createKey(Line3, "K", "K", UDim2.new(0, 270, 0, 102))
local L = createKey(Line3, "L", "L", UDim2.new(0, 308, 0, 102))
local Semicolon = createKey(Line3, "Semicolon", ";", UDim2.new(0, 346, 0, 102))

local Z = createKey(Line4, "Z", "Z", UDim2.new(0, 4, 0, 138))
local X = createKey(Line4, "X", "X", UDim2.new(0, 42, 0, 138))
local C = createKey(Line4, "C", "C", UDim2.new(0, 80, 0, 138))
local V = createKey(Line4, "V", "V", UDim2.new(0, 118, 0, 138))
local B = createKey(Line4, "B", "B", UDim2.new(0, 156, 0, 138))
local N = createKey(Line4, "N", "N", UDim2.new(0, 194, 0, 138))
local M = createKey(Line4, "M", "M", UDim2.new(0, 232, 0, 138))
local Comma = createKey(Line4, "Comma", ",", UDim2.new(0, 270, 0, 138))
local Period = createKey(Line4, "Period", ".", UDim2.new(0, 308, 0, 138))
local Slash = createKey(Line4, "Slash", "/", UDim2.new(0, 346, 0, 138))

local LeftCtrl = createSpecialKey(Line5, "LeftCtrl", "CTRL", UDim2.new(0, 4, 0, 174), UDim2.new(0.19271, 0, 0.15238, 0))
local LeftAlt = createSpecialKey(Line5, "LeftAlt", "ALT", UDim2.new(0, 82, 0, 174), UDim2.new(0.14583, 0, 0.15238, 0))
local Space = createSpecialKey(Line5, "Space", "SPACE", UDim2.new(0, 142, 0, 174), UDim2.new(0.26563, 0, 0.15238, 0))
local RightAlt = createSpecialKey(Line5, "RightAlt", "ALT", UDim2.new(0, 248, 0, 174), UDim2.new(0.14583, 0, 0.15238, 0))
local RightCtrl = createSpecialKey(Line5, "RightCtrl", "CTRL", UDim2.new(0, 308, 0, 174), UDim2.new(0.1875, 0, 0.15238, 0))

local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = MainFrame

local AspectRatio = Instance.new("UIAspectRatioConstraint")
AspectRatio.AspectRatio = 1.82857
AspectRatio.Parent = MainFrame

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

dragify(MainFrame)

local keyNameToEnum = {
    ["ESC"] = "Escape",
    ["1"] = "One", ["2"] = "Two", ["3"] = "Three", ["4"] = "Four",
    ["5"] = "Five", ["6"] = "Six", ["7"] = "Seven", ["8"] = "Eight",
    ["F9"] = "F9",
    ["Q"] = "Q", ["W"] = "W", ["E"] = "E", ["R"] = "R", ["T"] = "T",
    ["Y"] = "Y", ["U"] = "U", ["I"] = "I", ["O"] = "O", ["P"] = "P",
    ["A"] = "A", ["S"] = "S", ["D"] = "D", ["F"] = "F", ["G"] = "G",
    ["H"] = "H", ["J"] = "J", ["K"] = "K", ["L"] = "L", 
    ["Semicolon"] = "Semicolon",
    ["Z"] = "Z", ["X"] = "X", ["C"] = "C", ["V"] = "V", ["B"] = "B",
    ["N"] = "N", ["M"] = "M", ["Comma"] = "Comma", ["Period"] = "Period", 
    ["Slash"] = "Slash", ["Space"] = "Space",
    ["LeftCtrl"] = "LeftControl", ["RightCtrl"] = "RightControl",
    ["LeftAlt"] = "LeftAlt", ["RightAlt"] = "RightAlt"
}

local activeKeys = {}

local function pressKey(keyName, state)
    local enumName = keyNameToEnum[keyName]
    if enumName then
        local keyCode = Enum.KeyCode[enumName]
        VirtualInputManager:SendKeyEvent(state, keyCode, false, game)
    end
end

local function makeHover(btn, normal, hover)
    btn.MouseEnter:Connect(function() 
        local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(btn, tweenInfo, {BackgroundColor3 = hover})
        tween:Play()
    end)
    
    btn.MouseLeave:Connect(function()
        local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(btn, tweenInfo, {BackgroundColor3 = normal})
        tween:Play()
    end)
end

local function makePressGlow(btn)
    btn.MouseButton1Down:Connect(function()
        local originalColor = btn.BackgroundColor3
        btn.BackgroundColor3 = Color3.fromRGB(180, 180, 255)
    end)
    
    btn.MouseButton1Up:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    end)
end

local keyButtons = {
    ESC, Key1, Key2, Key3, Key4, Key5, Key6, Key7, Key8, F9,
    Q, W, E, R, T, Y, U, I, O, P,
    A, S, D, F, G, H, J, K, L, Semicolon,
    Z, X, C, V, B, N, M, Comma, Period, Slash,
    Space, LeftCtrl, RightCtrl, LeftAlt, RightAlt
}

for _, button in ipairs(keyButtons) do
    makeHover(button, button.BackgroundColor3, Color3.fromRGB(20, 20, 20))
    makePressGlow(button)
    
    local isMovementKey = button.Name == "W" or button.Name == "A" or button.Name == "S" or button.Name == "D" or button.Name == "Space"
    
    if isMovementKey then
        button.MouseButton1Down:Connect(function()
            activeKeys[button.Name] = true
            pressKey(button.Name, true)
            button.BackgroundColor3 = Color3.fromRGB(180, 180, 255)
        end)
        
        button.MouseButton1Up:Connect(function()
            activeKeys[button.Name] = false
            pressKey(button.Name, false)
            button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        end)
        
        button.MouseLeave:Connect(function()
            if activeKeys[button.Name] then
                activeKeys[button.Name] = false
                pressKey(button.Name, false)
                button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            end
        end)
    else
        button.MouseButton1Click:Connect(function()
            pressKey(button.Name, true)
            task.wait(0.05)
            pressKey(button.Name, false)
        end)
    end
end

makeHover(Minimizer, Minimizer.BackgroundColor3, Color3.fromRGB(60, 60, 60))
makeHover(Show, Show.BackgroundColor3, Color3.fromRGB(60, 60, 60))
makeHover(Close, Close.BackgroundColor3, Color3.fromRGB(255, 100, 100))

makePressGlow(Minimizer)
makePressGlow(Show)
makePressGlow(Close)

Minimizer.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    Show.Visible = true
end)

Show.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    Show.Visible = false
end)

Close.MouseButton1Click:Connect(function()
    Keyboard:Destroy()
end)

plr.CharacterAdded:Connect(function()
    local newGui = plr:WaitForChild("PlayerGui")
    Keyboard.Parent = newGui
end)

return Keyboard