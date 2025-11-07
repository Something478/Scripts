local Luma = {}

function Luma:CreateWindow(config)
    config = config or {}
    
    local CollectionService = game:GetService("CollectionService")
    local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")

    local LumaGUI = Instance.new("ScreenGui")
    LumaGUI.Name = "Luma"
    LumaGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    LumaGUI.RobloxLocked = true
    LumaGUI.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

    CollectionService:AddTag(LumaGUI, "main")

    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = LumaGUI
    Tab.Active = true
    Tab.BorderSizePixel = 0
    Tab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Tab.Size = config.Size or UDim2.new(0, 650, 0, 400)
    Tab.Position = config.Position or UDim2.new(0.5, -325, 0.5, -200)
    Tab.BackgroundTransparency = 0

    local UICornerTab = Instance.new("UICorner")
    UICornerTab.CornerRadius = UDim.new(0, 8)
    UICornerTab.Parent = Tab

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.Parent = Tab
    TopBar.BorderSizePixel = 0
    TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TopBar.Size = UDim2.new(1, 0, 0, 35)
    TopBar.Position = UDim2.new(0, 0, 0, 0)

    local UICornerTop = Instance.new("UICorner")
    UICornerTop.CornerRadius = UDim.new(0, 8)
    UICornerTop.Parent = TopBar

    local TabName = Instance.new("TextLabel")
    TabName.Name = "TabName"
    TabName.Parent = TopBar
    TabName.BorderSizePixel = 0
    TabName.TextSize = 14
    TabName.TextXAlignment = Enum.TextXAlignment.Left
    TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabName.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
    TabName.TextColor3 = Color3.fromRGB(220, 220, 220)
    TabName.BackgroundTransparency = 1
    TabName.Size = UDim2.new(0, 200, 1, 0)
    TabName.Text = config.Title or "Luma UI"
    TabName.Position = UDim2.new(0, 15, 0, 0)

    local CloseButton = Instance.new("TextButton")
    CloseButton.Name = "CloseButton"
    CloseButton.Parent = TopBar
    CloseButton.TextSize = 14
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.BackgroundColor3 = Color3.fromRGB(220, 53, 69)
    CloseButton.Size = UDim2.new(0, 25, 0, 25)
    CloseButton.Text = "×"
    CloseButton.Position = UDim2.new(1, -30, 0, 5)

    local UICornerClose = Instance.new("UICorner")
    UICornerClose.CornerRadius = UDim.new(0, 4)
    UICornerClose.Parent = CloseButton

    local FullscreenButton = Instance.new("TextButton")
    FullscreenButton.Name = "FullscreenButton"
    FullscreenButton.Parent = TopBar
    FullscreenButton.TextSize = 12
    FullscreenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FullscreenButton.BackgroundColor3 = Color3.fromRGB(108, 117, 125)
    FullscreenButton.Size = UDim2.new(0, 25, 0, 25)
    FullscreenButton.Text = "□"
    FullscreenButton.Position = UDim2.new(1, -60, 0, 5)

    local UICornerFullscreen = Instance.new("UICorner")
    UICornerFullscreen.CornerRadius = UDim.new(0, 4)
    UICornerFullscreen.Parent = FullscreenButton

    local MinimizeButton = Instance.new("TextButton")
    MinimizeButton.Name = "MinimizeButton"
    MinimizeButton.Parent = TopBar
    MinimizeButton.TextSize = 14
    MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeButton.BackgroundColor3 = Color3.fromRGB(40, 167, 69)
    MinimizeButton.Size = UDim2.new(0, 25, 0, 25)
    MinimizeButton.Text = "-"
    MinimizeButton.Position = UDim2.new(1, -90, 0, 5)

    local UICornerMinimize = Instance.new("UICorner")
    UICornerMinimize.CornerRadius = UDim.new(0, 4)
    UICornerMinimize.Parent = MinimizeButton

    local Window = Instance.new("Frame")
    Window.Name = "Window"
    Window.Parent = Tab
    Window.BorderSizePixel = 0
    Window.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Window.Size = UDim2.new(1, 0, 1, -35)
    Window.Position = UDim2.new(0, 0, 0, 35)

    local UICornerWindow = Instance.new("UICorner")
    UICornerWindow.CornerRadius = UDim.new(0, 8)
    UICornerWindow.Parent = Window

    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.Parent = Window
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ScrollingFrame.Size = UDim2.new(1, -10, 1, -10)
    ScrollingFrame.Position = UDim2.new(0, 5, 0, 5)
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.ScrollBarThickness = 6
    ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 60)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = ScrollingFrame
    UIListLayout.Padding = UDim.new(0, 8)
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = ScrollingFrame
    UIPadding.PaddingLeft = UDim.new(0, 8)
    UIPadding.PaddingTop = UDim.new(0, 8)

    local UIDragDetector = Instance.new("TextButton")
    UIDragDetector.Name = "UIDragDetector"
    UIDragDetector.Parent = TopBar
    UIDragDetector.BackgroundTransparency = 1
    UIDragDetector.Size = UDim2.new(1, -100, 1, 0)
    UIDragDetector.Text = ""
    UIDragDetector.Position = UDim2.new(0, 0, 0, 0)

    local isMinimized = false
    local isFullscreen = false
    local originalSize = Tab.Size
    local originalPosition = Tab.Position
    local originalWindowSize = Window.Size
    local originalScrollSize = ScrollingFrame.Size
    local wasMinimizedBeforeFullscreen = false

    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local windowAPI = {}

    function windowAPI:CreateTab(name)
        local tabAPI = {}
        
        function tabAPI:CreateSection(name)
            local sectionAPI = {}
            
            function sectionAPI:CreateButton(config)
                local button = Instance.new("TextButton")
                button.Text = config.Text or "Button"
                button.Size = UDim2.new(1, -16, 0, 40)
                button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                button.TextColor3 = Color3.fromRGB(255, 255, 255)
                button.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
                button.TextSize = 14
                button.AutoButtonColor = true
                button.Parent = ScrollingFrame
                
                local corner = Instance.new("UICorner")
                corner.CornerRadius = UDim.new(0, 6)
                corner.Parent = button
                
                local stroke = Instance.new("UIStroke")
                stroke.Color = Color3.fromRGB(60, 60, 60)
                stroke.Thickness = 1
                stroke.Parent = button
                
                if config.Callback then
                    button.MouseButton1Click:Connect(config.Callback)
                end
                
                return button
            end
            
            function sectionAPI:CreateToggle(config)
                local toggleFrame = Instance.new("Frame")
                toggleFrame.Size = UDim2.new(1, -16, 0, 30)
                toggleFrame.BackgroundTransparency = 1
                toggleFrame.Parent = ScrollingFrame
                
                local label = Instance.new("TextLabel")
                label.Text = config.Text or "Toggle"
                label.Size = UDim2.new(0.7, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.fromRGB(200, 200, 200)
                label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
                label.TextSize = 12
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.Parent = toggleFrame
                
                local toggleButton = Instance.new("TextButton")
                toggleButton.Size = UDim2.new(0, 40, 0, 20)
                toggleButton.Position = UDim2.new(1, -40, 0.5, -10)
                toggleButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
                toggleButton.Text = ""
                toggleButton.Parent = toggleFrame
                
                local corner = Instance.new("UICorner")
                corner.CornerRadius = UDim.new(0, 10)
                corner.Parent = toggleButton
                
                local toggleCircle = Instance.new("Frame")
                toggleCircle.Size = UDim2.new(0, 16, 0, 16)
                toggleCircle.Position = UDim2.new(0, 2, 0, 2)
                toggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                toggleCircle.Parent = toggleButton
                
                local circleCorner = Instance.new("UICorner")
                circleCorner.CornerRadius = UDim.new(1, 0)
                circleCorner.Parent = toggleCircle
                
                local isToggled = false
                
                toggleButton.MouseButton1Click:Connect(function()
                    isToggled = not isToggled
                    if isToggled then
                        TweenService:Create(toggleCircle, tweenInfo, {Position = UDim2.new(0, 22, 0, 2)}):Play()
                        TweenService:Create(toggleButton, tweenInfo, {BackgroundColor3 = Color3.fromRGB(40, 167, 69)}):Play()
                    else
                        TweenService:Create(toggleCircle, tweenInfo, {Position = UDim2.new(0, 2, 0, 2)}):Play()
                        TweenService:Create(toggleButton, tweenInfo, {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play()
                    end
                    if config.Callback then
                        config.Callback(isToggled)
                    end
                end)
                
                return toggleFrame
            end
            
            function sectionAPI:CreateLabel(config)
                local label = Instance.new("TextLabel")
                label.Text = config.Text or "Label"
                label.Size = UDim2.new(1, -16, 0, 30)
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.fromRGB(200, 200, 200)
                label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
                label.TextSize = 12
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.Parent = ScrollingFrame
                
                return label
            end
            
            return sectionAPI
        end
        
        return tabAPI
    end

    CloseButton.MouseButton1Click:Connect(function()
        local fadeOut = TweenService:Create(LumaGUI, tweenInfo, {Enabled = false})
        fadeOut:Play()
        fadeOut.Completed:Connect(function()
            LumaGUI:Destroy()
        end)
    end)

    MinimizeButton.MouseButton1Click:Connect(function()
        if isFullscreen then return end
        
        if not isMinimized then
            isMinimized = true
            TweenService:Create(Window, tweenInfo, {Size = UDim2.new(1, 0, 0, 0)}):Play()
            TweenService:Create(ScrollingFrame, tweenInfo, {Size = UDim2.new(1, -10, 0, 0)}):Play()
            MinimizeButton.Text = "+"
        else
            isMinimized = false
            TweenService:Create(Window, tweenInfo, {Size = originalWindowSize}):Play()
            TweenService:Create(ScrollingFrame, tweenInfo, {Size = originalScrollSize}):Play()
            MinimizeButton.Text = "-"
        end
    end)

    FullscreenButton.MouseButton1Click:Connect(function()
        if not isFullscreen then
            isFullscreen = true
            wasMinimizedBeforeFullscreen = isMinimized
            
            if isMinimized then
                isMinimized = false
                Window.Size = originalWindowSize
                ScrollingFrame.Size = originalScrollSize
                MinimizeButton.Text = "-"
            end
            
            originalSize = Tab.Size
            originalPosition = Tab.Position
            originalWindowSize = Window.Size
            originalScrollSize = ScrollingFrame.Size
            
            UIDragDetector.Enabled = false
            
            TweenService:Create(Tab, tweenInfo, {
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0)
            }):Play()
            
            FullscreenButton.Text = "❐"
        else
            isFullscreen = false
            UIDragDetector.Enabled = true
            
            TweenService:Create(Tab, tweenInfo, {
                Size = originalSize,
                Position = originalPosition
            }):Play()
            
            if wasMinimizedBeforeFullscreen then
                isMinimized = true
                TweenService:Create(Window, tweenInfo, {Size = UDim2.new(1, 0, 0, 0)}):Play()
                TweenService:Create(ScrollingFrame, tweenInfo, {Size = UDim2.new(1, -10, 0, 0)}):Play()
                MinimizeButton.Text = "+"
            else
                TweenService:Create(Window, tweenInfo, {Size = originalWindowSize}):Play()
                TweenService:Create(ScrollingFrame, tweenInfo, {Size = originalScrollSize}):Play()
            end
            
            FullscreenButton.Text = "□"
        end
    end)

    local dragInput, dragStart, startPos
    UIDragDetector.MouseButton1Down:Connect(function(input)
        dragStart = input.Position
        startPos = Tab.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragInput = nil
            end
        end)
    end)

    UIDragDetector.MouseButton1Up:Connect(function(input)
        dragInput = nil
    end)

    UIDragDetector.MouseMoved:Connect(function(input)
        if not UIDragDetector.Enabled then return end
        if dragInput and dragInput == input then
            local delta = input.Position - dragStart
            Tab.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    return windowAPI
end

return Luma