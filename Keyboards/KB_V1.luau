local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local plr = Players.LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

local UI = {}

UI["Screen"] = Instance.new("ScreenGui", playerGui)
UI["Screen"]["Name"] = "KB_V1"
UI["Screen"]["ResetOnSpawn"] = false
UI["Screen"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

UI["MainFrame"] = Instance.new("Frame", UI["Screen"])
UI["MainFrame"]["BorderSizePixel"] = 0
UI["MainFrame"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["MainFrame"]["Size"] = UDim2.new(0, 342, 0, 170)
UI["MainFrame"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
UI["MainFrame"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["MainFrame"]["Name"] = "MainFrame"
UI["MainFrame"]["BackgroundTransparency"] = 1

UI["UIStroke"] = Instance.new("UIStroke", UI["MainFrame"])
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke"]["Color"] = Color3.fromRGB(171, 0, 255)
UI["UIStroke"]["Transparency"] = 1

UI["UICorner"] = Instance.new("UICorner", UI["MainFrame"])
UI["UICorner"]["CornerRadius"] = UDim.new(0, 4)

UI["Title"] = Instance.new("TextLabel", UI["MainFrame"])
UI["Title"]["TextWrapped"] = true
UI["Title"]["BorderSizePixel"] = 0
UI["Title"]["TextSize"] = 24
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["Title"]["TextColor3"] = Color3.fromRGB(171, 0, 255)
UI["Title"]["Size"] = UDim2.new(0, 341, 0, 30)
UI["Title"]["Text"] = "Kilobyte keyboard [V1]"
UI["Title"]["Name"] = "Title"
UI["Title"]["TextTransparency"] = 1

UI["TitleCorner"] = Instance.new("UICorner", UI["Title"])
UI["TitleCorner"]["CornerRadius"] = UDim.new(0, 4)

UI["UILine"] = Instance.new("Frame", UI["MainFrame"])
UI["UILine"]["BorderSizePixel"] = 0
UI["UILine"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
UI["UILine"]["Size"] = UDim2.new(0, 341, 0, 22)
UI["UILine"]["Position"] = UDim2.new(0, 0, 0, 8)
UI["UILine"]["Name"] = "UILine"

UI["Close"] = Instance.new("TextButton", UI["MainFrame"])
UI["Close"]["TextWrapped"] = true
UI["Close"]["BorderSizePixel"] = 0
UI["Close"]["TextScaled"] = true
UI["Close"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
UI["Close"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43)
UI["Close"]["ZIndex"] = 5
UI["Close"]["Size"] = UDim2.new(0, 26, 0, 26)
UI["Close"]["Text"] = "X"
UI["Close"]["Name"] = "Close"
UI["Close"]["Position"] = UDim2.new(0, 314, 0, 2)
UI["Close"]["TextTransparency"] = 1
UI["Close"]["BackgroundTransparency"] = 1

UI["CloseCorner"] = Instance.new("UICorner", UI["Close"])
UI["CloseCorner"]["CornerRadius"] = UDim.new(0, 4)

local keysLayout = {
    {"Q","W","E","R","T","Y","U","I","O","P"},
    {"A","S","D","F","G","H","J","K","L"},
    {"Z","X","C","V","B","N","M"}
}

local keyButtons = {}
local startX = 2
local startY = 40
local keySize = 30
local keySpacing = 4

for rowIndex, row in ipairs(keysLayout) do
    local rowWidth = (#row * keySize) + ((#row-1) * keySpacing)
    local rowStartX = (342 - rowWidth) / 2
    
    for colIndex, keyName in ipairs(row) do
        local keyY = startY + ((rowIndex-1) * (keySize + keySpacing))
        local keyX = rowStartX + ((colIndex-1) * (keySize + keySpacing))
        
        UI[keyName] = Instance.new("TextButton", UI["MainFrame"])
        UI[keyName]["TextWrapped"] = true
        UI[keyName]["BorderSizePixel"] = 0
        UI[keyName]["TextScaled"] = true
        UI[keyName]["TextColor3"] = Color3.fromRGB(171, 0, 255)
        UI[keyName]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
        UI[keyName]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
        UI[keyName]["Size"] = UDim2.new(0, keySize, 0, keySize)
        UI[keyName]["Text"] = keyName
        UI[keyName]["Name"] = keyName
        UI[keyName]["Position"] = UDim2.new(0, keyX, 0, keyY)
        UI[keyName]["TextTransparency"] = 1
        UI[keyName]["BackgroundTransparency"] = 1
        
        UI[keyName.."Corner"] = Instance.new("UICorner", UI[keyName])
        UI[keyName.."Corner"]["CornerRadius"] = UDim.new(0, 4)
        
        UI[keyName.."Stroke"] = Instance.new("UIStroke", UI[keyName])
        UI[keyName.."Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
        UI[keyName.."Stroke"]["Color"] = Color3.fromRGB(171, 0, 255)
        UI[keyName.."Stroke"]["Transparency"] = 1
        
        table.insert(keyButtons, {button = UI[keyName], stroke = UI[keyName.."Stroke"]})
    end
end

local function HoverAnim(button)
    local Hover = TweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        TextColor3 = Color3.fromRGB(200, 50, 255)
    })
    
    local Leave = TweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(32, 32, 32),
        TextColor3 = Color3.fromRGB(171, 0, 255)
    })
    
    button.MouseEnter:Connect(function()
        Hover:Play()
    end)
    
    button.MouseLeave:Connect(function()
        Leave:Play()
    end)
end

local function ClickAnim(button)
    local Click = TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    })
    
    local Release = TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    })
    
    button.MouseButton1Down:Connect(function()
        Click:Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        Release:Play()
    end)
end

for _, keyData in ipairs(keyButtons) do
    local button = keyData.button
    if button.Name ~= "Close" then
        HoverAnim(button)
        ClickAnim(button)
    end
end

HoverAnim(UI["Close"])
ClickAnim(UI["Close"])

for keyName, keyCode in pairs({
    Q = Enum.KeyCode.Q, W = Enum.KeyCode.W, E = Enum.KeyCode.E, R = Enum.KeyCode.R, T = Enum.KeyCode.T,
    Y = Enum.KeyCode.Y, U = Enum.KeyCode.U, I = Enum.KeyCode.I, O = Enum.KeyCode.O, P = Enum.KeyCode.P,
    A = Enum.KeyCode.A, S = Enum.KeyCode.S, D = Enum.KeyCode.D, F = Enum.KeyCode.F, G = Enum.KeyCode.G,
    H = Enum.KeyCode.H, J = Enum.KeyCode.J, K = Enum.KeyCode.K, L = Enum.KeyCode.L, Z = Enum.KeyCode.Z,
    X = Enum.KeyCode.X, C = Enum.KeyCode.C, V = Enum.KeyCode.V, B = Enum.KeyCode.B, N = Enum.KeyCode.N,
    M = Enum.KeyCode.M
}) do
    if UI[keyName] then
        UI[keyName].MouseButton1Click:Connect(function()
            VirtualInputManager:SendKeyEvent(true, keyCode, false, nil)
            task.wait(0.05)
            VirtualInputManager:SendKeyEvent(false, keyCode, false, nil)
        end)
    end
end

UI["Close"].MouseButton1Click:Connect(function()
    for _, keyData in ipairs(keyButtons) do
        TweenService:Create(keyData.button, TweenInfo.new(0.3), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        TweenService:Create(keyData.stroke, TweenInfo.new(0.3), {Transparency = 1}):Play()
    end
    
    local t1 = TweenService:Create(UI["MainFrame"], TweenInfo.new(0.3), {BackgroundTransparency = 1})
    local t2 = TweenService:Create(UI["UIStroke"], TweenInfo.new(0.3), {Transparency = 1})
    local t3 = TweenService:Create(UI["Title"], TweenInfo.new(0.3), {TextTransparency = 1})
    local t4 = TweenService:Create(UI["Close"], TweenInfo.new(0.3), {TextTransparency = 1, BackgroundTransparency = 1})
    t1:Play() t2:Play() t3:Play() t4:Play()
    
    task.wait(0.3)
    UI["Screen"]:Destroy()
end)

TweenService:Create(UI["MainFrame"], TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
TweenService:Create(UI["UIStroke"], TweenInfo.new(0.5), {Transparency = 0}):Play()
TweenService:Create(UI["Title"], TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(UI["Close"], TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()

for _, keyData in ipairs(keyButtons) do
    TweenService:Create(keyData.button, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
    TweenService:Create(keyData.stroke, TweenInfo.new(0.5), {Transparency = 0}):Play()
end

return UI["Screen"]