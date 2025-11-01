local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local LogService = game:GetService("LogService")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

local player = Players.LocalPlayer
local Forge = {}

Forge["ScreenGui_1"] = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
Forge["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
Forge["ScreenGui_1"]["ResetOnSpawn"] = false
CollectionService:AddTag(Forge["ScreenGui_1"], "main")

Forge["MainFrame_2"] = Instance.new("Frame", Forge["ScreenGui_1"])
Forge["MainFrame_2"]["BorderSizePixel"] = 0
Forge["MainFrame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["MainFrame_2"]["Size"] = UDim2.new(0.57251, 0, 0.9903, 0)
Forge["MainFrame_2"]["Position"] = UDim2.new(0, 96, 0, 0)
Forge["MainFrame_2"]["Name"] = "MainFrame"

Forge["Stats_3"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["Stats_3"]["BorderSizePixel"] = 0
Forge["Stats_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Stats_3"]["Size"] = UDim2.new(0.34034, 0, 1, 0)
Forge["Stats_3"]["Position"] = UDim2.new(0, 480, 0, 0)
Forge["Stats_3"]["Name"] = "Stats"

Forge["UICorner_4"] = Instance.new("UICorner", Forge["Stats_3"])

Forge["StatsLabel_5"] = Instance.new("TextLabel", Forge["Stats_3"])
Forge["StatsLabel_5"]["TextWrapped"] = true
Forge["StatsLabel_5"]["BorderSizePixel"] = 0
Forge["StatsLabel_5"]["TextSize"] = 14
Forge["StatsLabel_5"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["StatsLabel_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["StatsLabel_5"]["TextColor3"] = Color3.fromRGB(0, 33, 255)
Forge["StatsLabel_5"]["BackgroundTransparency"] = 1
Forge["StatsLabel_5"]["RichText"] = true
Forge["StatsLabel_5"]["Size"] = UDim2.new(0.97531, 0, 0.89143, 0)
Forge["StatsLabel_5"]["Text"] = "FPS: Calculating...\nPing: Calculating...\nUsername: Loading...\nUserID: Loading...\nGame: Loading...\nGameID: Loading..."
Forge["StatsLabel_5"]["Name"] = "StatsLabel"
Forge["StatsLabel_5"]["Position"] = UDim2.new(0, 2, 0, 36)

Forge["UICorner_6"] = Instance.new("UICorner", Forge["StatsLabel_5"])

Forge["UIGradient2_7"] = Instance.new("UIGradient", Forge["StatsLabel_5"])
Forge["UIGradient2_7"]["Name"] = "UIGradient2"
Forge["UIGradient2_7"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UIGradient_8"] = Instance.new("UIGradient", Forge["Stats_3"])
Forge["UIGradient_8"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["StatsTitle_9"] = Instance.new("TextLabel", Forge["Stats_3"])
Forge["StatsTitle_9"]["BorderSizePixel"] = 0
Forge["StatsTitle_9"]["TextSize"] = 40
Forge["StatsTitle_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["StatsTitle_9"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge["StatsTitle_9"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["StatsTitle_9"]["BackgroundTransparency"] = 1
Forge["StatsTitle_9"]["Size"] = UDim2.new(1, 0, 0.10286, 0)
Forge["StatsTitle_9"]["Text"] = "Statistics"
Forge["StatsTitle_9"]["Name"] = "StatsTitle"
Forge["StatsTitle_9"]["Position"] = UDim2.new(0, 0, 0, -2)

Forge["UIGradient_a"] = Instance.new("UIGradient", Forge["StatsTitle_9"])
Forge["UIGradient_a"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Frame_b"] = Instance.new("Frame", Forge["StatsTitle_9"])
Forge["Frame_b"]["BorderSizePixel"] = 0
Forge["Frame_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Frame_b"]["Size"] = UDim2.new(1, 0, 0.05556, 0)
Forge["Frame_b"]["Position"] = UDim2.new(0, 0, 0, 34)

Forge["UIGradient_c"] = Instance.new("UIGradient", Forge["Frame_b"])
Forge["UIGradient_c"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UIStroke_d"] = Instance.new("UIStroke", Forge["Stats_3"])
Forge["UIStroke_d"]["Color"] = Color3.fromRGB(0, 15, 255)

Forge["UIGradient_e"] = Instance.new("UIGradient", Forge["UIStroke_d"])
Forge["UIGradient_e"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["TopBar_14"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["TopBar_14"]["BorderSizePixel"] = 0
Forge["TopBar_14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["TopBar_14"]["Size"] = UDim2.new(0.98319, 0, 0.10857, 0)
Forge["TopBar_14"]["Position"] = UDim2.new(0, 4, 0, 24)
Forge["TopBar_14"]["Name"] = "TopBar"

Forge["UICorner_24"] = Instance.new("UICorner", Forge["TopBar_14"])

Forge["UIGradient_25"] = Instance.new("UIGradient", Forge["TopBar_14"])
Forge["UIGradient_25"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
}

Forge["UIGradient2_26"] = Instance.new("UIGradient", Forge["TopBar_14"])
Forge["UIGradient2_26"]["Name"] = "UIGradient2"
Forge["UIGradient2_26"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["UIStroke_2c"] = Instance.new("UIStroke", Forge["TopBar_14"])
Forge["UIStroke_2c"]["Color"] = Color3.fromRGB(0, 15, 255)

Forge["UIGradient_2d"] = Instance.new("UIGradient", Forge["UIStroke_2c"])
Forge["UIGradient_2d"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Exe_Tab_27"] = Instance.new("TextButton", Forge["TopBar_14"])
Forge["Exe_Tab_27"]["TextWrapped"] = true
Forge["Exe_Tab_27"]["BorderSizePixel"] = 0
Forge["Exe_Tab_27"]["TextScaled"] = true
Forge["Exe_Tab_27"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Exe_Tab_27"]["BackgroundColor3"] = Color3.fromRGB(80, 80, 80)
Forge["Exe_Tab_27"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0)
Forge["Exe_Tab_27"]["Text"] = "Executor"
Forge["Exe_Tab_27"]["Name"] = "Exe_Tab"
Forge["Exe_Tab_27"]["Position"] = UDim2.new(0, 2, 0, 4)

Forge["UICorner_28"] = Instance.new("UICorner", Forge["Exe_Tab_27"])

Forge["UIGradient_29"] = Instance.new("UIGradient", Forge["Exe_Tab_27"])
Forge["UIGradient_29"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Frame_2a"] = Instance.new("Frame", Forge["Exe_Tab_27"])
Forge["Frame_2a"]["BorderSizePixel"] = 0
Forge["Frame_2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Frame_2a"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0)
Forge["Frame_2a"]["Position"] = UDim2.new(0, 84, 0, -4)

Forge["UIGradient_2b"] = Instance.new("UIGradient", Forge["Frame_2a"])
Forge["UIGradient_2b"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Search_Tab_1a"] = Instance.new("TextButton", Forge["TopBar_14"])
Forge["Search_Tab_1a"]["TextWrapped"] = true
Forge["Search_Tab_1a"]["BorderSizePixel"] = 0
Forge["Search_Tab_1a"]["TextScaled"] = true
Forge["Search_Tab_1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Search_Tab_1a"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15)
Forge["Search_Tab_1a"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0)
Forge["Search_Tab_1a"]["Text"] = "Search"
Forge["Search_Tab_1a"]["Name"] = "Search_Tab"
Forge["Search_Tab_1a"]["Position"] = UDim2.new(0, 88, 0, 4)

Forge["UICorner_1b"] = Instance.new("UICorner", Forge["Search_Tab_1a"])

Forge["UIGradient_1c"] = Instance.new("UIGradient", Forge["Search_Tab_1a"])
Forge["UIGradient_1c"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Frame_1d"] = Instance.new("Frame", Forge["Search_Tab_1a"])
Forge["Frame_1d"]["BorderSizePixel"] = 0
Forge["Frame_1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Frame_1d"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0)
Forge["Frame_1d"]["Position"] = UDim2.new(0, 84, 0, -4)

Forge["UIGradient_1e"] = Instance.new("UIGradient", Forge["Frame_1d"])
Forge["UIGradient_1e"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Fav_Tab_1f"] = Instance.new("TextButton", Forge["TopBar_14"])
Forge["Fav_Tab_1f"]["TextWrapped"] = true
Forge["Fav_Tab_1f"]["BorderSizePixel"] = 0
Forge["Fav_Tab_1f"]["TextScaled"] = true
Forge["Fav_Tab_1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Fav_Tab_1f"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15)
Forge["Fav_Tab_1f"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0)
Forge["Fav_Tab_1f"]["Text"] = "Favorites"
Forge["Fav_Tab_1f"]["Name"] = "Fav_Tab"
Forge["Fav_Tab_1f"]["Position"] = UDim2.new(0, 174, 0, 4)

Forge["UICorner_20"] = Instance.new("UICorner", Forge["Fav_Tab_1f"])

Forge["UIGradient_21"] = Instance.new("UIGradient", Forge["Fav_Tab_1f"])
Forge["UIGradient_21"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Frame_22"] = Instance.new("Frame", Forge["Fav_Tab_1f"])
Forge["Frame_22"]["BorderSizePixel"] = 0
Forge["Frame_22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Frame_22"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0)
Forge["Frame_22"]["Position"] = UDim2.new(0, 84, 0, -4)

Forge["UIGradient_23"] = Instance.new("UIGradient", Forge["Frame_22"])
Forge["UIGradient_23"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["F9_Tab_15"] = Instance.new("TextButton", Forge["TopBar_14"])
Forge["F9_Tab_15"]["TextWrapped"] = true
Forge["F9_Tab_15"]["BorderSizePixel"] = 0
Forge["F9_Tab_15"]["TextScaled"] = true
Forge["F9_Tab_15"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["F9_Tab_15"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15)
Forge["F9_Tab_15"]["Size"] = UDim2.new(0.17521, 0, 0.78947, 0)
Forge["F9_Tab_15"]["Text"] = "Console"
Forge["F9_Tab_15"]["Name"] = "F9_Tab"
Forge["F9_Tab_15"]["Position"] = UDim2.new(0, 260, 0, 4)

Forge["UICorner_16"] = Instance.new("UICorner", Forge["F9_Tab_15"])

Forge["UIGradient_17"] = Instance.new("UIGradient", Forge["F9_Tab_15"])
Forge["UIGradient_17"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Frame_18"] = Instance.new("Frame", Forge["F9_Tab_15"])
Forge["Frame_18"]["BorderSizePixel"] = 0
Forge["Frame_18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Frame_18"]["Size"] = UDim2.new(0.02439, 0, 1.26667, 0)
Forge["Frame_18"]["Position"] = UDim2.new(0, 84, 0, -4)

Forge["UIGradient_19"] = Instance.new("UIGradient", Forge["Frame_18"])
Forge["UIGradient_19"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Title_31"] = Instance.new("TextLabel", Forge["MainFrame_2"])
Forge["Title_31"]["TextWrapped"] = true
Forge["Title_31"]["ZIndex"] = 2
Forge["Title_31"]["BorderSizePixel"] = 0
Forge["Title_31"]["TextSize"] = 48
Forge["Title_31"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["Title_31"]["TextScaled"] = true
Forge["Title_31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Title_31"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge["Title_31"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Title_31"]["BackgroundTransparency"] = 1
Forge["Title_31"]["Size"] = UDim2.new(0.9916, 0, 0.06286, 0)
Forge["Title_31"]["Text"] = "Forge Executor"
Forge["Title_31"]["Name"] = "Title"
Forge["Title_31"]["Position"] = UDim2.new(0, 2, 0, 0)

Forge["Hide_2e"] = Instance.new("TextButton", Forge["MainFrame_2"])
Forge["Hide_2e"]["TextWrapped"] = true
Forge["Hide_2e"]["BorderSizePixel"] = 0
Forge["Hide_2e"]["TextScaled"] = true
Forge["Hide_2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Hide_2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Hide_2e"]["Size"] = UDim2.new(0.05882, 0, 0.05143, 0)
Forge["Hide_2e"]["Text"] = "—"
Forge["Hide_2e"]["Name"] = "Hide"
Forge["Hide_2e"]["Position"] = UDim2.new(0, 446, 0, 2)

Forge["UICorner_2f"] = Instance.new("UICorner", Forge["Hide_2e"])

Forge["UIGradient2_30"] = Instance.new("UIGradient", Forge["Hide_2e"])
Forge["UIGradient2_30"]["Name"] = "UIGradient2"
Forge["UIGradient2_30"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UICorner_f"] = Instance.new("UICorner", Forge["MainFrame_2"])

Forge["UIGradient_32"] = Instance.new("UIGradient", Forge["MainFrame_2"])
Forge["UIGradient_32"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["UIStroke_33"] = Instance.new("UIStroke", Forge["MainFrame_2"])
Forge["UIStroke_33"]["Color"] = Color3.fromRGB(0, 15, 255)

Forge["UIGradient_34"] = Instance.new("UIGradient", Forge["UIStroke_33"])
Forge["UIGradient_34"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["ExecutorContent"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["ExecutorContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["ExecutorContent"]["BackgroundTransparency"] = 1
Forge["ExecutorContent"]["Size"] = UDim2.new(1, 0, 1, 0)
Forge["ExecutorContent"]["Name"] = "ExecutorContent"

Forge["FavoritesContent"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["FavoritesContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["FavoritesContent"]["BackgroundTransparency"] = 1
Forge["FavoritesContent"]["Size"] = UDim2.new(1, 0, 1, 0)
Forge["FavoritesContent"]["Name"] = "FavoritesContent"
Forge["FavoritesContent"]["Visible"] = false

Forge["SearchContent"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["SearchContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["SearchContent"]["BackgroundTransparency"] = 1
Forge["SearchContent"]["Size"] = UDim2.new(1, 0, 1, 0)
Forge["SearchContent"]["Name"] = "SearchContent"
Forge["SearchContent"]["Visible"] = false

Forge["ConsoleContent"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["ConsoleContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["ConsoleContent"]["BackgroundTransparency"] = 1
Forge["ConsoleContent"]["Size"] = UDim2.new(1, 0, 1, 0)
Forge["ConsoleContent"]["Name"] = "ConsoleContent"
Forge["ConsoleContent"]["Visible"] = false

Forge["InputTextbox_35"] = Instance.new("Frame", Forge["ExecutorContent"])
Forge["InputTextbox_35"]["ZIndex"] = 0
Forge["InputTextbox_35"]["BorderSizePixel"] = 0
Forge["InputTextbox_35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["InputTextbox_35"]["Size"] = UDim2.new(0.98319, 0, 0.71429, 0)
Forge["InputTextbox_35"]["Position"] = UDim2.new(0, 4, 0, 66)
Forge["InputTextbox_35"]["Name"] = "InputTextbox"

Forge["UIGradient_36"] = Instance.new("UIGradient", Forge["InputTextbox_35"])
Forge["UIGradient_36"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["TextBox_37"] = Instance.new("TextBox", Forge["InputTextbox_35"])
Forge["TextBox_37"]["CursorPosition"] = -1
Forge["TextBox_37"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["TextBox_37"]["BorderSizePixel"] = 0
Forge["TextBox_37"]["TextWrapped"] = true
Forge["TextBox_37"]["TextSize"] = 18
Forge["TextBox_37"]["TextColor3"] = Color3.fromRGB(104, 255, 0)
Forge["TextBox_37"]["TextYAlignment"] = Enum.TextYAlignment.Top
Forge["TextBox_37"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["TextBox_37"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge["TextBox_37"]["PlaceholderText"] = "Script here..."
Forge["TextBox_37"]["Size"] = UDim2.new(0.98718, 0, 0.984, 0)
Forge["TextBox_37"]["Position"] = UDim2.new(0, 2, 0, 2)
Forge["TextBox_37"]["Text"] = ""

Forge["Exe_2d"] = Instance.new("TextButton", Forge["ExecutorContent"])
Forge["Exe_2d"]["TextWrapped"] = true
Forge["Exe_2d"]["BorderSizePixel"] = 0
Forge["Exe_2d"]["TextSize"] = 12
Forge["Exe_2d"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Exe_2d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Exe_2d"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0)
Forge["Exe_2d"]["Text"] = "Execute"
Forge["Exe_2d"]["Name"] = "Exe"
Forge["Exe_2d"]["Position"] = UDim2.new(0, 4, 0, 320)

Forge["UICorner_2e"] = Instance.new("UICorner", Forge["Exe_2d"])

Forge["Clr_33"] = Instance.new("TextButton", Forge["ExecutorContent"])
Forge["Clr_33"]["TextWrapped"] = true
Forge["Clr_33"]["BorderSizePixel"] = 0
Forge["Clr_33"]["TextSize"] = 12
Forge["Clr_33"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Clr_33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Clr_33"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0)
Forge["Clr_33"]["Text"] = "Clear"
Forge["Clr_33"]["Name"] = "Clr"
Forge["Clr_33"]["Position"] = UDim2.new(0, 86, 0, 320)

Forge["UICorner_34"] = Instance.new("UICorner", Forge["Clr_33"])

Forge["Save_f"] = Instance.new("TextButton", Forge["ExecutorContent"])
Forge["Save_f"]["TextWrapped"] = true
Forge["Save_f"]["BorderSizePixel"] = 0
Forge["Save_f"]["TextSize"] = 12
Forge["Save_f"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Save_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Save_f"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0)
Forge["Save_f"]["Text"] = "Save"
Forge["Save_f"]["Name"] = "Save"
Forge["Save_f"]["Position"] = UDim2.new(0, 170, 0, 320)

Forge["UICorner_10"] = Instance.new("UICorner", Forge["Save_f"])

Forge["Paste_3a"] = Instance.new("TextButton", Forge["ExecutorContent"])
Forge["Paste_3a"]["TextWrapped"] = true
Forge["Paste_3a"]["BorderSizePixel"] = 0
Forge["Paste_3a"]["TextSize"] = 12
Forge["Paste_3a"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Paste_3a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Paste_3a"]["Size"] = UDim2.new(0.16807, 0, 0.07429, 0)
Forge["Paste_3a"]["Text"] = "Paste"
Forge["Paste_3a"]["Name"] = "Paste"
Forge["Paste_3a"]["Position"] = UDim2.new(0, 252, 0, 322)

Forge["UICorner_3b"] = Instance.new("UICorner", Forge["Paste_3a"])

Forge["SearchBox"] = Instance.new("TextBox", Forge["SearchContent"])
Forge["SearchBox"]["CursorPosition"] = -1
Forge["SearchBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["SearchBox"]["BorderSizePixel"] = 0
Forge["SearchBox"]["TextSize"] = 10
Forge["SearchBox"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
Forge["SearchBox"]["PlaceholderText"] = "Search scripts (powered by scriptblox.com)"
Forge["SearchBox"]["Size"] = UDim2.new(0.9916, 0, 0.08571, 0)
Forge["SearchBox"]["Position"] = UDim2.new(0, 2, 0, 68)
Forge["SearchBox"]["Text"] = ""
Forge["SearchBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)

Forge["UICorner_3d"] = Instance.new("UICorner", Forge["SearchBox"])

Forge["SearchList"] = Instance.new("ScrollingFrame", Forge["SearchContent"])
Forge["SearchList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["SearchList"]["BackgroundTransparency"] = 1
Forge["SearchList"]["Size"] = UDim2.new(1, -12, 1, -90)
Forge["SearchList"]["Position"] = UDim2.new(0, 6, 0, 90)
Forge["SearchList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Forge["SearchList"]["ScrollBarThickness"] = 8
Forge["SearchList"]["Name"] = "SearchList"

Forge["FavoritesList"] = Instance.new("ScrollingFrame", Forge["FavoritesContent"])
Forge["FavoritesList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["FavoritesList"]["BackgroundTransparency"] = 1
Forge["FavoritesList"]["Size"] = UDim2.new(1, -12, 1, -60)
Forge["FavoritesList"]["Position"] = UDim2.new(0, 6, 0, 60)
Forge["FavoritesList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Forge["FavoritesList"]["ScrollBarThickness"] = 8
Forge["FavoritesList"]["Name"] = "FavoritesList"

Forge["ScrollingFrame_10"] = Instance.new("ScrollingFrame", Forge["ConsoleContent"])
Forge["ScrollingFrame_10"]["BorderSizePixel"] = 0
Forge["ScrollingFrame_10"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
Forge["ScrollingFrame_10"]["Size"] = UDim2.new(0.9916, 0, 0.80286, 0)
Forge["ScrollingFrame_10"]["Position"] = UDim2.new(0, 2, 0, 66)
Forge["ScrollingFrame_10"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Forge["ScrollingFrame_10"]["ScrollBarThickness"] = 8
Forge["ScrollingFrame_10"]["Name"] = "ConsoleOutput"

Forge["UICorner_11"] = Instance.new("UICorner", Forge["ScrollingFrame_10"])

Forge["Show_2"] = Instance.new("Frame", Forge["ScreenGui_1"])
Forge["Show_2"]["BorderSizePixel"] = 0
Forge["Show_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Show_2"]["Size"] = UDim2.new(0, 50, 0, 50)
Forge["Show_2"]["Position"] = UDim2.new(0, 778, 0, 104)
Forge["Show_2"]["Name"] = "Show"
Forge["Show_2"]["Visible"] = false

Forge["UICorner_3"] = Instance.new("UICorner", Forge["Show_2"])

Forge["UIGradient_4"] = Instance.new("UIGradient", Forge["Show_2"])
Forge["UIGradient_4"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["UIStroke_5"] = Instance.new("UIStroke", Forge["Show_2"])
Forge["UIStroke_5"]["Color"] = Color3.fromRGB(0, 24, 255)

Forge["UIGradient_6"] = Instance.new("UIGradient", Forge["UIStroke_5"])
Forge["UIGradient_6"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["TextButton_7"] = Instance.new("TextButton", Forge["Show_2"])
Forge["TextButton_7"]["TextWrapped"] = true
Forge["TextButton_7"]["BorderSizePixel"] = 0
Forge["TextButton_7"]["TextSize"] = 12
Forge["TextButton_7"]["TextScaled"] = true
Forge["TextButton_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["TextButton_7"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Forge["TextButton_7"]["TextColor3"] = Color3.fromRGB(0, 21, 255)
Forge["TextButton_7"]["BackgroundTransparency"] = 1
Forge["TextButton_7"]["Size"] = UDim2.new(0, 50, 0, 50)
Forge["TextButton_7"]["Text"] = "F"

Forge["UIGradient_8"] = Instance.new("UIGradient", Forge["TextButton_7"])
Forge["UIGradient_8"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

local FavoritesData = {scripts = {}}
local DATA_STORE_KEY = "ForgeExecutor_Saved"
local consoleMessages = {}
local MAX_CONSOLE_MESSAGES = 100

pcall(function()
    if readfile then
        local success, data = pcall(function()
            return HttpService:JSONDecode(readfile(DATA_STORE_KEY .. ".json"))
        end)
        if success and data then
            FavoritesData = data
        end
    end
end)

local function saveFavorites()
    if writefile then
        pcall(function()
            writefile(DATA_STORE_KEY .. ".json", HttpService:JSONEncode(FavoritesData))
        end)
    end
end

local statsConnections = {}
local fpsCounter = 0
local lastTime = tick()
local frameCount = 0

local function getPing()
    local ping = player:GetNetworkPing()
    return math.floor(ping * 1000) 
end

local function updateStats()
    local statsLabel = Forge["StatsLabel_5"]
    if statsLabel then
        frameCount = frameCount + 1
        local currentTime = tick()
        if currentTime - lastTime >= 1 then
            fpsCounter = math.floor(frameCount / (currentTime - lastTime))
            frameCount = 0
            lastTime = currentTime
        end
        
        local ping = getPing()
        local username = player.Name
        local userId = player.UserId
        local gameName = "Unknown"
        local gameId = game.PlaceId
        
        local success, result = pcall(function()
            return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
        end)
        if success and result then
            gameName = result.Name
        end
        
        statsLabel.Text = string.format("FPS: %d\nPing: %d ms\nUsername: %s\nUserID: %d\nGame: %s\nGameID: %d", 
            fpsCounter, ping, username, userId, gameName, gameId)
    end
end

local currentTab = "executor"
local function switchTab(tabName)
    currentTab = tabName
    
    Forge["ExecutorContent"].Visible = (tabName == "executor")
    Forge["FavoritesContent"].Visible = (tabName == "favorites")
    Forge["SearchContent"].Visible = (tabName == "search")
    Forge["ConsoleContent"].Visible = (tabName == "console")
    
    local tabs = {
        executor = Forge["Exe_Tab_27"],
        search = Forge["Search_Tab_1a"],
        favorites = Forge["Fav_Tab_1f"],
        console = Forge["F9_Tab_15"]
    }
    
    for name, button in pairs(tabs) do
        if button then
            button.BackgroundColor3 = (tabName == name) and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
        end
    end
    
    if tabName == "favorites" then
        updateFavoritesList()
    elseif tabName == "console" then
        updateConsoleOutput()
    end
end

local function createSavePopup()
    local popup = Instance.new("Frame")
    popup.Size = UDim2.new(0, 300, 0, 150)
    popup.Position = UDim2.new(0.5, -150, 0.5, -75)
    popup.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    popup.BorderSizePixel = 0
    popup.ZIndex = 10
    
    local corner = Instance.new("UICorner")
    corner.Parent = popup
    
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
    }
    gradient.Parent = popup
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(0, 15, 255)
    stroke.Parent = popup
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "Save Script"
    title.TextColor3 = Color3.fromRGB(0, 15, 255)
    title.TextSize = 20
    title.Font = Enum.Font.GothamBold
    title.Parent = popup
    
    local nameBox = Instance.new("TextBox")
    nameBox.Size = UDim2.new(0, 260, 0, 30)
    nameBox.Position = UDim2.new(0, 20, 0, 50)
    nameBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    nameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameBox.PlaceholderText = "Enter script name..."
    nameBox.Text = ""
    nameBox.Parent = popup
    
    local nameCorner = Instance.new("UICorner")
    nameCorner.Parent = nameBox
    
    local saveBtn = Instance.new("TextButton")
    saveBtn.Size = UDim2.new(0, 120, 0, 30)
    saveBtn.Position = UDim2.new(0, 30, 0, 100)
    saveBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
    saveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    saveBtn.Text = "Confirm"
    saveBtn.Parent = popup
    
    local saveCorner = Instance.new("UICorner")
    saveCorner.Parent = saveBtn
    
    local cancelBtn = Instance.new("TextButton")
    cancelBtn.Size = UDim2.new(0, 120, 0, 30)
    cancelBtn.Position = UDim2.new(0, 150, 0, 100)
    cancelBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
    cancelBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    cancelBtn.Text = "Cancel"
    cancelBtn.Parent = popup
    
    local cancelCorner = Instance.new("UICorner")
    cancelCorner.Parent = cancelBtn
    
    popup.Parent = Forge["MainFrame_2"]
    
    local function closePopup()
        popup:Destroy()
    end
    
    saveBtn.MouseButton1Click:Connect(function()
        local scriptName = nameBox.Text
        if scriptName and scriptName ~= "" then
            local scriptText = Forge["TextBox_37"].Text
            FavoritesData.scripts[scriptName] = {
                code = scriptText,
                timestamp = os.time()
            }
            saveFavorites()
            updateFavoritesList()
            closePopup()
        end
    end)
    
    cancelBtn.MouseButton1Click:Connect(closePopup)
end

local function updateFavoritesList()
    local favoritesList = Forge["FavoritesList"]
    if not favoritesList then return end
    
    for _, child in pairs(favoritesList:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    local yPosition = 0
    for name, scriptData in pairs(FavoritesData.scripts) do
        local favoriteFrame = Instance.new("Frame")
        favoriteFrame.Name = "Saved_" .. name
        favoriteFrame.Size = UDim2.new(1, -10, 0, 30)
        favoriteFrame.Position = UDim2.new(0, 5, 0, yPosition)
        favoriteFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        favoriteFrame.BorderSizePixel = 0
        
        local corner = Instance.new("UICorner")
        corner.Parent = favoriteFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 320, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = name
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.Parent = favoriteFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "Load"
        loadButton.Size = UDim2.new(0, 24, 0, 24)
        loadButton.Position = UDim2.new(1, -56, 0, 3)
        loadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        loadButton.Text = "<>"
        loadButton.TextSize = 12
        loadButton.Parent = favoriteFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local deleteButton = Instance.new("TextButton")
        deleteButton.Name = "Delete"
        deleteButton.Size = UDim2.new(0, 24, 0, 24)
        deleteButton.Position = UDim2.new(1, -28, 0, 3)
        deleteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        deleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        deleteButton.Text = "🗑️"
        deleteButton.TextSize = 10
        deleteButton.Parent = favoriteFrame
        
        local deleteCorner = Instance.new("UICorner")
        deleteCorner.Parent = deleteButton
        
        loadButton.MouseButton1Click:Connect(function()
            Forge["TextBox_37"].Text = scriptData.code
            switchTab("executor")
        end)
        
        deleteButton.MouseButton1Click:Connect(function()
            FavoritesData.scripts[name] = nil
            saveFavorites()
            updateFavoritesList()
        end)
        
        favoriteFrame.Parent = favoritesList
        yPosition = yPosition + 35
    end
    
    favoritesList.CanvasSize = UDim2.new(0, 0, 0, yPosition)
end

local function searchScripts(query)
    local searchList = Forge["SearchList"]
    if not searchList then return end
    
    for _, child in pairs(searchList:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    searchList.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    local loadingText = Instance.new("TextLabel")
    loadingText.Size = UDim2.new(1, 0, 0, 30)
    loadingText.Position = UDim2.new(0, 0, 0, 0)
    loadingText.BackgroundTransparency = 1
    loadingText.Text = "Searching..."
    loadingText.TextColor3 = Color3.fromRGB(0, 15, 255)
    loadingText.TextSize = 14
    loadingText.Parent = searchList
    
    local url = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(query) .. "&max=10"
    
    local success, result = pcall(function()
        return game:HttpGetAsync(url)
    end)
    
    loadingText:Destroy()
    
    if not success then
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(1, 0, 0, 30)
        errorText.Position = UDim2.new(0, 0, 0, 0)
        errorText.BackgroundTransparency = 1
        errorText.Text = "Failed to search scripts"
        errorText.TextColor3 = Color3.fromRGB(255, 0, 0)
        errorText.TextSize = 14
        errorText.Parent = searchList
        return
    end
    
    local data
    success, data = pcall(function()
        return HttpService:JSONDecode(result)
    end)
    
    if not success or not data.result or not data.result.scripts then
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(1, 0, 0, 30)
        errorText.Position = UDim2.new(0, 0, 0, 0)
        errorText.BackgroundTransparency = 1
        errorText.Text = "No scripts found"
        errorText.TextColor3 = Color3.fromRGB(255, 255, 255)
        errorText.TextSize = 14
        errorText.Parent = searchList
        return
    end
    
    local yPosition = 0
    for _, scriptData in pairs(data.result.scripts) do
        local scriptFrame = Instance.new("Frame")
        scriptFrame.Size = UDim2.new(1, -10, 0, 32)
        scriptFrame.Position = UDim2.new(0, 5, 0, yPosition)
        scriptFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        scriptFrame.BorderSizePixel = 0
        
        local corner = Instance.new("UICorner")
        corner.Parent = scriptFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 350, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = scriptData.title .. " [👁️" .. scriptData.views .. "] [👍" .. (scriptData.likeCount or 0) .. "]"
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
        nameLabel.Parent = scriptFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "Load"
        loadButton.Size = UDim2.new(0, 24, 0, 24)
        loadButton.Position = UDim2.new(1, -56, 0, 4)
        loadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        loadButton.Text = "<>"
        loadButton.TextSize = 12
        loadButton.Parent = scriptFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local favoriteButton = Instance.new("TextButton")
        favoriteButton.Name = "Favorite"
        favoriteButton.Size = UDim2.new(0, 24, 0, 24)
        favoriteButton.Position = UDim2.new(1, -28, 0, 4)
        favoriteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        favoriteButton.TextColor3 = Color3.fromRGB(191, 191, 191)
        favoriteButton.Text = "★"
        favoriteButton.TextSize = 12
        favoriteButton.Parent = scriptFrame
        
        local favoriteCorner = Instance.new("UICorner")
        favoriteCorner.Parent = favoriteButton
        
        loadButton.MouseButton1Click:Connect(function()
            local scriptUrl = "https://scriptblox.com/api/script/raw/" .. scriptData.slug
            
            local success, scriptContent = pcall(function()
                return game:HttpGetAsync(scriptUrl)
            end)
            
            if success then
                Forge["TextBox_37"].Text = scriptContent
                switchTab("executor")
            else
                warn("Failed to load script: " .. scriptData.title)
            end
        end)
        
        favoriteButton.MouseButton1Click:Connect(function()
            local scriptUrl = "https://scriptblox.com/api/script/raw/" .. scriptData.slug
            
            local success, scriptContent = pcall(function()
                return game:HttpGetAsync(scriptUrl)
            end)
            
            if success then
                FavoritesData.scripts[scriptData.title] = {
                    code = scriptContent,
                    timestamp = os.time()
                }
                saveFavorites()
                updateFavoritesList()
                favoriteButton.TextColor3 = Color3.fromRGB(255, 215, 0)
            end
        end)
        
        scriptFrame.Parent = searchList
        yPosition = yPosition + 37
    end
    
    searchList.CanvasSize = UDim2.new(0, 0, 0, yPosition)
end

local function addConsoleMessage(message, messageType)
    local color
    if messageType == Enum.MessageType.MessageOutput then
        color = Color3.fromRGB(255, 255, 255) 
    elseif messageType == Enum.MessageType.MessageWarning then
        color = Color3.fromRGB(255, 255, 0) 
    elseif messageType == Enum.MessageType.MessageError then
        color = Color3.fromRGB(255, 0, 0)
    else
        color = Color3.fromRGB(255, 255, 255) 
    end
    
    table.insert(consoleMessages, {
        text = message,
        color = color,
        timestamp = os.time()
    })
    
    if #consoleMessages > MAX_CONSOLE_MESSAGES then
        table.remove(consoleMessages, 1)
    end
    
    if currentTab == "console" then
        updateConsoleOutput()
    end
end

local function updateConsoleOutput()
    local consoleOutput = Forge["ScrollingFrame_10"]
    if not consoleOutput then return end
    
    for _, child in pairs(consoleOutput:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end
    
    local yPosition = 0
    for i, messageData in ipairs(consoleMessages) do
        local messageLabel = Instance.new("TextLabel")
        messageLabel.Size = UDim2.new(1, -12, 0, 0)
        messageLabel.Position = UDim2.new(0, 6, 0, yPosition)
        messageLabel.BackgroundTransparency = 1
        messageLabel.Text = messageData.text
        messageLabel.TextColor3 = messageData.color
        messageLabel.TextSize = 12
        messageLabel.TextXAlignment = Enum.TextXAlignment.Left
        messageLabel.TextYAlignment = Enum.TextYAlignment.Top
        messageLabel.TextWrapped = true
        messageLabel.AutomaticSize = Enum.AutomaticSize.Y
        
        local textService = game:GetService("TextService")
        local textSize = textService:GetTextSize(messageData.text, 12, Enum.Font.Code, Vector2.new(consoleOutput.AbsoluteSize.X - 20, math.huge))
        messageLabel.Size = UDim2.new(1, -12, 0, textSize.Y + 4)
        
        messageLabel.Parent = consoleOutput
        yPosition = yPosition + textSize.Y + 8
    end
    
    consoleOutput.CanvasSize = UDim2.new(0, 0, 0, yPosition)
    consoleOutput.CanvasPosition = Vector2.new(0, consoleOutput.CanvasSize.Y.Offset)
end

LogService.MessageOut:Connect(function(message, messageType)
    addConsoleMessage(message, messageType)
end)

Forge["Exe_2d"].MouseButton1Click:Connect(function()
    local scriptText = Forge["TextBox_37"].Text
    if scriptText and scriptText ~= "" then
        local success, error = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            warn("Execution error: " .. error)
        end
    end
end)

Forge["Clr_33"].MouseButton1Click:Connect(function()
    Forge["TextBox_37"].Text = ""
end)

Forge["Save_f"].MouseButton1Click:Connect(function()
    local scriptText = Forge["TextBox_37"].Text
    if scriptText and scriptText ~= "" then
        createSavePopup()
    end
end)

Forge["Paste_3a"].MouseButton1Click:Connect(function()
    Forge["TextBox_37"].Text = Forge["TextBox_37"].Text .. " "
end)

Forge["Exe_Tab_27"].MouseButton1Click:Connect(function()
    switchTab("executor")
end)

Forge["Search_Tab_1a"].MouseButton1Click:Connect(function()
    switchTab("search")
end)

Forge["Fav_Tab_1f"].MouseButton1Click:Connect(function()
    switchTab("favorites")
end)

Forge["F9_Tab_15"].MouseButton1Click:Connect(function()
    switchTab("console")
end)

Forge["SearchBox"].FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local query = Forge["SearchBox"].Text
        if query and query ~= "" then
            searchScripts(query)
        end
    end
end)

local minimized = false
Forge["Hide_2e"].MouseButton1Click:Connect(function()
    minimized = true
    Forge["MainFrame_2"].Visible = false
    Forge["Show_2"].Visible = true
end)

Forge["TextButton_7"].MouseButton1Click:Connect(function()
    minimized = false
    Forge["MainFrame_2"].Visible = true
    Forge["Show_2"].Visible = false
end)

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

dragify(Forge["Show_2"])

local dragging = false
local dragInput2, dragStart2, startPos2

local function update2(input)
    local delta = input.Position - dragStart2
    Forge["MainFrame_2"].Position = UDim2.new(startPos2.X.Scale, startPos2.X.Offset + delta.X, startPos2.Y.Scale, startPos2.Y.Offset + delta.Y)
end

Forge["Title_31"].InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart2 = input.Position
        startPos2 = Forge["MainFrame_2"].Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Forge["Title_31"].InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput2 = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput2 and dragging then
        update2(input)
    end
end)

updateStats()
table.insert(statsConnections, RunService.RenderStepped:Connect(updateStats))
updateFavoritesList()
switchTab("executor")

addConsoleMessage("Forge Executor initialized successfully!", Enum.MessageType.MessageOutput)
addConsoleMessage("Ready to execute scripts!", Enum.MessageType.MessageOutput)

return Forge["ScreenGui_1"], require