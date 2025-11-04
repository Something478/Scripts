getgenv().Luma = {}

Luma.Title = "Untitled Hub - Luma Library"
Luma.Theme = {
    Background = Color3.fromRGB(30, 30, 40),
    Header = Color3.fromRGB(45, 45, 55),
    TabButton = Color3.fromRGB(50, 50, 60),
    TabButtonSelected = Color3.fromRGB(65, 65, 75),
    Button = Color3.fromRGB(60, 60, 70),
    ButtonHover = Color3.fromRGB(70, 70, 80),
    ToggleOff = Color3.fromRGB(80, 80, 90),
    ToggleOn = Color3.fromRGB(0, 170, 255),
    Text = Color3.fromRGB(255, 255, 255),
    TextSecondary = Color3.fromRGB(200, 200, 200),
    CloseButton = Color3.fromRGB(255, 80, 80),
    CloseButtonHover = Color3.fromRGB(255, 100, 100),
    MinimizeButton = Color3.fromRGB(255, 180, 60),
    MinimizeButtonHover = Color3.fromRGB(255, 200, 80),
    ShowButton = Color3.fromRGB(0, 0, 0)
}

function Luma:CreateMainWindow(Name)
    local ScreenGui = Instance.new("ScreenGui")
    local ShowButton = Instance.new("TextButton")
    local MainFrame = Instance.new("Frame")
    local Header = Instance.new("Frame")
    local TitleLabel = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")
    local MinimizeButton = Instance.new("TextButton")
    local TabButtonsFrame = Instance.new("Frame")
    local TabListLayout = Instance.new("UIListLayout")
    local ContentFrame = Instance.new("Frame")
    
    ScreenGui.Name = Name .. "Gui"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    ShowButton.Name = "ShowButton"
    ShowButton.Size = UDim2.new(0, 120, 0, 40)
    ShowButton.Position = UDim2.new(0, 10, 0, 10)
    ShowButton.BackgroundColor3 = Luma.Theme.ShowButton
    ShowButton.BackgroundTransparency = 0.3
    ShowButton.Text = "Luma Library"
    ShowButton.TextColor3 = Luma.Theme.Text
    ShowButton.TextSize = 14
    ShowButton.Font = Enum.Font.GothamSemibold
    ShowButton.Parent = ScreenGui
    
    local ShowCorner = Instance.new("UICorner")
    ShowCorner.CornerRadius = UDim.new(0, 6)
    ShowCorner.Parent = ShowButton
    
    local ShowStroke = Instance.new("UIStroke")
    ShowStroke.Color = Color3.fromRGB(100, 100, 120)
    ShowStroke.Thickness = 1
    ShowStroke.Parent = ShowButton
    
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 500, 0, 400)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -200)
    MainFrame.BackgroundColor3 = Luma.Theme.Background
    MainFrame.Visible = false
    MainFrame.Parent = ScreenGui
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 8)
    MainCorner.Parent = MainFrame
    
    local MainStroke = Instance.new("UIStroke")
    MainStroke.Color = Color3.fromRGB(60, 60, 70)
    MainStroke.Thickness = 2
    MainStroke.Parent = MainFrame
    
    Header.Name = "Header"
    Header.Size = UDim2.new(1, 0, 0, 35)
    Header.BackgroundColor3 = Luma.Theme.Header
    Header.Parent = MainFrame
    
    local HeaderCorner = Instance.new("UICorner")
    HeaderCorner.CornerRadius = UDim.new(0, 8)
    HeaderCorner.Parent = Header
    
    TitleLabel.Name = "Title"
    TitleLabel.Size = UDim2.new(0.6, 0, 1, 0)
    TitleLabel.Position = UDim2.new(0.02, 0, 0, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = Luma.Title
    TitleLabel.TextColor3 = Luma.Theme.Text
    TitleLabel.TextSize = 16
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Parent = Header
    
    CloseButton.Name = "CloseButton"
    CloseButton.Size = UDim2.new(0, 30, 0, 25)
    CloseButton.Position = UDim2.new(1, -35, 0.5, -12.5)
    CloseButton.BackgroundColor3 = Luma.Theme.CloseButton
    CloseButton.Text = "×"
    CloseButton.TextColor3 = Luma.Theme.Text
    CloseButton.TextSize = 18
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.Parent = Header
    
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 5)
    CloseCorner.Parent = CloseButton
    
    CloseButton.MouseButton1Click:Connect(function()
        MainFrame.Visible = false
        ShowButton.Visible = true
    end)
    
    CloseButton.MouseEnter:Connect(function()
        CloseButton.BackgroundColor3 = Luma.Theme.CloseButtonHover
    end)
    
    CloseButton.MouseLeave:Connect(function()
        CloseButton.BackgroundColor3 = Luma.Theme.CloseButton
    end)
    
    MinimizeButton.Name = "MinimizeButton"
    MinimizeButton.Size = UDim2.new(0, 30, 0, 25)
    MinimizeButton.Position = UDim2.new(1, -70, 0.5, -12.5)
    MinimizeButton.BackgroundColor3 = Luma.Theme.MinimizeButton
    MinimizeButton.Text = "-"
    MinimizeButton.TextColor3 = Luma.Theme.Text
    MinimizeButton.TextSize = 18
    MinimizeButton.Font = Enum.Font.GothamBold
    MinimizeButton.Parent = Header
    
    local MinimizeCorner = Instance.new("UICorner")
    MinimizeCorner.CornerRadius = UDim.new(0, 5)
    MinimizeCorner.Parent = MinimizeButton
    
    local IsMinimized = false
    MinimizeButton.MouseButton1Click:Connect(function()
        IsMinimized = not IsMinimized
        if IsMinimized then
            MainFrame.Size = UDim2.new(0, 500, 0, 35)
            MinimizeButton.Text = "+"
        else
            MainFrame.Size = UDim2.new(0, 500, 0, 400)
            MinimizeButton.Text = "-"
        end
    end)
    
    MinimizeButton.MouseEnter:Connect(function()
        MinimizeButton.BackgroundColor3 = Luma.Theme.MinimizeButtonHover
    end)
    
    MinimizeButton.MouseLeave:Connect(function()
        MinimizeButton.BackgroundColor3 = Luma.Theme.MinimizeButton
    end)
    
    TabButtonsFrame.Name = "TabButtons"
    TabButtonsFrame.Size = UDim2.new(1, -20, 0, 35)
    TabButtonsFrame.Position = UDim2.new(0, 10, 0, 40)
    TabButtonsFrame.BackgroundTransparency = 1
    TabButtonsFrame.Parent = MainFrame
    
    TabListLayout = Instance.new("UIListLayout")
    TabListLayout.FillDirection = Enum.FillDirection.Horizontal
    TabListLayout.Padding = UDim.new(0, 8)
    TabListLayout.Parent = TabButtonsFrame
    
    local TabPadding = Instance.new("UIPadding")
    TabPadding.PaddingLeft = UDim.new(0, 5)
    TabPadding.PaddingRight = UDim.new(0, 5)
    TabPadding.Parent = TabButtonsFrame
    
    ContentFrame.Name = "Content"
    ContentFrame.Size = UDim2.new(1, -20, 1, -85)
    ContentFrame.Position = UDim2.new(0, 10, 0, 80)
    ContentFrame.BackgroundColor3 = Luma.Theme.Background
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Parent = MainFrame
    
    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0, 6)
    ContentCorner.Parent = ContentFrame
    
    local ContentScrolling = Instance.new("ScrollingFrame")
    ContentScrolling.Size = UDim2.new(1, 0, 1, 0)
    ContentScrolling.BackgroundTransparency = 1
    ContentScrolling.BorderSizePixel = 0
    ContentScrolling.ScrollBarThickness = 6
    ContentScrolling.ScrollBarImageColor3 = Luma.Theme.TabButton
    ContentScrolling.Parent = ContentFrame
    
    local ContentList = Instance.new("UIListLayout")
    ContentList.Padding = UDim.new(0, 8)
    ContentList.Parent = ContentScrolling
    
    ContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        ContentScrolling.CanvasSize = UDim2.new(0, 0, 0, ContentList.AbsoluteContentSize.Y)
    end)
    
    ShowButton.MouseButton1Click:Connect(function()
        MainFrame.Visible = true
        ShowButton.Visible = false
    end)
    
    local Dragging = false
    local DragInput, DragStart, StartPos
    
    Header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = true
            DragStart = input.Position
            StartPos = MainFrame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)
    
    Header.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            DragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == DragInput and Dragging then
            local Delta = input.Position - DragStart
            MainFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
        end
    end)
    
    local Tabs = {}
    
    function Tabs:CreateTab(TabName)
        local TabButton = Instance.new("TextButton")
        local TabContent = Instance.new("Frame")
        
        TabButton.Name = TabName .. "Tab"
        TabButton.Size = UDim2.new(0, 90, 1, 0)
        TabButton.BackgroundColor3 = Luma.Theme.TabButton
        TabButton.Text = TabName
        TabButton.TextColor3 = Luma.Theme.Text
        TabButton.TextSize = 13
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.Parent = TabButtonsFrame
        
        local TabCorner = Instance.new("UICorner")
        TabCorner.CornerRadius = UDim.new(0, 5)
        TabCorner.Parent = TabButton
        
        local TabStroke = Instance.new("UIStroke")
        TabStroke.Color = Color3.fromRGB(70, 70, 80)
        TabStroke.Thickness = 1
        TabStroke.Parent = TabButton
        
        TabContent.Name = TabName .. "Content"
        TabContent.Size = UDim2.new(1, 0, 1, 0)
        TabContent.BackgroundTransparency = 1
        TabContent.Visible = false
        TabContent.Parent = ContentScrolling
        
        local TabContentList = Instance.new("UIListLayout")
        TabContentList.Padding = UDim.new(0, 10)
        TabContentList.Parent = TabContent
        
        TabContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabContent.Size = UDim2.new(1, 0, 0, TabContentList.AbsoluteContentSize.Y)
        end)
        
        if #TabButtonsFrame:GetChildren() == 3 then
            TabButton.BackgroundColor3 = Luma.Theme.TabButtonSelected
            TabContent.Visible = true
        end
        
        TabButton.MouseButton1Click:Connect(function()
            for _, child in pairs(TabButtonsFrame:GetChildren()) do
                if child:IsA("TextButton") then
                    child.BackgroundColor3 = Luma.Theme.TabButton
                end
            end
            
            for _, child in pairs(ContentScrolling:GetChildren()) do
                if child:IsA("Frame") then
                    child.Visible = false
                end
            end
            
            TabButton.BackgroundColor3 = Luma.Theme.TabButtonSelected
            TabContent.Visible = true
        end)
        
        local TabElements = {}
        
        function TabElements:CreateButton(Text, Callback)
            local Button = Instance.new("TextButton")
            
            Button.Name = Text .. "Button"
            Button.Size = UDim2.new(1, 0, 0, 35)
            Button.BackgroundColor3 = Luma.Theme.Button
            Button.Text = Text
            Button.TextColor3 = Luma.Theme.Text
            Button.TextSize = 14
            Button.Font = Enum.Font.GothamSemibold
            Button.Parent = TabContent
            
            local ButtonCorner = Instance.new("UICorner")
            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Parent = Button
            
            local ButtonStroke = Instance.new("UIStroke")
            ButtonStroke.Color = Color3.fromRGB(80, 80, 90)
            ButtonStroke.Thickness = 1
            ButtonStroke.Parent = Button
            
            Button.MouseButton1Click:Connect(function()
                Callback()
            end)
            
            Button.MouseEnter:Connect(function()
                Button.BackgroundColor3 = Luma.Theme.ButtonHover
            end)
            
            Button.MouseLeave:Connect(function()
                Button.BackgroundColor3 = Luma.Theme.Button
            end)
            
            return Button
        end
        
        function TabElements:CreateToggle(Text, Callback)
            local ToggleFrame = Instance.new("Frame")
            local ToggleButton = Instance.new("TextButton")
            local ToggleLabel = Instance.new("TextLabel")
            local ToggleState = Instance.new("Frame")
            
            ToggleFrame.Name = Text .. "Toggle"
            ToggleFrame.Size = UDim2.new(1, 0, 0, 30)
            ToggleFrame.BackgroundTransparency = 1
            ToggleFrame.Parent = TabContent
            
            ToggleLabel.Name = "Label"
            ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
            ToggleLabel.Position = UDim2.new(0, 0, 0, 0)
            ToggleLabel.BackgroundTransparency = 1
            ToggleLabel.Text = Text
            ToggleLabel.TextColor3 = Luma.Theme.Text
            ToggleLabel.TextSize = 14
            ToggleLabel.Font = Enum.Font.Gotham
            ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            ToggleLabel.Parent = ToggleFrame
            
            ToggleButton.Name = "Toggle"
            ToggleButton.Size = UDim2.new(0, 45, 0, 22)
            ToggleButton.Position = UDim2.new(1, -45, 0.5, -11)
            ToggleButton.BackgroundColor3 = Luma.Theme.ToggleOff
            ToggleButton.Text = ""
            ToggleButton.Parent = ToggleFrame
            
            local ToggleCorner = Instance.new("UICorner")
            ToggleCorner.CornerRadius = UDim.new(0, 11)
            ToggleCorner.Parent = ToggleButton
            
            local ToggleStroke = Instance.new("UIStroke")
            ToggleStroke.Color = Color3.fromRGB(90, 90, 100)
            ToggleStroke.Thickness = 1
            ToggleStroke.Parent = ToggleButton
            
            ToggleState.Name = "State"
            ToggleState.Size = UDim2.new(0, 18, 0, 18)
            ToggleState.Position = UDim2.new(0, 2, 0.5, -9)
            ToggleState.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleState.Parent = ToggleButton
            
            local StateCorner = Instance.new("UICorner")
            StateCorner.CornerRadius = UDim.new(0, 9)
            StateCorner.Parent = ToggleState
            
            local StateStroke = Instance.new("UIStroke")
            StateStroke.Color = Color3.fromRGB(200, 200, 200)
            StateStroke.Thickness = 1
            StateStroke.Parent = ToggleState
            
            local IsToggled = false
            
            local function UpdateToggle()
                if IsToggled then
                    ToggleButton.BackgroundColor3 = Luma.Theme.ToggleOn
                    ToggleState.Position = UDim2.new(1, -20, 0.5, -9)
                else
                    ToggleButton.BackgroundColor3 = Luma.Theme.ToggleOff
                    ToggleState.Position = UDim2.new(0, 2, 0.5, -9)
                end
                Callback(IsToggled)
            end
            
            ToggleButton.MouseButton1Click:Connect(function()
                IsToggled = not IsToggled
                UpdateToggle()
            end)
            
            UpdateToggle()
            
            return {
                Set = function(state)
                    IsToggled = state
                    UpdateToggle()
                end,
                Get = function()
                    return IsToggled
                end
            }
        end
        
        function TabElements:CreateLabel(Text)
            local Label = Instance.new("TextLabel")
            
            Label.Name = Text .. "Label"
            Label.Size = UDim2.new(1, 0, 0, 25)
            Label.BackgroundTransparency = 1
            Label.Text = Text
            Label.TextColor3 = Luma.Theme.TextSecondary
            Label.TextSize = 14
            Label.Font = Enum.Font.Gotham
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = TabContent
            
            return Label
        end
        
        return TabElements
    end
    
    return Tabs
end

return Luma