local UI = {};

UI["Screen"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["Screen"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

local TS = game:GetService("TweenService")

UI["Main"] = Instance.new("Frame", UI["Screen"]);
UI["Main"]["BorderSizePixel"] = 0;
UI["Main"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Main"]["Size"] = UDim2.new(0.34639, 0, 0.32821, 0);
UI["Main"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["Main"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["Main"]["Name"] = "Main";

UI["V1"] = Instance.new("TextButton", UI["Main"]);
UI["V1"]["TextWrapped"] = true;
UI["V1"]["BorderSizePixel"] = 0;
UI["V1"]["TextScaled"] = true;
UI["V1"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["V1"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["V1"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["V1"]["Size"] = UDim2.new(0.27778, 0, 0.34483, 0);
UI["V1"]["Text"] = "V1";
UI["V1"]["Name"] = "V1";
UI["V1"]["Position"] = UDim2.new(0.20139, 0, 0.43103, 0);

UI["V1Corner"] = Instance.new("UICorner", UI["V1"]);
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
UI["V2"]["Size"] = UDim2.new(0.27778, 0, 0.34483, 0);
UI["V2"]["Text"] = "V2";
UI["V2"]["Name"] = "V2";
UI["V2"]["Position"] = UDim2.new(0.50694, 0, 0.43103, 0);

UI["V2Corner"] = Instance.new("UICorner", UI["V2"]);
UI["V2Stroke"] = Instance.new("UIStroke", UI["V2"]);
UI["V2Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["V2Stroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["MainCorner"] = Instance.new("UICorner", UI["Main"]);

UI["Choose"] = Instance.new("TextLabel", UI["Main"]);
UI["Choose"]["TextWrapped"] = true;
UI["Choose"]["BorderSizePixel"] = 0;
UI["Choose"]["TextSize"] = 24;
UI["Choose"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Choose"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Choose"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Choose"]["Size"] = UDim2.new(1, 0, 0.25862, 0);
UI["Choose"]["Text"] = "Choose version:";
UI["Choose"]["Name"] = "Choose";

UI["ChooseCorner"] = Instance.new("UICorner", UI["Choose"]);

UI["Title"] = Instance.new("TextLabel", UI["Main"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextSize"] = 17;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Title"]["Size"] = UDim2.new(1, 0, 0.25862, 0);
UI["Title"]["Text"] = "Kilobyte keyboard has 2 versions now!";
UI["Title"]["Name"] = "Title";
UI["Title"]["Position"] = UDim2.new(0, 0, -0.2931, 0);

UI["TitleCorner"] = Instance.new("UICorner", UI["Title"]);
UI["TitleStroke"] = Instance.new("UIStroke", UI["Title"]);
UI["TitleStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["TitleStroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["MainStroke"] = Instance.new("UIStroke", UI["Main"]);
UI["MainStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["MainStroke"]["Color"] = Color3.fromRGB(171, 0, 255);

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
        BackgroundColor3 = Color3.fromRGB(70, 70, 70),
        Size = UDim2.new(0.25, 0, 0.32, 0)
    })
    
    local Release = TS:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(50, 50, 50),
        Size = UDim2.new(0.27778, 0, 0.34483, 0)
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

HoverAnim(UI["V1"])
HoverAnim(UI["V2"])

ClickAnim(UI["V1"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V1.luau"))()
end)

ClickAnim(UI["V2"], function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/its-starflow/Scripts/main/Keyboards/KB_V2.luau"))()
end)

local Enter = TS:Create(UI["Main"], TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0.34639, 0, 0.32821, 0)
})
UI["Main"].Size = UDim2.new(0, 0, 0, 0)
UI["Main"].Position = UDim2.new(0.5, 0, 0.5, 0)
Enter:Play()

return UI["Screen"], require
