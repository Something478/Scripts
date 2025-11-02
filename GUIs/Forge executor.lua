local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

getgenv().ignore = setmetatable({}, {__newindex = function() end})

local player = Players.LocalPlayer
local Forge = {}

Forge.ScreenGui = Instance.new("ScreenGui")
Forge.ScreenGui.Name = "ForgeExecutor"
Forge.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Forge.ScreenGui.ResetOnSpawn = false
Forge.ScreenGui.Parent = player:WaitForChild("PlayerGui")
CollectionService:AddTag(Forge.ScreenGui, "main")

Forge.MainFrame = Instance.new("Frame")
Forge.MainFrame.Name = "MainFrame"
Forge.MainFrame.BorderSizePixel = 0
Forge.MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.MainFrame.Size = UDim2.new(0.57251, 0, 0.9903, 0)
Forge.MainFrame.Position = UDim2.new(0, 96, 0, 0)
Forge.MainFrame.Parent = Forge.ScreenGui

Forge.Stats = Instance.new("Frame")
Forge.Stats.Name = "Stats"
Forge.Stats.BorderSizePixel = 0
Forge.Stats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.Stats.Size = UDim2.new(0.34034, 0, 1, 0)
Forge.Stats.Position = UDim2.new(0, 480, 0, 0)
Forge.Stats.Parent = Forge.MainFrame

Forge.StatsUICorner = Instance.new("UICorner")
Forge.StatsUICorner.Parent = Forge.Stats

Forge.StatsLabel = Instance.new("TextLabel")
Forge.StatsLabel.Name = "StatsLabel"
Forge.StatsLabel.TextWrapped = true
Forge.StatsLabel.BorderSizePixel = 0
Forge.StatsLabel.TextSize = 14
Forge.StatsLabel.TextXAlignment = Enum.TextXAlignment.Left
Forge.StatsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.StatsLabel.TextColor3 = Color3.fromRGB(0, 33, 255)
Forge.StatsLabel.BackgroundTransparency = 1
Forge.StatsLabel.RichText = true
Forge.StatsLabel.Size = UDim2.new(0.97531, 0, 0.89143, 0)
Forge.StatsLabel.Text = "FPS: Calculating...\nPing: Calculating...\nUsername: Loading...\nUserID: Loading...\nGame: Loading...\nGameID: Loading..."
Forge.StatsLabel.Position = UDim2.new(0, 2, 0, 36)
Forge.StatsLabel.Parent = Forge.Stats

Forge.StatsLabelUICorner = Instance.new("UICorner")
Forge.StatsLabelUICorner.Parent = Forge.StatsLabel

Forge.StatsLabelUIGradient = Instance.new("UIGradient")
Forge.StatsLabelUIGradient.Name = "UIGradient2"
Forge.StatsLabelUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.StatsLabelUIGradient.Parent = Forge.StatsLabel

Forge.StatsUIGradient = Instance.new("UIGradient")
Forge.StatsUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}
Forge.StatsUIGradient.Parent = Forge.Stats

Forge.StatsTitle = Instance.new("TextLabel")
Forge.StatsTitle.Name = "StatsTitle"
Forge.StatsTitle.BorderSizePixel = 0
Forge.StatsTitle.TextSize = 40
Forge.StatsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.StatsTitle.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge.StatsTitle.TextColor3 = Color3.fromRGB(0, 15, 255)
Forge.StatsTitle.BackgroundTransparency = 1
Forge.StatsTitle.Size = UDim2.new(1, 0, 0.10286, 0)
Forge.StatsTitle.Text = "Statistics"
Forge.StatsTitle.Position = UDim2.new(0, 0, 0, -2)
Forge.StatsTitle.Parent = Forge.Stats

Forge.StatsTitleUIGradient = Instance.new("UIGradient")
Forge.StatsTitleUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.StatsTitleUIGradient.Parent = Forge.StatsTitle

Forge.StatsTitleFrame = Instance.new("Frame")
Forge.StatsTitleFrame.BorderSizePixel = 0
Forge.StatsTitleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.StatsTitleFrame.Size = UDim2.new(1, 0, 0.05556, 0)
Forge.StatsTitleFrame.Position = UDim2.new(0, 0, 0, 34)
Forge.StatsTitleFrame.Parent = Forge.StatsTitle

Forge.StatsTitleFrameUIGradient = Instance.new("UIGradient")
Forge.StatsTitleFrameUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.StatsTitleFrameUIGradient.Parent = Forge.StatsTitleFrame

Forge.StatsUIStroke = Instance.new("UIStroke")
Forge.StatsUIStroke.Color = Color3.fromRGB(0, 15, 255)
Forge.StatsUIStroke.Parent = Forge.Stats

Forge.StatsUIStrokeUIGradient = Instance.new("UIGradient")
Forge.StatsUIStrokeUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.StatsUIStrokeUIGradient.Parent = Forge.StatsUIStroke

Forge.TopBar = Instance.new("Frame")
Forge.TopBar.Name = "TopBar"
Forge.TopBar.BorderSizePixel = 0
Forge.TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Forge.TopBar.Size = UDim2.new(0.98319, 0, 0.10857, 0)
Forge.TopBar.Position = UDim2.new(0, 4, 0, 24)
Forge.TopBar.Parent = Forge.MainFrame

Forge.TopBarUICorner = Instance.new("UICorner")
Forge.TopBarUICorner.Parent = Forge.TopBar

Forge.TopBarUIGradient = Instance.new("UIGradient")
Forge.TopBarUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))
}
Forge.TopBarUIGradient.Parent = Forge.TopBar

Forge.TopBarUIGradient2 = Instance.new("UIGradient")
Forge.TopBarUIGradient2.Name = "UIGradient2"
Forge.TopBarUIGradient2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}
Forge.TopBarUIGradient2.Parent = Forge.TopBar

Forge.TopBarUIStroke = Instance.new("UIStroke")
Forge.TopBarUIStroke.Color = Color3.fromRGB(0, 15, 255)
Forge.TopBarUIStroke.Parent = Forge.TopBar

Forge.TopBarUIStrokeUIGradient = Instance.new("UIGradient")
Forge.TopBarUIStrokeUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.TopBarUIStrokeUIGradient.Parent = Forge.TopBarUIStroke

Forge.ExeTab = Instance.new("TextButton")
Forge.ExeTab.Name = "Exe_Tab"
Forge.ExeTab.TextWrapped = true
Forge.ExeTab.BorderSizePixel = 0
Forge.ExeTab.TextScaled = true
Forge.ExeTab.TextColor3 = Color3.fromRGB(255, 255, 255)
Forge.ExeTab.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Forge.ExeTab.Size = UDim2.new(0.17521, 0, 0.78947, 0)
Forge.ExeTab.Text = "Executor"
Forge.ExeTab.Position = UDim2.new(0, 2, 0, 4)
Forge.ExeTab.Parent = Forge.TopBar

Forge.ExeTabUICorner = Instance.new("UICorner")
Forge.ExeTabUICorner.Parent = Forge.ExeTab

Forge.ExeTabUIGradient = Instance.new("UIGradient")
Forge.ExeTabUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.ExeTabUIGradient.Parent = Forge.ExeTab

Forge.ExeTabFrame = Instance.new("Frame")
Forge.ExeTabFrame.BorderSizePixel = 0
Forge.ExeTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.ExeTabFrame.Size = UDim2.new(0.02439, 0, 1.26667, 0)
Forge.ExeTabFrame.Position = UDim2.new(0, 84, 0, -4)
Forge.ExeTabFrame.Parent = Forge.ExeTab

Forge.ExeTabFrameUIGradient = Instance.new("UIGradient")
Forge.ExeTabFrameUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.ExeTabFrameUIGradient.Parent = Forge.ExeTabFrame

Forge.SearchTab = Instance.new("TextButton")
Forge.SearchTab.Name = "Search_Tab"
Forge.SearchTab.TextWrapped = true
Forge.SearchTab.BorderSizePixel = 0
Forge.SearchTab.TextScaled = true
Forge.SearchTab.TextColor3 = Color3.fromRGB(255, 255, 255)
Forge.SearchTab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Forge.SearchTab.Size = UDim2.new(0.17521, 0, 0.78947, 0)
Forge.SearchTab.Text = "Search"
Forge.SearchTab.Position = UDim2.new(0, 88, 0, 4)
Forge.SearchTab.Parent = Forge.TopBar

Forge.SearchTabUICorner = Instance.new("UICorner")
Forge.SearchTabUICorner.Parent = Forge.SearchTab

Forge.SearchTabUIGradient = Instance.new("UIGradient")
Forge.SearchTabUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.SearchTabUIGradient.Parent = Forge.SearchTab

Forge.SearchTabFrame = Instance.new("Frame")
Forge.SearchTabFrame.BorderSizePixel = 0
Forge.SearchTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.SearchTabFrame.Size = UDim2.new(0.02439, 0, 1.26667, 0)
Forge.SearchTabFrame.Position = UDim2.new(0, 84, 0, -4)
Forge.SearchTabFrame.Parent = Forge.SearchTab

Forge.SearchTabFrameUIGradient = Instance.new("UIGradient")
Forge.SearchTabFrameUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.SearchTabFrameUIGradient.Parent = Forge.SearchTabFrame

Forge.FavTab = Instance.new("TextButton")
Forge.FavTab.Name = "Fav_Tab"
Forge.FavTab.TextWrapped = true
Forge.FavTab.BorderSizePixel = 0
Forge.FavTab.TextScaled = true
Forge.FavTab.TextColor3 = Color3.fromRGB(255, 255, 255)
Forge.FavTab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Forge.FavTab.Size = UDim2.new(0.17521, 0, 0.78947, 0)
Forge.FavTab.Text = "Favorites"
Forge.FavTab.Position = UDim2.new(0, 174, 0, 4)
Forge.FavTab.Parent = Forge.TopBar

Forge.FavTabUICorner = Instance.new("UICorner")
Forge.FavTabUICorner.Parent = Forge.FavTab

Forge.FavTabUIGradient = Instance.new("UIGradient")
Forge.FavTabUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.FavTabUIGradient.Parent = Forge.FavTab

Forge.FavTabFrame = Instance.new("Frame")
Forge.FavTabFrame.BorderSizePixel = 0
Forge.FavTabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.FavTabFrame.Size = UDim2.new(0.02439, 0, 1.26667, 0)
Forge.FavTabFrame.Position = UDim2.new(0, 84, 0, -4)
Forge.FavTabFrame.Parent = Forge.FavTab

Forge.FavTabFrameUIGradient = Instance.new("UIGradient")
Forge.FavTabFrameUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.FavTabFrameUIGradient.Parent = Forge.FavTabFrame

Forge.Title = Instance.new("TextLabel")
Forge.Title.Name = "Title"
Forge.Title.TextWrapped = true
Forge.Title.ZIndex = 2
Forge.Title.BorderSizePixel = 0
Forge.Title.TextSize = 48
Forge.Title.TextXAlignment = Enum.TextXAlignment.Left
Forge.Title.TextScaled = true
Forge.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.Title.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge.Title.TextColor3 = Color3.fromRGB(0, 15, 255)
Forge.Title.BackgroundTransparency = 1
Forge.Title.Size = UDim2.new(0.9916, 0, 0.06286, 0)
Forge.Title.Text = "Forge Executor"
Forge.Title.Position = UDim2.new(0, 2, 0, 0)
Forge.Title.Parent = Forge.MainFrame

Forge.Hide = Instance.new("TextButton")
Forge.Hide.Name = "Hide"
Forge.Hide.TextWrapped = true
Forge.Hide.BorderSizePixel = 0
Forge.Hide.TextScaled = true
Forge.Hide.TextColor3 = Color3.fromRGB(255, 255, 255)
Forge.Hide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Forge.Hide.Size = UDim2.new(0.05882, 0, 0.05143, 0)
Forge.Hide.Text = "—"
Forge.Hide.Position = UDim2.new(0, 446, 0, 2)
Forge.Hide.Parent = Forge.MainFrame

Forge.HideUICorner = Instance.new("UICorner")
Forge.HideUICorner.Parent = Forge.Hide

Forge.HideUIGradient = Instance.new("UIGradient")
Forge.HideUIGradient.Name = "UIGradient2"
Forge.HideUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.HideUIGradient.Parent = Forge.Hide

Forge.MainFrameUICorner = Instance.new("UICorner")
Forge.MainFrameUICorner.Parent = Forge.MainFrame

Forge.MainFrameUIGradient = Instance.new("UIGradient")
Forge.MainFrameUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(28, 28, 28)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}
Forge.MainFrameUIGradient.Parent = Forge.MainFrame

Forge.MainFrameUIStroke = Instance.new("UIStroke")
Forge.MainFrameUIStroke.Color = Color3.fromRGB(0, 15, 255)
Forge.MainFrameUIStroke.Parent = Forge.MainFrame

Forge.MainFrameUIStrokeUIGradient = Instance.new("UIGradient")
Forge.MainFrameUIStrokeUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.MainFrameUIStrokeUIGradient.Parent = Forge.MainFrameUIStroke

Forge.ExecutorContent = Instance.new("Frame")
Forge.ExecutorContent.Name = "ExecutorContent"
Forge.ExecutorContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.ExecutorContent.BackgroundTransparency = 1
Forge.ExecutorContent.Size = UDim2.new(1, 0, 1, 0)
Forge.ExecutorContent.Parent = Forge.MainFrame

Forge.FavoritesContent = Instance.new("Frame")
Forge.FavoritesContent.Name = "FavoritesContent"
Forge.FavoritesContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.FavoritesContent.BackgroundTransparency = 1
Forge.FavoritesContent.Size = UDim2.new(1, 0, 1, 0)
Forge.FavoritesContent.Visible = false
Forge.FavoritesContent.Parent = Forge.MainFrame

Forge.SearchContent = Instance.new("Frame")
Forge.SearchContent.Name = "SearchContent"
Forge.SearchContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.SearchContent.BackgroundTransparency = 1
Forge.SearchContent.Size = UDim2.new(1, 0, 1, 0)
Forge.SearchContent.Visible = false
Forge.SearchContent.Parent = Forge.MainFrame

Forge.InputTextbox = Instance.new("Frame")
Forge.InputTextbox.Name = "InputTextbox"
Forge.InputTextbox.ZIndex = 0
Forge.InputTextbox.BorderSizePixel = 0
Forge.InputTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.InputTextbox.Size = UDim2.new(0.98319, 0, 0.71429, 0)
Forge.InputTextbox.Position = UDim2.new(0, 4, 0, 66)
Forge.InputTextbox.Parent = Forge.ExecutorContent

Forge.InputTextboxUIGradient = Instance.new("UIGradient")
Forge.InputTextboxUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.InputTextboxUIGradient.Parent = Forge.InputTextbox

Forge.TextBox = Instance.new("TextBox")
Forge.TextBox.CursorPosition = -1
Forge.TextBox.TextXAlignment = Enum.TextXAlignment.Left
Forge.TextBox.BorderSizePixel = 0
Forge.TextBox.TextWrapped = true
Forge.TextBox.TextSize = 18
Forge.TextBox.TextColor3 = Color3.fromRGB(104, 255, 0)
Forge.TextBox.TextYAlignment = Enum.TextYAlignment.Top
Forge.TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Forge.TextBox.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Forge.TextBox.PlaceholderText = "Script here..."
Forge.TextBox.Size = UDim2.new(0.98718, 0, 0.984, 0)
Forge.TextBox.Position = UDim2.new(0, 2, 0, 2)
Forge.TextBox.Text = ""
Forge.TextBox.MultiLine = true
Forge.TextBox.Parent = Forge.InputTextbox

Forge.Execute = Instance.new("TextButton")
Forge.Execute.Name = "Exe"
Forge.Execute.TextWrapped = true
Forge.Execute.BorderSizePixel = 0
Forge.Execute.TextSize = 12
Forge.Execute.TextColor3 = Color3.fromRGB(0, 15, 255)
Forge.Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Forge.Execute.Size = UDim2.new(0.16807, 0, 0.07429, 0)
Forge.Execute.Text = "Execute"
Forge.Execute.Position = UDim2.new(0, 4, 0, 320)
Forge.Execute.Parent = Forge.ExecutorContent

Forge.ExecuteUICorner = Instance.new("UICorner")
Forge.ExecuteUICorner.Parent = Forge.Execute

Forge.Clear = Instance.new("TextButton")
Forge.Clear.Name = "Clr"
Forge.Clear.TextWrapped = true
Forge.Clear.BorderSizePixel = 0
Forge.Clear.TextSize = 12
Forge.Clear.TextColor3 = Color3.fromRGB(0, 15, 255)
Forge.Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Forge.Clear.Size = UDim2.new(0.16807, 0, 0.07429, 0)
Forge.Clear.Text = "Clear"
Forge.Clear.Position = UDim2.new(0, 86, 0, 320)
Forge.Clear.Parent = Forge.ExecutorContent

Forge.ClearUICorner = Instance.new("UICorner")
Forge.ClearUICorner.Parent = Forge.Clear

Forge.Save = Instance.new("TextButton")
Forge.Save.Name = "Save"
Forge.Save.TextWrapped = true
Forge.Save.BorderSizePixel = 0
Forge.Save.TextSize = 12
Forge.Save.TextColor3 = Color3.fromRGB(0, 15, 255)
Forge.Save.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Forge.Save.Size = UDim2.new(0.16807, 0, 0.07429, 0)
Forge.Save.Text = "Save"
Forge.Save.Position = UDim2.new(0, 170, 0, 320)
Forge.Save.Parent = Forge.ExecutorContent

Forge.SaveUICorner = Instance.new("UICorner")
Forge.SaveUICorner.Parent = Forge.Save

Forge.SearchBox = Instance.new("TextBox")
Forge.SearchBox.CursorPosition = -1
Forge.SearchBox.TextXAlignment = Enum.TextXAlignment.Left
Forge.SearchBox.BorderSizePixel = 0
Forge.SearchBox.TextSize = 10
Forge.SearchBox.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
Forge.SearchBox.PlaceholderText = "Search scripts (powered by scriptblox.com)"
Forge.SearchBox.Size = UDim2.new(0.9916, 0, 0.08571, 0)
Forge.SearchBox.Position = UDim2.new(0, 2, 0, 68)
Forge.SearchBox.Text = ""
Forge.SearchBox.Parent = Forge.SearchContent

Forge.SearchBoxUICorner = Instance.new("UICorner")
Forge.SearchBoxUICorner.Parent = Forge.SearchBox

Forge.SearchList = Instance.new("ScrollingFrame")
Forge.SearchList.Name = "SearchList"
Forge.SearchList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.SearchList.BackgroundTransparency = 1
Forge.SearchList.Size = UDim2.new(1, -12, 1, -90)
Forge.SearchList.Position = UDim2.new(0, 6, 0, 90)
Forge.SearchList.CanvasSize = UDim2.new(0, 0, 0, 0)
Forge.SearchList.ScrollBarThickness = 8
Forge.SearchList.Parent = Forge.SearchContent

Forge.FavoritesList = Instance.new("ScrollingFrame")
Forge.FavoritesList.Name = "FavoritesList"
Forge.FavoritesList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.FavoritesList.BackgroundTransparency = 1
Forge.FavoritesList.Size = UDim2.new(1, -12, 1, -60)
Forge.FavoritesList.Position = UDim2.new(0, 6, 0, 60)
Forge.FavoritesList.CanvasSize = UDim2.new(0, 0, 0, 0)
Forge.FavoritesList.ScrollBarThickness = 8
Forge.FavoritesList.Parent = Forge.FavoritesContent

Forge.Show = Instance.new("Frame")
Forge.Show.Name = "Show"
Forge.Show.BorderSizePixel = 0
Forge.Show.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.Show.Size = UDim2.new(0, 50, 0, 50)
Forge.Show.Position = UDim2.new(0, 778, 0, 104)
Forge.Show.Visible = false
Forge.Show.Parent = Forge.ScreenGui

Forge.ShowUICorner = Instance.new("UICorner")
Forge.ShowUICorner.Parent = Forge.Show

Forge.ShowUIGradient = Instance.new("UIGradient")
Forge.ShowUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
}
Forge.ShowUIGradient.Parent = Forge.Show

Forge.ShowUIStroke = Instance.new("UIStroke")
Forge.ShowUIStroke.Color = Color3.fromRGB(0, 24, 255)
Forge.ShowUIStroke.Parent = Forge.Show

Forge.ShowUIStrokeUIGradient = Instance.new("UIGradient")
Forge.ShowUIStrokeUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.ShowUIStrokeUIGradient.Parent = Forge.ShowUIStroke

Forge.ShowButton = Instance.new("TextButton")
Forge.ShowButton.TextWrapped = true
Forge.ShowButton.BorderSizePixel = 0
Forge.ShowButton.TextSize = 12
Forge.ShowButton.TextScaled = true
Forge.ShowButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forge.ShowButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Forge.ShowButton.TextColor3 = Color3.fromRGB(0, 21, 255)
Forge.ShowButton.BackgroundTransparency = 1
Forge.ShowButton.Size = UDim2.new(0, 50, 0, 50)
Forge.ShowButton.Text = "F"
Forge.ShowButton.Parent = Forge.Show

Forge.ShowButtonUIGradient = Instance.new("UIGradient")
Forge.ShowButtonUIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 0, 255)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(11, 0, 166))
}
Forge.ShowButtonUIGradient.Parent = Forge.ShowButton

local FavoritesData = {scripts = {}}
local DATA_STORE_KEY = "ForgeExecutorFavorites"

pcall(function()
    if readfile then
        local success, data = pcall(function()
            return HttpService:JSONDecode(readfile(DATA_STORE_KEY .. ".json"))
        end)
        if success and data then
            FavoritesData = data
        end
    end
end)

local function saveFavorites()
    if writefile then
        pcall(function()
            writefile(DATA_STORE_KEY .. ".json", HttpService:JSONEncode(FavoritesData))
        end)
    end
end

local statsConnections = {}
local fpsCounter = 0
local lastTime = tick()
local frameCount = 0

local function getPing()
    local ping = player:GetNetworkPing()
    return math.floor(ping * 1000) 
end

local function updateStats()
    local statsLabel = Forge.StatsLabel
    if statsLabel then
        frameCount = frameCount + 1
        local currentTime = tick()
        if currentTime - lastTime >= 1 then
            fpsCounter = math.floor(frameCount / (currentTime - lastTime))
            frameCount = 0
            lastTime = currentTime
        end
        
        local ping = getPing()
        local username = player.Name
        local userId = player.UserId
        local gameName = "Unknown"
        local gameId = game.PlaceId
        
        local success, result = pcall(function()
            return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
        end)
        if success and result then
            gameName = result.Name
        end
        
        statsLabel.Text = string.format("FPS: %d\nPing: %d ms\nUsername: %s\nUserID: %d\nGame: %s\nGameID: %d", 
            fpsCounter, ping, username, userId, gameName, gameId)
    end
end

local currentTab = "executor"
local function switchTab(tabName)
    currentTab = tabName
    
    Forge.ExecutorContent.Visible = (tabName == "executor")
    Forge.FavoritesContent.Visible = (tabName == "favorites")
    Forge.SearchContent.Visible = (tabName == "search")
    
    Forge.ExeTab.BackgroundColor3 = (tabName == "executor") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    Forge.SearchTab.BackgroundColor3 = (tabName == "search") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    Forge.FavTab.BackgroundColor3 = (tabName == "favorites") and Color3.fromRGB(80, 80, 80) or Color3.fromRGB(15, 15, 15)
    
    if tabName == "favorites" then
        updateFavoritesList()
    end
end

local function createSavePopup()
    local popup = Instance.new("Frame")
    popup.Size = UDim2.new(0, 300, 0, 150)
    popup.Position = UDim2.new(0.5, -150, 0.5, -75)
    popup.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    popup.BorderSizePixel = 0
    popup.ZIndex = 10
    
    local corner = Instance.new("UICorner")
    corner.Parent = popup
    
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(45, 45, 45)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))
    }
    gradient.Parent = popup
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(0, 15, 255)
    stroke.Parent = popup
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = "Save Script"
    title.TextColor3 = Color3.fromRGB(0, 15, 255)
    title.TextSize = 20
    title.Font = Enum.Font.GothamBold
    title.Parent = popup
    
    local nameBox = Instance.new("TextBox")
    nameBox.Size = UDim2.new(0, 260, 0, 30)
    nameBox.Position = UDim2.new(0, 20, 0, 50)
    nameBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    nameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameBox.PlaceholderText = "Enter script name..."
    nameBox.Text = ""
    nameBox.Parent = popup
    
    local nameCorner = Instance.new("UICorner")
    nameCorner.Parent = nameBox
    
    local saveBtn = Instance.new("TextButton")
    saveBtn.Size = UDim2.new(0, 120, 0, 30)
    saveBtn.Position = UDim2.new(0, 30, 0, 100)
    saveBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
    saveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    saveBtn.Text = "Confirm"
    saveBtn.Parent = popup
    
    local saveCorner = Instance.new("UICorner")
    saveCorner.Parent = saveBtn
    
    local cancelBtn = Instance.new("TextButton")
    cancelBtn.Size = UDim2.new(0, 120, 0, 30)
    cancelBtn.Position = UDim2.new(0, 150, 0, 100)
    cancelBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
    cancelBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    cancelBtn.Text = "Cancel"
    cancelBtn.Parent = popup
    
    local cancelCorner = Instance.new("UICorner")
    cancelCorner.Parent = cancelBtn
    
    popup.Parent = Forge.MainFrame
    
    local function closePopup()
        popup:Destroy()
    end
    
    saveBtn.MouseButton1Click:Connect(function()
        local scriptName = nameBox.Text
        if scriptName and scriptName ~= "" then
            local scriptText = Forge.TextBox.Text
            FavoritesData.scripts[scriptName] = {
                code = scriptText,
                timestamp = os.time()
            }
            saveFavorites()
            updateFavoritesList()
            closePopup()
        end
    end)
    
    cancelBtn.MouseButton1Click:Connect(closePopup)
end

local function updateFavoritesList()
    local favoritesList = Forge.FavoritesList
    if not favoritesList then return end
    
    for _, child in pairs(favoritesList:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0, 5)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = favoritesList
    
    local UIPadding = Instance.new("UIPadding")
    UIPadding.PaddingTop = UDim.new(0, 10)
    UIPadding.PaddingLeft = UDim.new(0, 5)
    UIPadding.PaddingRight = UDim.new(0, 5)
    UIPadding.Parent = favoritesList
    
    for name, scriptData in pairs(FavoritesData.scripts) do
        local favoriteFrame = Instance.new("Frame")
        favoriteFrame.Name = "Saved_" .. name
        favoriteFrame.Size = UDim2.new(1, -10, 0, 30)
        favoriteFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        favoriteFrame.BorderSizePixel = 0
        favoriteFrame.LayoutOrder = #favoritesList:GetChildren()
        
        local corner = Instance.new("UICorner")
        corner.Parent = favoriteFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 320, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = name
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.Parent = favoriteFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "Load"
        loadButton.Size = UDim2.new(0, 24, 0, 24)
        loadButton.Position = UDim2.new(1, -56, 0, 3)
        loadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        loadButton.Text = "‣"
        loadButton.TextSize = 12
        loadButton.Parent = favoriteFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local deleteButton = Instance.new("TextButton")
        deleteButton.Name = "Delete"
        deleteButton.Size = UDim2.new(0, 24, 0, 24)
        deleteButton.Position = UDim2.new(1, -28, 0, 3)
        deleteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        deleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        deleteButton.Text = "🗑️"
        deleteButton.TextSize = 10
        deleteButton.Parent = favoriteFrame
        
        local deleteCorner = Instance.new("UICorner")
        deleteCorner.Parent = deleteButton
        
        loadButton.MouseButton1Click:Connect(function()
            Forge.TextBox.Text = scriptData.code
            switchTab("executor")
        end)
        
        deleteButton.MouseButton1Click:Connect(function()
            FavoritesData.scripts[name] = nil
            saveFavorites()
            updateFavoritesList()
        end)
        
        favoriteFrame.Parent = favoritesList
    end
    
    favoritesList.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
end

local function searchScripts(query)
    local searchList = Forge.SearchList
    if not searchList then return end
    
    for _, child in pairs(searchList:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    searchList.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    local loadingText = Instance.new("TextLabel")
    loadingText.Size = UDim2.new(1, 0, 0, 30)
    loadingText.Position = UDim2.new(0, 0, 0, 0)
    loadingText.BackgroundTransparency = 1
    loadingText.Text = "Searching..."
    loadingText.TextColor3 = Color3.fromRGB(0, 15, 255)
    loadingText.TextSize = 14
    loadingText.Parent = searchList
    
    local url = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(query) .. "&max=10"
    
    local success, result = pcall(function()
        return game:HttpGetAsync(url)
    end)
    
    loadingText:Destroy()
    
    if not success then
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(1, 0, 0, 30)
        errorText.Position = UDim2.new(0, 0, 0, 0)
        errorText.BackgroundTransparency = 1
        errorText.Text = "Failed to search scripts"
        errorText.TextColor3 = Color3.fromRGB(255, 0, 0)
        errorText.TextSize = 14
        errorText.Parent = searchList
        return
    end
    
    local data
    success, data = pcall(function()
        return HttpService:JSONDecode(result)
    end)
    
    if not success or not data.result or not data.result.scripts then
        local errorText = Instance.new("TextLabel")
        errorText.Size = UDim2.new(1, 0, 0, 30)
        errorText.Position = UDim2.new(0, 0, 0, 0)
        errorText.BackgroundTransparency = 1
        errorText.Text = "No scripts found"
        errorText.TextColor3 = Color3.fromRGB(255, 255, 255)
        errorText.TextSize = 14
        errorText.Parent = searchList
        return
    end
    
    local yPosition = 0
    for _, scriptData in pairs(data.result.scripts) do
        local scriptFrame = Instance.new("Frame")
        scriptFrame.Size = UDim2.new(1, -10, 0, 32)
        scriptFrame.Position = UDim2.new(0, 5, 0, yPosition)
        scriptFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        scriptFrame.BorderSizePixel = 0
        
        local corner = Instance.new("UICorner")
        corner.Parent = scriptFrame
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(0, 350, 1, 0)
        nameLabel.Position = UDim2.new(0, 6, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = scriptData.title .. " [👁️" .. scriptData.views .. "] [👍" .. (scriptData.likeCount or 0) .. "]"
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.TextSize = 12
        nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
        nameLabel.Parent = scriptFrame
        
        local loadButton = Instance.new("TextButton")
        loadButton.Name = "Load"
        loadButton.Size = UDim2.new(0, 24, 0, 24)
        loadButton.Position = UDim2.new(1, -56, 0, 4)
        loadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        loadButton.Text = "‣"
        loadButton.TextSize = 12
        loadButton.Parent = scriptFrame
        
        local loadCorner = Instance.new("UICorner")
        loadCorner.Parent = loadButton
        
        local favoriteButton = Instance.new("TextButton")
        favoriteButton.Name = "Favorite"
        favoriteButton.Size = UDim2.new(0, 24, 0, 24)
        favoriteButton.Position = UDim2.new(1, -28, 0, 4)
        favoriteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        favoriteButton.TextColor3 = Color3.fromRGB(191, 191, 191)
        favoriteButton.Text = "★"
        favoriteButton.TextSize = 12
        favoriteButton.Parent = scriptFrame
        
        local favoriteCorner = Instance.new("UICorner")
        favoriteCorner.Parent = favoriteButton
        
        loadButton.MouseButton1Click:Connect(function()
            local scriptUrl = "https://scriptblox.com/api/script/raw/" .. scriptData.slug
            
            local success, scriptContent = pcall(function()
                return game:HttpGetAsync(scriptUrl)
            end)
            
            if success then
                Forge.TextBox.Text = scriptContent
                switchTab("executor")
            else
                warn("Failed to load script: " .. scriptData.title)
            end
        end)
        
        favoriteButton.MouseButton1Click:Connect(function()
            local scriptUrl = "https://scriptblox.com/api/script/raw/" .. scriptData.slug
            
            local success, scriptContent = pcall(function()
                return game:HttpGetAsync(scriptUrl)
            end)
            
            if success then
                FavoritesData.scripts[scriptData.title] = {
                    code = scriptContent,
                    timestamp = os.time()
                }
                saveFavorites()
                updateFavoritesList()
                favoriteButton.TextColor3 = Color3.fromRGB(255, 215, 0)
            end
        end)
        
        scriptFrame.Parent = searchList
        yPosition = yPosition + 37
    end
    
    searchList.CanvasSize = UDim2.new(0, 0, 0, yPosition)
end

Forge.Execute.MouseButton1Click:Connect(function()
    local scriptText = Forge.TextBox.Text
    if scriptText and scriptText ~= "" then
        local success, error = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            warn("Execution error: " .. error)
        end
    end
end)

Forge.Clear.MouseButton1Click:Connect(function()
    Forge.TextBox.Text = ""
end)

Forge.Save.MouseButton1Click:Connect(function()
    local scriptText = Forge.TextBox.Text
    if scriptText and scriptText ~= "" then
        createSavePopup()
    end
end)

Forge.ExeTab.MouseButton1Click:Connect(function()
    switchTab("executor")
end)

Forge.SearchTab.MouseButton1Click:Connect(function()
    switchTab("search")
end)

Forge.FavTab.MouseButton1Click:Connect(function()
    switchTab("favorites")
end)

Forge.SearchBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local query = Forge.SearchBox.Text
        if query and query ~= "" then
            searchScripts(query)
        end
    end
end)

local minimized = false
Forge.Hide.MouseButton1Click:Connect(function()
    minimized = true
    Forge.MainFrame.Visible = false
    Forge.Show.Visible = true
end)

Forge.ShowButton.MouseButton1Click:Connect(function()
    minimized = false
    Forge.MainFrame.Visible = true
    Forge.Show.Visible = false
end)

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

dragify(Forge.Show)

local dragging = false
local dragInput2, dragStart2, startPos2

local function update2(input)
    local delta = input.Position - dragStart2
    Forge.MainFrame.Position = UDim2.new(startPos2.X.Scale, startPos2.X.Offset + delta.X, startPos2.Y.Scale, startPos2.Y.Offset + delta.Y)
end

Forge.Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart2 = input.Position
        startPos2 = Forge.MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Forge.Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput2 = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput2 and dragging then
        update2(input)
    end
end)

updateStats()
table.insert(statsConnections, RunService.RenderStepped:Connect(updateStats))
updateFavoritesList()
switchTab("executor")

return Forge.ScreenGui, require