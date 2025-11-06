getgenv().Luma = {}

Luma.Title = "Untitled Hub - Luma Library"

function Luma:CreateMainWindow(Name)
    local success, result = pcall(function()
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
        ShowButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ShowButton.BackgroundTransparency = 0.3
        ShowButton.Text = "Luma Library"
        ShowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
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
        MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
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
        Header.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
        Header.Parent = MainFrame
        
        local HeaderCorner = Instance.new("UICorner")
        HeaderCorner.CornerRadius = UDim.new(0, 8)
        HeaderCorner.Parent = Header
        
        TitleLabel.Name = "Title"
        TitleLabel.Size = UDim2.new(0.6, 0, 1, 0)
        TitleLabel.Position = UDim2.new(0.02, 0, 0, 0)
        TitleLabel.BackgroundTransparency = 1
        TitleLabel.Text = Luma.Title
        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.TextSize = 16
        TitleLabel.Font = Enum.Font.GothamBold
        TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
        TitleLabel.Parent = Header
        
        CloseButton.Name = "CloseButton"
        CloseButton.Size = UDim2.new(0, 30, 0, 25)
        CloseButton.Position = UDim2.new(1, -35, 0.5, -12.5)
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
        CloseButton.Text = "×"
        CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
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
            CloseButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
        end)
        
        CloseButton.MouseLeave:Connect(function()
            CloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
        end)
        
        MinimizeButton.Name = "MinimizeButton"
        MinimizeButton.Size = UDim2.new(0, 30, 0, 25)
        MinimizeButton.Position = UDim2.new(1, -70, 0.5, -12.5)
        MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 180, 60)
        MinimizeButton.Text = "-"
        MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
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
            MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 80)
        end)
        
        MinimizeButton.MouseLeave:Connect(function()
            MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 180, 60)
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
        ContentFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
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
        ContentScrolling.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 60)
        ContentScrolling.AutomaticCanvasSize = Enum.AutomaticSize.Y
        ContentScrolling.Parent = ContentFrame
        
        local ContentList = Instance.new("UIListLayout")
        ContentList.Padding = UDim.new(0, 8)
        ContentList.SortOrder = Enum.SortOrder.LayoutOrder
        ContentList.Parent = ContentScrolling
        
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
        local elementCount = 0
        
        function Tabs:CreateTab(TabName)
            local success, result = pcall(function()
                local TabButton = Instance.new("TextButton")
                local TabContent = Instance.new("Frame")
                
                TabButton.Name = TabName .. "Tab"
                TabButton.Size = UDim2.new(0, 90, 1, 0)
                TabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
                TabButton.Text = TabName
                TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
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
                TabContent.Size = UDim2.new(1, 0, 0, 0)
                TabContent.BackgroundTransparency = 1
                TabContent.Visible = false
                TabContent.LayoutOrder = 1
                TabContent.Parent = ContentScrolling
                
                local TabContentList = Instance.new("UIListLayout")
                TabContentList.Padding = UDim.new(0, 8)
                TabContentList.SortOrder = Enum.SortOrder.LayoutOrder
                TabContentList.Parent = TabContent
                
                TabContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    TabContent.Size = UDim2.new(1, 0, 0, TabContentList.AbsoluteContentSize.Y)
                end)
                
                if #TabButtonsFrame:GetChildren() == 3 then
                    TabButton.BackgroundColor3 = Color3.fromRGB(65, 65, 75)
                    TabContent.Visible = true
                end
                
                TabButton.MouseButton1Click:Connect(function()
                    for _, child in pairs(TabButtonsFrame:GetChildren()) do
                        if child:IsA("TextButton") then
                            child.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
                        end
                    end
                    
                    for _, child in pairs(ContentScrolling:GetChildren()) do
                        if child:IsA("Frame") then
                            child.Visible = false
                        end
                    end
                    
                    TabButton.BackgroundColor3 = Color3.fromRGB(65, 65, 75)
                    TabContent.Visible = true
                end)
                
                local TabElements = {}
                local tabElementCount = 0
                
                function TabElements:CreateSection(SectionName)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local SectionFrame = Instance.new("Frame")
                        local SectionLabel = Instance.new("TextLabel")
                        
                        SectionFrame.Name = "Section"
                        SectionFrame.Size = UDim2.new(1, 0, 0, 30)
                        SectionFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
                        SectionFrame.BackgroundTransparency = 0
                        SectionFrame.LayoutOrder = tabElementCount
                        SectionFrame.Parent = TabContent
                        
                        local SectionCorner = Instance.new("UICorner")
                        SectionCorner.CornerRadius = UDim.new(0, 5)
                        SectionCorner.Parent = SectionFrame
                        
                        local SectionStroke = Instance.new("UIStroke")
                        SectionStroke.Color = Color3.fromRGB(80, 80, 90)
                        SectionStroke.Thickness = 1
                        SectionStroke.Parent = SectionFrame
                        
                        SectionLabel.Name = "SectionLabel"
                        SectionLabel.Size = UDim2.new(1, -20, 1, 0)
                        SectionLabel.Position = UDim2.new(0, 10, 0, 0)
                        SectionLabel.BackgroundTransparency = 1
                        SectionLabel.Text = SectionName
                        SectionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        SectionLabel.TextSize = 14
                        SectionLabel.Font = Enum.Font.GothamBold
                        SectionLabel.TextXAlignment = Enum.TextXAlignment.Left
                        SectionLabel.Parent = SectionFrame
                        
                        local section = {}
                        
                        function section:Set(NewName)
                            SectionLabel.Text = NewName
                        end
                        
                        return section
                    end)
                    
                    if not success then
                        warn("Section creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateDivider()
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local DividerFrame = Instance.new("Frame")
                        
                        DividerFrame.Name = "Divider"
                        DividerFrame.Size = UDim2.new(1, 0, 0, 1)
                        DividerFrame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
                        DividerFrame.BackgroundTransparency = 0.3
                        DividerFrame.LayoutOrder = tabElementCount
                        DividerFrame.Parent = TabContent
                        
                        local DividerCorner = Instance.new("UICorner")
                        DividerCorner.CornerRadius = UDim.new(0, 2)
                        DividerCorner.Parent = DividerFrame
                        
                        local divider = {}
                        
                        function divider:Set(Visible)
                            DividerFrame.Visible = Visible
                        end
                        
                        return divider
                    end)
                    
                    if not success then
                        warn("Divider creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateParagraph(ParagraphSettings)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local ParagraphFrame = Instance.new("Frame")
                        local TitleLabel = Instance.new("TextLabel")
                        local ContentLabel = Instance.new("TextLabel")
                        
                        ParagraphFrame.Name = "Paragraph"
                        ParagraphFrame.Size = UDim2.new(1, 0, 0, 60)
                        ParagraphFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
                        ParagraphFrame.BackgroundTransparency = 0
                        ParagraphFrame.LayoutOrder = tabElementCount
                        ParagraphFrame.Parent = TabContent
                        
                        local ParagraphCorner = Instance.new("UICorner")
                        ParagraphCorner.CornerRadius = UDim.new(0, 5)
                        ParagraphCorner.Parent = ParagraphFrame
                        
                        local ParagraphStroke = Instance.new("UIStroke")
                        ParagraphStroke.Color = Color3.fromRGB(80, 80, 90)
                        ParagraphStroke.Thickness = 1
                        ParagraphStroke.Parent = ParagraphFrame
                        
                        TitleLabel.Name = "Title"
                        TitleLabel.Size = UDim2.new(1, -20, 0, 20)
                        TitleLabel.Position = UDim2.new(0, 10, 0, 5)
                        TitleLabel.BackgroundTransparency = 1
                        TitleLabel.Text = ParagraphSettings.Title or "Title"
                        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TitleLabel.TextSize = 14
                        TitleLabel.Font = Enum.Font.GothamBold
                        TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
                        TitleLabel.Parent = ParagraphFrame
                        
                        ContentLabel.Name = "Content"
                        ContentLabel.Size = UDim2.new(1, -20, 0, 35)
                        ContentLabel.Position = UDim2.new(0, 10, 0, 25)
                        ContentLabel.BackgroundTransparency = 1
                        ContentLabel.Text = ParagraphSettings.Content or "Content"
                        ContentLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
                        ContentLabel.TextSize = 12
                        ContentLabel.Font = Enum.Font.Gotham
                        ContentLabel.TextXAlignment = Enum.TextXAlignment.Left
                        ContentLabel.TextYAlignment = Enum.TextYAlignment.Top
                        ContentLabel.TextWrapped = true
                        ContentLabel.Parent = ParagraphFrame
                        
                        local paragraph = {}
                        
                        function paragraph:Set(NewSettings)
                            if NewSettings.Title then
                                TitleLabel.Text = NewSettings.Title
                            end
                            if NewSettings.Content then
                                ContentLabel.Text = NewSettings.Content
                            end
                        end
                        
                        return paragraph
                    end)
                    
                    if not success then
                        warn("Paragraph creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateInput(InputSettings)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local InputFrame = Instance.new("Frame")
                        local InputLabel = Instance.new("TextLabel")
                        local TextBox = Instance.new("TextBox")
                        
                        InputFrame.Name = "Input"
                        InputFrame.Size = UDim2.new(1, 0, 0, 60)
                        InputFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
                        InputFrame.BackgroundTransparency = 0
                        InputFrame.LayoutOrder = tabElementCount
                        InputFrame.Parent = TabContent
                        
                        local InputCorner = Instance.new("UICorner")
                        InputCorner.CornerRadius = UDim.new(0, 5)
                        InputCorner.Parent = InputFrame
                        
                        local InputStroke = Instance.new("UIStroke")
                        InputStroke.Color = Color3.fromRGB(80, 80, 90)
                        InputStroke.Thickness = 1
                        InputStroke.Parent = InputFrame
                        
                        InputLabel.Name = "Label"
                        InputLabel.Size = UDim2.new(1, -20, 0, 20)
                        InputLabel.Position = UDim2.new(0, 10, 0, 5)
                        InputLabel.BackgroundTransparency = 1
                        InputLabel.Text = InputSettings.Name or "Input"
                        InputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        InputLabel.TextSize = 14
                        InputLabel.Font = Enum.Font.Gotham
                        InputLabel.TextXAlignment = Enum.TextXAlignment.Left
                        InputLabel.Parent = InputFrame
                        
                        TextBox.Name = "TextBox"
                        TextBox.Size = UDim2.new(1, -20, 0, 25)
                        TextBox.Position = UDim2.new(0, 10, 0, 30)
                        TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
                        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextBox.PlaceholderText = InputSettings.PlaceholderText or "Enter text..."
                        TextBox.Text = InputSettings.CurrentValue or ""
                        TextBox.TextSize = 12
                        TextBox.Font = Enum.Font.Gotham
                        TextBox.Parent = InputFrame
                        
                        local TextBoxCorner = Instance.new("UICorner")
                        TextBoxCorner.CornerRadius = UDim.new(0, 4)
                        TextBoxCorner.Parent = TextBox
                        
                        local TextBoxStroke = Instance.new("UIStroke")
                        TextBoxStroke.Color = Color3.fromRGB(70, 70, 80)
                        TextBoxStroke.Thickness = 1
                        TextBoxStroke.Parent = TextBox
                        
                        TextBox.FocusLost:Connect(function()
                            if InputSettings.Callback then
                                InputSettings.Callback(TextBox.Text)
                            end
                            if InputSettings.RemoveTextAfterFocusLost then
                                TextBox.Text = ""
                            end
                        end)
                        
                        local input = {}
                        
                        function input:Set(Value)
                            TextBox.Text = Value
                            if InputSettings.Callback then
                                InputSettings.Callback(Value)
                            end
                        end
                        
                        return input
                    end)
                    
                    if not success then
                        warn("Input creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateSlider(SliderSettings)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local SliderFrame = Instance.new("Frame")
                        local SliderLabel = Instance.new("TextLabel")
                        local SliderTrack = Instance.new("Frame")
                        local SliderProgress = Instance.new("Frame")
                        local SliderButton = Instance.new("TextButton")
                        local ValueLabel = Instance.new("TextLabel")
                        
                        SliderFrame.Name = "Slider"
                        SliderFrame.Size = UDim2.new(1, 0, 0, 60)
                        SliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
                        SliderFrame.BackgroundTransparency = 0
                        SliderFrame.LayoutOrder = tabElementCount
                        SliderFrame.Parent = TabContent
                        
                        local SliderCorner = Instance.new("UICorner")
                        SliderCorner.CornerRadius = UDim.new(0, 5)
                        SliderCorner.Parent = SliderFrame
                        
                        local SliderStroke = Instance.new("UIStroke")
                        SliderStroke.Color = Color3.fromRGB(80, 80, 90)
                        SliderStroke.Thickness = 1
                        SliderStroke.Parent = SliderFrame
                        
                        SliderLabel.Name = "Label"
                        SliderLabel.Size = UDim2.new(1, -20, 0, 20)
                        SliderLabel.Position = UDim2.new(0, 10, 0, 5)
                        SliderLabel.BackgroundTransparency = 1
                        SliderLabel.Text = SliderSettings.Name or "Slider"
                        SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        SliderLabel.TextSize = 14
                        SliderLabel.Font = Enum.Font.Gotham
                        SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
                        SliderLabel.Parent = SliderFrame
                        
                        ValueLabel.Name = "Value"
                        ValueLabel.Size = UDim2.new(0, 60, 0, 20)
                        ValueLabel.Position = UDim2.new(1, -70, 0, 5)
                        ValueLabel.BackgroundTransparency = 1
                        ValueLabel.Text = tostring(SliderSettings.CurrentValue or SliderSettings.Min or 0) .. (SliderSettings.Suffix or "")
                        ValueLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
                        ValueLabel.TextSize = 12
                        ValueLabel.Font = Enum.Font.Gotham
                        ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
                        ValueLabel.Parent = SliderFrame
                        
                        SliderTrack.Name = "Track"
                        SliderTrack.Size = UDim2.new(1, -20, 0, 15)
                        SliderTrack.Position = UDim2.new(0, 10, 0, 35)
                        SliderTrack.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
                        SliderTrack.Parent = SliderFrame
                        
                        local TrackCorner = Instance.new("UICorner")
                        TrackCorner.CornerRadius = UDim.new(0, 7)
                        TrackCorner.Parent = SliderTrack
                        
                        SliderProgress.Name = "Progress"
                        SliderProgress.Size = UDim2.new(0, 0, 1, 0)
                        SliderProgress.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
                        SliderProgress.Parent = SliderTrack
                        
                        local ProgressCorner = Instance.new("UICorner")
                        ProgressCorner.CornerRadius = UDim.new(0, 7)
                        ProgressCorner.Parent = SliderProgress
                        
                        SliderButton.Name = "SliderButton"
                        SliderButton.Size = UDim2.new(1, 0, 1, 0)
                        SliderButton.BackgroundTransparency = 1
                        SliderButton.Text = ""
                        SliderButton.Parent = SliderTrack
                        
                        local min = SliderSettings.Min or 0
                        local max = SliderSettings.Max or 100
                        local currentValue = SliderSettings.CurrentValue or min
                        local range = max - min
                        local increment = SliderSettings.Increment or 1
                        
                        local function updateSlider(value)
                            currentValue = math.clamp(value, min, max)
                            local percentage = (currentValue - min) / range
                            SliderProgress.Size = UDim2.new(percentage, 0, 1, 0)
                            ValueLabel.Text = tostring(currentValue) .. (SliderSettings.Suffix or "")
                            
                            if SliderSettings.Callback then
                                SliderSettings.Callback(currentValue)
                            end
                        end
                        
                        updateSlider(currentValue)
                        
                        local dragging = false
                        
                        SliderButton.MouseButton1Down:Connect(function()
                            dragging = true
                        end)
                        
                        game:GetService("UserInputService").InputEnded:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                dragging = false
                            end
                        end)
                        
                        game:GetService("UserInputService").InputChanged:Connect(function(input)
                            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                local mousePos = game:GetService("Players").LocalPlayer:GetMouse()
                                local trackAbsPos = SliderTrack.AbsolutePosition
                                local trackAbsSize = SliderTrack.AbsoluteSize
                                
                                local relativeX = math.clamp(mousePos.X - trackAbsPos.X, 0, trackAbsSize.X)
                                local percentage = relativeX / trackAbsSize.X
                                local newValue = min + (percentage * range)
                                newValue = math.floor(newValue / increment) * increment
                                
                                updateSlider(newValue)
                            end
                        end)
                        
                        local slider = {}
                        
                        function slider:Set(Value)
                            updateSlider(Value)
                        end
                        
                        function slider:Get()
                            return currentValue
                        end
                        
                        return slider
                    end)
                    
                    if not success then
                        warn("Slider creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateDropdown(DropdownSettings)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local DropdownFrame = Instance.new("Frame")
                        local DropdownLabel = Instance.new("TextLabel")
                        local DropdownButton = Instance.new("TextButton")
                        local DropdownList = Instance.new("ScrollingFrame")
                        local DropdownListLayout = Instance.new("UIListLayout")
                        
                        DropdownFrame.Name = "Dropdown"
                        DropdownFrame.Size = UDim2.new(1, 0, 0, 40)
                        DropdownFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
                        DropdownFrame.BackgroundTransparency = 0
                        DropdownFrame.LayoutOrder = tabElementCount
                        DropdownFrame.Parent = TabContent
                        
                        local DropdownCorner = Instance.new("UICorner")
                        DropdownCorner.CornerRadius = UDim.new(0, 5)
                        DropdownCorner.Parent = DropdownFrame
                        
                        local DropdownStroke = Instance.new("UIStroke")
                        DropdownStroke.Color = Color3.fromRGB(80, 80, 90)
                        DropdownStroke.Thickness = 1
                        DropdownStroke.Parent = DropdownFrame
                        
                        DropdownLabel.Name = "Label"
                        DropdownLabel.Size = UDim2.new(1, -20, 0, 20)
                        DropdownLabel.Position = UDim2.new(0, 10, 0, 5)
                        DropdownLabel.BackgroundTransparency = 1
                        DropdownLabel.Text = DropdownSettings.Name or "Dropdown"
                        DropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        DropdownLabel.TextSize = 14
                        DropdownLabel.Font = Enum.Font.Gotham
                        DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
                        DropdownLabel.Parent = DropdownFrame
                        
                        DropdownButton.Name = "DropdownButton"
                        DropdownButton.Size = UDim2.new(1, -20, 0, 25)
                        DropdownButton.Position = UDim2.new(0, 10, 0, 25)
                        DropdownButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
                        DropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                        DropdownButton.Text = DropdownSettings.CurrentOption or "Select..."
                        DropdownButton.TextSize = 12
                        DropdownButton.Font = Enum.Font.Gotham
                        DropdownButton.Parent = DropdownFrame
                        
                        local ButtonCorner = Instance.new("UICorner")
                        ButtonCorner.CornerRadius = UDim.new(0, 4)
                        ButtonCorner.Parent = DropdownButton
                        
                        local ButtonStroke = Instance.new("UIStroke")
                        ButtonStroke.Color = Color3.fromRGB(70, 70, 80)
                        ButtonStroke.Thickness = 1
                        ButtonStroke.Parent = DropdownButton
                        
                        DropdownList.Name = "DropdownList"
                        DropdownList.Size = UDim2.new(1, -20, 0, 0)
                        DropdownList.Position = UDim2.new(0, 10, 0, 55)
                        DropdownList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
                        DropdownList.BorderSizePixel = 0
                        DropdownList.ScrollBarThickness = 4
                        DropdownList.Visible = false
                        DropdownList.Parent = DropdownFrame
                        
                        local ListCorner = Instance.new("UICorner")
                        ListCorner.CornerRadius = UDim.new(0, 4)
                        ListCorner.Parent = DropdownList
                        
                        DropdownListLayout.Padding = UDim.new(0, 2)
                        DropdownListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        DropdownListLayout.Parent = DropdownList
                        
                        local isOpen = false
                        
                        local function toggleDropdown()
                            isOpen = not isOpen
                            if isOpen then
                                DropdownList.Visible = true
                                DropdownList.Size = UDim2.new(1, -20, 0, math.min(#DropdownSettings.Options * 25, 125))
                                DropdownFrame.Size = UDim2.new(1, 0, 0, 55 + math.min(#DropdownSettings.Options * 25, 125))
                            else
                                DropdownList.Visible = false
                                DropdownList.Size = UDim2.new(1, -20, 0, 0)
                                DropdownFrame.Size = UDim2.new(1, 0, 0, 40)
                            end
                        end
                        
                        DropdownButton.MouseButton1Click:Connect(toggleDropdown)
                        
                        for i, option in ipairs(DropdownSettings.Options) do
                            local OptionButton = Instance.new("TextButton")
                            OptionButton.Name = option
                            OptionButton.Size = UDim2.new(1, 0, 0, 23)
                            OptionButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
                            OptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                            OptionButton.Text = option
                            OptionButton.TextSize = 12
                            OptionButton.Font = Enum.Font.Gotham
                            OptionButton.Parent = DropdownList
                            
                            local OptionCorner = Instance.new("UICorner")
                            OptionCorner.CornerRadius = UDim.new(0, 3)
                            OptionCorner.Parent = OptionButton
                            
                            OptionButton.MouseButton1Click:Connect(function()
                                DropdownButton.Text = option
                                DropdownSettings.CurrentOption = option
                                if DropdownSettings.Callback then
                                    DropdownSettings.Callback(option)
                                end
                                toggleDropdown()
                            end)
                        end
                        
                        DropdownListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                            DropdownList.CanvasSize = UDim2.new(0, 0, 0, DropdownListLayout.AbsoluteContentSize.Y)
                        end)
                        
                        local dropdown = {}
                        
                        function dropdown:Set(Option)
                            DropdownButton.Text = Option
                            DropdownSettings.CurrentOption = Option
                            if DropdownSettings.Callback then
                                DropdownSettings.Callback(Option)
                            end
                        end
                        
                        return dropdown
                    end)
                    
                    if not success then
                        warn("Dropdown creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateButton(Text, Callback)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local Button = Instance.new("TextButton")
                        
                        Button.Name = Text .. "Button"
                        Button.Size = UDim2.new(1, 0, 0, 35)
                        Button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
                        Button.Text = Text
                        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Button.TextSize = 14
                        Button.Font = Enum.Font.GothamSemibold
                        Button.LayoutOrder = tabElementCount
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
                            Button.BackgroundColor3 = Color3.fromRGB(70, 70, 80)
                        end)
                        
                        Button.MouseLeave:Connect(function()
                            Button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
                        end)
                        
                        return Button
                    end)
                    
                    if not success then
                        warn("Button creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateToggle(Text, Callback)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local ToggleFrame = Instance.new("Frame")
                        local ToggleButton = Instance.new("TextButton")
                        local ToggleLabel = Instance.new("TextLabel")
                        local ToggleState = Instance.new("Frame")
                        
                        ToggleFrame.Name = Text .. "Toggle"
                        ToggleFrame.Size = UDim2.new(1, 0, 0, 30)
                        ToggleFrame.BackgroundTransparency = 1
                        ToggleFrame.LayoutOrder = tabElementCount
                        ToggleFrame.Parent = TabContent
                        
                        ToggleLabel.Name = "Label"
                        ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
                        ToggleLabel.Position = UDim2.new(0, 0, 0, 0)
                        ToggleLabel.BackgroundTransparency = 1
                        ToggleLabel.Text = Text
                        ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        ToggleLabel.TextSize = 14
                        ToggleLabel.Font = Enum.Font.Gotham
                        ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
                        ToggleLabel.Parent = ToggleFrame
                        
                        ToggleButton.Name = "Toggle"
                        ToggleButton.Size = UDim2.new(0, 45, 0, 22)
                        ToggleButton.Position = UDim2.new(1, -45, 0.5, -11)
                        ToggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
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
                                ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
                                ToggleState.Position = UDim2.new(1, -20, 0.5, -9)
                            else
                                ToggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
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
                    end)
                    
                    if not success then
                        warn("Toggle creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                function TabElements:CreateLabel(Text)
                    local success, result = pcall(function()
                        tabElementCount = tabElementCount + 1
                        
                        local Label = Instance.new("TextLabel")
                        
                        Label.Name = Text .. "Label"
                        Label.Size = UDim2.new(1, 0, 0, 25)
                        Label.BackgroundTransparency = 1
                        Label.Text = Text
                        Label.TextColor3 = Color3.fromRGB(200, 200, 200)
                        Label.TextSize = 14
                        Label.Font = Enum.Font.Gotham
                        Label.TextXAlignment = Enum.TextXAlignment.Left
                        Label.LayoutOrder = tabElementCount
                        Label.Parent = TabContent
                        
                        return Label
                    end)
                    
                    if not success then
                        warn("Label creation failed:", result)
                        return nil
                    end
                    
                    return result
                end
                
                return TabElements
            end)
            
            if not success then
                warn("Tab creation failed:", result)
                return nil
            end
            
            return result
        end
        
        return Tabs
    end)
    
    if not success then
        warn("Main window creation failed:", result)
        return nil
    end
    
    return result
end

return Luma
