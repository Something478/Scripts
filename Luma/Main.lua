local Luma = {Flags = {}, CurrentTheme = {}, Loaded = false, Interface = nil}

local function loadModule(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    if not success then
        return nil
    end
    return result
end

local Themes = loadModule("https://raw.githubusercontent.com/yourusername/Luma/main/Themes.lua") or {}
local Components = loadModule("https://raw.githubusercontent.com/yourusername/Luma/main/Components.lua") or {}
local Config = loadModule("https://raw.githubusercontent.com/yourusername/Luma/main/Configuration.lua") or {}
local Utils = loadModule("https://raw.githubusercontent.com/yourusername/Luma/main/Utilities.lua") or {}

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

function Luma:CreateWindow(settings)
    if Luma.Loaded then return end
    
    Luma.Interface = Instance.new("ScreenGui")
    Luma.Interface.Name = "LumaInterface"
    Luma.Interface.ResetOnSpawn = false
    Luma.Interface.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Luma.Interface.Parent = CoreGui
    
    Luma.CurrentTheme = Themes.LumaDark
    
    local window = Components.CreateWindow(settings, Luma.CurrentTheme, Luma.Interface)
    
    Luma.Loaded = true
    return window
end

function Luma:Notify(data)
    if not Luma.Loaded then return end
    Components.CreateNotification(data, Luma.CurrentTheme, Luma.Interface)
end

function Luma:SetTheme(themeName)
    if Themes[themeName] then
        Luma.CurrentTheme = Themes[themeName]
    else
        warn("Luma | Invalid theme: " .. tostring(themeName))
    end
end

function Luma:Destroy()
    if Luma.Interface then
        Luma.Interface:Destroy()
        Luma.Loaded = false
        Luma.Interface = nil
    end
end

return Luma