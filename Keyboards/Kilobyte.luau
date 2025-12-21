local UI = {};

UI["Screen"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["Screen"]["Name"] = [[main]];
UI["Screen"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

UI["Frame"] = Instance.new("Frame", UI["Screen"]);
UI["Frame"]["BorderSizePixel"] = 5;
UI["Frame"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Frame"]["Size"] = UDim2.new(0.20928, 0, 0.27162, 0);
UI["Frame"]["Position"] = UDim2.new(0.38969, 0, -0.01132, 0);
UI["Frame"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
UI["Frame"]["Name"] = [[Frame]];

UI["UICorner"] = Instance.new("UICorner", UI["Frame"]);
UI["UICorner"]["CornerRadius"] = UDim.new(0, 4);

UI["Title"] = Instance.new("TextLabel", UI["Frame"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title"]["TextScaled"] = true;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["Title"]["BackgroundTransparency"] = 1;
UI["Title"]["Size"] = UDim2.new(0.94253, 0, 0.3125, 0);
UI["Title"]["Text"] = [[Choose a version]];
UI["Title"]["Name"] = [[Title]];
UI["Title"]["Position"] = UDim2.new(0.02299, 0, 0.04167, 0);

UI["UIGradient"] = Instance.new("UIGradient", UI["Title"]);
UI["UIGradient"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke"] = Instance.new("UIStroke", UI["Frame"]);
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_2"] = Instance.new("UIGradient", UI["UIStroke"]);
UI["UIGradient_2"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["V1"] = Instance.new("TextButton", UI["Frame"]);
UI["V1"]["TextWrapped"] = true;
UI["V1"]["BorderSizePixel"] = 0;
UI["V1"]["TextScaled"] = true;
UI["V1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["V1"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["V1"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["V1"]["Size"] = UDim2.new(0.27586, 0, 0.5, 0);
UI["V1"]["Text"] = [[V1]];
UI["V1"]["Name"] = [[V1]];
UI["V1"]["Position"] = UDim2.new(0.03448, 0, 0.4375, 0);

UI["UICorner_2"] = Instance.new("UICorner", UI["V1"]);
UI["UICorner_2"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_3"] = Instance.new("UIGradient", UI["V1"]);
UI["UIGradient_3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_2"] = Instance.new("UIStroke", UI["V1"]);
UI["UIStroke_2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_2"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_4"] = Instance.new("UIGradient", UI["UIStroke_2"]);
UI["UIGradient_4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["V2"] = Instance.new("TextButton", UI["Frame"]);
UI["V2"]["TextWrapped"] = true;
UI["V2"]["BorderSizePixel"] = 0;
UI["V2"]["TextScaled"] = true;
UI["V2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["V2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["V2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["V2"]["Size"] = UDim2.new(0.27586, 0, 0.5, 0);
UI["V2"]["Text"] = [[V2]];
UI["V2"]["Name"] = [[V2]];
UI["V2"]["Position"] = UDim2.new(0.36782, 0, 0.4375, 0);

UI["UICorner_3"] = Instance.new("UICorner", UI["V2"]);
UI["UICorner_3"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_5"] = Instance.new("UIGradient", UI["V2"]);
UI["UIGradient_5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_3"] = Instance.new("UIStroke", UI["V2"]);
UI["UIStroke_3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_3"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_6"] = Instance.new("UIGradient", UI["UIStroke_3"]);
UI["UIGradient_6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["V3"] = Instance.new("TextButton", UI["Frame"]);
UI["V3"]["TextWrapped"] = true;
UI["V3"]["BorderSizePixel"] = 0;
UI["V3"]["TextScaled"] = true;
UI["V3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["V3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["V3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["V3"]["Size"] = UDim2.new(0.27586, 0, 0.5, 0);
UI["V3"]["Text"] = [[V3]];
UI["V3"]["Name"] = [[V3]];
UI["V3"]["Position"] = UDim2.new(0.68966, 0, 0.4375, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["V3"]);
UI["UICorner_4"]["CornerRadius"] = UDim.new(0, 4);

UI["UIGradient_7"] = Instance.new("UIGradient", UI["V3"]);
UI["UIGradient_7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

UI["UIStroke_4"] = Instance.new("UIStroke", UI["V3"]);
UI["UIStroke_4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_4"]["Color"] = Color3.fromRGB(255, 255, 255);

UI["UIGradient_8"] = Instance.new("UIGradient", UI["UIStroke_4"]);
UI["UIGradient_8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))};

local TS = game:GetService("TweenService")

local function HoverAnim(button)
    local Hover = TS:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        TextColor3 = Color3.fromRGB(200, 50, 255)
    })
    
    local Leave = TS:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        TextColor3 = Color3.fromRGB(255, 255, 255)
    })
    
    button.MouseEnter:Connect(function()
        Hover:Play()
    end)
    
    button.MouseLeave:Connect(function()
        Leave:Play()
    end)
end

local function ClickAnim(button, func)
    local Click = TS:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(20, 20, 20),
        Size = UDim2.new(0.26586, 0, 0.45, 0)
    })
    
    local Release = TS:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        Size = UDim2.new(0.27586, 0, 0.5, 0)
    })
    
    button.MouseButton1Down:Connect(function()
        Click:Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        Release:Play()
    end)
    
    button.MouseButton1Click:Connect(function()
        local Close = TS:Create(UI["Frame"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        Close:Play()
        
        Close.Completed:Connect(function()
            UI["Screen"]:Destroy()
            if func then
                func()
            end
        end)
    end)
end

HoverAnim(UI["V1"])
HoverAnim(UI["V2"])
HoverAnim(UI["V3"])

ClickAnim(UI["V1"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V1.luau"))()
end)

ClickAnim(UI["V2"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V2.luau"))()
end)

ClickAnim(UI["V3"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V3.luau"))()
end)

local Enter = TS:Create(UI["Frame"], TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0.20928, 0, 0.27162, 0),
    Position = UDim2.new(0.38969, 0, 0.36418, 0)
})
UI["Frame"].Size = UDim2.new(0, 0, 0, 0)
UI["Frame"].Position = UDim2.new(0.38969, 0, 0.5, 0)
Enter:Play()

return UI["Screen"]