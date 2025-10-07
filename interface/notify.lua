local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"].Enabled = false

CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Frame_2"]["BorderSizePixel"] = 0
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Frame_2"]["Size"] = UDim2.new(0.14914, 0, 0.11884, 0)
G2L["Frame_2"]["Position"] = UDim2.new(0.45223, 0, -0.13015, 0)
G2L["Frame_2"]["BorderColor3"] = Color3.fromRGB(28, 42, 54)
G2L["Frame_2"].BackgroundTransparency = 1

G2L["TextLabel_3"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["TextLabel_3"]["BorderSizePixel"] = 0
G2L["TextLabel_3"]["TextSize"] = 18
G2L["TextLabel_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel_3"]["TextColor3"] = Color3.fromRGB(178, 0, 255)
G2L["TextLabel_3"]["BackgroundTransparency"] = 1
G2L["TextLabel_3"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["TextLabel_3"]["Text"] = "Welcome"
G2L["TextLabel_3"].TextTransparency = 1
G2L["TextLabel_3"].TextScaled = true

G2L["UICorner_4"] = Instance.new("UICorner", G2L["TextLabel_3"])

G2L["UICorner_5"] = Instance.new("UICorner", G2L["Frame_2"])

G2L["UIStroke_6"] = Instance.new("UIStroke", G2L["Frame_2"])
G2L["UIStroke_6"]["Color"] = Color3.fromRGB(178, 0, 255)
G2L["UIStroke_6"].Transparency = 1

G2L["UIAspectRatioConstraint_7"] = Instance.new("UIAspectRatioConstraint", G2L["Frame_2"])
G2L["UIAspectRatioConstraint_7"]["AspectRatio"] = 2.95238

local notify = {}
notify.text = "Welcome"
notify.textcolor = Color3.fromRGB(178, 0, 255)
notify.bgcolor = Color3.fromRGB(0, 0, 0)
notify.strokecolor = Color3.fromRGB(178, 0, 255)

function notify:Show()
    G2L["ScreenGui_1"].Enabled = true
    G2L["TextLabel_3"].Text = self.text
    G2L["TextLabel_3"].TextColor3 = self.textcolor
    G2L["Frame_2"].BackgroundColor3 = self.bgcolor
    G2L["UIStroke_6"].Color = self.strokecolor
    
    local originalPosition = G2L["Frame_2"].Position
    G2L["Frame_2"].Position = UDim2.new(1.2, 0, -0.13015, 0)
    
    local fadeInTween = TweenService:Create(G2L["Frame_2"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = originalPosition,
        BackgroundTransparency = 0
    })
    
    local textFadeIn = TweenService:Create(G2L["TextLabel_3"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    
    local strokeFadeIn = TweenService:Create(G2L["UIStroke_6"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0
    })
    
    fadeInTween:Play()
    textFadeIn:Play()
    strokeFadeIn:Play()
    
    wait(5)
    
    local fadeOutTween = TweenService:Create(G2L["Frame_2"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local textFadeOut = TweenService:Create(G2L["TextLabel_3"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    local strokeFadeOut = TweenService:Create(G2L["UIStroke_6"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 1
    })
    
    fadeOutTween:Play()
    textFadeOut:Play()
    strokeFadeOut:Play()
    
    fadeOutTween.Completed:Connect(function()
        G2L["ScreenGui_1"].Enabled = false
        G2L["Frame_2"].Position = originalPosition
    end)
end

return notify