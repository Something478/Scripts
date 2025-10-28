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
        billboard.Size = UDim2.new(3, 0, 2, 0)
        billboard.StudsOffset = Vector3.new(-0.6, 0, 0)
        billboard.Adornee = player.Character.Head
        billboard.AlwaysOnTop = true
        billboard.Parent = player.Character.Head
        
        local textBillboard = Instance.new("BillboardGui")
        textBillboard.Name = "StarFlowTag"
        textBillboard.Size = UDim2.new(0, 200, 0, 40)
        textBillboard.StudsOffset = Vector3.new(0, 2.5, 0)
        textBillboard.Adornee = player.Character.Head
        textBillboard.AlwaysOnTop = true
        textBillboard.Parent = player.Character.Head
        
        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Size = UDim2.new(1, 0, 1, 0)
        imageLabel.BackgroundTransparency = 1
        imageLabel.Image = imageId
        imageLabel.Parent = billboard
        
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = "StarFlow\nScript Owner"
        label.TextStrokeTransparency = 0
        label.TextScaled = true
        label.Font = Enum.Font.Sarpanch
        label.Parent = textBillboard
        
        local hue = 0
        while textBillboard.Parent do
            hue = (hue + 0.01) % 1
            label.TextColor3 = Color3.fromHSV(hue, 1, 1)
            task.wait(0.1)
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
