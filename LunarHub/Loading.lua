local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["Title_8"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Title_8"]["BorderSizePixel"] = 0
G2L["Title_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Title_8"]["Size"] = UDim2.new(0.44742, 0, 0.11884, 0)
G2L["Title_8"]["Position"] = UDim2.new(0.27423, 0, 0.05, 0)
G2L["Title_8"]["BorderColor3"] = Color3.fromRGB(119, 0, 255)
G2L["Title_8"]["Name"] = "Title"

G2L["ScriptName_9"] = Instance.new("TextLabel", G2L["Title_8"])
G2L["ScriptName_9"]["TextWrapped"] = true
G2L["ScriptName_9"]["BorderSizePixel"] = 0
G2L["ScriptName_9"]["TextSize"] = 1
G2L["ScriptName_9"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["ScriptName_9"]["TextScaled"] = true
G2L["ScriptName_9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["ScriptName_9"]["TextColor3"] = Color3.fromRGB(119, 0, 255)
G2L["ScriptName_9"]["Size"] = UDim2.new(0.99462, 0, 0.80952, 0)
G2L["ScriptName_9"]["Text"] = "LunarHub・Welcome, " .. game.Players.LocalPlayer.Name .. "!"
G2L["ScriptName_9"]["Name"] = "ScriptName"
G2L["ScriptName_9"]["Position"] = UDim2.new(0, 0, 0.09524, 0)

Instance.new("UICorner", G2L["ScriptName_9"])
Instance.new("UICorner", G2L["Title_8"])

G2L["UIStroke_c"] = Instance.new("UIStroke", G2L["Title_8"])
G2L["UIStroke_c"]["Thickness"] = 2
G2L["UIStroke_c"]["Color"] = Color3.fromRGB(119, 0, 255)

G2L["UIAspectRatioConstraint_d"] = Instance.new("UIAspectRatioConstraint", G2L["Title_8"])
G2L["UIAspectRatioConstraint_d"]["AspectRatio"] = 8.85714

G2L["Popup_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Popup_2"]["BorderSizePixel"] = 0
G2L["Popup_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Popup_2"]["Size"] = UDim2.new(0.22852, 0, 0.14713, 0)
G2L["Popup_2"]["Position"] = UDim2.new(0.38729, 0, 0.20, 0)
G2L["Popup_2"]["Name"] = "Popup"

Instance.new("UICorner", G2L["Popup_2"])

G2L["TextLabel_4"] = Instance.new("TextLabel", G2L["Popup_2"])
G2L["TextLabel_4"]["BorderSizePixel"] = 0
G2L["TextLabel_4"]["TextSize"] = 12
G2L["TextLabel_4"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["TextLabel_4"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31)
G2L["TextLabel_4"]["TextColor3"] = Color3.fromRGB(119, 0, 255)
G2L["TextLabel_4"]["Size"] = UDim2.new(0.97895, 0, 0.92308, 0)
G2L["TextLabel_4"]["Text"] = "Loading Sounds..."
G2L["TextLabel_4"]["Position"] = UDim2.new(0.01053, 0, 0.03846, 0)

Instance.new("UICorner", G2L["TextLabel_4"])

G2L["UIStroke_6"] = Instance.new("UIStroke", G2L["Popup_2"])
G2L["UIStroke_6"]["Color"] = Color3.fromRGB(119, 0, 255)

G2L["UIAspectRatioConstraint_7"] = Instance.new("UIAspectRatioConstraint", G2L["Popup_2"])
G2L["UIAspectRatioConstraint_7"]["AspectRatio"] = 3.65385

local function animz()
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local pulseTweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true)
    
    local titleSlideIn = TweenService:Create(G2L["Title_8"], tweenInfo, {Position = UDim2.new(0.27423, 0, 0.10, 0)})
    local popupSlideIn = TweenService:Create(G2L["Popup_2"], tweenInfo, {Position = UDim2.new(0.38729, 0, 0.25, 0)})
    local strokePulse = TweenService:Create(G2L["UIStroke_c"], pulseTweenInfo, {Color = Color3.fromRGB(170, 85, 255)})
    local textPulse = TweenService:Create(G2L["ScriptName_9"], pulseTweenInfo, {TextColor3 = Color3.fromRGB(170, 85, 255)})
    local popupStrokePulse = TweenService:Create(G2L["UIStroke_6"], pulseTweenInfo, {Color = Color3.fromRGB(170, 85, 255)})
    local popupTextPulse = TweenService:Create(G2L["TextLabel_4"], pulseTweenInfo, {TextColor3 = Color3.fromRGB(170, 85, 255)})
    
    titleSlideIn:Play()
    popupSlideIn:Play()
    strokePulse:Play()
    textPulse:Play()
    popupStrokePulse:Play()
    popupTextPulse:Play()
    
    local loadingMessages = {
        "Loading Sounds...",
        "Loading Scripts...", 
        "Loading UI...",
        "Loading Assets...",
        "Initializing...",
        "Executing LunarHub..."
    }
    
    local currentMessage = 1
    
    local function updateLoadingText()
        G2L["TextLabel_4"].Text = loadingMessages[currentMessage]
        currentMessage = currentMessage + 1
        
        if currentMessage > #loadingMessages then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/LunarHub/Main.lua"))()
            
            task.wait(0.5)
            
            strokePulse:Cancel()
            textPulse:Cancel()
            popupStrokePulse:Cancel()
            popupTextPulse:Cancel()
            
            G2L["UIStroke_c"].Color = Color3.fromRGB(119, 0, 255)
            G2L["ScriptName_9"].TextColor3 = Color3.fromRGB(119, 0, 255)
            G2L["UIStroke_6"].Color = Color3.fromRGB(119, 0, 255)
            G2L["TextLabel_4"].TextColor3 = Color3.fromRGB(119, 0, 255)
            G2L["TextLabel_4"].Text = "LunarHub Loaded!"
            
            local fadeOutInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            
            local titleFadeOut = TweenService:Create(G2L["Title_8"], fadeOutInfo, {Position = UDim2.new(0.27423, 0, -0.11318, 0)})
            local popupFadeOut = TweenService:Create(G2L["Popup_2"], fadeOutInfo, {Position = UDim2.new(0.38729, 0, 1, 0)})
            
            titleFadeOut:Play()
            popupFadeOut:Play()
            
            titleFadeOut.Completed:Connect(function()
                task.wait(0.2)
                G2L["ScreenGui_1"]:Destroy()
            end)
            
            return 
        end
    end
    
    local textChangeConnection
    textChangeConnection = RunService.Heartbeat:Connect(function()
        task.wait(0.8)
        if G2L["ScreenGui_1"].Parent then 
            updateLoadingText()
        else
            textChangeConnection:Disconnect()
        end
    end)
end

animz()

return G2L["ScreenGui_1"], require