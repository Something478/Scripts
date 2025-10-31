local CollectionService = game:GetService("CollectionService")
local SoundService = game:GetService("SoundService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui")
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"].Parent = LocalPlayer:WaitForChild("PlayerGui")
G2L["ScreenGui_1"].Name = "SpectreShiftSettings"

CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["StarterMenu_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["StarterMenu_2"]["BorderSizePixel"] = 0
G2L["StarterMenu_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["StarterMenu_2"]["Size"] = UDim2.new(1.05361, 0, 1.21665, 0)
G2L["StarterMenu_2"]["Position"] = UDim2.new(-0.02165, 0, -0.18108, 0)
G2L["StarterMenu_2"]["Name"] = "StarterMenu"
G2L["StarterMenu_2"]["BackgroundTransparency"] = 0.5

G2L["Frame_2"] = Instance.new("Frame", G2L["StarterMenu_2"])
G2L["Frame_2"]["BorderSizePixel"] = 0
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Frame_2"]["Size"] = UDim2.new(0.35361, 0, 0.61681, 0)
G2L["Frame_2"]["Position"] = UDim2.new(0.33196, 0, 0.10186, 0)
G2L["Frame_2"]["BackgroundTransparency"] = 0.5

G2L["UICorner_3"] = Instance.new("UICorner", G2L["Frame_2"])

G2L["Frame_4"] = Instance.new("Frame", G2L["Frame_2"])
G2L["Frame_4"]["BorderSizePixel"] = 0
G2L["Frame_4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Frame_4"]["Size"] = UDim2.new(1, 0, 0.00917, 0)
G2L["Frame_4"]["Position"] = UDim2.new(0, 0, 0.14679, 0)
G2L["Frame_4"]["BackgroundTransparency"] = 0.5

G2L["TextLabel_5"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["TextLabel_5"]["TextWrapped"] = true
G2L["TextLabel_5"]["BorderSizePixel"] = 0
G2L["TextLabel_5"]["TextScaled"] = true
G2L["TextLabel_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel_5"]["BackgroundTransparency"] = 1
G2L["TextLabel_5"]["Size"] = UDim2.new(1, 0, 0.13761, 0)
G2L["TextLabel_5"]["Text"] = "Settings"

G2L["TextButton_6"] = Instance.new("TextButton", G2L["Frame_2"])
G2L["TextButton_6"]["TextWrapped"] = true
G2L["TextButton_6"]["BorderSizePixel"] = 0
G2L["TextButton_6"]["TextScaled"] = true
G2L["TextButton_6"]["TextColor3"] = Color3.fromRGB(255, 0, 0)
G2L["TextButton_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["TextButton_6"]["BackgroundTransparency"] = 0.5
G2L["TextButton_6"]["Size"] = UDim2.new(0.10204, 0, 0.13761, 0)
G2L["TextButton_6"]["Text"] = "×"
G2L["TextButton_6"]["Position"] = UDim2.new(0.89796, 0, 0, 0)

G2L["UICorner_7"] = Instance.new("UICorner", G2L["TextButton_6"])

G2L["Music_8"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["Music_8"]["TextWrapped"] = true
G2L["Music_8"]["BorderSizePixel"] = 0
G2L["Music_8"]["TextSize"] = 12
G2L["Music_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Music_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Music_8"]["BackgroundTransparency"] = 0.5
G2L["Music_8"]["Size"] = UDim2.new(0.18367, 0, 0.08257, 0)
G2L["Music_8"]["Text"] = "Music:"
G2L["Music_8"]["Name"] = "Music"
G2L["Music_8"]["Position"] = UDim2.new(0.01361, 0, 0.17431, 0)

G2L["UICorner_9"] = Instance.new("UICorner", G2L["Music_8"])

G2L["TextButton_a"] = Instance.new("TextButton", G2L["Music_8"])
G2L["TextButton_a"]["BorderSizePixel"] = 0
G2L["TextButton_a"]["TextColor3"] = Color3.fromRGB(62, 255, 0)
G2L["TextButton_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["TextButton_a"]["BackgroundTransparency"] = 0.5
G2L["TextButton_a"]["Size"] = UDim2.new(0.81481, 0, 1, 0)
G2L["TextButton_a"]["Text"] = "ON"
G2L["TextButton_a"]["Position"] = UDim2.new(1.03704, 0, 0, 0)

G2L["UICorner_b"] = Instance.new("UICorner", G2L["TextButton_a"])

local themeMusic = Instance.new("Sound")
themeMusic.SoundId = "rbxassetid://15729957864"
themeMusic.Looped = true
themeMusic.Volume = 0.5
themeMusic.Parent = SoundService

local musicEnabled = true
themeMusic:Play()

G2L["TextButton_a"].MouseButton1Click:Connect(function()
    musicEnabled = not musicEnabled
    
    if musicEnabled then
        G2L["TextButton_a"].Text = "ON"
        G2L["TextButton_a"].TextColor3 = Color3.fromRGB(62, 255, 0)
        themeMusic:Play()
    else
        G2L["TextButton_a"].Text = "OFF" 
        G2L["TextButton_a"].TextColor3 = Color3.fromRGB(255, 0, 0)
        themeMusic:Stop()
    end
end)

G2L["TextButton_6"].MouseButton1Click:Connect(function()
    G2L["ScreenGui_1"].Enabled = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/Spectre%20Shift/Main%20menu.luau"))()
end)

return G2L["ScreenGui_1"]