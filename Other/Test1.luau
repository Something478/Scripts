local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local LOCAL_SERVER_URL = "http://127.0.0.1:4343"

local function loadImageFromLocalServer(imageName)
    local imageUrl = LOCAL_SERVER_URL .. "/" .. imageName
    
    local success, imageData = pcall(function()
        return HttpService:GetAsync(imageUrl)
    end)
    
    if success and imageData then
        local assetId = HttpService:GenerateGUID(false)
        HttpService:SetAsync(assetId, imageData)
        
        return "rbxasset://" .. assetId
    else
        warn("Failed to load image from local server: " .. imageName)
        return nil
    end
end

local function createImageFrame(imageAssetId, size, position)
    local player = Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "LocalImageGui"
    screenGui.Parent = playerGui
    
    local frame = Instance.new("Frame")
    frame.Size = size
    frame.Position = position
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui
    
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = imageAssetId
    imageLabel.Parent = frame
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 8)
    uiCorner.Parent = frame
    
    return frame
end

local function main()
    local forgeAssetId = loadImageFromLocalServer("forge_icon.png")
    
    if forgeAssetId then
        local frame = createImageFrame(
            forgeAssetId,
            UDim2.new(0, 50, 0, 50), 
            UDim2.new(0.5, -25, 0.5, -25) 
        )
        
        print("✅ Image loaded from local server successfully!")
    else
        warn("❌ Make sure the Python server is running!")
    end
end

main()