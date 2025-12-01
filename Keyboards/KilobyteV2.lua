local UI = {};

UI["KilobyteV2"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["KilobyteV2"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["KilobyteV2"]["ResetOnSpawn"] = false

UI["Show"] = Instance.new("TextButton", UI["KilobyteV2"]);
UI["Show"]["TextWrapped"] = true;
UI["Show"]["BorderSizePixel"] = 0;
UI["Show"]["TextScaled"] = true;
UI["Show"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Show"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Show"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Show"]["Size"] = UDim2.new(0, 44, 0, 46);
UI["Show"]["Text"] = [[K]];
UI["Show"]["Name"] = [[Show]];
UI["Show"]["Position"] = UDim2.new(0.01924, 0, 0.00566, 0);

UI["UICorner"] = Instance.new("UICorner", UI["Show"]);
UI["UICorner"]["CornerRadius"] = UDim.new(0, 40);

UI["UIStroke"] = Instance.new("UIStroke", UI["Show"]);
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["MainFrame"] = Instance.new("Frame", UI["KilobyteV2"]);
UI["MainFrame"]["BorderSizePixel"] = 0;
UI["MainFrame"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["MainFrame"]["Size"] = UDim2.new(0, 342, 0, 170);
UI["MainFrame"]["Position"] = UDim2.new(0.01924, 0, 0, 0);
UI["MainFrame"]["Name"] = [[MainFrame]];

UI["K"] = Instance.new("TextButton", UI["MainFrame"]);
UI["K"]["TextWrapped"] = true;
UI["K"]["BorderSizePixel"] = 0;
UI["K"]["TextScaled"] = true;
UI["K"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["K"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["K"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["K"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["K"]["Text"] = [[K]];
UI["K"]["Name"] = [[K]];
UI["K"]["Position"] = UDim2.new(0.70175, 0, 0.4, 0);

UI["UICorner_2"] = Instance.new("UICorner", UI["K"]);

UI["UIStroke_2"] = Instance.new("UIStroke", UI["K"]);
UI["UIStroke_2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_2"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["P"] = Instance.new("TextButton", UI["MainFrame"]);
UI["P"]["TextWrapped"] = true;
UI["P"]["BorderSizePixel"] = 0;
UI["P"]["TextScaled"] = true;
UI["P"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["P"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["P"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["P"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["P"]["Text"] = [[P]];
UI["P"]["Name"] = [[P]];
UI["P"]["Position"] = UDim2.new(0.90058, 0, 0.2, 0);

UI["UICorner_3"] = Instance.new("UICorner", UI["P"]);

UI["UIStroke_3"] = Instance.new("UIStroke", UI["P"]);
UI["UIStroke_3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_3"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["U"] = Instance.new("TextButton", UI["MainFrame"]);
UI["U"]["TextWrapped"] = true;
UI["U"]["BorderSizePixel"] = 0;
UI["U"]["TextScaled"] = true;
UI["U"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["U"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["U"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["U"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["U"]["Text"] = [[U]];
UI["U"]["Name"] = [[U]];
UI["U"]["Position"] = UDim2.new(0.60234, 0, 0.2, 0);

UI["UICorner_4"] = Instance.new("UICorner", UI["U"]);

UI["UIStroke_4"] = Instance.new("UIStroke", UI["U"]);
UI["UIStroke_4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_4"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["O"] = Instance.new("TextButton", UI["MainFrame"]);
UI["O"]["TextWrapped"] = true;
UI["O"]["BorderSizePixel"] = 0;
UI["O"]["TextScaled"] = true;
UI["O"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["O"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["O"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["O"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["O"]["Text"] = [[O]];
UI["O"]["Name"] = [[O]];
UI["O"]["Position"] = UDim2.new(0.80117, 0, 0.2, 0);

UI["UICorner_5"] = Instance.new("UICorner", UI["O"]);

UI["UIStroke_5"] = Instance.new("UIStroke", UI["O"]);
UI["UIStroke_5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_5"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["F"] = Instance.new("TextButton", UI["MainFrame"]);
UI["F"]["TextWrapped"] = true;
UI["F"]["BorderSizePixel"] = 0;
UI["F"]["TextScaled"] = true;
UI["F"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["F"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["F"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["F"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["F"]["Text"] = [[F]];
UI["F"]["Name"] = [[F]];
UI["F"]["Position"] = UDim2.new(0.30409, 0, 0.4, 0);

UI["UICorner_6"] = Instance.new("UICorner", UI["F"]);

UI["UIStroke_6"] = Instance.new("UIStroke", UI["F"]);
UI["UIStroke_6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_6"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["S"] = Instance.new("TextButton", UI["MainFrame"]);
UI["S"]["TextWrapped"] = true;
UI["S"]["BorderSizePixel"] = 0;
UI["S"]["TextScaled"] = true;
UI["S"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["S"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["S"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["S"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["S"]["Text"] = [[S]];
UI["S"]["Name"] = [[S]];
UI["S"]["Position"] = UDim2.new(0.10526, 0, 0.4, 0);

UI["UICorner_7"] = Instance.new("UICorner", UI["S"]);

UI["UIStroke_7"] = Instance.new("UIStroke", UI["S"]);
UI["UIStroke_7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_7"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["W"] = Instance.new("TextButton", UI["MainFrame"]);
UI["W"]["TextWrapped"] = true;
UI["W"]["BorderSizePixel"] = 0;
UI["W"]["TextScaled"] = true;
UI["W"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["W"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["W"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["W"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["W"]["Text"] = [[W]];
UI["W"]["Name"] = [[W]];
UI["W"]["Position"] = UDim2.new(0.10526, 0, 0.2, 0);

UI["UICorner_8"] = Instance.new("UICorner", UI["W"]);

UI["UIStroke_8"] = Instance.new("UIStroke", UI["W"]);
UI["UIStroke_8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_8"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["R"] = Instance.new("TextButton", UI["MainFrame"]);
UI["R"]["TextWrapped"] = true;
UI["R"]["BorderSizePixel"] = 0;
UI["R"]["TextScaled"] = true;
UI["R"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["R"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["R"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["R"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["R"]["Text"] = [[R]];
UI["R"]["Name"] = [[R]];
UI["R"]["Position"] = UDim2.new(0.30409, 0, 0.2, 0);

UI["UICorner_9"] = Instance.new("UICorner", UI["R"]);

UI["UIStroke_9"] = Instance.new("UIStroke", UI["R"]);
UI["UIStroke_9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_9"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Q"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Q"]["TextWrapped"] = true;
UI["Q"]["BorderSizePixel"] = 0;
UI["Q"]["TextScaled"] = true;
UI["Q"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Q"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Q"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Q"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Q"]["Text"] = [[Q]];
UI["Q"]["Position"] = UDim2.new(0.00585, 0, 0.2, 0);

UI["UICorner_10"] = Instance.new("UICorner", UI["Q"]);

UI["UIStroke_10"] = Instance.new("UIStroke", UI["Q"]);
UI["UIStroke_10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_10"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["H"] = Instance.new("TextButton", UI["MainFrame"]);
UI["H"]["TextWrapped"] = true;
UI["H"]["BorderSizePixel"] = 0;
UI["H"]["TextScaled"] = true;
UI["H"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["H"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["H"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["H"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["H"]["Text"] = [[H]];
UI["H"]["Name"] = [[H]];
UI["H"]["Position"] = UDim2.new(0.50292, 0, 0.4, 0);

UI["UICorner_11"] = Instance.new("UICorner", UI["H"]);

UI["UIStroke_11"] = Instance.new("UIStroke", UI["H"]);
UI["UIStroke_11"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_11"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Close"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Close"]["TextWrapped"] = true;
UI["Close"]["BorderSizePixel"] = 0;
UI["Close"]["TextScaled"] = true;
UI["Close"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
UI["Close"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
UI["Close"]["ZIndex"] = 5;
UI["Close"]["Size"] = UDim2.new(0, 26, 0, 26);
UI["Close"]["Text"] = [[X]];
UI["Close"]["Name"] = [[Close]];
UI["Close"]["Position"] = UDim2.new(0.91228, 0, 0.01176, 0);

UI["UICorner_12"] = Instance.new("UICorner", UI["Close"]);

UI["UIStroke_13"] = Instance.new("UIStroke", UI["MainFrame"]);
UI["UIStroke_13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_13"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Hide"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Hide"]["TextWrapped"] = true;
UI["Hide"]["BorderSizePixel"] = 0;
UI["Hide"]["TextScaled"] = true;
UI["Hide"]["TextColor3"] = Color3.fromRGB(85, 179, 255);
UI["Hide"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
UI["Hide"]["ZIndex"] = 5;
UI["Hide"]["Size"] = UDim2.new(0, 26, 0, 26);
UI["Hide"]["Text"] = [[–]];
UI["Hide"]["Name"] = [[Hide]];
UI["Hide"]["Position"] = UDim2.new(0.83041, 0, 0.01176, 0);

UI["UICorner_14"] = Instance.new("UICorner", UI["Hide"]);

UI["G"] = Instance.new("TextButton", UI["MainFrame"]);
UI["G"]["TextWrapped"] = true;
UI["G"]["BorderSizePixel"] = 0;
UI["G"]["TextScaled"] = true;
UI["G"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["G"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["G"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["G"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["G"]["Text"] = [[G]];
UI["G"]["Name"] = [[G]];
UI["G"]["Position"] = UDim2.new(0.40351, 0, 0.4, 0);

UI["UICorner_15"] = Instance.new("UICorner", UI["G"]);

UI["UIStroke_16"] = Instance.new("UIStroke", UI["G"]);
UI["UIStroke_16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_16"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Title"] = Instance.new("TextLabel", UI["MainFrame"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextSize"] = 24;
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Title"]["Size"] = UDim2.new(0, 341, 0, 30);
UI["Title"]["Text"] = "Kilobyte keyboard [V2]"
UI["Title"]["Name"] = [[Title]];

UI["UICorner_17"] = Instance.new("UICorner", UI["Title"]);

UI["J"] = Instance.new("TextButton", UI["MainFrame"]);
UI["J"]["TextWrapped"] = true;
UI["J"]["BorderSizePixel"] = 0;
UI["J"]["TextScaled"] = true;
UI["J"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["J"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["J"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["J"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["J"]["Text"] = [[J]];
UI["J"]["Name"] = [[J]];
UI["J"]["Position"] = UDim2.new(0.60234, 0, 0.4, 0);

UI["UICorner_18"] = Instance.new("UICorner", UI["J"]);

UI["UIStroke_19"] = Instance.new("UIStroke", UI["J"]);
UI["UIStroke_19"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_19"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["I"] = Instance.new("TextButton", UI["MainFrame"]);
UI["I"]["TextWrapped"] = true;
UI["I"]["BorderSizePixel"] = 0;
UI["I"]["TextScaled"] = true;
UI["I"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["I"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["I"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["I"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["I"]["Text"] = [[I]];
UI["I"]["Name"] = [[I]];
UI["I"]["Position"] = UDim2.new(0.70175, 0, 0.2, 0);

UI["UICorner_20"] = Instance.new("UICorner", UI["I"]);

UI["UIStroke_21"] = Instance.new("UIStroke", UI["I"]);
UI["UIStroke_21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_21"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["UICorner_22"] = Instance.new("UICorner", UI["MainFrame"]);

UI["T"] = Instance.new("TextButton", UI["MainFrame"]);
UI["T"]["TextWrapped"] = true;
UI["T"]["BorderSizePixel"] = 0;
UI["T"]["TextScaled"] = true;
UI["T"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["T"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["T"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["T"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["T"]["Text"] = [[T]];
UI["T"]["Name"] = [[T]];
UI["T"]["Position"] = UDim2.new(0.40351, 0, 0.2, 0);

UI["UICorner_23"] = Instance.new("UICorner", UI["T"]);

UI["UIStroke_24"] = Instance.new("UIStroke", UI["T"]);
UI["UIStroke_24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_24"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["A"] = Instance.new("TextButton", UI["MainFrame"]);
UI["A"]["TextWrapped"] = true;
UI["A"]["BorderSizePixel"] = 0;
UI["A"]["TextScaled"] = true;
UI["A"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["A"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["A"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["A"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["A"]["Text"] = [[A]];
UI["A"]["Name"] = [[A]];
UI["A"]["Position"] = UDim2.new(0.00585, 0, 0.4, 0);

UI["UICorner_25"] = Instance.new("UICorner", UI["A"]);

UI["UIStroke_26"] = Instance.new("UIStroke", UI["A"]);
UI["UIStroke_26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_26"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["L"] = Instance.new("TextButton", UI["MainFrame"]);
UI["L"]["TextWrapped"] = true;
UI["L"]["BorderSizePixel"] = 0;
UI["L"]["TextScaled"] = true;
UI["L"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["L"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["L"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["L"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["L"]["Text"] = [[L]];
UI["L"]["Name"] = [[L]];
UI["L"]["Position"] = UDim2.new(0.80117, 0, 0.4, 0);

UI["UICorner_27"] = Instance.new("UICorner", UI["L"]);

UI["UIStroke_28"] = Instance.new("UIStroke", UI["L"]);
UI["UIStroke_28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_28"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["D"] = Instance.new("TextButton", UI["MainFrame"]);
UI["D"]["TextWrapped"] = true;
UI["D"]["BorderSizePixel"] = 0;
UI["D"]["TextScaled"] = true;
UI["D"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["D"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["D"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["D"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["D"]["Text"] = [[D]];
UI["D"]["Name"] = [[D]];
UI["D"]["Position"] = UDim2.new(0.20468, 0, 0.4, 0);

UI["UICorner_29"] = Instance.new("UICorner", UI["D"]);

UI["UIStroke_30"] = Instance.new("UIStroke", UI["D"]);
UI["UIStroke_30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_30"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Y"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Y"]["TextWrapped"] = true;
UI["Y"]["BorderSizePixel"] = 0;
UI["Y"]["TextScaled"] = true;
UI["Y"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Y"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Y"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Y"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Y"]["Text"] = [[Y]];
UI["Y"]["Name"] = [[Y]];
UI["Y"]["Position"] = UDim2.new(0.50292, 0, 0.2, 0);

UI["UICorner_31"] = Instance.new("UICorner", UI["Y"]);

UI["UIStroke_32"] = Instance.new("UIStroke", UI["Y"]);
UI["UIStroke_32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_32"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["UILine"] = Instance.new("Frame", UI["MainFrame"]);
UI["UILine"]["ZIndex"] = 0;
UI["UILine"]["BorderSizePixel"] = 0;
UI["UILine"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["UILine"]["Size"] = UDim2.new(0, 341, 0, 22);
UI["UILine"]["Position"] = UDim2.new(0, 0, 0.04706, 0);
UI["UILine"]["Name"] = [[UILine]];

UI["E"] = Instance.new("TextButton", UI["MainFrame"]);
UI["E"]["TextWrapped"] = true;
UI["E"]["BorderSizePixel"] = 0;
UI["E"]["TextScaled"] = true;
UI["E"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["E"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["E"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["E"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["E"]["Text"] = [[E]];
UI["E"]["Name"] = [[E]];
UI["E"]["Position"] = UDim2.new(0.20468, 0, 0.2, 0);

UI["UICorner_33"] = Instance.new("UICorner", UI["E"]);

UI["UIStroke_34"] = Instance.new("UIStroke", UI["E"]);
UI["UIStroke_34"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_34"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Semicolon"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Semicolon"]["TextWrapped"] = true;
UI["Semicolon"]["BorderSizePixel"] = 0;
UI["Semicolon"]["TextScaled"] = true;
UI["Semicolon"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Semicolon"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Semicolon"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Semicolon"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Semicolon"]["Text"] = [[;]];
UI["Semicolon"]["Name"] = [[Semicolon]];
UI["Semicolon"]["Position"] = UDim2.new(0.90058, 0, 0.4, 0);

UI["UICorner_35"] = Instance.new("UICorner", UI["Semicolon"]);

UI["UIStroke_36"] = Instance.new("UIStroke", UI["Semicolon"]);
UI["UIStroke_36"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_36"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Z"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Z"]["TextWrapped"] = true;
UI["Z"]["BorderSizePixel"] = 0;
UI["Z"]["TextScaled"] = true;
UI["Z"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Z"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Z"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Z"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Z"]["Text"] = [[Z]];
UI["Z"]["Name"] = [[Z]];
UI["Z"]["Position"] = UDim2.new(0.00585, 0, 0.6, 0);

UI["UICorner_37"] = Instance.new("UICorner", UI["Z"]);

UI["UIStroke_38"] = Instance.new("UIStroke", UI["Z"]);
UI["UIStroke_38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_38"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["X"] = Instance.new("TextButton", UI["MainFrame"]);
UI["X"]["TextWrapped"] = true;
UI["X"]["BorderSizePixel"] = 0;
UI["X"]["TextScaled"] = true;
UI["X"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["X"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["X"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["X"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["X"]["Text"] = [[X]];
UI["X"]["Name"] = [[X]];
UI["X"]["Position"] = UDim2.new(0.10526, 0, 0.6, 0);

UI["UICorner_39"] = Instance.new("UICorner", UI["X"]);

UI["UIStroke_40"] = Instance.new("UIStroke", UI["X"]);
UI["UIStroke_40"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_40"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["C"] = Instance.new("TextButton", UI["MainFrame"]);
UI["C"]["TextWrapped"] = true;
UI["C"]["BorderSizePixel"] = 0;
UI["C"]["TextScaled"] = true;
UI["C"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["C"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["C"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["C"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["C"]["Text"] = [[C]];
UI["C"]["Name"] = [[C]];
UI["C"]["Position"] = UDim2.new(0.20468, 0, 0.6, 0);

UI["UICorner_41"] = Instance.new("UICorner", UI["C"]);

UI["UIStroke_42"] = Instance.new("UIStroke", UI["C"]);
UI["UIStroke_42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_42"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["V"] = Instance.new("TextButton", UI["MainFrame"]);
UI["V"]["TextWrapped"] = true;
UI["V"]["BorderSizePixel"] = 0;
UI["V"]["TextScaled"] = true;
UI["V"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["V"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["V"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["V"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["V"]["Text"] = [[V]];
UI["V"]["Name"] = [[V]];
UI["V"]["Position"] = UDim2.new(0.30409, 0, 0.6, 0);

UI["UICorner_43"] = Instance.new("UICorner", UI["V"]);

UI["UIStroke_44"] = Instance.new("UIStroke", UI["V"]);
UI["UIStroke_44"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_44"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["B"] = Instance.new("TextButton", UI["MainFrame"]);
UI["B"]["TextWrapped"] = true;
UI["B"]["BorderSizePixel"] = 0;
UI["B"]["TextScaled"] = true;
UI["B"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["B"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["B"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["B"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["B"]["Text"] = [[B]];
UI["B"]["Name"] = [[B]];
UI["B"]["Position"] = UDim2.new(0.40351, 0, 0.6, 0);

UI["UICorner_45"] = Instance.new("UICorner", UI["B"]);

UI["UIStroke_46"] = Instance.new("UIStroke", UI["B"]);
UI["UIStroke_46"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_46"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["N"] = Instance.new("TextButton", UI["MainFrame"]);
UI["N"]["TextWrapped"] = true;
UI["N"]["BorderSizePixel"] = 0;
UI["N"]["TextScaled"] = true;
UI["N"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["N"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["N"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["N"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["N"]["Text"] = [[N]];
UI["N"]["Name"] = [[N]];
UI["N"]["Position"] = UDim2.new(0.50292, 0, 0.6, 0);

UI["UICorner_47"] = Instance.new("UICorner", UI["N"]);

UI["UIStroke_48"] = Instance.new("UIStroke", UI["N"]);
UI["UIStroke_48"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_48"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["M"] = Instance.new("TextButton", UI["MainFrame"]);
UI["M"]["TextWrapped"] = true;
UI["M"]["BorderSizePixel"] = 0;
UI["M"]["TextScaled"] = true;
UI["M"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["M"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["M"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["M"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["M"]["Text"] = [[M]];
UI["M"]["Name"] = [[M]];
UI["M"]["Position"] = UDim2.new(0.60234, 0, 0.6, 0);

UI["UICorner_49"] = Instance.new("UICorner", UI["M"]);

UI["UIStroke_50"] = Instance.new("UIStroke", UI["M"]);
UI["UIStroke_50"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_50"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Dot"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Dot"]["TextWrapped"] = true;
UI["Dot"]["BorderSizePixel"] = 0;
UI["Dot"]["TextScaled"] = true;
UI["Dot"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Dot"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Dot"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Dot"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Dot"]["Text"] = [[.]];
UI["Dot"]["Name"] = [[Dot]];
UI["Dot"]["Position"] = UDim2.new(0.70175, 0, 0.6, 0);

UI["UICorner_51"] = Instance.new("UICorner", UI["Dot"]);

UI["UIStroke_52"] = Instance.new("UIStroke", UI["Dot"]);
UI["UIStroke_52"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_52"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["LeftParenthesis"] = Instance.new("TextButton", UI["MainFrame"]);
UI["LeftParenthesis"]["TextWrapped"] = true;
UI["LeftParenthesis"]["BorderSizePixel"] = 0;
UI["LeftParenthesis"]["TextScaled"] = true;
UI["LeftParenthesis"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["LeftParenthesis"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["LeftParenthesis"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["LeftParenthesis"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["LeftParenthesis"]["Text"] = "["
UI["LeftParenthesis"]["Name"] = [[LeftParenthesis]];
UI["LeftParenthesis"]["Position"] = UDim2.new(0.80117, 0, 0.6, 0);

UI["UICorner_53"] = Instance.new("UICorner", UI["LeftParenthesis"]);

UI["UIStroke_54"] = Instance.new("UIStroke", UI["LeftParenthesis"]);
UI["UIStroke_54"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_54"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["RightParenthesis"] = Instance.new("TextButton", UI["MainFrame"]);
UI["RightParenthesis"]["TextWrapped"] = true;
UI["RightParenthesis"]["BorderSizePixel"] = 0;
UI["RightParenthesis"]["TextScaled"] = true;
UI["RightParenthesis"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["RightParenthesis"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["RightParenthesis"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["RightParenthesis"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["RightParenthesis"]["Text"] = "]"
UI["RightParenthesis"]["Name"] = [[RightParenthesis]];
UI["RightParenthesis"]["Position"] = UDim2.new(0.90058, 0, 0.6, 0);

UI["UICorner_55"] = Instance.new("UICorner", UI["RightParenthesis"]);

UI["UIStroke_56"] = Instance.new("UIStroke", UI["RightParenthesis"]);
UI["UIStroke_56"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_56"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["LCtrl"] = Instance.new("TextButton", UI["MainFrame"]);
UI["LCtrl"]["TextWrapped"] = true;
UI["LCtrl"]["BorderSizePixel"] = 0;
UI["LCtrl"]["TextScaled"] = true;
UI["LCtrl"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["LCtrl"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["LCtrl"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["LCtrl"]["Size"] = UDim2.new(0, 48, 0, 30);
UI["LCtrl"]["Text"] = [[L-Ctrl]];
UI["LCtrl"]["Name"] = [[LCtrl]];
UI["LCtrl"]["Position"] = UDim2.new(0.00585, 0, 0.8, 0);

UI["UICorner_57"] = Instance.new("UICorner", UI["LCtrl"]);

UI["UIStroke_58"] = Instance.new("UIStroke", UI["LCtrl"]);
UI["UIStroke_58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_58"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["LAlt"] = Instance.new("TextButton", UI["MainFrame"]);
UI["LAlt"]["TextWrapped"] = true;
UI["LAlt"]["BorderSizePixel"] = 0;
UI["LAlt"]["TextScaled"] = true;
UI["LAlt"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["LAlt"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["LAlt"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["LAlt"]["Size"] = UDim2.new(0, 46, 0, 30);
UI["LAlt"]["Text"] = [[L-Alt]];
UI["LAlt"]["Name"] = [[LAlt]];
UI["LAlt"]["Position"] = UDim2.new(0.15789, 0, 0.8, 0);

UI["UICorner_59"] = Instance.new("UICorner", UI["LAlt"]);

UI["UIStroke_60"] = Instance.new("UIStroke", UI["LAlt"]);
UI["UIStroke_60"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_60"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["RCtrl"] = Instance.new("TextButton", UI["MainFrame"]);
UI["RCtrl"]["TextWrapped"] = true;
UI["RCtrl"]["BorderSizePixel"] = 0;
UI["RCtrl"]["TextScaled"] = true;
UI["RCtrl"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["RCtrl"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["RCtrl"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["RCtrl"]["Size"] = UDim2.new(0, 48, 0, 30);
UI["RCtrl"]["Text"] = [[R-Ctrl]];
UI["RCtrl"]["Name"] = [[RCtrl]];
UI["RCtrl"]["Position"] = UDim2.new(0.84795, 0, 0.8, 0);

UI["UICorner_61"] = Instance.new("UICorner", UI["RCtrl"]);

UI["UIStroke_62"] = Instance.new("UIStroke", UI["RCtrl"]);
UI["UIStroke_62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_62"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["RAlt"] = Instance.new("TextButton", UI["MainFrame"]);
UI["RAlt"]["TextWrapped"] = true;
UI["RAlt"]["BorderSizePixel"] = 0;
UI["RAlt"]["TextScaled"] = true;
UI["RAlt"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["RAlt"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["RAlt"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["RAlt"]["Size"] = UDim2.new(0, 46, 0, 30);
UI["RAlt"]["Text"] = [[R-Alt]];
UI["RAlt"]["Name"] = [[RAlt]];
UI["RAlt"]["Position"] = UDim2.new(0.70175, 0, 0.8, 0);

UI["UICorner_63"] = Instance.new("UICorner", UI["RAlt"]);

UI["UIStroke_64"] = Instance.new("UIStroke", UI["RAlt"]);
UI["UIStroke_64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_64"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["Space"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Space"]["TextWrapped"] = true;
UI["Space"]["BorderSizePixel"] = 0;
UI["Space"]["TextScaled"] = true;
UI["Space"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Space"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Space"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Space"]["Size"] = UDim2.new(0, 132, 0, 30);
UI["Space"]["Text"] = [[]];
UI["Space"]["Name"] = [[Space]];
UI["Space"]["Position"] = UDim2.new(0.30409, 0, 0.8, 0);

UI["UICorner_65"] = Instance.new("UICorner", UI["Space"]);

UI["UIStroke_66"] = Instance.new("UIStroke", UI["Space"]);
UI["UIStroke_66"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke_66"]["Color"] = Color3.fromRGB(171, 0, 255);

local function dragify(Frame)
    local UIS = game:GetService("UserInputService")

    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil
    local dragSpeed = 0.25

    local function clampToScreen(gui, px, py)
        local screen = gui.AbsoluteSize
        local size = Frame.AbsoluteSize
        return math.clamp(px, 0, screen.X - size.X), math.clamp(py, 0, screen.Y - size.Y)
    end

    local function update(input)
        local gui = Frame:FindFirstAncestorOfClass("ScreenGui")
        if not gui then return end

        local delta = input.Position - dragStart
        local targetX = startPos.X + delta.X
        local targetY = startPos.Y + delta.Y
        targetX, targetY = clampToScreen(gui, targetX, targetY)

        if dragSpeed >= 1 then
            Frame.Position = UDim2.fromOffset(math.floor(targetX + 0.5), math.floor(targetY + 0.5))
            return
        end

        local cur = Frame.AbsolutePosition
        local interpX = cur.X + (targetX - cur.X) * math.clamp(dragSpeed, 0, 1)
        local interpY = cur.Y + (targetY - cur.Y) * math.clamp(dragSpeed, 0, 1)

        Frame.Position = UDim2.fromOffset(math.floor(interpX + 0.5), math.floor(interpY + 0.5))
    end

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragInput = input
            dragStart = input.Position
            startPos = Frame.AbsolutePosition

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    dragInput = nil
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)
end
dragify(UI["MainFrame"])

local VIM = game:GetService("VirtualInputManager")
local keyMap = {
    Q = Enum.KeyCode.Q,
    W = Enum.KeyCode.W,
    E = Enum.KeyCode.E,
    R = Enum.KeyCode.R,
    T = Enum.KeyCode.T,
    Y = Enum.KeyCode.Y,
    U = Enum.KeyCode.U,
    I = Enum.KeyCode.I,
    O = Enum.KeyCode.O,
    P = Enum.KeyCode.P,
    A = Enum.KeyCode.A,
    S = Enum.KeyCode.S,
    D = Enum.KeyCode.D,
    F = Enum.KeyCode.F,
    G = Enum.KeyCode.G,
    H = Enum.KeyCode.H,
    J = Enum.KeyCode.J,
    K = Enum.KeyCode.K,
    L = Enum.KeyCode.L,
    Z = Enum.KeyCode.Z,
    X = Enum.KeyCode.X,
    C = Enum.KeyCode.C,
    V = Enum.KeyCode.V,
    B = Enum.KeyCode.B,
    N = Enum.KeyCode.N,
    M = Enum.KeyCode.M,
    Semicolon = Enum.KeyCode.Semicolon,
    Dot = Enum.KeyCode.Period,
    LeftParenthesis = Enum.KeyCode.LeftBracket,
    RightParenthesis = Enum.KeyCode.RightBracket,
    Space = Enum.KeyCode.Space,
    LCtrl = Enum.KeyCode.LeftControl,
    LAlt = Enum.KeyCode.LeftAlt,
    RCtrl = Enum.KeyCode.RightControl,
    RAlt = Enum.KeyCode.RightAlt
}

for keyName, button in pairs(UI) do
    if keyMap[keyName] and button:IsA("TextButton") then
        button.MouseButton1Click:Connect(function()
            VIM:SendKeyEvent(true, keyMap[keyName], false, nil)
            task.wait(0.1)
            VIM:SendKeyEvent(false, keyMap[keyName], false, nil)
        end)
    end
end

local function HoverAnim(button)
    local originalBg = button.BackgroundColor3
    local originalText = button.TextColor3
    
    button.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(50, 50, 50),
            TextColor3 = Color3.fromRGB(200, 50, 255)
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalBg,
            TextColor3 = originalText
        }):Play()
    end)
    
    button.MouseButton1Down:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        }):Play()
    end)
end

for keyName, keyCode in pairs(keyMap) do
    if UI[keyName] and UI[keyName]:IsA("TextButton") then
        HoverAnim(UI[keyName])
    end
end

for keyName, keyCode in pairs(keyMap) do
    if UI[keyName] and UI[keyName]:IsA("TextButton") then
        HoverAnim(UI[keyName])
    end
end

HoverAnim(UI["Close"])
HoverAnim(UI["Hide"])
HoverAnim(UI["Show"])

UI["Show"].MouseButton1Click:Connect(function()
    UI["MainFrame"].Visible = true
    UI["Show"].Visible = false
end)

UI["Hide"].MouseButton1Click:Connect(function()
    UI["MainFrame"].Visible = false
    UI["Show"].Visible = true
end)

UI["Close"].MouseButton1Click:Connect(function()
    UI["KilobyteV2"]:Destroy()
end)

UI["MainFrame"].Visible = true
UI["Show"].Visible = false

return UI["KilobyteV2"], require