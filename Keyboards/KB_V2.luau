local UI = {};

UI["ScreenGui"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["ScreenGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["ScreenGui"]["ResetOnSpawn"] = false;

UI["Show"] = Instance.new("TextButton", UI["ScreenGui"]);
UI["Show"]["TextWrapped"] = true;
UI["Show"]["BorderSizePixel"] = 0;
UI["Show"]["TextScaled"] = true;
UI["Show"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Show"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["Show"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Show"]["Size"] = UDim2.new(0, 44, 0, 46);
UI["Show"]["Text"] = [[K]];
UI["Show"]["Name"] = [[Show]];
UI["Show"]["Position"] = UDim2.new(0, 16, 0, 2);

UI["UICorner"] = Instance.new("UICorner", UI["Show"]);
UI["UICorner"]["CornerRadius"] = UDim.new(0, 40);

UI["UIStroke"] = Instance.new("UIStroke", UI["Show"]);
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke"]["Color"] = Color3.fromRGB(171, 0, 255);

UI["MainFrame"] = Instance.new("Frame", UI["ScreenGui"]);
UI["MainFrame"]["BorderSizePixel"] = 0;
UI["MainFrame"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
UI["MainFrame"]["Size"] = UDim2.new(0, 342, 0, 170);
UI["MainFrame"]["Position"] = UDim2.new(0, 16, 0, 0);
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
UI["K"]["Position"] = UDim2.new(0, 240, 0, 68);

UI["UICorner_2"] = Instance.new("UICorner", UI["K"]);
UI["UICorner_2"]["CornerRadius"] = UDim.new(0, 4);

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
UI["F"]["Position"] = UDim2.new(0, 104, 0, 68);

UI["UICorner_3"] = Instance.new("UICorner", UI["F"]);
UI["UICorner_3"]["CornerRadius"] = UDim.new(0, 4);

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
UI["E"]["Position"] = UDim2.new(0, 70, 0, 34);

UI["UICorner_4"] = Instance.new("UICorner", UI["E"]);
UI["UICorner_4"]["CornerRadius"] = UDim.new(0, 4);

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
UI["U"]["Position"] = UDim2.new(0, 206, 0, 34);

UI["UICorner_5"] = Instance.new("UICorner", UI["U"]);
UI["UICorner_5"]["CornerRadius"] = UDim.new(0, 4);

UI["LCTRL"] = Instance.new("TextButton", UI["MainFrame"]);
UI["LCTRL"]["TextWrapped"] = true;
UI["LCTRL"]["BorderSizePixel"] = 0;
UI["LCTRL"]["TextScaled"] = true;
UI["LCTRL"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["LCTRL"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["LCTRL"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["LCTRL"]["Size"] = UDim2.new(0, 48, 0, 30);
UI["LCTRL"]["Text"] = [[L-Ctrl]];
UI["LCTRL"]["Name"] = [[LCTRL]];
UI["LCTRL"]["Position"] = UDim2.new(0, 2, 0, 136);

UI["UICorner_6"] = Instance.new("UICorner", UI["LCTRL"]);
UI["UICorner_6"]["CornerRadius"] = UDim.new(0, 4);

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
UI["I"]["Position"] = UDim2.new(0, 240, 0, 34);

UI["UICorner_7"] = Instance.new("UICorner", UI["I"]);
UI["UICorner_7"]["CornerRadius"] = UDim.new(0, 4);

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
UI["W"]["Position"] = UDim2.new(0, 36, 0, 34);

UI["UICorner_8"] = Instance.new("UICorner", UI["W"]);
UI["UICorner_8"]["CornerRadius"] = UDim.new(0, 4);

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
UI["Close"]["Position"] = UDim2.new(0, 314, 0, 2);

UI["UICorner_9"] = Instance.new("UICorner", UI["Close"]);
UI["UICorner_9"]["CornerRadius"] = UDim.new(0, 4);

UI["RCTRL"] = Instance.new("TextButton", UI["MainFrame"]);
UI["RCTRL"]["TextWrapped"] = true;
UI["RCTRL"]["BorderSizePixel"] = 0;
UI["RCTRL"]["TextScaled"] = true;
UI["RCTRL"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["RCTRL"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["RCTRL"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["RCTRL"]["Size"] = UDim2.new(0, 48, 0, 30);
UI["RCTRL"]["Text"] = [[R-Ctrl]];
UI["RCTRL"]["Name"] = [[RCTRL]];
UI["RCTRL"]["Position"] = UDim2.new(0, 290, 0, 136);

UI["UICorner_10"] = Instance.new("UICorner", UI["RCTRL"]);
UI["UICorner_10"]["CornerRadius"] = UDim.new(0, 4);

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
UI["S"]["Position"] = UDim2.new(0, 36, 0, 68);

UI["UICorner_11"] = Instance.new("UICorner", UI["S"]);
UI["UICorner_11"]["CornerRadius"] = UDim.new(0, 4);

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
UI["N"]["Position"] = UDim2.new(0, 172, 0, 102);

UI["UICorner_12"] = Instance.new("UICorner", UI["N"]);
UI["UICorner_12"]["CornerRadius"] = UDim.new(0, 4);

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
UI["Y"]["Position"] = UDim2.new(0, 172, 0, 34);

UI["UICorner_13"] = Instance.new("UICorner", UI["Y"]);
UI["UICorner_13"]["CornerRadius"] = UDim.new(0, 4);

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
UI["D"]["Position"] = UDim2.new(0, 70, 0, 68);

UI["UICorner_14"] = Instance.new("UICorner", UI["D"]);
UI["UICorner_14"]["CornerRadius"] = UDim.new(0, 4);

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
UI["M"]["Position"] = UDim2.new(0, 206, 0, 102);

UI["UICorner_15"] = Instance.new("UICorner", UI["M"]);
UI["UICorner_15"]["CornerRadius"] = UDim.new(0, 4);

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
UI["H"]["Position"] = UDim2.new(0, 172, 0, 68);

UI["UICorner_16"] = Instance.new("UICorner", UI["H"]);
UI["UICorner_16"]["CornerRadius"] = UDim.new(0, 4);

UI["UILine"] = Instance.new("Frame", UI["MainFrame"]);
UI["UILine"]["ZIndex"] = 0;
UI["UILine"]["BorderSizePixel"] = 0;
UI["UILine"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["UILine"]["Size"] = UDim2.new(0, 341, 0, 22);
UI["UILine"]["Position"] = UDim2.new(0, 0, 0, 8);
UI["UILine"]["Name"] = [[UILine]];

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
UI["T"]["Position"] = UDim2.new(0, 138, 0, 34);

UI["UICorner_17"] = Instance.new("UICorner", UI["T"]);
UI["UICorner_17"]["CornerRadius"] = UDim.new(0, 4);

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
UI["V"]["Position"] = UDim2.new(0, 104, 0, 102);

UI["UICorner_18"] = Instance.new("UICorner", UI["V"]);
UI["UICorner_18"]["CornerRadius"] = UDim.new(0, 4);

UI["LEFTBRACKET"] = Instance.new("TextButton", UI["MainFrame"]);
UI["LEFTBRACKET"]["TextWrapped"] = true;
UI["LEFTBRACKET"]["BorderSizePixel"] = 0;
UI["LEFTBRACKET"]["TextScaled"] = true;
UI["LEFTBRACKET"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["LEFTBRACKET"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["LEFTBRACKET"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["LEFTBRACKET"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["LEFTBRACKET"]["Text"] = [[[]];
UI["LEFTBRACKET"]["Name"] = [[LEFTBRACKET]];
UI["LEFTBRACKET"]["Position"] = UDim2.new(0, 274, 0, 102);

UI["UICorner_19"] = Instance.new("UICorner", UI["LEFTBRACKET"]);
UI["UICorner_19"]["CornerRadius"] = UDim.new(0, 4);

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
UI["X"]["Position"] = UDim2.new(0, 36, 0, 102);

UI["UICorner_20"] = Instance.new("UICorner", UI["X"]);
UI["UICorner_20"]["CornerRadius"] = UDim.new(0, 4);

UI["DOT"] = Instance.new("TextButton", UI["MainFrame"]);
UI["DOT"]["TextWrapped"] = true;
UI["DOT"]["BorderSizePixel"] = 0;
UI["DOT"]["TextScaled"] = true;
UI["DOT"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["DOT"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["DOT"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["DOT"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["DOT"]["Text"] = [[.]];
UI["DOT"]["Name"] = [[DOT]];
UI["DOT"]["Position"] = UDim2.new(0, 240, 0, 102);

UI["UICorner_21"] = Instance.new("UICorner", UI["DOT"]);
UI["UICorner_21"]["CornerRadius"] = UDim.new(0, 4);

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
UI["Z"]["Position"] = UDim2.new(0, 2, 0, 102);

UI["UICorner_22"] = Instance.new("UICorner", UI["Z"]);
UI["UICorner_22"]["CornerRadius"] = UDim.new(0, 4);

UI["RALT"] = Instance.new("TextButton", UI["MainFrame"]);
UI["RALT"]["TextWrapped"] = true;
UI["RALT"]["BorderSizePixel"] = 0;
UI["RALT"]["TextScaled"] = true;
UI["RALT"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["RALT"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["RALT"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["RALT"]["Size"] = UDim2.new(0, 46, 0, 30);
UI["RALT"]["Text"] = [[R-Alt]];
UI["RALT"]["Name"] = [[RALT]];
UI["RALT"]["Position"] = UDim2.new(0, 240, 0, 136);

UI["UICorner_23"] = Instance.new("UICorner", UI["RALT"]);
UI["UICorner_23"]["CornerRadius"] = UDim.new(0, 4);

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
UI["C"]["Position"] = UDim2.new(0, 70, 0, 102);

UI["UICorner_24"] = Instance.new("UICorner", UI["C"]);
UI["UICorner_24"]["CornerRadius"] = UDim.new(0, 4);

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
UI["P"]["Position"] = UDim2.new(0, 308, 0, 34);

UI["UICorner_25"] = Instance.new("UICorner", UI["P"]);
UI["UICorner_25"]["CornerRadius"] = UDim.new(0, 4);

UI["Q"] = Instance.new("TextButton", UI["MainFrame"]);
UI["Q"]["TextWrapped"] = true;
UI["Q"]["BorderSizePixel"] = 0;
UI["Q"]["TextScaled"] = true;
UI["Q"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Q"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Q"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Q"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["Q"]["Text"] = [[Q]];
UI["Q"]["Position"] = UDim2.new(0, 2, 0, 34);

UI["UICorner_26"] = Instance.new("UICorner", UI["Q"]);
UI["UICorner_26"]["CornerRadius"] = UDim.new(0, 4);

UI["UIStroke"] = Instance.new("UIStroke", UI["MainFrame"]);
UI["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["UIStroke"]["Color"] = Color3.fromRGB(171, 0, 255);

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
UI["B"]["Position"] = UDim2.new(0, 138, 0, 102);

UI["UICorner_27"] = Instance.new("UICorner", UI["B"]);
UI["UICorner_27"]["CornerRadius"] = UDim.new(0, 4);

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
UI["L"]["Position"] = UDim2.new(0, 274, 0, 68);

UI["UICorner_28"] = Instance.new("UICorner", UI["L"]);
UI["UICorner_28"]["CornerRadius"] = UDim.new(0, 4);

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
UI["O"]["Position"] = UDim2.new(0, 274, 0, 34);

UI["UICorner_29"] = Instance.new("UICorner", UI["O"]);
UI["UICorner_29"]["CornerRadius"] = UDim.new(0, 4);

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
UI["G"]["Position"] = UDim2.new(0, 138, 0, 68);

UI["UICorner_30"] = Instance.new("UICorner", UI["G"]);
UI["UICorner_30"]["CornerRadius"] = UDim.new(0, 4);

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
UI["R"]["Position"] = UDim2.new(0, 104, 0, 34);

UI["UICorner_31"] = Instance.new("UICorner", UI["R"]);
UI["UICorner_31"]["CornerRadius"] = UDim.new(0, 4);

UI["RIGHTBRACKET"] = Instance.new("TextButton", UI["MainFrame"]);
UI["RIGHTBRACKET"]["TextWrapped"] = true;
UI["RIGHTBRACKET"]["BorderSizePixel"] = 0;
UI["RIGHTBRACKET"]["TextScaled"] = true;
UI["RIGHTBRACKET"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["RIGHTBRACKET"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["RIGHTBRACKET"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["RIGHTBRACKET"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["RIGHTBRACKET"]["Text"] = [[]];
UI["RIGHTBRACKET"]["Name"] = [[RIGHTBRACKET]];
UI["RIGHTBRACKET"]["Position"] = UDim2.new(0, 308, 0, 102);

UI["UICorner_32"] = Instance.new("UICorner", UI["RIGHTBRACKET"]);
UI["UICorner_32"]["CornerRadius"] = UDim.new(0, 4);

UI["UICorner_33"] = Instance.new("UICorner", UI["MainFrame"]);
UI["UICorner_33"]["CornerRadius"] = UDim.new(0, 4);

UI["SPACE"] = Instance.new("TextButton", UI["MainFrame"]);
UI["SPACE"]["TextWrapped"] = true;
UI["SPACE"]["BorderSizePixel"] = 0;
UI["SPACE"]["TextScaled"] = true;
UI["SPACE"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["SPACE"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["SPACE"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["SPACE"]["Size"] = UDim2.new(0, 132, 0, 30);
UI["SPACE"]["Text"] = [[]];
UI["SPACE"]["Name"] = [[SPACE]];
UI["SPACE"]["Position"] = UDim2.new(0, 104, 0, 136);

UI["UICorner_34"] = Instance.new("UICorner", UI["SPACE"]);
UI["UICorner_34"]["CornerRadius"] = UDim.new(0, 4);

UI["Title"] = Instance.new("TextLabel", UI["MainFrame"]);
UI["Title"]["TextWrapped"] = true;
UI["Title"]["BorderSizePixel"] = 0;
UI["Title"]["TextSize"] = 24;
UI["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["Title"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["Title"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["Title"]["Size"] = UDim2.new(0, 341, 0, 30);
UI["Title"]["Text"] = [[Kilobyte keyboard]];
UI["Title"]["Name"] = [[Title]];

UI["UICorner_35"] = Instance.new("UICorner", UI["Title"]);
UI["UICorner_35"]["CornerRadius"] = UDim.new(0, 4);

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
UI["Hide"]["Position"] = UDim2.new(0, 286, 0, 2);

UI["UICorner_36"] = Instance.new("UICorner", UI["Hide"]);
UI["UICorner_36"]["CornerRadius"] = UDim.new(0, 4);

UI["LALT"] = Instance.new("TextButton", UI["MainFrame"]);
UI["LALT"]["TextWrapped"] = true;
UI["LALT"]["BorderSizePixel"] = 0;
UI["LALT"]["TextScaled"] = true;
UI["LALT"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["LALT"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["LALT"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["LALT"]["Size"] = UDim2.new(0, 46, 0, 30);
UI["LALT"]["Text"] = [[L-Alt]];
UI["LALT"]["Name"] = [[LALT]];
UI["LALT"]["Position"] = UDim2.new(0, 54, 0, 136);

UI["UICorner_37"] = Instance.new("UICorner", UI["LALT"]);
UI["UICorner_37"]["CornerRadius"] = UDim.new(0, 4);

UI["SEMICOLON"] = Instance.new("TextButton", UI["MainFrame"]);
UI["SEMICOLON"]["TextWrapped"] = true;
UI["SEMICOLON"]["BorderSizePixel"] = 0;
UI["SEMICOLON"]["TextScaled"] = true;
UI["SEMICOLON"]["TextColor3"] = Color3.fromRGB(171, 0, 255);
UI["SEMICOLON"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["SEMICOLON"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
UI["SEMICOLON"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["SEMICOLON"]["Text"] = [[;]];
UI["SEMICOLON"]["Name"] = [[SEMICOLON]];
UI["SEMICOLON"]["Position"] = UDim2.new(0, 308, 0, 68);

UI["UICorner_38"] = Instance.new("UICorner", UI["SEMICOLON"]);
UI["UICorner_38"]["CornerRadius"] = UDim.new(0, 4);

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
UI["A"]["Position"] = UDim2.new(0, 2, 0, 68);

UI["UICorner_39"] = Instance.new("UICorner", UI["A"]);
UI["UICorner_39"]["CornerRadius"] = UDim.new(0, 4);

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
UI["J"]["Position"] = UDim2.new(0, 206, 0, 68);

UI["UICorner_40"] = Instance.new("UICorner", UI["J"]);
UI["UICorner_40"]["CornerRadius"] = UDim.new(0, 4);

local VIM = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

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
    SEMICOLON = Enum.KeyCode.Semicolon,
    DOT = Enum.KeyCode.Period,
    LEFTBRACKET = Enum.KeyCode.LeftBracket,
    RIGHTBRACKET = Enum.KeyCode.RightBracket,
    SPACE = Enum.KeyCode.Space,
    LCTRL = Enum.KeyCode.LeftControl,
    LALT = Enum.KeyCode.LeftAlt,
    RCTRL = Enum.KeyCode.RightControl,
    RALT = Enum.KeyCode.RightAlt
}

local function dragify(Frame)
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

local function HoverAnim(button)
    local originalBg = button.BackgroundColor3
    local originalText = button.TextColor3
    
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(50, 50, 50),
            TextColor3 = Color3.fromRGB(200, 50, 255)
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalBg,
            TextColor3 = originalText
        }):Play()
    end)
    
    button.MouseButton1Down:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        }):Play()
    end)
end

for keyName, keyCode in pairs(keyMap) do
    if UI[keyName] and UI[keyName]:IsA("TextButton") then
        HoverAnim(UI[keyName])
        
        UI[keyName].MouseButton1Click:Connect(function()
            VIM:SendKeyEvent(true, keyCode, false, nil)
            task.wait(0.05)
            VIM:SendKeyEvent(false, keyCode, false, nil)
        end)
    end
end

HoverAnim(UI["Close"])
HoverAnim(UI["Hide"])
HoverAnim(UI["Show"])

local openTween = TweenService:Create(
    UI["MainFrame"],
    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {Position = UDim2.new(0, 16, 0, 0)}
)

local closeTween = TweenService:Create(
    UI["MainFrame"],
    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
    {Position = UDim2.new(0, 16, 0, -170)}
)

UI["Show"].MouseButton1Click:Connect(function()
    UI["MainFrame"].Visible = true
    UI["Show"].Visible = false
    openTween:Play()
end)

UI["Hide"].MouseButton1Click:Connect(function()
    closeTween:Play()
    task.wait(0.3)
    UI["MainFrame"].Visible = false
    UI["Show"].Visible = true
end)

UI["Close"].MouseButton1Click:Connect(function()
    closeTween:Play()
    task.wait(0.3)
    UI["ScreenGui"]:Destroy()
end)

UI["MainFrame"].Visible = true
UI["Show"].Visible = false

return UI["ScreenGui"]
