return function(option)
    if option == "GetTag" then
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

                local textBillboard = Instance.new("BillboardGui")
                textBillboard.Name = TAG_NAME
                textBillboard.Size = UDim2.new(0, 300, 0, 60)
                textBillboard.StudsOffset = Vector3.new(0, 3.5, 0)
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
                label.TextColor3 = Color3.fromRGB(128, 0, 128)
                label.Parent = textBillboard
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