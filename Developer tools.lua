return function(option)
    if option == "GetTag" then
        local imageId = "rbxassetid://89287417287641"
        local Players = game:GetService("Players")

        local TAG_NAME = "ScriptOwnerTag"
        local CHECK_INTERVAL = 2

        local TargetLookup = {
            ["IdkMyNameBro_012"] = true
        }

        local function createTag(player)
            if player.Character and player.Character:FindFirstChild("Head") then
                if player.Character.Head:FindFirstChild(TAG_NAME) then 
                    player.Character.Head:FindFirstChild(TAG_NAME):Destroy()
                end

                local billboard = Instance.new("BillboardGui")
                billboard.Name = TAG_NAME
                billboard.Size = UDim2.new(4, 0, 3, 0)
                billboard.StudsOffset = Vector3.new(0, 3.5, 0)
                billboard.Adornee = player.Character.Head
                billboard.AlwaysOnTop = true
                billboard.MaxDistance = 150
                billboard.Parent = player.Character.Head
                
                local imageLabel = Instance.new("ImageLabel")
                imageLabel.Size = UDim2.new(1, 0, 1, 0)
                imageLabel.BackgroundTransparency = 1
                imageLabel.Image = imageId
                imageLabel.ImageColor3 = Color3.new(1, 1, 1)
                imageLabel.Parent = billboard
                
                local glow = Instance.new("ImageLabel")
                glow.Name = "GlowEffect"
                glow.Size = UDim2.new(1.2, 0, 1.2, 0)
                glow.Position = UDim2.new(-0.1, 0, -0.1, 0)
                glow.BackgroundTransparency = 1
                glow.Image = "rbxassetid://9924251245"
                glow.ImageColor3 = Color3.fromRGB(0, 255, 255)
                glow.ScaleType = Enum.ScaleType.Slice
                glow.SliceCenter = Rect.new(100, 100, 100, 100)
                glow.Parent = imageLabel
                
                local textBillboard = Instance.new("BillboardGui")
                textBillboard.Name = "StarFlowTag"
                textBillboard.Size = UDim2.new(0, 300, 0, 60)
                textBillboard.StudsOffset = Vector3.new(0, 5, 0)
                textBillboard.Adornee = player.Character.Head
                textBillboard.AlwaysOnTop = true
                textBillboard.MaxDistance = 150
                textBillboard.Parent = player.Character.Head
                
                local label = Instance.new("TextLabel")
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.Text = "★ StarFlow ★\nSCRIPT OWNER"
                label.TextStrokeTransparency = 0
                label.TextStrokeColor3 = Color3.new(0, 0, 0)
                label.TextScaled = true
                label.Font = Enum.Font.GothamBlack
                label.TextColor3 = Color3.new(1, 1, 1)
                label.Parent = textBillboard
                
                local particles = Instance.new("ParticleEmitter")
                particles.Name = "AuraParticles"
                particles.Texture = "rbxassetid://2425038672"
                particles.Lifetime = NumberRange.new(1, 3)
                particles.Rate = 50
                particles.SpreadAngle = Vector2.new(45, 45)
                particles.Speed = NumberRange.new(2, 5)
                particles.Parent = player.Character.Head
                
                local hue = 0
                while textBillboard.Parent and imageLabel.Parent do
                    hue = (hue + 0.02) % 1
                    local rainbow = Color3.fromHSV(hue, 1, 1)
                    label.TextColor3 = rainbow
                    glow.ImageColor3 = rainbow
                    imageLabel.ImageColor3 = Color3.fromHSV((hue + 0.5) % 1, 0.8, 1)
                    particles.Color = ColorSequence.new(rainbow)
                    task.wait(0.05)
                end
            end
        end

        task.spawn(function()
            while true do
                for _, player in pairs(Players:GetPlayers()) do
                    if TargetLookup[player.Name] then
                        createTag(player)
                    end
                end
                task.wait(CHECK_INTERVAL)
            end
        end)

        Players.PlayerAdded:Connect(function(player)
            if TargetLookup[player.Name] then
                player.CharacterAdded:Connect(function()
                    task.wait(1)
                    createTag(player)
                end)
            end
        end)

    elseif option == "ReanimPlayer" then
        local Global = (getgenv and getgenv()) or shared
        Global.GelatekHubConfig = {
            ["Permanent Death"] = true,
            ["Torso Fling"] = false,
            ["Bullet Enabled"] = false,
            ["Enable Collisions"] = false,
            ["Keep Hats On Head"] = true,
            ["Headless On Perma"] = false,
            ["Anti Void"] = false,
            ["Anti Void Offset"] = 75
        }

        local function Send(message)
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
        end

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/packages/FunctionPack.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/lib/Reanimate.lua"))()

        task.delay(6.25, function()
            Send("-net")
        end)
    end
end
