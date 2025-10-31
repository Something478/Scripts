local CollectionService = game:GetService("CollectionService")
local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui")
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
G2L["ScreenGui_1"].Name = "SpectreShiftCredits"

CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Frame_2"]["BorderSizePixel"] = 0
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Frame_2"]["Size"] = UDim2.new(0.35361, 0, 0.61681, 0)
G2L["Frame_2"]["Position"] = UDim2.new(0.33196, 0, 0.10186, 0)
G2L["Frame_2"]["BackgroundTransparency"] = 0.5

G2L["UICorner_3"] = Instance.new("UICorner", G2L["Frame_2"])

G2L["TextLabel_4"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["TextLabel_4"]["TextWrapped"] = true
G2L["TextLabel_4"]["BorderSizePixel"] = 0
G2L["TextLabel_4"]["TextScaled"] = true
G2L["TextLabel_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel_4"]["BackgroundTransparency"] = 1
G2L["TextLabel_4"]["Size"] = UDim2.new(1, 0, 0.13761, 0)
G2L["TextLabel_4"]["Text"] = "Credits"

G2L["TextLabel2_5"] = Instance.new("TextLabel", G2L["Frame_2"])
G2L["TextLabel2_5"]["TextWrapped"] = true
G2L["TextLabel2_5"]["BorderSizePixel"] = 0
G2L["TextLabel2_5"]["TextSize"] = 12
G2L["TextLabel2_5"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["TextLabel2_5"]["TextYAlignment"] = Enum.TextYAlignment.Top
G2L["TextLabel2_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel2_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["TextLabel2_5"]["BackgroundTransparency"] = 1
G2L["TextLabel2_5"]["Size"] = UDim2.new(1, 0, 0.80734, 0)
G2L["TextLabel2_5"]["Text"] = "Idea: StarFlow\nCoding: StarFlow\nUI: StarFlow\nMusic: Cyberpunk Synth Wave"
G2L["TextLabel2_5"]["Name"] = "TextLabel2"
G2L["TextLabel2_5"]["Position"] = UDim2.new(0, 0, 0.15596, 0)

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

G2L["Frame_8"] = Instance.new("Frame", G2L["Frame_2"])
G2L["Frame_8"]["BorderSizePixel"] = 0
G2L["Frame_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
G2L["Frame_8"]["Size"] = UDim2.new(1, 0, 0.00917, 0)
G2L["Frame_8"]["Position"] = UDim2.new(0, 0, 0.14679, 0)
G2L["Frame_8"]["BackgroundTransparency"] = 0.5

G2L["TextButton_6"].MouseButton1Click:Connect(function()
    G2L["ScreenGui_1"].Enabled = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/Scripts/main/Spectre%20Shift/Main%20menu.luau"))()
end)

return G2L["ScreenGui_1"]
