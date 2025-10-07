local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local notify = {}

notify["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
notify["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
notify["ScreenGui_1"].Enabled = false

CollectionService:AddTag(notify["ScreenGui_1"], "main")

notify["Frame_2"] = Instance.new("Frame", notify["ScreenGui_1"])
notify["Frame_2"]["BorderSizePixel"] = 0
notify["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
notify["Frame_2"]["Size"] = UDim2.new(0.14914, 0, 0.11884, 0)
notify["Frame_2"]["Position"] = UDim2.new(0.45223, 0, -0.13015, 0)
notify["Frame_2"]["BorderColor3"] = Color3.fromRGB(28, 42, 54)
notify["Frame_2"].BackgroundTransparency = 1

notify["TextLabel_3"] = Instance.new("TextLabel", notify["Frame_2"])
notify["TextLabel_3"]["BorderSizePixel"] = 0
notify["TextLabel_3"]["TextSize"] = 18
notify["TextLabel_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
notify["TextLabel_3"]["TextColor3"] = Color3.fromRGB(178, 0, 255)
notify["TextLabel_3"]["BackgroundTransparency"] = 1
notify["TextLabel_3"]["Size"] = UDim2.new(1, 0, 1, 0)
notify["TextLabel_3"]["Text"] = "Welcome"
notify["TextLabel_3"].TextTransparency = 1
notify["TextLabel_3"].TextScaled = true

notify["UICorner_4"] = Instance.new("UICorner", notify["TextLabel_3"])

notify["UICorner_5"] = Instance.new("UICorner", notify["Frame_2"])

notify["UIStroke_6"] = Instance.new("UIStroke", notify["Frame_2"])
notify["UIStroke_6"]["Color"] = Color3.fromRGB(178, 0, 255)
notify["UIStroke_6"].Transparency = 1

notify["UIAspectRatioConstraint_7"] = Instance.new("UIAspectRatioConstraint", notify["Frame_2"])
notify["UIAspectRatioConstraint_7"]["AspectRatio"] = 2.95238

local notify = {}
notify.text = "Welcome"

function notify:Show()
    notify["ScreenGui_1"].Enabled = true
    notify["TextLabel_3"].Text = self.text
    
    local originalPosition = notify["Frame_2"].Position
    notify["Frame_2"].Position = UDim2.new(1.2, 0, -0.13015, 0)
    
    local fadeInTween = TweenService:Create(notify["Frame_2"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = originalPosition,
        BackgroundTransparency = 0
    })
    
    local textFadeIn = TweenService:Create(notify["TextLabel_3"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    
    local strokeFadeIn = TweenService:Create(notify["UIStroke_6"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0
    })
    
    fadeInTween:Play()
    textFadeIn:Play()
    strokeFadeIn:Play()
    
    wait(5)
    
    local fadeOutTween = TweenService:Create(notify["Frame_2"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local textFadeOut = TweenService:Create(notify["TextLabel_3"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    local strokeFadeOut = TweenService:Create(notify["UIStroke_6"], TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 1
    })
    
    fadeOutTween:Play()
    textFadeOut:Play()
    strokeFadeOut:Play()
    
    fadeOutTween.Completed:Connect(function()
        notify["ScreenGui_1"].Enabled = false
        notify["Frame_2"].Position = originalPosition
    end)
end

return notify