local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui")
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
G2L["ScreenGui_1"].Name = "SpectreShiftMainMenu"

CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["StarterMenu_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["StarterMenu_2"]["BorderSizePixel"] = 0
G2L["StarterMenu_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["StarterMenu_2"]["Size"] = UDim2.new(1.05361, 0, 1.21665, 0)
G2L["StarterMenu_2"]["Position"] = UDim2.new(-0.02165, 0, -0.18108, 0)
G2L["StarterMenu_2"]["Name"] = "StarterMenu"
G2L["StarterMenu_2"]["BackgroundTransparency"] = 0.5

G2L["Play_3"] = Instance.new("TextButton", G2L["StarterMenu_2"])
G2L["Play_3"]["TextWrapped"] = true
G2L["Play_3"]["BorderSizePixel"] = 0
G2L["Play_3"]["TextTransparency"] = 0.5
G2L["Play_3"]["TextSize"] = 20
G2L["Play_3"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Play_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Play_3"]["BackgroundTransparency"] = 0.5
G2L["Play_3"]["Size"] = UDim2.new(0.17123, 0, 0.09302, 0)
G2L["Play_3"]["Text"] = "Play"
G2L["Play_3"]["Name"] = "Play"
G2L["Play_3"]["Position"] = UDim2.new(0.40868, 0, 0.32558, 0)

G2L["UICorner_4"] = Instance.new("UICorner", G2L["Play_3"])

G2L["UIGradient_5"] = Instance.new("UIGradient", G2L["Play_3"])
G2L["UIGradient_5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.683, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(218, 218, 218))}

G2L["Settings_6"] = Instance.new("TextButton", G2L["StarterMenu_2"])
G2L["Settings_6"]["TextWrapped"] = true
G2L["Settings_6"]["BorderSizePixel"] = 0
G2L["Settings_6"]["TextTransparency"] = 0.5
G2L["Settings_6"]["TextSize"] = 20
G2L["Settings_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Settings_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Settings_6"]["BackgroundTransparency"] = 0.5
G2L["Settings_6"]["Size"] = UDim2.new(0.17123, 0, 0.09302, 0)
G2L["Settings_6"]["Text"] = "Settings"
G2L["Settings_6"]["Name"] = "Settings"
G2L["Settings_6"]["Position"] = UDim2.new(0.40868, 0, 0.43721, 0)

G2L["UICorner_7"] = Instance.new("UICorner", G2L["Settings_6"])

G2L["Creds_8"] = Instance.new("TextButton", G2L["StarterMenu_2"])
G2L["Creds_8"]["TextWrapped"] = true
G2L["Creds_8"]["BorderSizePixel"] = 0
G2L["Creds_8"]["TextTransparency"] = 0.5
G2L["Creds_8"]["TextSize"] = 20
G2L["Creds_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Creds_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Creds_8"]["BackgroundTransparency"] = 0.5
G2L["Creds_8"]["Size"] = UDim2.new(0.17123, 0, 0.09302, 0)
G2L["Creds_8"]["Text"] = "Credits"
G2L["Creds_8"]["Name"] = "Creds"
G2L["Creds_8"]["Position"] = UDim2.new(0.40868, 0, 0.54884, 0)

G2L["UICorner_9"] = Instance.new("UICorner", G2L["Creds_8"])

G2L["UIGradient2_a"] = Instance.new("UIGradient", G2L["Creds_8"])
G2L["UIGradient2_a"]["Name"] = "UIGradient2"
G2L["UIGradient2_a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.683, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(218, 218, 218))}

G2L["UIGradient_b"] = Instance.new("UIGradient", G2L["Creds_8"])
G2L["UIGradient_b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.683, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(218, 218, 218))}

G2L["Title_c"] = Instance.new("Frame", G2L["StarterMenu_2"])
G2L["Title_c"]["ZIndex"] = 0
G2L["Title_c"]["BorderSizePixel"] = 0
G2L["Title_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Title_c"]["Size"] = UDim2.new(0.36301, 0, 0.13488, 0)
G2L["Title_c"]["Position"] = UDim2.new(0.31279, 0, 0.17209, 0)
G2L["Title_c"]["Name"] = "Title"
G2L["Title_c"]["BackgroundTransparency"] = 0.5

G2L["UICorner_d"] = Instance.new("UICorner", G2L["Title_c"])

G2L["UIGradient_e"] = Instance.new("UIGradient", G2L["Title_c"])
G2L["UIGradient_e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(105, 0, 255)),ColorSequenceKeypoint.new(0.698, Color3.fromRGB(255, 101, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 101, 0))}

G2L["Spectre_f"] = Instance.new("TextLabel", G2L["Title_c"])
G2L["Spectre_f"]["TextWrapped"] = true
G2L["Spectre_f"]["BorderSizePixel"] = 0
G2L["Spectre_f"]["TextSize"] = 42
G2L["Spectre_f"]["TextScaled"] = true
G2L["Spectre_f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Spectre_f"]["FontFace"] = Font.new("rbxasset://fonts/families/PressStart2P.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["Spectre_f"]["TextColor3"] = Color3.fromRGB(255, 101, 0)
G2L["Spectre_f"]["BackgroundTransparency"] = 1
G2L["Spectre_f"]["Size"] = UDim2.new(0.62893, 0, 0.96552, 0)
G2L["Spectre_f"]["Text"] = "Spectre"
G2L["Spectre_f"]["Name"] = "Spectre"

G2L["Shift_10"] = Instance.new("TextLabel", G2L["Title_c"])
G2L["Shift_10"]["TextWrapped"] = true
G2L["Shift_10"]["BorderSizePixel"] = 0
G2L["Shift_10"]["TextSize"] = 42
G2L["Shift_10"]["TextScaled"] = true
G2L["Shift_10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Shift_10"]["FontFace"] = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["Shift_10"]["TextColor3"] = Color3.fromRGB(105, 0, 255)
G2L["Shift_10"]["BackgroundTransparency"] = 1
G2L["Shift_10"]["Size"] = UDim2.new(0.36478, 0, 1, 0)
G2L["Shift_10"]["Text"] = "Shift"
G2L["Shift_10"]["Name"] = "Shift"
G2L["Shift_10"]["Position"] = UDim2.new(0.62893, 0, 0, 0)

local buttons = {G2L["Play_3"], G2L["Settings_6"], G2L["Creds_8"]}

for _, button in pairs(buttons) do
    button.MouseEnter:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextTransparency = 0
        })
        tween:Play()
    end)
    
    button.MouseLeave:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextTransparency = 0.5
        })
        tween:Play()
    end)
end

G2L["Play_3"].MouseButton1Click:Connect(function()
    G2L["ScreenGui_1"].Enabled = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/spectreshift/main/GameCore.lua"))()
end)

G2L["Settings_6"].MouseButton1Click:Connect(function()
    G2L["ScreenGui_1"].Enabled = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/spectreshift/main/SettingsMenu.lua"))()
end)

G2L["Creds_8"].MouseButton1Click:Connect(function()
    G2L["ScreenGui_1"].Enabled = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/spectreshift/main/CreditsMenu.lua"))()
end)

return G2L["ScreenGui_1"]
