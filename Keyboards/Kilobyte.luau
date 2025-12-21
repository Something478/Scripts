local UI = {};

UI["Screen"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["Screen"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

local TS = game:GetService("TweenService")

UI["Main"] = Instance.new("Frame", UI["Screen"]);
UI["Main"]["BorderSizePixel"] = 0;
UI["Main"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Main"]["Size"] = UDim2.new(0, 342, 0, 220);
UI["Main"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["Main"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["Main"]["Name"] = "Main";

UI["UICorner"] = Instance.new("UICorner", UI["Main"]);
UI["UICorner"]["CornerRadius"] = UDim.new(0, 4);

UI["UIStroke"] = Instance.new("UIStroke", UI["Main"]);
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["V1"] = Instance.new("TextButton", UI["Main"]);
UI["V1"]["TextWrapped"] = true;
UI["V1"]["BorderSizePixel"] = 0;
UI["V1"]["TextScaled"] = true;
UI["V1"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["V1"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["V1"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["V1"]["Size"] = UDim2.new(0, 100, 0, 50);
UI["V1"]["Text"] = "V1";
UI["V1"]["Name"] = "V1";
UI["V1"]["Position"] = UDim2.new(0, 21, 0, 130); 

UI["V1Corner"] = Instance.new("UICorner", UI["V1"]);
UI["V1Corner"]["CornerRadius"] = UDim.new(0, 4);

UI["V1Stroke"] = Instance.new("UIStroke", UI["V1"]);
UI["V1Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["V1Stroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["V2"] = Instance.new("TextButton", UI["Main"]);
UI["V2"]["TextWrapped"] = true;
UI["V2"]["BorderSizePixel"] = 0;
UI["V2"]["TextScaled"] = true;
UI["V2"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["V2"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["V2"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["V2"]["Size"] = UDim2.new(0, 100, 0, 50);
UI["V2"]["Text"] = "V2";
UI["V2"]["Name"] = "V2";
UI["V2"]["Position"] = UDim2.new(0, 121, 0, 130); 

UI["V2Corner"] = Instance.new("UICorner", UI["V2"]);
UI["V2Corner"]["CornerRadius"] = UDim.new(0, 4);

UI["V2Stroke"] = Instance.new("UIStroke", UI["V2"]);
UI["V2Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["V2Stroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["V3"] = Instance.new("TextButton", UI["Main"]);
UI["V3"]["TextWrapped"] = true;
UI["V3"]["BorderSizePixel"] = 0;
UI["V3"]["TextScaled"] = true;
UI["V3"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["V3"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["V3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["V3"]["Size"] = UDim2.new(0, 100, 0, 50);
UI["V3"]["Text"] = "V3";
UI["V3"]["Name"] = "V3";
UI["V3"]["Position"] = UDim2.new(0, 221, 0, 130); 

UI["V3Corner"] = Instance.new("UICorner", UI["V3"]);
UI["V3Corner"]["CornerRadius"] = UDim.new(0, 4);

UI["V3Stroke"] = Instance.new("UIStroke", UI["V3"]);
UI["V3Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["V3Stroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["UILine"] = Instance.new("Frame", UI["Main"]);
UI["UILine"]["BorderSizePixel"] = 0;
UI["UILine"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["UILine"]["Size"] = UDim2.new(0, 341, 0, 22);
UI["UILine"]["Position"] = UDim2.new(0, 0, 0, 8);
UI["UILine"]["Name"] = [[UILine]];

UI["Title"] = Instance.new("TextLabel", UI["Main"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextSize"] = 24;
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Title"]["Size"] = UDim2.new(0, 341, 0, 30);
UI["Title"]["Text"] = "Kilobyte keyboard";
UI["Title"]["Name"] = [[Title]];

UI["TitleCorner"] = Instance.new("UICorner", UI["Title"]);
UI["TitleCorner"]["CornerRadius"] = UDim.new(0, 4);

UI["Text"] = Instance.new("TextLabel", UI["Main"]);
UI["Text"]["TextWrapped"] = true;
UI["Text"]["BorderSizePixel"] = 0;
UI["Text"]["TextScaled"] = true;
UI["Text"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Text"]["BackgroundTransparency"] = 1;
UI["Text"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Text"]["Size"] = UDim2.new(0, 300, 0, 40);
UI["Text"]["Text"] = "Choose version:";
UI["Text"]["Name"] = [[Text]];
UI["Text"]["Position"] = UDim2.new(0, 21, 0, 40);

local function HoverAnim(button)
    local Hover = TS:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        TextColor3 = Color3.fromRGB(200, 50, 255)
    })
    
    local Leave = TS:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(32, 32, 32),
        TextColor3 = Color3.fromRGB(171, 0, 255)
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
        Size = UDim2.new(0, 95, 0, 45)
    })
    
    local Release = TS:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        Size = UDim2.new(0, 100, 0, 50)
    })
    
    button.MouseButton1Down:Connect(function()
        Click:Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        Release:Play()
    end)
    
    button.MouseButton1Click:Connect(function()
        local Close = TS:Create(UI["Main"], TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
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

pcall(function()
HoverAnim(UI["V1"])
end)

pcall(function()
HoverAnim(UI["V2"])
end

pcall(function()
HoverAnim(UI["V3"])
end)

ClickAnim(UI["V1"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V1.luau"))()
end)

ClickAnim(UI["V2"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V2.luau"))()
end)

pcall(function()
ClickAnim(UI["V3"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V3.luau"))()
end)
end)

local Enter = TS:Create(UI["Main"], TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 342, 0, 220)
})
UI["Main"].Size = UDim2.new(0, 0, 0, 0)
UI["Main"].Position = UDim2.new(0.5, 0, 0.5, 0)
Enter:Play()

return UI["Screen"]