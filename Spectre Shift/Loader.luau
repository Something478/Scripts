local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local MainMenu = loadstring(game:HttpGet("RAW_URL"))()
local CreditsMenu = loadstring(game:HttpGet("RAW_URL"))()
local SettingsMenu = loadstring(game:HttpGet("RAW_URL"))()
local GameCore = loadstring(game:HttpGet("RAW_URL"))()

local MenuManager = {
    CurrentMenu = nil,
    Menus = {}
}

function MenuManager:ShowMenu(menu)
    if self.CurrentMenu then
        self.CurrentMenu.Enabled = false
    end
    self.CurrentMenu = menu
    menu.Enabled = true
end

MenuManager.Menus.Main = MainMenu
MenuManager.Menus.Credits = CreditsMenu  
MenuManager.Menus.Settings = SettingsMenu

MenuManager:ShowMenu(MenuManager.Menus.Main)

return MenuManager
