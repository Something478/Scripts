local webhookUrl = os.getenv("WEBHOOK")

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer
local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)

local userId = player.UserId
local accountAge = player.AccountAge .. " days"
local countryCode = player.LocaleId
local device = game:GetService("UserInputService").TouchEnabled and "Mobile" or "PC"

local webhookData = {
    ["username"] = "Stats bot",
    ["content"] =
        "**Player Information**\n" ..
        "Display Name: " .. player.DisplayName .. "\n" ..
        "Username: " .. player.Name .. "\n" ..
        "User ID: " .. userId .. "\n" ..
        "Account Age: " .. accountAge .. "\n" ..
        "Country: " .. countryCode .. "\n" ..
        "Device: " .. device .. "\n\n" ..
        "**Game Information**\n" ..
        "Game: " .. productInfo.Name .. "\n" ..
        "Game Link: https://www.roblox.com/games/" .. game.PlaceId .. "\n" ..
        "Played at: " .. os.date("!%H:%M", os.time() + 7200) .. " (EET/EEST)"
}

local jsonData = game:GetService("HttpService"):JSONEncode(webhookData)

http_request({
    Url = webhookUrl,
    Method = "POST",
    Headers = { ["Content-Type"] = "application/json" },
    Body = jsonData
})
