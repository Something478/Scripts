local AzureUI = {}

AzureUI["MainGui"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
AzureUI["MainGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
AzureUI["MainGui"]["Name"] = "AzureExecutor"

AzureUI["MainFrame"] = Instance.new("Frame", AzureUI["MainGui"])
AzureUI["MainFrame"]["BorderSizePixel"] = 0
AzureUI["MainFrame"]["BackgroundColor3"] = Color3.fromRGB(32, 0, 57)
AzureUI["MainFrame"]["Size"] = UDim2.new(0, 410, 0, 290)
AzureUI["MainFrame"]["Position"] = UDim2.new(0, 200, 0, 4)
AzureUI["MainFrame"]["Visible"] = false

AzureUI["MainCorner"] = Instance.new("UICorner", AzureUI["MainFrame"])

AzureUI["Title"] = Instance.new("TextLabel", AzureUI["MainFrame"])
AzureUI["Title"]["TextWrapped"] = true
AzureUI["Title"]["BorderSizePixel"] = 0
AzureUI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left
AzureUI["Title"]["TextScaled"] = true
AzureUI["Title"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["Title"]["FontFace"] = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AzureUI["Title"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["Title"]["Size"] = UDim2.new(0, 410, 0, 40)
AzureUI["Title"]["Text"] = "Azure Executor"
AzureUI["Title"]["Name"] = "Title"

AzureUI["TitleCorner"] = Instance.new("UICorner", AzureUI["Title"])

AzureUI["HeaderLine"] = Instance.new("Frame", AzureUI["MainFrame"])
AzureUI["HeaderLine"]["BorderSizePixel"] = 0
AzureUI["HeaderLine"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["HeaderLine"]["Size"] = UDim2.new(0, 410, 0, 6)
AzureUI["HeaderLine"]["Position"] = UDim2.new(0, 0, 0, 36)
AzureUI["HeaderLine"]["Name"] = "HeaderLine"

AzureUI["CloseButton"] = Instance.new("TextButton", AzureUI["MainFrame"])
AzureUI["CloseButton"]["TextWrapped"] = true
AzureUI["CloseButton"]["BorderSizePixel"] = 0
AzureUI["CloseButton"]["TextScaled"] = true
AzureUI["CloseButton"]["TextColor3"] = Color3.fromRGB(255, 122, 122)
AzureUI["CloseButton"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
AzureUI["CloseButton"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AzureUI["CloseButton"]["ZIndex"] = 10
AzureUI["CloseButton"]["BackgroundTransparency"] = 1
AzureUI["CloseButton"]["Size"] = UDim2.new(0, 40, 0, 40)
AzureUI["CloseButton"]["Text"] = "X"
AzureUI["CloseButton"]["Name"] = "CloseButton"
AzureUI["CloseButton"]["Position"] = UDim2.new(0, 370, 0, 0)

AzureUI["CloseCorner"] = Instance.new("UICorner", AzureUI["CloseButton"])

AzureUI["HideButton"] = Instance.new("TextButton", AzureUI["MainFrame"])
AzureUI["HideButton"]["TextWrapped"] = true
AzureUI["HideButton"]["BorderSizePixel"] = 0
AzureUI["HideButton"]["TextScaled"] = true
AzureUI["HideButton"]["TextColor3"] = Color3.fromRGB(130, 217, 255)
AzureUI["HideButton"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
AzureUI["HideButton"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AzureUI["HideButton"]["ZIndex"] = 10
AzureUI["HideButton"]["BackgroundTransparency"] = 1
AzureUI["HideButton"]["Size"] = UDim2.new(0, 40, 0, 40)
AzureUI["HideButton"]["Text"] = "–"
AzureUI["HideButton"]["Name"] = "HideButton"
AzureUI["HideButton"]["Position"] = UDim2.new(0, 330, 0, 0)

AzureUI["HideCorner"] = Instance.new("UICorner", AzureUI["HideButton"])

AzureUI["SidebarBG"] = Instance.new("Frame", AzureUI["MainFrame"]);
AzureUI["SidebarBG"]["BorderSizePixel"] = 0;
AzureUI["SidebarBG"]["BackgroundColor3"] = Color3.fromRGB(32, 0, 57);
AzureUI["SidebarBG"]["Size"] = UDim2.new(0, 68, 0, 170);
AzureUI["SidebarBG"]["Position"] = UDim2.new(0, 400, 0, 42);
AzureUI["SidebarBG"]["Name"] = [[SidebarBG]];


AzureUI["SidebarCorner1"] = Instance.new("UICorner", AzureUI["SidebarBG"]);



AzureUI["Sidebar"] = Instance.new("Frame", AzureUI["SidebarBG"]);
AzureUI["Sidebar"]["ZIndex"] = 5;
AzureUI["Sidebar"]["BorderSizePixel"] = 0;
AzureUI["Sidebar"]["BackgroundColor3"] = Color3.fromRGB(32, 0, 57);
AzureUI["Sidebar"]["Size"] = UDim2.new(0, 58, 0, 172);
AzureUI["Sidebar"]["Position"] = UDim2.new(0, 10, 0, 0);
AzureUI["Sidebar"]["Name"] = [[Sidebar]];


AzureUI["SidebarCorner2"] = Instance.new("UICorner", AzureUI["Sidebar"]);



AzureUI["HomeTab"] = Instance.new("TextButton", AzureUI["Sidebar"]);
AzureUI["HomeTab"]["TextWrapped"] = true;
AzureUI["HomeTab"]["BorderSizePixel"] = 0;
AzureUI["HomeTab"]["TextScaled"] = true;
AzureUI["HomeTab"]["TextColor3"] = Color3.fromRGB(142, 0, 255);
AzureUI["HomeTab"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87);
AzureUI["HomeTab"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
AzureUI["HomeTab"]["Size"] = UDim2.new(0, 50, 0, 50);
AzureUI["HomeTab"]["Text"] = [[i]];
AzureUI["HomeTab"]["Name"] = [[HomeTab]];
AzureUI["HomeTab"]["Position"] = UDim2.new(0, 4, 0, 4);


AzureUI["HomeTabCorner"] = Instance.new("UICorner", AzureUI["HomeTab"]);



AzureUI["HomeTabStroke"] = Instance.new("UIStroke", AzureUI["HomeTab"]);
AzureUI["HomeTabStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
AzureUI["HomeTabStroke"]["Color"] = Color3.fromRGB(142, 0, 255);


AzureUI["SearchTab"] = Instance.new("TextButton", AzureUI["Sidebar"]);
AzureUI["SearchTab"]["TextWrapped"] = true;
AzureUI["SearchTab"]["BorderSizePixel"] = 0;
AzureUI["SearchTab"]["TextScaled"] = true;
AzureUI["SearchTab"]["TextColor3"] = Color3.fromRGB(142, 0, 255);
AzureUI["SearchTab"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87);
AzureUI["SearchTab"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
AzureUI["SearchTab"]["Size"] = UDim2.new(0, 50, 0, 50);
AzureUI["SearchTab"]["Text"] = [[🔎]];
AzureUI["SearchTab"]["Name"] = [[SearchTab]];
AzureUI["SearchTab"]["Position"] = UDim2.new(0, 4, 0, 116);


AzureUI["SearchTabCorner"] = Instance.new("UICorner", AzureUI["SearchTab"]);



AzureUI["SearchTabStroke"] = Instance.new("UIStroke", AzureUI["SearchTab"]);
AzureUI["SearchTabStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
AzureUI["SearchTabStroke"]["Color"] = Color3.fromRGB(142, 0, 255);


AzureUI["ExeTab"] = Instance.new("TextButton", AzureUI["Sidebar"]);
AzureUI["ExeTab"]["TextWrapped"] = true;
AzureUI["ExeTab"]["BorderSizePixel"] = 0;
AzureUI["ExeTab"]["TextScaled"] = true;
AzureUI["ExeTab"]["TextColor3"] = Color3.fromRGB(142, 0, 255);
AzureUI["ExeTab"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87);
AzureUI["ExeTab"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
AzureUI["ExeTab"]["Size"] = UDim2.new(0, 50, 0, 50);
AzureUI["ExeTab"]["Text"] = [[▶]];
AzureUI["ExeTab"]["Name"] = [[ExeTab]];
AzureUI["ExeTab"]["Position"] = UDim2.new(0, 4, 0, 60);


AzureUI["ExeTabCorner"] = Instance.new("UICorner", AzureUI["ExeTab"]);



AzureUI["ExeTabStroke"] = Instance.new("UIStroke", AzureUI["ExeTab"]);
AzureUI["ExeTabStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
AzureUI["ExeTabStroke"]["Color"] = Color3.fromRGB(142, 0, 255);

AzureUI["HomeContent"] = Instance.new("Frame", AzureUI["MainFrame"])
AzureUI["HomeContent"]["BorderSizePixel"] = 0
AzureUI["HomeContent"]["BackgroundColor3"] = Color3.fromRGB(32, 0, 57)
AzureUI["HomeContent"]["Size"] = UDim2.new(0, 398, 0, 198)
AzureUI["HomeContent"]["Position"] = UDim2.new(0, 6, 0, 50)
AzureUI["HomeContent"]["Name"] = "HomeContent"
AzureUI["HomeContent"]["Visible"] = true

AzureUI["WelcomeLabel"] = Instance.new("TextLabel", AzureUI["HomeContent"])
AzureUI["WelcomeLabel"]["TextWrapped"] = true
AzureUI["WelcomeLabel"]["BorderSizePixel"] = 0
AzureUI["WelcomeLabel"]["TextYAlignment"] = Enum.TextYAlignment.Top
AzureUI["WelcomeLabel"]["TextScaled"] = true
AzureUI["WelcomeLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
AzureUI["WelcomeLabel"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AzureUI["WelcomeLabel"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["WelcomeLabel"]["BackgroundTransparency"] = 1
AzureUI["WelcomeLabel"]["Size"] = UDim2.new(0, 380, 0, 30)
AzureUI["WelcomeLabel"]["Text"] = "Welcome to Azure, " .. game.Players.LocalPlayer.Name .. "!"
AzureUI["WelcomeLabel"]["Name"] = "WelcomeLabel"
AzureUI["WelcomeLabel"]["Position"] = UDim2.new(0, 8, 0, 8)

AzureUI["PlayerInfo"] = Instance.new("TextLabel", AzureUI["HomeContent"])
AzureUI["PlayerInfo"]["TextWrapped"] = true
AzureUI["PlayerInfo"]["BorderSizePixel"] = 0
AzureUI["PlayerInfo"]["TextSize"] = 14
AzureUI["PlayerInfo"]["TextXAlignment"] = Enum.TextXAlignment.Left
AzureUI["PlayerInfo"]["TextYAlignment"] = Enum.TextYAlignment.Top
AzureUI["PlayerInfo"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
AzureUI["PlayerInfo"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
AzureUI["PlayerInfo"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["PlayerInfo"]["BackgroundTransparency"] = 1
AzureUI["PlayerInfo"]["Size"] = UDim2.new(0, 380, 0, 150)
AzureUI["PlayerInfo"]["Text"] = "Loading..."
AzureUI["PlayerInfo"]["Position"] = UDim2.new(0, 8, 0, 45)

AzureUI["FunnyLabel"] = Instance.new("TextLabel", AzureUI["HomeContent"])
AzureUI["FunnyLabel"]["TextWrapped"] = true
AzureUI["FunnyLabel"]["BorderSizePixel"] = 0
AzureUI["FunnyLabel"]["TextSize"] = 14
AzureUI["FunnyLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
AzureUI["FunnyLabel"]["TextYAlignment"] = Enum.TextYAlignment.Bottom
AzureUI["FunnyLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
AzureUI["FunnyLabel"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
AzureUI["FunnyLabel"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["FunnyLabel"]["BackgroundTransparency"] = 1
AzureUI["FunnyLabel"]["Size"] = UDim2.new(0, 380, 0, 150)
AzureUI["FunnyLabel"]["Text"] = "Yes we're totally selling your IP to the Chinese government... jk, we're too lazy for that 💀"
AzureUI["FunnyLabel"]["Position"] = UDim2.new(0, 8, 0, 72)

AzureUI["ExecutorContent"] = Instance.new("Frame", AzureUI["MainFrame"])
AzureUI["ExecutorContent"]["BorderSizePixel"] = 0
AzureUI["ExecutorContent"]["BackgroundColor3"] = Color3.fromRGB(32, 0, 57)
AzureUI["ExecutorContent"]["Size"] = UDim2.new(0, 398, 0, 198)
AzureUI["ExecutorContent"]["Position"] = UDim2.new(0, 6, 0, 50)
AzureUI["ExecutorContent"]["Name"] = "ExecutorContent"
AzureUI["ExecutorContent"]["Visible"] = false

AzureUI["ScriptBox"] = Instance.new("TextBox", AzureUI["ExecutorContent"])
AzureUI["ScriptBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
AzureUI["ScriptBox"]["BorderSizePixel"] = 0
AzureUI["ScriptBox"]["TextSize"] = 14
AzureUI["ScriptBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
AzureUI["ScriptBox"]["TextYAlignment"] = Enum.TextYAlignment.Top
AzureUI["ScriptBox"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["ScriptBox"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AzureUI["ScriptBox"]["MultiLine"] = true
AzureUI["ScriptBox"]["PlaceholderText"] = "Script here..."
AzureUI["ScriptBox"]["Size"] = UDim2.new(0, 386, 0, 187)
AzureUI["ScriptBox"]["Position"] = UDim2.new(0, 6, 0, 5)
AzureUI["ScriptBox"]["Text"] = ""
AzureUI["ScriptBox"]["TextWrapped"] = true

AzureUI["ExecuteButton"] = Instance.new("TextButton", AzureUI["ExecutorContent"])
AzureUI["ExecuteButton"]["TextWrapped"] = true
AzureUI["ExecuteButton"]["BorderSizePixel"] = 0
AzureUI["ExecuteButton"]["TextScaled"] = true
AzureUI["ExecuteButton"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["ExecuteButton"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["ExecuteButton"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AzureUI["ExecuteButton"]["Size"] = UDim2.new(0, 100, 0, 28)
AzureUI["ExecuteButton"]["Position"] = UDim2.new(0, 6, 0, 200)
AzureUI["ExecuteButton"]["Text"] = "Execute"
AzureUI["ExecuteButton"]["Name"] = "ExecuteButton"

AzureUI["ExecuteCorner"] = Instance.new("UICorner", AzureUI["ExecuteButton"])

AzureUI["ExecuteStroke"] = Instance.new("UIStroke", AzureUI["ExecuteButton"])
AzureUI["ExecuteStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
AzureUI["ExecuteStroke"]["Color"] = Color3.fromRGB(142, 0, 255)

AzureUI["ClearButton"] = Instance.new("TextButton", AzureUI["ExecutorContent"])
AzureUI["ClearButton"]["TextWrapped"] = true
AzureUI["ClearButton"]["BorderSizePixel"] = 0
AzureUI["ClearButton"]["TextScaled"] = true
AzureUI["ClearButton"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["ClearButton"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["ClearButton"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AzureUI["ClearButton"]["Size"] = UDim2.new(0, 100, 0, 28)
AzureUI["ClearButton"]["Text"] = "Clear"
AzureUI["ClearButton"]["Name"] = "ClearButton"
AzureUI["ClearButton"]["Position"] = UDim2.new(0, 112, 0, 200)

AzureUI["ClearCorner"] = Instance.new("UICorner", AzureUI["ClearButton"])

AzureUI["ClearStroke"] = Instance.new("UIStroke", AzureUI["ClearButton"])
AzureUI["ClearStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
AzureUI["ClearStroke"]["Color"] = Color3.fromRGB(142, 0, 255)

AzureUI["CopyButton"] = Instance.new("TextButton", AzureUI["ExecutorContent"])
AzureUI["CopyButton"]["TextWrapped"] = true
AzureUI["CopyButton"]["BorderSizePixel"] = 0
AzureUI["CopyButton"]["TextScaled"] = true
AzureUI["CopyButton"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["CopyButton"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["CopyButton"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AzureUI["CopyButton"]["Size"] = UDim2.new(0, 100, 0, 28)
AzureUI["CopyButton"]["Text"] = "Copy"
AzureUI["CopyButton"]["Name"] = "CopyButton"
AzureUI["CopyButton"]["Position"] = UDim2.new(0, 218, 0, 200)

AzureUI["CopyCorner"] = Instance.new("UICorner", AzureUI["CopyButton"])

AzureUI["CopyStroke"] = Instance.new("UIStroke", AzureUI["CopyButton"])
AzureUI["CopyStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
AzureUI["CopyStroke"]["Color"] = Color3.fromRGB(142, 0, 255)

AzureUI["SearchContent"] = Instance.new("Frame", AzureUI["MainFrame"])
AzureUI["SearchContent"]["BorderSizePixel"] = 0
AzureUI["SearchContent"]["BackgroundColor3"] = Color3.fromRGB(32, 0, 57)
AzureUI["SearchContent"]["Size"] = UDim2.new(0, 398, 0, 198)
AzureUI["SearchContent"]["Position"] = UDim2.new(0, 6, 0, 50)
AzureUI["SearchContent"]["Name"] = "SearchContent"
AzureUI["SearchContent"]["Visible"] = false

AzureUI["SearchBox"] = Instance.new("TextBox", AzureUI["SearchContent"])
AzureUI["SearchBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
AzureUI["SearchBox"]["BorderSizePixel"] = 0
AzureUI["SearchBox"]["TextWrapped"] = true
AzureUI["SearchBox"]["TextSize"] = 16
AzureUI["SearchBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
AzureUI["SearchBox"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["SearchBox"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AzureUI["SearchBox"]["PlaceholderText"] = "Search scripts...    [Powered by scriptblox.com]"
AzureUI["SearchBox"]["PlaceholderColor3"] = Color3.fromRGB(141, 0, 255) 
AzureUI["SearchBox"]["Size"] = UDim2.new(0, 386, 0, 34)
AzureUI["SearchBox"]["Position"] = UDim2.new(0, 6, 0, 6)
AzureUI["SearchBox"]["Text"] = ""

AzureUI["SearchBoxCorner"] = Instance.new("UICorner", AzureUI["SearchBox"])
AzureUI["SearchBoxCorner"]["CornerRadius"] = UDim.new(0, 4)

AzureUI["ScriptsScroll"] = Instance.new("ScrollingFrame", AzureUI["SearchContent"])
AzureUI["ScriptsScroll"]["BorderSizePixel"] = 0
AzureUI["ScriptsScroll"]["BackgroundColor3"] = Color3.fromRGB(36, 0, 66)
AzureUI["ScriptsScroll"]["Size"] = UDim2.new(0, 386, 0, 180)
AzureUI["ScriptsScroll"]["Position"] = UDim2.new(0, 6, 0, 46)
AzureUI["ScriptsScroll"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
AzureUI["ScriptsScroll"]["ScrollBarThickness"] = 8

AzureUI["ScrollCorner"] = Instance.new("UICorner", AzureUI["ScriptsScroll"])
AzureUI["ScrollCorner"]["CornerRadius"] = UDim.new(0, 4)

AzureUI["ShowButton"] = Instance.new("TextButton", AzureUI["MainGui"])
AzureUI["ShowButton"]["TextWrapped"] = true
AzureUI["ShowButton"]["BorderSizePixel"] = 0
AzureUI["ShowButton"]["TextScaled"] = true
AzureUI["ShowButton"]["TextColor3"] = Color3.fromRGB(142, 0, 255)
AzureUI["ShowButton"]["TextYAlignment"] = Enum.TextYAlignment.Top
AzureUI["ShowButton"]["BackgroundColor3"] = Color3.fromRGB(48, 0, 87)
AzureUI["ShowButton"]["FontFace"] = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
AzureUI["ShowButton"]["ZIndex"] = 999999
AzureUI["ShowButton"]["Size"] = UDim2.new(0, 44, 0, 44)
AzureUI["ShowButton"]["Text"] = "Az"
AzureUI["ShowButton"]["Name"] = "ShowButton"
AzureUI["ShowButton"]["Position"] = UDim2.new(0, 782, 0, -46)

AzureUI["ShowCorner"] = Instance.new("UICorner", AzureUI["ShowButton"])
AzureUI["ShowCorner"]["CornerRadius"] = UDim.new(0, 6)

AzureUI["ShowStroke"] = Instance.new("UIStroke", AzureUI["ShowButton"])
AzureUI["ShowStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
AzureUI["ShowStroke"]["Color"] = Color3.fromRGB(142, 0, 255)

local function switchTab(tabName)
    AzureUI["HomeContent"].Visible = (tabName == "Home")
    AzureUI["ExecutorContent"].Visible = (tabName == "Executor")
    AzureUI["SearchContent"].Visible = (tabName == "Search")
end

AzureUI["HomeTab"].MouseButton1Click:Connect(function()
    switchTab("Home")
end)

AzureUI["ExeTab"].MouseButton1Click:Connect(function()
    switchTab("Executor")
end)

AzureUI["SearchTab"].MouseButton1Click:Connect(function()
    switchTab("Search")
end)

AzureUI["ShowButton"].MouseButton1Click:Connect(function()
    AzureUI["MainFrame"].Visible = true
    AzureUI["ShowButton"].Visible = false
end)

AzureUI["HideButton"].MouseButton1Click:Connect(function()
    AzureUI["MainFrame"].Visible = false
    AzureUI["ShowButton"].Visible = true
end)

AzureUI["CloseButton"].MouseButton1Click:Connect(function()
    AzureUI["MainGui"]:Destroy()
end)

AzureUI["ExecuteButton"].MouseButton1Click:Connect(function()
    local scriptText = AzureUI["ScriptBox"].Text
    if scriptText and scriptText ~= "" then
        local success, error = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            warn("Execution error: " .. error)
        end
    end
end)

AzureUI["ClearButton"].MouseButton1Click:Connect(function()
    AzureUI["ScriptBox"].Text = ""
end)

AzureUI["CopyButton"].MouseButton1Click:Connect(function()
    local scriptText = AzureUI["ScriptBox"].Text
    if scriptText and scriptText ~= "" then
        pcall(function()
            setclipboard(scriptText)
        end)
    end
end)

local function updateHomeInfo()
    local player = game.Players.LocalPlayer
    local displayName = player.DisplayName
    local username = player.Name
    local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    local placeId = game.PlaceId
    
    local ping = 0
    pcall(function()
        ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
    end)
    
    local fps = 0
    pcall(function()
        fps = math.round(1 / game:GetService("RunService").RenderStepped:Wait())
    end)
    
    local ip = "Loading..."
    pcall(function()
        ip = game:HttpGet("https://api.ipify.org")
    end)
    
    AzureUI["PlayerInfo"]["Text"] = string.format(
        "Player:\nDisplayName: %s\nUsername: %s\nIP Address: %s\nFPS: %d\nPing: %d\n\nGame:\nName: %s\nPlaceID: %d",
        displayName, username, ip, fps, ping, gameName, placeId
    )
end

task.spawn(function()
    while true do
        updateHomeInfo()
        task.wait(1)
    end
end)

AzureUI["PlayerInfo"]["TextWrapped"] = true
AzureUI["PlayerInfo"]["TextScaled"] = false
AzureUI["PlayerInfo"]["AutomaticSize"] = Enum.AutomaticSize.Y

local function createScriptFrame(scriptData, index)
    local yPos = 6 + ((index - 1) * 40)
    
    local frame = Instance.new("Frame")
    frame.BorderSizePixel = 0
    frame.BackgroundColor3 = Color3.fromRGB(38, 0, 69)
    frame.Size = UDim2.new(0, 374, 0, 34)
    frame.Position = UDim2.new(0, 6, 0, yPos)
    frame.Parent = AzureUI["ScriptsScroll"]
    
    local corner = Instance.new("UICorner")
    corner.Parent = frame
    
    local scriptName = scriptData.title or "Unknown"
    local gameName = scriptData.game and scriptData.game.name or "Universal"
    local views = scriptData.views or 0
    local likes = scriptData.likeCount or 0
    local keySystem = scriptData.key and "Key" or "Keyless"
    
    local label = Instance.new("TextLabel")
    label.TextWrapped = true
    label.BorderSizePixel = 0
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label.TextColor3 = Color3.fromRGB(142, 0, 255)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(0, 330, 0, 34)
    label.Text = string.format("%s | %s | Views: %d | Likes: %d | %s", 
        scriptName, gameName, views, likes, keySystem)
    label.Position = UDim2.new(0, 2, 0, 0)
    label.Parent = frame
    
    local executeBtn = Instance.new("TextButton")
    executeBtn.TextWrapped = true
    executeBtn.BorderSizePixel = 0
    executeBtn.TextScaled = true
    executeBtn.TextColor3 = Color3.fromRGB(142, 0, 255)
    executeBtn.BackgroundColor3 = Color3.fromRGB(48, 0, 87)
    executeBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    executeBtn.Size = UDim2.new(0, 34, 0, 30)
    executeBtn.Text = "▶"
    executeBtn.Name = "loadScript"
    executeBtn.Position = UDim2.new(0, 338, 0, 2)
    executeBtn.Parent = frame
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.Parent = executeBtn
    
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Color = Color3.fromRGB(142, 0, 255)
    stroke.Parent = frame
    
    executeBtn.MouseButton1Click:Connect(function()
        if scriptData.script then
            AzureUI["ScriptBox"].Text = scriptData.script
            switchTab("Executor")
        else
            pcall(function()
                local scriptId = scriptData._id or scriptData.slug
                if scriptId then
                    local fullScriptResponse = game:HttpGet("https://scriptblox.com/api/script/raw/" .. scriptId)
                    AzureUI["ScriptBox"].Text = fullScriptResponse
                    switchTab("Executor")
                end
            end)
        end
    end)
    
    return frame
end

AzureUI["SearchBox"].FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local query = AzureUI["SearchBox"].Text
        if query and query ~= "" then
            for _, child in pairs(AzureUI["ScriptsScroll"]:GetChildren()) do
                if child:IsA("Frame") then
                    child:Destroy()
                end
            end
            
            local loadingText = Instance.new("TextLabel")
            loadingText.Text = "Searching ScriptBlox..."
            loadingText.TextColor3 = Color3.fromRGB(142, 0, 255)
            loadingText.BackgroundTransparency = 1
            loadingText.Size = UDim2.new(1, 0, 0, 30)
            loadingText.Position = UDim2.new(0, 0, 0, 10)
            loadingText.Parent = AzureUI["ScriptsScroll"]
            
            task.spawn(function()
                local success, result = pcall(function()
                    local encodedQuery = game:GetService("HttpService"):UrlEncode(query)
                    
                    local response = game:HttpGet("https://scriptblox.com/api/script/search?q=" .. encodedQuery .. "&max=20", true)
                    
                    loadingText:Destroy()
                    
                    if response then
                        local jsonSuccess, data = pcall(function()
                            return game:GetService("HttpService"):JSONDecode(response)
                        end)
                        
                        if jsonSuccess and data then
                            local canvasHeight = 0
                            local scripts = {}
                            
                            if data.result and data.result.scripts then
                                scripts = data.result.scripts
                            elseif data.scripts then
                                scripts = data.scripts
                            elseif type(data) == "table" and #data > 0 then
                                scripts = data
                            end
                            
                            for i, script in ipairs(scripts) do
                                if i <= 20 and script then
                                    createScriptFrame(script, i)
                                    canvasHeight = canvasHeight + 40
                                end
                            end
                            
                            AzureUI["ScriptsScroll"].CanvasSize = UDim2.new(0, 0, 0, canvasHeight)
                            
                            if canvasHeight == 0 then
                                local noResults = Instance.new("TextLabel")
                                noResults.Text = "No scripts found. Try a different search."
                                noResults.TextColor3 = Color3.fromRGB(142, 0, 255)
                                noResults.BackgroundTransparency = 1
                                noResults.Size = UDim2.new(1, 0, 0, 30)
                                noResults.Position = UDim2.new(0, 0, 0, 10)
                                noResults.Parent = AzureUI["ScriptsScroll"]
                            end
                        else
                            local errorText = Instance.new("TextLabel")
                            errorText.Text = "Failed to parse API response"
                            errorText.TextColor3 = Color3.fromRGB(255, 100, 100)
                            errorText.BackgroundTransparency = 1
                            errorText.Size = UDim2.new(1, 0, 0, 30)
                            errorText.Position = UDim2.new(0, 0, 0, 10)
                            errorText.Parent = AzureUI["ScriptsScroll"]
                        end
                    end
                end)
                
                if not success then
                    loadingText:Destroy()
                    local errorText = Instance.new("TextLabel")
                    errorText.Text = "API request failed"
                    errorText.TextColor3 = Color3.fromRGB(255, 100, 100)
                    errorText.BackgroundTransparency = 1
                    errorText.Size = UDim2.new(1, 0, 0, 30)
                    errorText.Position = UDim2.new(0, 0, 0, 10)
                    errorText.Parent = AzureUI["ScriptsScroll"]
                end
            end)
        end
    end
end)

return AzureUI["MainGui"]
