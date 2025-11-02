local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

local player = Players.LocalPlayer
local Forge = {}

Forge["FG_old"] = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
Forge["FG_old"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
Forge["FG_old"]["ResetOnSpawn"] = false
CollectionService:AddTag(Forge["FG_old"], "old")

Forge["Show_2"] = Instance.new("Frame", Forge["FG_old"])
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

Forge["MainFrame_2"] = Instance.new("Frame", Forge["FG_old"])
Forge["MainFrame_2"]["BorderSizePixel"] = 0
Forge["MainFrame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["MainFrame_2"]["Size"] = UDim2.new(0.56048, 0, 0.83185, 0)
Forge["MainFrame_2"]["Position"] = UDim2.new(0.25498, 0, 0.00566, 0)
Forge["MainFrame_2"]["Name"] = "MainFrame"

Forge["Stats_3"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["Stats_3"]["BorderSizePixel"] = 0
Forge["Stats_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Stats_3"]["Size"] = UDim2.new(0.34764, 0, 0.92517, 0)
Forge["Stats_3"]["Position"] = UDim2.new(-0.35622, 0, 0.08163, 0)
Forge["Stats_3"]["Name"] = "Stats"

Forge["UICorner_4"] = Instance.new("UICorner", Forge["Stats_3"])

Forge["StatsLabel_5"] = Instance.new("TextLabel", Forge["Stats_3"])
Forge["StatsLabel_5"]["TextWrapped"] = true
Forge["StatsLabel_5"]["BorderSizePixel"] = 0
Forge["StatsLabel_5"]["TextSize"] = 14
Forge["StatsLabel_5"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["StatsLabel_5"]["TextScaled"] = true
Forge["StatsLabel_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["StatsLabel_5"]["TextColor3"] = Color3.fromRGB(0, 33, 255)
Forge["StatsLabel_5"]["BackgroundTransparency"] = 1
Forge["StatsLabel_5"]["RichText"] = true
Forge["StatsLabel_5"]["Size"] = UDim2.new(0.97531, 0, 0.98529, 0)
Forge["StatsLabel_5"]["Text"] = "FPS: Calculating...\nPing: Calculating...\nUsername: Loading...\nUserID: Loading...\nGame: Loading...\nGameID: Loading..."
Forge["StatsLabel_5"]["Name"] = "StatsLabel"
Forge["StatsLabel_5"]["Position"] = UDim2.new(0.01235, 0, 0.00735, 0)

Forge["StatsTitle_6"] = Instance.new("TextLabel", Forge["StatsLabel_5"])
Forge["StatsTitle_6"]["BorderSizePixel"] = 0
Forge["StatsTitle_6"]["TextSize"] = 40
Forge["StatsTitle_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["StatsTitle_6"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge["StatsTitle_6"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["StatsTitle_6"]["BackgroundTransparency"] = 1
Forge["StatsTitle_6"]["Size"] = UDim2.new(1.02532, 0, 0.13433, 0)
Forge["StatsTitle_6"]["Text"] = "Statistics"
Forge["StatsTitle_6"]["Name"] = "StatsTitle"
Forge["StatsTitle_6"]["Position"] = UDim2.new(-0.01266, 0, -0.1194, 0)

Forge["UIGradient_7"] = Instance.new("UIGradient", Forge["StatsTitle_6"])
Forge["UIGradient_7"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UIGradient2_8"] = Instance.new("UIGradient", Forge["StatsLabel_5"])
Forge["UIGradient2_8"]["Name"] = "UIGradient2"
Forge["UIGradient2_8"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UICorner_9"] = Instance.new("UICorner", Forge["StatsLabel_5"])

Forge["UIGradient_a"] = Instance.new("UIGradient", Forge["StatsLabel_5"])
Forge["UIGradient_a"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UIGradient_b"] = Instance.new("UIGradient", Forge["Stats_3"])
Forge["UIGradient_b"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["UIStroke_c"] = Instance.new("UIStroke", Forge["Stats_3"])
Forge["UIStroke_c"]["Color"] = Color3.fromRGB(0, 15, 255)

Forge["UIGradient_d"] = Instance.new("UIGradient", Forge["UIStroke_c"])
Forge["UIGradient_d"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["Save"] = Instance.new("TextButton", Forge["MainFrame_2"])
Forge["Save"]["TextWrapped"] = true
Forge["Save"]["BorderSizePixel"] = 0
Forge["Save"]["TextSize"] = 12
Forge["Save"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Save"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Save"]["BackgroundTransparency"] = 0.7
Forge["Save"]["Size"] = UDim2.new(0.17167, 0, 0.08844, 0)
Forge["Save"]["Text"] = "Save"
Forge["Save"]["Name"] = "SaveBtn"
Forge["Save"]["Position"] = UDim2.new(0.37768, 0, 0.89796, 0)

Forge["UICorner_f"] = Instance.new("UICorner", Forge["Save"])

Forge["UIStroke_10"] = Instance.new("UIStroke", Forge["MainFrame_2"])
Forge["UIStroke_10"]["Color"] = Color3.fromRGB(0, 15, 255)

Forge["UIGradient_11"] = Instance.new("UIGradient", Forge["UIStroke_10"])
Forge["UIGradient_11"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}

Forge["UICorner_12"] = Instance.new("UICorner", Forge["MainFrame_2"])

Forge["Clr_13"] = Instance.new("TextButton", Forge["MainFrame_2"])
Forge["Clr_13"]["TextWrapped"] = true
Forge["Clr_13"]["BorderSizePixel"] = 0
Forge["Clr_13"]["TextSize"] = 12
Forge["Clr_13"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Clr_13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Clr_13"]["BackgroundTransparency"] = 0.7
Forge["Clr_13"]["Size"] = UDim2.new(0.17167, 0, 0.08844, 0)
Forge["Clr_13"]["Text"] = "Clear"
Forge["Clr_13"]["Name"] = "ClearBtn"
Forge["Clr_13"]["Position"] = UDim2.new(0.19742, 0, 0.89796, 0)

Forge["UICorner_14"] = Instance.new("UICorner", Forge["Clr_13"])

Forge["UIGradient_15"] = Instance.new("UIGradient", Forge["MainFrame_2"])
Forge["UIGradient_15"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["Exe_16"] = Instance.new("TextButton", Forge["MainFrame_2"])
Forge["Exe_16"]["TextWrapped"] = true
Forge["Exe_16"]["BorderSizePixel"] = 0
Forge["Exe_16"]["TextSize"] = 12
Forge["Exe_16"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Exe_16"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["Exe_16"]["BackgroundTransparency"] = 0.7
Forge["Exe_16"]["Size"] = UDim2.new(0.17167, 0, 0.08844, 0)
Forge["Exe_16"]["Text"] = "Execute"
Forge["Exe_16"]["Name"] = "ExecuteBtn"
Forge["Exe_16"]["Position"] = UDim2.new(0.02146, 0, 0.89796, 0)

Forge["UICorner_17"] = Instance.new("UICorner", Forge["Exe_16"])

Forge["Title_18"] = Instance.new("TextLabel", Forge["MainFrame_2"])
Forge["Title_18"]["BorderSizePixel"] = 0
Forge["Title_18"]["TextSize"] = 48
Forge["Title_18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Title_18"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge["Title_18"]["TextColor3"] = Color3.fromRGB(0, 15, 255)
Forge["Title_18"]["BackgroundTransparency"] = 1
Forge["Title_18"]["Size"] = UDim2.new(1, 0, 0.19048, 0)
Forge["Title_18"]["Text"] = "Forge executor"
Forge["Title_18"]["Name"] = "Title"
Forge["Title_18"]["Position"] = UDim2.new(0, 0, -0.14286, 0)

Forge["TextBox_19"] = Instance.new("TextBox", Forge["MainFrame_2"])
Forge["TextBox_19"]["CursorPosition"] = -1
Forge["TextBox_19"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["TextBox_19"]["BorderSizePixel"] = 0
Forge["TextBox_19"]["TextWrapped"] = true
Forge["TextBox_19"]["TextSize"] = 18
Forge["TextBox_19"]["TextColor3"] = Color3.fromRGB(104, 255, 0)
Forge["TextBox_19"]["TextYAlignment"] = Enum.TextYAlignment.Top
Forge["TextBox_19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["TextBox_19"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge["TextBox_19"]["PlaceholderText"] = "Script here..."
Forge["TextBox_19"]["Size"] = UDim2.new(0.96137, 0, 0.85714, 0)
Forge["TextBox_19"]["Position"] = UDim2.new(0.01717, 0, 0.02721, 0)
Forge["TextBox_19"]["Text"] = ""
Forge["TextBox_19"]["BackgroundTransparency"] = 0.7

Forge["Sidebar_1a"] = Instance.new("Frame", Forge["MainFrame_2"])
Forge["Sidebar_1a"]["BorderSizePixel"] = 0
Forge["Sidebar_1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Sidebar_1a"]["Size"] = UDim2.new(0.13305, 0, 1.0068, 0)
Forge["Sidebar_1a"]["Position"] = UDim2.new(1.00858, 0, -0.0068, 0)
Forge["Sidebar_1a"]["Name"] = "Sidebar"

Forge["Console_1b"] = Instance.new("TextButton", Forge["Sidebar_1a"])
Forge["Console_1b"]["TextWrapped"] = true
Forge["Console_1b"]["Active"] = false
Forge["Console_1b"]["BorderSizePixel"] = 0
Forge["Console_1b"]["TextScaled"] = true
Forge["Console_1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Console_1b"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50)
Forge["Console_1b"]["Size"] = UDim2.new(0.87097, 0, 0.18243, 0)
Forge["Console_1b"]["Text"] = "F9"
Forge["Console_1b"]["Name"] = "Console"
Forge["Console_1b"]["Position"] = UDim2.new(0.06452, 0, 0.60135, 0)

Forge["UICorner_1c"] = Instance.new("UICorner", Forge["Console_1b"])

Forge["UICorner_1d"] = Instance.new("UICorner", Forge["Sidebar_1a"])

Forge["Executor_1e"] = Instance.new("TextButton", Forge["Sidebar_1a"])
Forge["Executor_1e"]["TextWrapped"] = true
Forge["Executor_1e"]["BorderSizePixel"] = 0
Forge["Executor_1e"]["TextScaled"] = true
Forge["Executor_1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Executor_1e"]["BackgroundColor3"] = Color3.fromRGB(80, 80, 80)
Forge["Executor_1e"]["Size"] = UDim2.new(0.87097, 0, 0.18243, 0)
Forge["Executor_1e"]["Text"] = "▷"
Forge["Executor_1e"]["Name"] = "Executor"
Forge["Executor_1e"]["Position"] = UDim2.new(0.06452, 0, 0.01351, 0)

Forge["UICorner_1f"] = Instance.new("UICorner", Forge["Executor_1e"])

Forge["Minimize_20"] = Instance.new("TextButton", Forge["Sidebar_1a"])
Forge["Minimize_20"]["TextWrapped"] = true
Forge["Minimize_20"]["Active"] = false
Forge["Minimize_20"]["BorderSizePixel"] = 0
Forge["Minimize_20"]["TextScaled"] = true
Forge["Minimize_20"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Minimize_20"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50)
Forge["Minimize_20"]["Size"] = UDim2.new(0.87097, 0, 0.18243, 0)
Forge["Minimize_20"]["Text"] = "–"
Forge["Minimize_20"]["Name"] = "Minimize"
Forge["Minimize_20"]["Position"] = UDim2.new(0.06452, 0, 0.7973, 0)

Forge["UICorner_21"] = Instance.new("UICorner", Forge["Minimize_20"])

Forge["Favorites_22"] = Instance.new("TextButton", Forge["Sidebar_1a"])
Forge["Favorites_22"]["TextWrapped"] = true
Forge["Favorites_22"]["Active"] = false
Forge["Favorites_22"]["BorderSizePixel"] = 0
Forge["Favorites_22"]["TextScaled"] = true
Forge["Favorites_22"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Favorites_22"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50)
Forge["Favorites_22"]["Size"] = UDim2.new(0.87097, 0, 0.18243, 0)
Forge["Favorites_22"]["Text"] = "★"
Forge["Favorites_22"]["Name"] = "Favorites"
Forge["Favorites_22"]["Position"] = UDim2.new(0.06452, 0, 0.20946, 0)

Forge["UICorner_23"] = Instance.new("UICorner", Forge["Favorites_22"])

Forge["Search_24"] = Instance.new("TextButton", Forge["Sidebar_1a"])
Forge["Search_24"]["TextWrapped"] = true
Forge["Search_24"]["BorderSizePixel"] = 0
Forge["Search_24"]["TextScaled"] = true
Forge["Search_24"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["Search_24"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50)
Forge["Search_24"]["Size"] = UDim2.new(0.87097, 0, 0.18243, 0)
Forge["Search_24"]["Text"] = "🔍"
Forge["Search_24"]["Name"] = "Search"
Forge["Search_24"]["Position"] = UDim2.new(0.06452, 0, 0.40541, 0)

Forge["UICorner_25"] = Instance.new("UICorner", Forge["Search_24"])

Forge["UIGradient_26"] = Instance.new("UIGradient", Forge["Sidebar_1a"])
Forge["UIGradient_26"]["Color"] = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}

Forge["UIStroke_27"] = Instance.new("UIStroke", Forge["Sidebar_1a"])
Forge["UIStroke_27"]["Color"] = Color3.fromRGB(0, 15, 255)

Forge["UIGradient_28"] = Instance.new("UIGradient", Forge["UIStroke_27"])
Forge["UIGradient_28"]["Color"] = ColorSequence.new{
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

Forge["FavoritesList"] = Instance.new("ScrollingFrame", Forge["FavoritesContent"])
Forge["FavoritesList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["FavoritesList"]["BackgroundTransparency"] = 1
Forge["FavoritesList"]["Size"] = UDim2.new(1, -12, 1, -60)
Forge["FavoritesList"]["Position"] = UDim2.new(0, 6, 0, 6)
Forge["FavoritesList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Forge["FavoritesList"]["ScrollBarThickness"] = 8
Forge["FavoritesList"]["Name"] = "FavoritesList"

Forge["SearchBox"] = Instance.new("TextBox", Forge["SearchContent"])
Forge["SearchBox"]["CursorPosition"] = -1
Forge["SearchBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
Forge["SearchBox"]["BorderSizePixel"] = 0
Forge["SearchBox"]["TextSize"] = 10
Forge["SearchBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
Forge["SearchBox"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
Forge["SearchBox"]["PlaceholderText"] = "Search scripts (Powered by ScriptBlox.com)"
Forge["SearchBox"]["Size"] = UDim2.new(0.97425, 0, 0.10204, 0)
Forge["SearchBox"]["Position"] = UDim2.new(0.01288, 0, 0.02041, 0)
Forge["SearchBox"]["Text"] = ""
Forge["SearchBox"]["BackgroundTransparency"] = 0.7

Forge["UICorner_29"] = Instance.new("UICorner", Forge["SearchBox"])

Forge["SearchList"] = Instance.new("ScrollingFrame", Forge["SearchContent"])
Forge["SearchList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Forge["SearchList"]["BackgroundTransparency"] = 1
Forge["SearchList"]["Size"] = UDim2.new(1, -12, 1, -42)
Forge["SearchList"]["Position"] = UDim2.new(0, 6, 0, 42)
Forge["SearchList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Forge["SearchList"]["ScrollBarThickness"] = 8
Forge["SearchList"]["Name"] = "SearchList"

local FavoritesData = {scripts = {}}
local DATA_STORE_KEY = "ForgeExecutorFavorites"

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
    Forge["TextBox_19"].Visible = (tabName == "executor")
    Forge["Exe_16"].Visible = (tabName == "executor")
    Forge["Clr_13"].Visible = (tabName == "executor")
    Forge["Save"].Visible = (tabName == "executor")
    
    local executorBtn = Forge["Executor_1e"]
    local favoritesBtn = Forge["Favorites_22"]
    local searchBtn = Forge["Search_24"]
    
    if executorBtn then
        executorBtn.BackgroundColor3 = (tabName == "executor") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(50, 50, 50)
    end
    if favoritesBtn then
        favoritesBtn.BackgroundColor3 = (tabName == "favorites") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(50, 50, 50)
    end
    if searchBtn then
        searchBtn.BackgroundColor3 = (tabName == "search") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(50, 50, 50)
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
            local scriptText = Forge["TextBox_19"].Text
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
        favoriteFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        favoriteFrame.BackgroundTransparency = 0.5
        
        local corner = Instance.new("UICorner")
        corner.Parent = favoriteFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 320, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = name
        nameLabel.TextColor3 = Color3.fromRGB(0, 15, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.Parent = favoriteFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "LoadFav"
        loadButton.Size = UDim2.new(0, 26, 0, 26)
        loadButton.Position = UDim2.new(1, -60, 0, 2)
        loadButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        loadButton.BackgroundTransparency = 0.5
        loadButton.TextColor3 = Color3.fromRGB(0, 15, 255)
        loadButton.Text = "▷"
        loadButton.TextSize = 12
        loadButton.Parent = favoriteFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local deleteButton = Instance.new("TextButton")
        deleteButton.Name = "DeleteFav"
        deleteButton.Size = UDim2.new(0, 26, 0, 26)
        deleteButton.Position = UDim2.new(1, -30, 0, 2)
        deleteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        deleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        deleteButton.Text = "🗑️"
        deleteButton.TextSize = 12
        deleteButton.Parent = favoriteFrame
        
        local deleteCorner = Instance.new("UICorner")
        deleteCorner.Parent = deleteButton
        
        loadButton.MouseButton1Click:Connect(function()
            Forge["TextBox_19"].Text = scriptData.code
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
        scriptFrame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
        
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
        loadButton.Text = "▷"
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
                Forge["TextBox_19"].Text = scriptContent
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

Forge["Exe_16"].MouseButton1Click:Connect(function()
    local scriptText = Forge["TextBox_19"].Text
    if scriptText and scriptText ~= "" then
        local success, error = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            warn("Execution error: " .. error)
        end
    end
end)

Forge["Clr_13"].MouseButton1Click:Connect(function()
    Forge["TextBox_19"].Text = ""
end)

Forge["Save"].MouseButton1Click:Connect(function()
    local scriptText = Forge["TextBox_19"].Text
    if scriptText and scriptText ~= "" then
        createSavePopup()
    end
end)

Forge["Executor_1e"].MouseButton1Click:Connect(function()
    switchTab("executor")
end)

Forge["Favorites_22"].MouseButton1Click:Connect(function()
    switchTab("favorites")
    updateFavoritesList()
end)

Forge["Search_24"].MouseButton1Click:Connect(function()
    switchTab("search")
end)

Forge["SearchBox"].FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local query = Forge["SearchBox"].Text
        if query and query ~= "" then
            searchScripts(query)
        end
    end
end)

Forge["Console_1b"].MouseButton1Click:Connect(function()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
    task.wait()
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.F9 then
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
        task.wait()
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
    end
end)

local minimized = false
Forge["Minimize_20"].MouseButton1Click:Connect(function()
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

Forge["Title_18"].InputBegan:Connect(function(input)
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

Forge["Title_18"].InputChanged:Connect(function(input)
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

return Forge["FG_old"], require