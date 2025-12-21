local UI = {};

UI["1"] = Instance.new("ScreenGui", gethui());
UI["1"]["Name"] "KilobyteV3"
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["1"]["ResetOnSpawn"] = false;

UI["2"] = Instance.new("Frame", UI["1"]);
UI["2"]["Active"] = true;
UI["2"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
UI["2"]["Size"] = UDim2.new(0, 478, 0, 236);
UI["2"]["Position"] = UDim2.new(0.5, -239, 0.5, -118);
UI["2"]["Name"] "Main"

UI["3"] = Instance.new("UIStroke", UI["2"]);
UI["3"]["Color"] = Color3.fromRGB(158, 0, 255);

UI["4"] = Instance.new("Frame", UI["2"]);
UI["4"]["Active"] = true;
UI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["4"]["BackgroundTransparency"] = 1;
UI["4"]["Size"] = UDim2.new(0.9978905916213989, 0, 0.8684942126274109, 0);
UI["4"]["Position"] = UDim2.new(0, 0, 0.12748458981513977, 0);
UI["4"]["Name"] "Background"

UI["5"] = Instance.new("TextButton", UI["4"]);
UI["5"]["TextWrapped"] = true;
UI["5"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["5"]["TextSize"] = 21;
UI["5"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["5"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["5"]["Name"] "-Backquote"
UI["5"]["Text"] "`"
UI["5"]["Position"] = UDim2.new(0, 7, 0, 31);

UI["6"] = Instance.new("UIStroke", UI["5"]);
UI["6"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["7"] = Instance.new("UICorner", UI["5"]);
UI["7"]["CornerRadius"] = UDim.new(0, 5);

UI["8"] = Instance.new("TextButton", UI["4"]);
UI["8"]["TextWrapped"] = true;
UI["8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["8"]["TextSize"] = 21;
UI["8"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["8"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["8"]["Name"] "-One"
UI["8"]["Text"] "1"
UI["8"]["Position"] = UDim2.new(0, 39, 0, 31);

UI["9"] = Instance.new("UIStroke", UI["8"]);
UI["9"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["a"] = Instance.new("UICorner", UI["8"]);
UI["a"]["CornerRadius"] = UDim.new(0, 5);

UI["b"] = Instance.new("TextButton", UI["4"]);
UI["b"]["TextWrapped"] = true;
UI["b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["b"]["TextSize"] = 21;
UI["b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["b"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["b"]["Name"] "-Two"
UI["b"]["Text"] "2"
UI["b"]["Position"] = UDim2.new(0, 71, 0, 31);

UI["c"] = Instance.new("UIStroke", UI["b"]);
UI["c"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["d"] = Instance.new("UICorner", UI["b"]);
UI["d"]["CornerRadius"] = UDim.new(0, 5);

UI["e"] = Instance.new("TextButton", UI["4"]);
UI["e"]["TextWrapped"] = true;
UI["e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["e"]["TextSize"] = 21;
UI["e"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["e"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["e"]["Name"] "-Three"
UI["e"]["Text"] "3"
UI["e"]["Position"] = UDim2.new(0, 104, 0, 31);

UI["f"] = Instance.new("UIStroke", UI["e"]);
UI["f"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["10"] = Instance.new("UICorner", UI["e"]);
UI["10"]["CornerRadius"] = UDim.new(0, 5);

UI["11"] = Instance.new("TextButton", UI["4"]);
UI["11"]["TextWrapped"] = true;
UI["11"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["11"]["TextSize"] = 21;
UI["11"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["11"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["11"]["Name"] "-Four"
UI["11"]["Text"] "4"
UI["11"]["Position"] = UDim2.new(0, 135, 0, 31);

UI["12"] = Instance.new("UIStroke", UI["11"]);
UI["12"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["13"] = Instance.new("UICorner", UI["11"]);
UI["13"]["CornerRadius"] = UDim.new(0, 5);

UI["14"] = Instance.new("TextButton", UI["4"]);
UI["14"]["TextWrapped"] = true;
UI["14"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["14"]["TextSize"] = 21;
UI["14"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["14"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["14"]["Name"] "-Five"
UI["14"]["Text"] "5"
UI["14"]["Position"] = UDim2.new(0, 167, 0, 31);

UI["15"] = Instance.new("UIStroke", UI["14"]);
UI["15"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["15"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["16"] = Instance.new("UICorner", UI["14"]);
UI["16"]["CornerRadius"] = UDim.new(0, 5);

UI["17"] = Instance.new("TextButton", UI["4"]);
UI["17"]["TextWrapped"] = true;
UI["17"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["17"]["TextSize"] = 21;
UI["17"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["17"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["17"]["Name"] "-Zero"
UI["17"]["Text"] "0"
UI["17"]["Position"] = UDim2.new(0, 327, 0, 31);

UI["18"] = Instance.new("UIStroke", UI["17"]);
UI["18"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["18"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["19"] = Instance.new("UICorner", UI["17"]);
UI["19"]["CornerRadius"] = UDim.new(0, 5);

UI["1a"] = Instance.new("TextButton", UI["4"]);
UI["1a"]["TextWrapped"] = true;
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["1a"]["TextSize"] = 21;
UI["1a"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["1a"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["1a"]["Name"] "-Six"
UI["1a"]["Text"] "6"
UI["1a"]["Position"] = UDim2.new(0, 199, 0, 31);

UI["1b"] = Instance.new("UIStroke", UI["1a"]);
UI["1b"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["1c"] = Instance.new("UICorner", UI["1a"]);
UI["1c"]["CornerRadius"] = UDim.new(0, 5);

UI["1d"] = Instance.new("TextButton", UI["4"]);
UI["1d"]["TextWrapped"] = true;
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["1d"]["TextSize"] = 21;
UI["1d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["1d"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["1d"]["Name"] "-Seven"
UI["1d"]["Text"] "7"
UI["1d"]["Position"] = UDim2.new(0, 231, 0, 31);

UI["1e"] = Instance.new("UIStroke", UI["1d"]);
UI["1e"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["1e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["1f"] = Instance.new("UICorner", UI["1d"]);
UI["1f"]["CornerRadius"] = UDim.new(0, 5);

UI["20"] = Instance.new("TextButton", UI["4"]);
UI["20"]["TextWrapped"] = true;
UI["20"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["20"]["TextSize"] = 21;
UI["20"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["20"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["20"]["Name"] "-Eight"
UI["20"]["Text"] "8"
UI["20"]["Position"] = UDim2.new(0, 264, 0, 31);

UI["21"] = Instance.new("UIStroke", UI["20"]);
UI["21"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["22"] = Instance.new("UICorner", UI["20"]);
UI["22"]["CornerRadius"] = UDim.new(0, 5);

UI["23"] = Instance.new("TextButton", UI["4"]);
UI["23"]["TextWrapped"] = true;
UI["23"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["23"]["TextSize"] = 21;
UI["23"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["23"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["23"]["Name"] "-Nine"
UI["23"]["Text"] "9"
UI["23"]["Position"] = UDim2.new(0, 295, 0, 31);

UI["24"] = Instance.new("UIStroke", UI["23"]);
UI["24"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["25"] = Instance.new("UICorner", UI["23"]);
UI["25"]["CornerRadius"] = UDim.new(0, 5);

UI["26"] = Instance.new("TextButton", UI["4"]);
UI["26"]["TextWrapped"] = true;
UI["26"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["26"]["TextSize"] = 21;
UI["26"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["26"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["26"]["Name"] "-Minus"
UI["26"]["Text"] "-"
UI["26"]["Position"] = UDim2.new(0, 358, 0, 31);

UI["27"] = Instance.new("UIStroke", UI["26"]);
UI["27"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["28"] = Instance.new("UICorner", UI["26"]);
UI["28"]["CornerRadius"] = UDim.new(0, 5);

UI["29"] = Instance.new("TextButton", UI["4"]);
UI["29"]["TextWrapped"] = true;
UI["29"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["29"]["TextSize"] = 21;
UI["29"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["29"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["29"]["Name"] "-Equals"
UI["29"]["Text"] "="
UI["29"]["Position"] = UDim2.new(0, 389, 0, 31);

UI["2a"] = Instance.new("UIStroke", UI["29"]);
UI["2a"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["2b"] = Instance.new("UICorner", UI["29"]);
UI["2b"]["CornerRadius"] = UDim.new(0, 5);

UI["2c"] = Instance.new("TextButton", UI["4"]);
UI["2c"]["TextWrapped"] = true;
UI["2c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["2c"]["TextSize"] = 11;
UI["2c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["2c"]["Size"] = UDim2.new(0, 47, 0, 25);
UI["2c"]["Name"] "Backspace"
UI["2c"]["Text"] "Backspace"
UI["2c"]["Position"] = UDim2.new(0, 422, 0, 31);

UI["2d"] = Instance.new("UIStroke", UI["2c"]);
UI["2d"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["2d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["2e"] = Instance.new("UICorner", UI["2c"]);
UI["2e"]["CornerRadius"] = UDim.new(0, 5);

UI["2f"] = Instance.new("TextButton", UI["4"]);
UI["2f"]["TextWrapped"] = true;
UI["2f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["2f"]["TextSize"] = 21;
UI["2f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["2f"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["2f"]["Name"] "Q"
UI["2f"]["Text"] "Q"
UI["2f"]["Position"] = UDim2.new(0, 54, 0, 63);

UI["30"] = Instance.new("UIStroke", UI["2f"]);
UI["30"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["31"] = Instance.new("UICorner", UI["2f"]);
UI["31"]["CornerRadius"] = UDim.new(0, 5);

UI["32"] = Instance.new("TextButton", UI["4"]);
UI["32"]["TextWrapped"] = true;
UI["32"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["32"]["TextSize"] = 21;
UI["32"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["32"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["32"]["Name"] "W"
UI["32"]["Text"] "W"
UI["32"]["Position"] = UDim2.new(0, 87, 0, 63);

UI["33"] = Instance.new("UIStroke", UI["32"]);
UI["33"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["33"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["34"] = Instance.new("UICorner", UI["32"]);
UI["34"]["CornerRadius"] = UDim.new(0, 5);

UI["35"] = Instance.new("TextButton", UI["4"]);
UI["35"]["TextWrapped"] = true;
UI["35"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["35"]["TextSize"] = 21;
UI["35"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["35"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["35"]["Name"] "O"
UI["35"]["Text"] "O"
UI["35"]["Position"] = UDim2.new(0, 312, 0, 63);

UI["36"] = Instance.new("UIStroke", UI["35"]);
UI["36"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["36"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["37"] = Instance.new("UICorner", UI["35"]);
UI["37"]["CornerRadius"] = UDim.new(0, 5);

UI["38"] = Instance.new("TextButton", UI["4"]);
UI["38"]["TextWrapped"] = true;
UI["38"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["38"]["TextSize"] = 21;
UI["38"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["38"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["38"]["Name"] "I"
UI["38"]["Text"] "I"
UI["38"]["Position"] = UDim2.new(0, 280, 0, 63);

UI["39"] = Instance.new("UIStroke", UI["38"]);
UI["39"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["39"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["3a"] = Instance.new("UICorner", UI["38"]);
UI["3a"]["CornerRadius"] = UDim.new(0, 5);

UI["3b"] = Instance.new("TextButton", UI["4"]);
UI["3b"]["TextWrapped"] = true;
UI["3b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["3b"]["TextSize"] = 21;
UI["3b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["3b"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["3b"]["Name"] "U"
UI["3b"]["Text"] "U"
UI["3b"]["Position"] = UDim2.new(0, 249, 0, 63);

UI["3c"] = Instance.new("UIStroke", UI["3b"]);
UI["3c"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["3c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["3d"] = Instance.new("UICorner", UI["3b"]);
UI["3d"]["CornerRadius"] = UDim.new(0, 5);

UI["3e"] = Instance.new("TextButton", UI["4"]);
UI["3e"]["TextWrapped"] = true;
UI["3e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["3e"]["TextSize"] = 21;
UI["3e"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["3e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["3e"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["3e"]["Name"] "Y"
UI["3e"]["Text"] "Y"
UI["3e"]["Position"] = UDim2.new(0, 216, 0, 63);

UI["3f"] = Instance.new("UIStroke", UI["3e"]);
UI["3f"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["3f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["40"] = Instance.new("UICorner", UI["3e"]);
UI["40"]["CornerRadius"] = UDim.new(0, 5);

UI["41"] = Instance.new("TextButton", UI["4"]);
UI["41"]["TextWrapped"] = true;
UI["41"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["41"]["TextSize"] = 21;
UI["41"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["41"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["41"]["Name"] "T"
UI["41"]["Text"] "T"
UI["41"]["Position"] = UDim2.new(0, 184, 0, 63);

UI["42"] = Instance.new("UIStroke", UI["41"]);
UI["42"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["43"] = Instance.new("UICorner", UI["41"]);
UI["43"]["CornerRadius"] = UDim.new(0, 5);

UI["44"] = Instance.new("TextButton", UI["4"]);
UI["44"]["TextWrapped"] = true;
UI["44"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["44"]["TextSize"] = 21;
UI["44"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["44"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["44"]["Name"] "R"
UI["44"]["Text"] "R"
UI["44"]["Position"] = UDim2.new(0, 152, 0, 63);

UI["45"] = Instance.new("UIStroke", UI["44"]);
UI["45"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["45"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["46"] = Instance.new("UICorner", UI["44"]);
UI["46"]["CornerRadius"] = UDim.new(0, 5);

UI["47"] = Instance.new("TextButton", UI["4"]);
UI["47"]["TextWrapped"] = true;
UI["47"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["47"]["TextSize"] = 21;
UI["47"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["47"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["47"]["Name"] "E"
UI["47"]["Text"] "E"
UI["47"]["Position"] = UDim2.new(0, 120, 0, 63);

UI["48"] = Instance.new("UIStroke", UI["47"]);
UI["48"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["48"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["49"] = Instance.new("UICorner", UI["47"]);
UI["49"]["CornerRadius"] = UDim.new(0, 5);

UI["4a"] = Instance.new("TextButton", UI["4"]);
UI["4a"]["TextWrapped"] = true;
UI["4a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["4a"]["TextSize"] = 21;
UI["4a"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["4a"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["4a"]["Name"] "P"
UI["4a"]["Text"] "P"
UI["4a"]["Position"] = UDim2.new(0, 344, 0, 63);

UI["4b"] = Instance.new("UIStroke", UI["4a"]);
UI["4b"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["4b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["4c"] = Instance.new("UICorner", UI["4a"]);
UI["4c"]["CornerRadius"] = UDim.new(0, 5);

UI["4d"] = Instance.new("TextButton", UI["4"]);
UI["4d"]["TextWrapped"] = true;
UI["4d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["4d"]["TextSize"] = 21;
UI["4d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["4d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["4d"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["4d"]["Name"] "-Semicolon"
UI["4d"]["Text"] ";"
UI["4d"]["Position"] = UDim2.new(0, 354, 0, 95);

UI["4e"] = Instance.new("UIStroke", UI["4d"]);
UI["4e"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["4e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["4f"] = Instance.new("UICorner", UI["4d"]);
UI["4f"]["CornerRadius"] = UDim.new(0, 5);

UI["50"] = Instance.new("TextButton", UI["4"]);
UI["50"]["TextWrapped"] = true;
UI["50"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["50"]["TextSize"] = 21;
UI["50"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["50"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["50"]["Name"] "A"
UI["50"]["Text"] "A"
UI["50"]["Position"] = UDim2.new(0, 64, 0, 95);

UI["51"] = Instance.new("UIStroke", UI["50"]);
UI["51"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["51"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["52"] = Instance.new("UICorner", UI["50"]);
UI["52"]["CornerRadius"] = UDim.new(0, 5);

UI["53"] = Instance.new("TextButton", UI["4"]);
UI["53"]["TextWrapped"] = true;
UI["53"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["53"]["TextSize"] = 21;
UI["53"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["53"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["53"]["Name"] "S"
UI["53"]["Text"] "S"
UI["53"]["Position"] = UDim2.new(0, 97, 0, 95);

UI["54"] = Instance.new("UIStroke", UI["53"]);
UI["54"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["54"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["55"] = Instance.new("UICorner", UI["53"]);
UI["55"]["CornerRadius"] = UDim.new(0, 5);

UI["56"] = Instance.new("LocalScript", UI["4"]);
UI["56"]["Name"] "Handler"

UI["57"] = Instance.new("TextButton", UI["4"]);
UI["57"]["TextWrapped"] = true;
UI["57"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["57"]["TextSize"] = 21;
UI["57"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["57"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["57"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["57"]["Name"] "G"
UI["57"]["Text"] "G"
UI["57"]["Position"] = UDim2.new(0, 194, 0, 95);

UI["58"] = Instance.new("UIStroke", UI["57"]);
UI["58"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["59"] = Instance.new("UICorner", UI["57"]);
UI["59"]["CornerRadius"] = UDim.new(0, 5);

UI["5a"] = Instance.new("TextButton", UI["4"]);
UI["5a"]["TextWrapped"] = true;
UI["5a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["5a"]["TextSize"] = 21;
UI["5a"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["5a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["5a"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["5a"]["Name"] "F"
UI["5a"]["Text"] "F"
UI["5a"]["Position"] = UDim2.new(0, 162, 0, 95);

UI["5b"] = Instance.new("UIStroke", UI["5a"]);
UI["5b"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["5c"] = Instance.new("UICorner", UI["5a"]);
UI["5c"]["CornerRadius"] = UDim.new(0, 5);

UI["5d"] = Instance.new("TextButton", UI["4"]);
UI["5d"]["TextWrapped"] = true;
UI["5d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["5d"]["TextSize"] = 21;
UI["5d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["5d"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["5d"]["Name"] "H"
UI["5d"]["Text"] "H"
UI["5d"]["Position"] = UDim2.new(0, 226, 0, 95);

UI["5e"] = Instance.new("UIStroke", UI["5d"]);
UI["5e"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["5e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["5f"] = Instance.new("UICorner", UI["5d"]);
UI["5f"]["CornerRadius"] = UDim.new(0, 5);

UI["60"] = Instance.new("TextButton", UI["4"]);
UI["60"]["TextWrapped"] = true;
UI["60"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["60"]["TextSize"] = 21;
UI["60"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["60"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["60"]["Name"] "J"
UI["60"]["Text"] "J"
UI["60"]["Position"] = UDim2.new(0, 258, 0, 95);

UI["61"] = Instance.new("UIStroke", UI["60"]);
UI["61"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["61"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["62"] = Instance.new("UICorner", UI["60"]);
UI["62"]["CornerRadius"] = UDim.new(0, 5);

UI["63"] = Instance.new("TextButton", UI["4"]);
UI["63"]["TextWrapped"] = true;
UI["63"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["63"]["TextSize"] = 21;
UI["63"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["63"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["63"]["Name"] "K"
UI["63"]["Text"] "K"
UI["63"]["Position"] = UDim2.new(0, 290, 0, 95);

UI["64"] = Instance.new("UIStroke", UI["63"]);
UI["64"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["65"] = Instance.new("UICorner", UI["63"]);
UI["65"]["CornerRadius"] = UDim.new(0, 5);

UI["66"] = Instance.new("TextButton", UI["4"]);
UI["66"]["TextWrapped"] = true;
UI["66"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["66"]["TextSize"] = 21;
UI["66"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["66"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["66"]["Name"] "L"
UI["66"]["Text"] "L"
UI["66"]["Position"] = UDim2.new(0, 322, 0, 95);

UI["67"] = Instance.new("UIStroke", UI["66"]);
UI["67"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["67"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["68"] = Instance.new("UICorner", UI["66"]);
UI["68"]["CornerRadius"] = UDim.new(0, 5);

UI["69"] = Instance.new("TextButton", UI["4"]);
UI["69"]["TextWrapped"] = true;
UI["69"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["69"]["TextSize"] = 21;
UI["69"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["69"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["69"]["Name"] "Z"
UI["69"]["Text"] "Z"
UI["69"]["Position"] = UDim2.new(0, 80, 0, 127);

UI["6a"] = Instance.new("UIStroke", UI["69"]);
UI["6a"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["6a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["6b"] = Instance.new("UICorner", UI["69"]);
UI["6b"]["CornerRadius"] = UDim.new(0, 5);

UI["6c"] = Instance.new("TextButton", UI["4"]);
UI["6c"]["TextWrapped"] = true;
UI["6c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["6c"]["TextSize"] = 21;
UI["6c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["6c"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["6c"]["Name"] "X"
UI["6c"]["Text"] "X"
UI["6c"]["Position"] = UDim2.new(0, 112, 0, 127);

UI["6d"] = Instance.new("UIStroke", UI["6c"]);
UI["6d"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["6d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["6e"] = Instance.new("UICorner", UI["6c"]);
UI["6e"]["CornerRadius"] = UDim.new(0, 5);

UI["6f"] = Instance.new("TextButton", UI["4"]);
UI["6f"]["TextWrapped"] = true;
UI["6f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["6f"]["TextSize"] = 21;
UI["6f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["6f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["6f"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["6f"]["Name"] "C"
UI["6f"]["Text"] "C"
UI["6f"]["Position"] = UDim2.new(0, 145, 0, 127);

UI["70"] = Instance.new("UIStroke", UI["6f"]);
UI["70"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["70"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["71"] = Instance.new("UICorner", UI["6f"]);
UI["71"]["CornerRadius"] = UDim.new(0, 5);

UI["72"] = Instance.new("TextButton", UI["4"]);
UI["72"]["TextWrapped"] = true;
UI["72"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["72"]["TextSize"] = 21;
UI["72"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["72"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["72"]["Name"] "V"
UI["72"]["Text"] "V"
UI["72"]["Position"] = UDim2.new(0, 177, 0, 127);

UI["73"] = Instance.new("UIStroke", UI["72"]);
UI["73"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["73"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["74"] = Instance.new("UICorner", UI["72"]);
UI["74"]["CornerRadius"] = UDim.new(0, 5);

UI["75"] = Instance.new("TextButton", UI["4"]);
UI["75"]["TextWrapped"] = true;
UI["75"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["75"]["TextSize"] = 21;
UI["75"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["75"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["75"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["75"]["Name"] "B"
UI["75"]["Text"] "B"
UI["75"]["Position"] = UDim2.new(0, 209, 0, 127);

UI["76"] = Instance.new("UIStroke", UI["75"]);
UI["76"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["76"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["77"] = Instance.new("UICorner", UI["75"]);
UI["77"]["CornerRadius"] = UDim.new(0, 5);

UI["78"] = Instance.new("TextButton", UI["4"]);
UI["78"]["TextWrapped"] = true;
UI["78"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["78"]["TextSize"] = 21;
UI["78"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["78"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["78"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["78"]["Name"] "N"
UI["78"]["Text"] "N"
UI["78"]["Position"] = UDim2.new(0, 241, 0, 127);

UI["79"] = Instance.new("UIStroke", UI["78"]);
UI["79"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["79"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["7a"] = Instance.new("UICorner", UI["78"]);
UI["7a"]["CornerRadius"] = UDim.new(0, 5);

UI["7b"] = Instance.new("TextButton", UI["4"]);
UI["7b"]["TextWrapped"] = true;
UI["7b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["7b"]["TextSize"] = 21;
UI["7b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["7b"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["7b"]["Name"] "M"
UI["7b"]["Text"] "M"
UI["7b"]["Position"] = UDim2.new(0, 273, 0, 127);

UI["7c"] = Instance.new("UIStroke", UI["7b"]);
UI["7c"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["7c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["7d"] = Instance.new("UICorner", UI["7b"]);
UI["7d"]["CornerRadius"] = UDim.new(0, 5);

UI["7e"] = Instance.new("TextButton", UI["4"]);
UI["7e"]["TextWrapped"] = true;
UI["7e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["7e"]["TextSize"] = 21;
UI["7e"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["7e"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["7e"]["Name"] "-Period"
UI["7e"]["Text"] "."
UI["7e"]["Position"] = UDim2.new(0, 338, 0, 127);

UI["7f"] = Instance.new("UIStroke", UI["7e"]);
UI["7f"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["7f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["80"] = Instance.new("UICorner", UI["7e"]);
UI["80"]["CornerRadius"] = UDim.new(0, 5);

UI["81"] = Instance.new("TextButton", UI["4"]);
UI["81"]["TextWrapped"] = true;
UI["81"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["81"]["TextSize"] = 21;
UI["81"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["81"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["81"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["81"]["Name"] "-Comma"
UI["81"]["Text"] ","
UI["81"]["Position"] = UDim2.new(0, 305, 0, 127);

UI["82"] = Instance.new("UIStroke", UI["81"]);
UI["82"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["82"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["83"] = Instance.new("UICorner", UI["81"]);
UI["83"]["CornerRadius"] = UDim.new(0, 5);

UI["84"] = Instance.new("TextButton", UI["4"]);
UI["84"]["TextWrapped"] = true;
UI["84"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["84"]["TextSize"] = 21;
UI["84"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["84"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["84"]["Size"] = UDim2.new(0, 64, 0, 25);
UI["84"]["Name"] "RightShift"
UI["84"]["Text"] "Shift"
UI["84"]["Position"] = UDim2.new(0, 405, 0, 127);

UI["85"] = Instance.new("UIStroke", UI["84"]);
UI["85"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["85"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["86"] = Instance.new("UICorner", UI["84"]);
UI["86"]["CornerRadius"] = UDim.new(0, 5);

UI["87"] = Instance.new("TextButton", UI["4"]);
UI["87"]["TextWrapped"] = true;
UI["87"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["87"]["TextSize"] = 21;
UI["87"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["87"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["87"]["Name"] "-Slash"
UI["87"]["Text"] "/"
UI["87"]["Position"] = UDim2.new(0, 372, 0, 127);

UI["88"] = Instance.new("UIStroke", UI["87"]);
UI["88"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["88"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["89"] = Instance.new("UICorner", UI["87"]);
UI["89"]["CornerRadius"] = UDim.new(0, 5);

UI["8a"] = Instance.new("TextButton", UI["4"]);
UI["8a"]["TextWrapped"] = true;
UI["8a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["8a"]["TextSize"] = 21;
UI["8a"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["8a"]["Size"] = UDim2.new(0, 51, 0, 25);
UI["8a"]["Name"] "Enter"
UI["8a"]["Text"] "Enter"
UI["8a"]["Position"] = UDim2.new(0, 418, 0, 95);

UI["8b"] = Instance.new("UIStroke", UI["8a"]);
UI["8b"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["8b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["8c"] = Instance.new("UICorner", UI["8a"]);
UI["8c"]["CornerRadius"] = UDim.new(0, 5);

UI["8d"] = Instance.new("TextButton", UI["4"]);
UI["8d"]["TextWrapped"] = true;
UI["8d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["8d"]["TextSize"] = 21;
UI["8d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["8d"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["8d"]["Name"] "-Qoute"
UI["8d"]["Text"] "'"
UI["8d"]["Position"] = UDim2.new(0, 386, 0, 95);

UI["8e"] = Instance.new("UIStroke", UI["8d"]);
UI["8e"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["8e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["8f"] = Instance.new("UICorner", UI["8d"]);
UI["8f"]["CornerRadius"] = UDim.new(0, 5);

UI["90"] = Instance.new("TextButton", UI["4"]);
UI["90"]["TextWrapped"] = true;
UI["90"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["90"]["TextSize"] = 21;
UI["90"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["90"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["90"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["90"]["Name"] "-BackSlash"
UI["90"]["Text"] "\"
UI["90"]["Position"] = UDim2.new(0, 442, 0, 63);

UI["91"] = Instance.new("UIStroke", UI["90"]);
UI["91"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["91"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["92"] = Instance.new("UICorner", UI["90"]);
UI["92"]["CornerRadius"] = UDim.new(0, 5);

UI["93"] = Instance.new("TextButton", UI["4"]);
UI["93"]["TextWrapped"] = true;
UI["93"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["93"]["TextSize"] = 21;
UI["93"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["93"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["93"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["93"]["Name"] "-RightBracket"
UI["93"]["Text"] = "]";
UI["93"]["Position"] = UDim2.new(0, 410, 0, 63);

UI["94"] = Instance.new("UIStroke", UI["93"]);
UI["94"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["94"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["95"] = Instance.new("UICorner", UI["93"]);
UI["95"]["CornerRadius"] = UDim.new(0, 5);

UI["96"] = Instance.new("TextButton", UI["4"]);
UI["96"]["TextWrapped"] = true;
UI["96"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["96"]["TextSize"] = 21;
UI["96"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["96"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["96"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["96"]["Name"] "-LeftBracket"
UI["96"]["Text"] = "["
UI["96"]["Position"] = UDim2.new(0, 378, 0, 63);

UI["97"] = Instance.new("UIStroke", UI["96"]);
UI["97"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["97"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["98"] = Instance.new("UICorner", UI["96"]);
UI["98"]["CornerRadius"] = UDim.new(0, 5);

UI["99"] = Instance.new("TextButton", UI["4"]);
UI["99"]["TextWrapped"] = true;
UI["99"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["99"]["TextSize"] = 21;
UI["99"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["99"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["99"]["Size"] = UDim2.new(0, 40, 0, 25);
UI["99"]["Name"] "Tab"
UI["99"]["Text"] "Tab"
UI["99"]["Position"] = UDim2.new(0, 7, 0, 63);

UI["9a"] = Instance.new("UIStroke", UI["99"]);
UI["9a"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["9a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["9b"] = Instance.new("UICorner", UI["99"]);
UI["9b"]["CornerRadius"] = UDim.new(0, 5);

UI["9c"] = Instance.new("TextButton", UI["4"]);
UI["9c"]["TextWrapped"] = true;
UI["9c"]["TextScaled"] = true;
UI["9c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["9c"]["TextSize"] = 1;
UI["9c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["9c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["9c"]["Size"] = UDim2.new(0, 50, 0, 25);
UI["9c"]["Name"] "CapsLock"
UI["9c"]["Text"] "Caps Lock"
UI["9c"]["Position"] = UDim2.new(0, 7, 0, 95);

UI["9d"] = Instance.new("UIStroke", UI["9c"]);
UI["9d"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["9d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["9e"] = Instance.new("UICorner", UI["9c"]);
UI["9e"]["CornerRadius"] = UDim.new(0, 5);

UI["9f"] = Instance.new("TextButton", UI["4"]);
UI["9f"]["TextWrapped"] = true;
UI["9f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["9f"]["TextSize"] = 21;
UI["9f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["9f"]["Size"] = UDim2.new(0, 65, 0, 25);
UI["9f"]["Name"] "LeftShift"
UI["9f"]["Text"] "Shift"
UI["9f"]["Position"] = UDim2.new(0, 7, 0, 127);

UI["a0"] = Instance.new("UIStroke", UI["9f"]);
UI["a0"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["a0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["a1"] = Instance.new("UICorner", UI["9f"]);
UI["a1"]["CornerRadius"] = UDim.new(0, 5);

UI["a2"] = Instance.new("TextButton", UI["4"]);
UI["a2"]["TextWrapped"] = true;
UI["a2"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["a2"]["TextSize"] = 23;
UI["a2"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["a2"]["Size"] = UDim2.new(0, 57, 0, 25);
UI["a2"]["Name"] "LeftControl"
UI["a2"]["Text"] "Ctrl"
UI["a2"]["Position"] = UDim2.new(0, 7, 0, 160);

UI["a3"] = Instance.new("UIStroke", UI["a2"]);
UI["a3"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["a3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["a4"] = Instance.new("UICorner", UI["a2"]);
UI["a4"]["CornerRadius"] = UDim.new(0, 5);

UI["a5"] = Instance.new("TextButton", UI["4"]);
UI["a5"]["TextWrapped"] = true;
UI["a5"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["a5"]["TextSize"] = 15;
UI["a5"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["a5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["a5"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["a5"]["Name"] "F12"
UI["a5"]["Text"] "F12"
UI["a5"]["Position"] = UDim2.new(0, 389, 0, -1);

UI["a6"] = Instance.new("UIStroke", UI["a5"]);
UI["a6"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["a6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["a7"] = Instance.new("UICorner", UI["a5"]);
UI["a7"]["CornerRadius"] = UDim.new(0, 5);

UI["a8"] = Instance.new("TextButton", UI["4"]);
UI["a8"]["TextWrapped"] = true;
UI["a8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["a8"]["TextSize"] = 14;
UI["a8"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["a8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["a8"]["Size"] = UDim2.new(0, 44, 0, 25);
UI["a8"]["Name"] "Delete"
UI["a8"]["Text"] "Del"
UI["a8"]["Position"] = UDim2.new(0, 423, 0, -1);

UI["a9"] = Instance.new("UIStroke", UI["a8"]);
UI["a9"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["a9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["aa"] = Instance.new("UICorner", UI["a8"]);
UI["aa"]["CornerRadius"] = UDim.new(0, 5);

UI["ab"] = Instance.new("TextButton", UI["4"]);
UI["ab"]["TextWrapped"] = true;
UI["ab"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["ab"]["TextSize"] = 21;
UI["ab"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["ab"]["Size"] = UDim2.new(0, 56, 0, 25);
UI["ab"]["Name"] "LeftAlt"
UI["ab"]["Text"] "Alt"
UI["ab"]["Position"] = UDim2.new(0, 73, 0, 160);

UI["ac"] = Instance.new("UIStroke", UI["ab"]);
UI["ac"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["ac"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["ad"] = Instance.new("UICorner", UI["ab"]);
UI["ad"]["CornerRadius"] = UDim.new(0, 5);

UI["ae"] = Instance.new("TextButton", UI["4"]);
UI["ae"]["TextWrapped"] = true;
UI["ae"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["ae"]["TextSize"] = 21;
UI["ae"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["ae"]["Size"] = UDim2.new(0, 159, 0, 25);
UI["ae"]["Name"] "Space"
UI["ae"]["Text"] ""
UI["ae"]["Position"] = UDim2.new(0, 137, 0, 160);

UI["af"] = Instance.new("UIStroke", UI["ae"]);
UI["af"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["af"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["b0"] = Instance.new("UICorner", UI["ae"]);
UI["b0"]["CornerRadius"] = UDim.new(0, 5);

UI["b1"] = Instance.new("TextButton", UI["4"]);
UI["b1"]["TextWrapped"] = true;
UI["b1"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["b1"]["TextSize"] = 21;
UI["b1"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["b1"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["b1"]["Name"] "RightAlt"
UI["b1"]["Text"] "Alt"
UI["b1"]["Position"] = UDim2.new(0, 305, 0, 160);

UI["b2"] = Instance.new("UIStroke", UI["b1"]);
UI["b2"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["b3"] = Instance.new("UICorner", UI["b1"]);
UI["b3"]["CornerRadius"] = UDim.new(0, 5);

UI["b4"] = Instance.new("TextButton", UI["4"]);
UI["b4"]["TextWrapped"] = true;
UI["b4"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["b4"]["TextSize"] = 12;
UI["b4"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["b4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["b4"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["b4"]["Name"] "RightControl"
UI["b4"]["Text"] "Ctrl"
UI["b4"]["Position"] = UDim2.new(0, 337, 0, 160);

UI["b5"] = Instance.new("UIStroke", UI["b4"]);
UI["b5"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["b5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["b6"] = Instance.new("UICorner", UI["b4"]);
UI["b6"]["CornerRadius"] = UDim.new(0, 5);

UI["b7"] = Instance.new("TextButton", UI["4"]);
UI["b7"]["TextWrapped"] = true;
UI["b7"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["b7"]["TextSize"] = 12;
UI["b7"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["b7"]["Size"] = UDim2.new(0, 33, 0, 11);
UI["b7"]["Name"] "PageUp"
UI["b7"]["Text"] "Up"
UI["b7"]["Position"] = UDim2.new(0, 400, 0, 160);

UI["b8"] = Instance.new("UIStroke", UI["b7"]);
UI["b8"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["b8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["b9"] = Instance.new("UICorner", UI["b7"]);
UI["b9"]["CornerRadius"] = UDim.new(0, 5);

UI["ba"] = Instance.new("TextButton", UI["4"]);
UI["ba"]["TextWrapped"] = true;
UI["ba"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["ba"]["TextSize"] = 12;
UI["ba"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["ba"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["ba"]["Size"] = UDim2.new(0, 33, 0, 10);
UI["ba"]["Name"] "PageDown"
UI["ba"]["Text"] "Down"
UI["ba"]["Position"] = UDim2.new(0, 400, 0, 174);

UI["bb"] = Instance.new("UIStroke", UI["ba"]);
UI["bb"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["bb"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["bc"] = Instance.new("UICorner", UI["ba"]);
UI["bc"]["CornerRadius"] = UDim.new(0, 5);

UI["bd"] = Instance.new("TextButton", UI["4"]);
UI["bd"]["TextWrapped"] = true;
UI["bd"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["bd"]["TextSize"] = 12;
UI["bd"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["bd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["bd"]["Size"] = UDim2.new(0, 33, 0, 10);
UI["bd"]["Name"] "End"
UI["bd"]["Text"] ">"
UI["bd"]["Position"] = UDim2.new(0, 436, 0, 174);

UI["be"] = Instance.new("UIStroke", UI["bd"]);
UI["be"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["be"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["bf"] = Instance.new("UICorner", UI["bd"]);
UI["bf"]["CornerRadius"] = UDim.new(0, 5);

UI["c0"] = Instance.new("TextButton", UI["4"]);
UI["c0"]["TextWrapped"] = true;
UI["c0"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["c0"]["TextSize"] = 12;
UI["c0"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["c0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["c0"]["Size"] = UDim2.new(0, 30, 0, 10);
UI["c0"]["Name"] "Home"
UI["c0"]["Text"] "<"
UI["c0"]["Position"] = UDim2.new(0, 366, 0, 174);

UI["c1"] = Instance.new("UIStroke", UI["c0"]);
UI["c1"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["c1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["c2"] = Instance.new("UICorner", UI["c0"]);
UI["c2"]["CornerRadius"] = UDim.new(0, 5);

UI["c3"] = Instance.new("TextButton", UI["4"]);
UI["c3"]["TextWrapped"] = true;
UI["c3"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["c3"]["TextSize"] = 12;
UI["c3"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["c3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["c3"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["c3"]["Name"] "Escape"
UI["c3"]["Text"] "Esc"
UI["c3"]["Position"] = UDim2.new(0, 7, 0, -1);

UI["c4"] = Instance.new("UIStroke", UI["c3"]);
UI["c4"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["c4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["c5"] = Instance.new("UICorner", UI["c3"]);
UI["c5"]["CornerRadius"] = UDim.new(0, 5);

UI["c6"] = Instance.new("TextButton", UI["4"]);
UI["c6"]["TextWrapped"] = true;
UI["c6"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["c6"]["TextSize"] = 21;
UI["c6"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["c6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["c6"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["c6"]["Name"] "F1"
UI["c6"]["Text"] "F1"
UI["c6"]["Position"] = UDim2.new(0, 39, 0, -1);

UI["c7"] = Instance.new("UIStroke", UI["c6"]);
UI["c7"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["c7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["c8"] = Instance.new("UICorner", UI["c6"]);
UI["c8"]["CornerRadius"] = UDim.new(0, 5);

UI["c9"] = Instance.new("TextButton", UI["4"]);
UI["c9"]["TextWrapped"] = true;
UI["c9"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["c9"]["TextSize"] = 21;
UI["c9"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["c9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["c9"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["c9"]["Name"] "F2"
UI["c9"]["Text"] "F2"
UI["c9"]["Position"] = UDim2.new(0, 71, 0, -1);

UI["ca"] = Instance.new("UIStroke", UI["c9"]);
UI["ca"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["ca"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["cb"] = Instance.new("UICorner", UI["c9"]);
UI["cb"]["CornerRadius"] = UDim.new(0, 5);

UI["cc"] = Instance.new("TextButton", UI["4"]);
UI["cc"]["TextWrapped"] = true;
UI["cc"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["cc"]["TextSize"] = 21;
UI["cc"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["cc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["cc"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["cc"]["Name"] "F3"
UI["cc"]["Text"] "F3"
UI["cc"]["Position"] = UDim2.new(0, 104, 0, -1);

UI["cd"] = Instance.new("UIStroke", UI["cc"]);
UI["cd"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["cd"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["ce"] = Instance.new("UICorner", UI["cc"]);
UI["ce"]["CornerRadius"] = UDim.new(0, 5);

UI["cf"] = Instance.new("TextButton", UI["4"]);
UI["cf"]["TextWrapped"] = true;
UI["cf"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["cf"]["TextSize"] = 21;
UI["cf"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["cf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["cf"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["cf"]["Name"] "F4"
UI["cf"]["Text"] "F4"
UI["cf"]["Position"] = UDim2.new(0, 135, 0, -1);

UI["d0"] = Instance.new("UIStroke", UI["cf"]);
UI["d0"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["d0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["d1"] = Instance.new("UICorner", UI["cf"]);
UI["d1"]["CornerRadius"] = UDim.new(0, 5);

UI["d2"] = Instance.new("TextButton", UI["4"]);
UI["d2"]["TextWrapped"] = true;
UI["d2"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["d2"]["TextSize"] = 21;
UI["d2"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["d2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["d2"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["d2"]["Name"] "F5"
UI["d2"]["Text"] "F5"
UI["d2"]["Position"] = UDim2.new(0, 167, 0, -1);

UI["d3"] = Instance.new("UIStroke", UI["d2"]);
UI["d3"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["d3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["d4"] = Instance.new("UICorner", UI["d2"]);
UI["d4"]["CornerRadius"] = UDim.new(0, 5);

UI["d5"] = Instance.new("TextButton", UI["4"]);
UI["d5"]["TextWrapped"] = true;
UI["d5"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["d5"]["TextSize"] = 21;
UI["d5"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["d5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["d5"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["d5"]["Name"] "F6"
UI["d5"]["Text"] "F6"
UI["d5"]["Position"] = UDim2.new(0, 199, 0, -1);

UI["d6"] = Instance.new("UIStroke", UI["d5"]);
UI["d6"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["d6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["d7"] = Instance.new("UICorner", UI["d5"]);
UI["d7"]["CornerRadius"] = UDim.new(0, 5);

UI["d8"] = Instance.new("TextButton", UI["4"]);
UI["d8"]["TextWrapped"] = true;
UI["d8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["d8"]["TextSize"] = 21;
UI["d8"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["d8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["d8"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["d8"]["Name"] "F7"
UI["d8"]["Text"] "F7"
UI["d8"]["Position"] = UDim2.new(0, 231, 0, -1);

UI["d9"] = Instance.new("UIStroke", UI["d8"]);
UI["d9"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["da"] = Instance.new("UICorner", UI["d8"]);
UI["da"]["CornerRadius"] = UDim.new(0, 5);

UI["db"] = Instance.new("TextButton", UI["4"]);
UI["db"]["TextWrapped"] = true;
UI["db"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["db"]["TextSize"] = 21;
UI["db"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["db"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["db"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["db"]["Name"] "F8"
UI["db"]["Text"] "F8"
UI["db"]["Position"] = UDim2.new(0, 264, 0, -1);

UI["dc"] = Instance.new("UIStroke", UI["db"]);
UI["dc"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["dc"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["dd"] = Instance.new("UICorner", UI["db"]);
UI["dd"]["CornerRadius"] = UDim.new(0, 5);

UI["de"] = Instance.new("TextButton", UI["4"]);
UI["de"]["TextWrapped"] = true;
UI["de"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["de"]["TextSize"] = 21;
UI["de"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["de"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["de"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["de"]["Name"] "F9"
UI["de"]["Text"] "F9"
UI["de"]["Position"] = UDim2.new(0, 295, 0, -1);

UI["df"] = Instance.new("UIStroke", UI["de"]);
UI["df"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["df"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["e0"] = Instance.new("UICorner", UI["de"]);
UI["e0"]["CornerRadius"] = UDim.new(0, 5);

UI["e1"] = Instance.new("TextButton", UI["4"]);
UI["e1"]["TextWrapped"] = true;
UI["e1"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["e1"]["TextSize"] = 15;
UI["e1"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["e1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["e1"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["e1"]["Name"] "F10"
UI["e1"]["Text"] "F10"
UI["e1"]["Position"] = UDim2.new(0, 327, 0, -1);

UI["e2"] = Instance.new("UIStroke", UI["e1"]);
UI["e2"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["e2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["e3"] = Instance.new("UICorner", UI["e1"]);
UI["e3"]["CornerRadius"] = UDim.new(0, 5);

UI["e4"] = Instance.new("TextButton", UI["4"]);
UI["e4"]["TextWrapped"] = true;
UI["e4"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["e4"]["TextSize"] = 15;
UI["e4"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["e4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["e4"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["e4"]["Name"] "F11"
UI["e4"]["Text"] "F11"
UI["e4"]["Position"] = UDim2.new(0, 358, 0, -1);

UI["e5"] = Instance.new("UIStroke", UI["e4"]);
UI["e5"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["e5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["e6"] = Instance.new("UICorner", UI["e4"]);
UI["e6"]["CornerRadius"] = UDim.new(0, 5);

UI["e7"] = Instance.new("LocalScript", UI["4"]);
UI["e7"]["Name"] "RGBHandler"

UI["e8"] = Instance.new("TextButton", UI["4"]);
UI["e8"]["TextWrapped"] = true;
UI["e8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["e8"]["TextSize"] = 21;
UI["e8"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["e8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["e8"]["Visible"] = false;
UI["e8"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["e8"]["Name"] "_Pipe"
UI["e8"]["Text"] "|"
UI["e8"]["Position"] = UDim2.new(0, 442, 0, 63);

UI["e9"] = Instance.new("UIStroke", UI["e8"]);
UI["e9"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["e9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["ea"] = Instance.new("UICorner", UI["e8"]);
UI["ea"]["CornerRadius"] = UDim.new(0, 5);

UI["eb"] = Instance.new("TextButton", UI["4"]);
UI["eb"]["TextWrapped"] = true;
UI["eb"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["eb"]["TextSize"] = 21;
UI["eb"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["eb"]["Visible"] = false;
UI["eb"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["eb"]["Name"] "_Tilde"
UI["eb"]["Text"] "~"
UI["eb"]["Position"] = UDim2.new(0, 7, 0, 31);

UI["ec"] = Instance.new("UIStroke", UI["eb"]);
UI["ec"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["ec"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["ed"] = Instance.new("UICorner", UI["eb"]);
UI["ed"]["CornerRadius"] = UDim.new(0, 5);

UI["ee"] = Instance.new("TextButton", UI["4"]);
UI["ee"]["TextWrapped"] = true;
UI["ee"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["ee"]["TextSize"] = 21;
UI["ee"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["ee"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["ee"]["Visible"] = false;
UI["ee"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["ee"]["Name"] "_Exclamation"
UI["ee"]["Text"] "!"
UI["ee"]["Position"] = UDim2.new(0, 39, 0, 31);

UI["ef"] = Instance.new("UIStroke", UI["ee"]);
UI["ef"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["ef"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["f0"] = Instance.new("UICorner", UI["ee"]);
UI["f0"]["CornerRadius"] = UDim.new(0, 5);

UI["f1"] = Instance.new("TextButton", UI["4"]);
UI["f1"]["TextWrapped"] = true;
UI["f1"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["f1"]["TextSize"] = 21;
UI["f1"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["f1"]["Visible"] = false;
UI["f1"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["f1"]["Name"] "_At"
UI["f1"]["Text"] "@"
UI["f1"]["Position"] = UDim2.new(0, 71, 0, 31);

UI["f2"] = Instance.new("UIStroke", UI["f1"]);
UI["f2"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["f2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["f3"] = Instance.new("UICorner", UI["f1"]);
UI["f3"]["CornerRadius"] = UDim.new(0, 5);

UI["f4"] = Instance.new("TextButton", UI["4"]);
UI["f4"]["TextWrapped"] = true;
UI["f4"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["f4"]["TextSize"] = 21;
UI["f4"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["f4"]["Visible"] = false;
UI["f4"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["f4"]["Name"] "_Hash"
UI["f4"]["Text"] "#"
UI["f4"]["Position"] = UDim2.new(0, 104, 0, 31);

UI["f5"] = Instance.new("UIStroke", UI["f4"]);
UI["f5"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["f5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["f6"] = Instance.new("UICorner", UI["f4"]);
UI["f6"]["CornerRadius"] = UDim.new(0, 5);

UI["f7"] = Instance.new("TextButton", UI["4"]);
UI["f7"]["TextWrapped"] = true;
UI["f7"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["f7"]["TextSize"] = 21;
UI["f7"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["f7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["f7"]["Visible"] = false;
UI["f7"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["f7"]["Name"] "_Dollar"
UI["f7"]["Text"] "$"
UI["f7"]["Position"] = UDim2.new(0, 135, 0, 31);

UI["f8"] = Instance.new("UIStroke", UI["f7"]);
UI["f8"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["f8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["f9"] = Instance.new("UICorner", UI["f7"]);
UI["f9"]["CornerRadius"] = UDim.new(0, 5);


UI["fa"] = Instance.new("TextButton", UI["4"]);
UI["fa"]["TextWrapped"] = true;
UI["fa"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["fa"]["TextSize"] = 21;
UI["fa"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["fa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["fa"]["Visible"] = false;
UI["fa"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["fa"]["Name"] "_Percent"
UI["fa"]["Text"] "%"
UI["fa"]["Position"] = UDim2.new(0, 167, 0, 31);

UI["fb"] = Instance.new("UIStroke", UI["fa"]);
UI["fb"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["fb"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["fc"] = Instance.new("UICorner", UI["fa"]);
UI["fc"]["CornerRadius"] = UDim.new(0, 5);

UI["fd"] = Instance.new("TextButton", UI["4"]);
UI["fd"]["TextWrapped"] = true;
UI["fd"]["TextStrokeTransparency"] = 0;
UI["fd"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["fd"]["TextSize"] = 21;
UI["fd"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["fd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["fd"]["Visible"] = false;
UI["fd"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["fd"]["Name"] "_Caret"
UI["fd"]["Text"] "^"
UI["fd"]["Position"] = UDim2.new(0, 199, 0, 31);

UI["fe"] = Instance.new("UIStroke", UI["fd"]);
UI["fe"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["fe"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["ff"] = Instance.new("UICorner", UI["fd"]);
UI["ff"]["CornerRadius"] = UDim.new(0, 5);

UI["100"] = Instance.new("TextButton", UI["4"]);
UI["100"]["TextWrapped"] = true;
UI["100"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["100"]["TextSize"] = 21;
UI["100"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["100"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["100"]["Visible"] = false;
UI["100"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["100"]["Name"] "_Ampersand"
UI["100"]["Text"] "&"
UI["100"]["Position"] = UDim2.new(0, 231, 0, 31);

UI["101"] = Instance.new("UIStroke", UI["100"]);
UI["101"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["101"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["102"] = Instance.new("UICorner", UI["100"]);
UI["102"]["CornerRadius"] = UDim.new(0, 5);

UI["103"] = Instance.new("TextButton", UI["4"]);
UI["103"]["TextWrapped"] = true;
UI["103"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["103"]["TextSize"] = 21;
UI["103"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["103"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["103"]["Visible"] = false;
UI["103"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["103"]["Name"] "_Asterisk"
UI["103"]["Text"] "*"
UI["103"]["Position"] = UDim2.new(0, 264, 0, 31);

UI["104"] = Instance.new("UIStroke", UI["103"]);
UI["104"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["104"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["105"] = Instance.new("UICorner", UI["103"]);
UI["105"]["CornerRadius"] = UDim.new(0, 5);

UI["106"] = Instance.new("TextButton", UI["4"]);
UI["106"]["TextWrapped"] = true;
UI["106"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["106"]["TextSize"] = 21;
UI["106"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["106"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["106"]["Visible"] = false;
UI["106"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["106"]["Name"] "_LeftParenthesis"
UI["106"]["Text"] "("
UI["106"]["Position"] = UDim2.new(0, 295, 0, 31);

UI["107"] = Instance.new("UIStroke", UI["106"]);
UI["107"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["107"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["108"] = Instance.new("UICorner", UI["106"]);
UI["108"]["CornerRadius"] = UDim.new(0, 5);

UI["109"] = Instance.new("TextButton", UI["4"]);
UI["109"]["TextWrapped"] = true;
UI["109"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["109"]["TextSize"] = 21;
UI["109"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["109"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["109"]["Visible"] = false;
UI["109"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["109"]["Name"] "_RightParenthesis"
UI["109"]["Text"] ")"
UI["109"]["Position"] = UDim2.new(0, 327, 0, 31);

UI["10a"] = Instance.new("UIStroke", UI["109"]);
UI["10a"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["10a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["10b"] = Instance.new("UICorner", UI["109"]);
UI["10b"]["CornerRadius"] = UDim.new(0, 5);

UI["10c"] = Instance.new("TextButton", UI["4"]);
UI["10c"]["TextWrapped"] = true;
UI["10c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["10c"]["TextSize"] = 21;
UI["10c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["10c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["10c"]["Visible"] = false;
UI["10c"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["10c"]["Name"] "_Underscore"
UI["10c"]["Text"] "_"
UI["10c"]["Position"] = UDim2.new(0, 358, 0, 31);

UI["10d"] = Instance.new("UIStroke", UI["10c"]);
UI["10d"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["10d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["10e"] = Instance.new("UICorner", UI["10c"]);
UI["10e"]["CornerRadius"] = UDim.new(0, 5);

UI["10f"] = Instance.new("TextButton", UI["4"]);
UI["10f"]["TextWrapped"] = true;
UI["10f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["10f"]["TextSize"] = 21;
UI["10f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["10f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["10f"]["Visible"] = false;
UI["10f"]["Size"] = UDim2.new(0, 24, 0, 25);
UI["10f"]["Name"] "_Plus"
UI["10f"]["Text"] "+"
UI["10f"]["Position"] = UDim2.new(0, 389, 0, 31);

UI["110"] = Instance.new("UIStroke", UI["10f"]);
UI["110"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["110"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["111"] = Instance.new("UICorner", UI["10f"]);
UI["111"]["CornerRadius"] = UDim.new(0, 5);

UI["112"] = Instance.new("TextButton", UI["4"]);
UI["112"]["TextWrapped"] = true;
UI["112"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["112"]["TextSize"] = 21;
UI["112"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["112"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["112"]["Visible"] = false;
UI["112"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["112"]["Name"] "_RightCurly"
UI["112"]["Text"] "}"
UI["112"]["Position"] = UDim2.new(0, 410, 0, 63);

UI["113"] = Instance.new("UIStroke", UI["112"]);
UI["113"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["113"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["114"] = Instance.new("UICorner", UI["112"]);
UI["114"]["CornerRadius"] = UDim.new(0, 5);

UI["115"] = Instance.new("TextButton", UI["4"]);
UI["115"]["TextWrapped"] = true;
UI["115"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["115"]["TextSize"] = 21;
UI["115"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["115"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["115"]["Visible"] = false;
UI["115"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["115"]["Name"] "_LeftCurly"
UI["115"]["Text"] "{"
UI["115"]["Position"] = UDim2.new(0, 378, 0, 63);

UI["116"] = Instance.new("UIStroke", UI["115"]);
UI["116"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["116"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["117"] = Instance.new("UICorner", UI["115"]);
UI["117"]["CornerRadius"] = UDim.new(0, 5);

UI["118"] = Instance.new("TextButton", UI["4"]);
UI["118"]["TextWrapped"] = true;
UI["118"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["118"]["TextSize"] = 21;
UI["118"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["118"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["118"]["Visible"] = false;
UI["118"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["118"]["Name"] "_QuotedDouble"
UI["118"]["Text"] """
UI["118"]["Position"] = UDim2.new(0, 386, 0, 95);

UI["119"] = Instance.new("UIStroke", UI["118"]);
UI["119"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["119"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["11a"] = Instance.new("UICorner", UI["118"]);
UI["11a"]["CornerRadius"] = UDim.new(0, 5);

UI["11b"] = Instance.new("TextButton", UI["4"]);
UI["11b"]["TextWrapped"] = true;
UI["11b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["11b"]["TextSize"] = 21;
UI["11b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["11b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["11b"]["Visible"] = false;
UI["11b"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["11b"]["Name"] "_Colon"
UI["11b"]["Text"] ":"
UI["11b"]["Position"] = UDim2.new(0, 354, 0, 95);

UI["11c"] = Instance.new("UIStroke", UI["11b"]);
UI["11c"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["11c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["11d"] = Instance.new("UICorner", UI["11b"]);
UI["11d"]["CornerRadius"] = UDim.new(0, 5);

UI["11e"] = Instance.new("TextButton", UI["4"]);
UI["11e"]["TextWrapped"] = true;
UI["11e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["11e"]["TextSize"] = 21;
UI["11e"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["11e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["11e"]["Visible"] = false;
UI["11e"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["11e"]["Name"] "_Question"
UI["11e"]["Text"] "?"
UI["11e"]["Position"] = UDim2.new(0, 372, 0, 127);

UI["11f"] = Instance.new("UIStroke", UI["11e"]);
UI["11f"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["11f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["120"] = Instance.new("UICorner", UI["11e"]);
UI["120"]["CornerRadius"] = UDim.new(0, 5);

UI["121"] = Instance.new("TextButton", UI["4"]);
UI["121"]["TextWrapped"] = true;
UI["121"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["121"]["TextSize"] = 21;
UI["121"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["121"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["121"]["Visible"] = false;
UI["121"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["121"]["Name"] "_GreaterThan"
UI["121"]["Text"] ">"
UI["121"]["Position"] = UDim2.new(0, 338, 0, 127);

UI["122"] = Instance.new("UIStroke", UI["121"]);
UI["122"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["122"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["123"] = Instance.new("UICorner", UI["121"]);
UI["123"]["CornerRadius"] = UDim.new(0, 5);

UI["124"] = Instance.new("TextButton", UI["4"]);
UI["124"]["TextWrapped"] = true;
UI["124"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["124"]["TextSize"] = 21;
UI["124"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["124"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["124"]["Visible"] = false;
UI["124"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["124"]["Name"] "_LessThan"
UI["124"]["Text"] "<"
UI["124"]["Position"] = UDim2.new(0, 305, 0, 127);

UI["125"] = Instance.new("UIStroke", UI["124"]);
UI["125"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["125"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["126"] = Instance.new("UICorner", UI["124"]);
UI["126"]["CornerRadius"] = UDim.new(0, 5);

UI["127"] = Instance.new("UICorner", UI["4"]);
UI["127"]["CornerRadius"] = UDim.new(0, 5);

UI["128"] = Instance.new("TextButton", UI["4"]);
UI["128"]["TextWrapped"] = true;
UI["128"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
UI["128"]["TextSize"] = 21;
UI["128"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["128"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["128"]["Size"] = UDim2.new(0, 25, 0, 25);
UI["128"]["Name"] "D"
UI["128"]["Text"] "D"
UI["128"]["Position"] = UDim2.new(0, 130, 0, 95);

UI["129"] = Instance.new("UIStroke", UI["128"]);
UI["129"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["129"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["12a"] = Instance.new("UICorner", UI["128"]);
UI["12a"]["CornerRadius"] = UDim.new(0, 5);

UI["12b"] = Instance.new("UICorner", UI["2"]);
UI["12b"]["CornerRadius"] = UDim.new(0, 5);

UI["12f"] = Instance.new("TextButton", UI["2"]);
UI["12f"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
UI["12f"]["TextSize"] = 14;
UI["12f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["12f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
UI["12f"]["Visible"] = false;
UI["12f"]["Size"] = UDim2.new(0, 58, 0, 14);
UI["12f"]["Name"] "tesy"
UI["12f"]["Text"] ""
UI["12f"]["Position"] = UDim2.new(0.8352929353713989, 0, 0.9299998879432678, 0);

UI["130"] = Instance.new("UICorner", UI["12f"]);
UI["130"]["CornerRadius"] = UDim.new(0, 4);

UI["131"] = Instance.new("UIStroke", UI["12f"]);
UI["131"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["131"]["Thickness"] = 0.8999999761581421;
UI["131"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["132"] = Instance.new("TextButton", UI["2"]);
UI["132"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
UI["132"]["TextSize"] = 14;
UI["132"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["132"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["132"]["Size"] = UDim2.new(0, 78, 0, 14);
UI["132"]["Name"] "ToggleShift"
UI["132"]["Text"] "Enable Shift"
UI["132"]["Position"] = UDim2.new(0.7934519052505493, 0, 0.9299998879432678, 0);

UI["133"] = Instance.new("UICorner", UI["132"]);
UI["133"]["CornerRadius"] = UDim.new(0, 4);

UI["134"] = Instance.new("UIStroke", UI["132"]);
UI["134"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["134"]["Thickness"] = 0.8999999761581421;
UI["134"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["135"] = Instance.new("UIStroke", UI["132"]);
UI["135"]["Thickness"] = 0.8999999761581421;

UI["136"] = Instance.new("LocalScript", UI["2"]);
UI["136"]["Name"] "Drag"

UI["137"] = Instance.new("UICorner", UI["2"]);
UI["137"]["CornerRadius"] = UDim.new(0, 5);

UI["138"] = Instance.new("LocalScript", UI["2"]);
UI["138"]["Name"] "ButtonHandler"

UI["139"] = Instance.new("TextButton", UI["2"]);
UI["139"]["BorderSizePixel"] = 0;
UI["139"]["AutoButtonColor"] = false;
UI["139"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
UI["139"]["TextSize"] = 16;
UI["139"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["139"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["139"]["Size"] = UDim2.new(0, 34, 0, 22);
UI["139"]["Name"] "Close"
UI["139"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
UI["139"]["Text"] "X"
UI["139"]["Position"] = UDim2.new(0, 437, 0, 2);

UI["13a"] = Instance.new("TextButton", UI["2"]);
UI["13a"]["BorderSizePixel"] = 0;
UI["13a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
UI["13a"]["TextSize"] = 21;
UI["13a"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["13a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["13a"]["Size"] = UDim2.new(0, 34, 0, 22);
UI["13a"]["Name"] "Minimize"
UI["13a"]["Text"] "-"
UI["13a"]["Position"] = UDim2.new(0, 367, 0, 2);
UI["13a"]["BackgroundTransparency"] = 1;

UI["13b"] = Instance.new("TextButton", UI["2"]);
UI["13b"]["BorderSizePixel"] = 0;
UI["13b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
UI["13b"]["TextSize"] = 21;
UI["13b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["13b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["13b"]["Size"] = UDim2.new(0, 34, 0, 22);
UI["13b"]["Name"] "Window"
UI["13b"]["Text"] "☐"
UI["13b"]["Position"] = UDim2.new(0, 401, 0, 2);
UI["13b"]["BackgroundTransparency"] = 1;

UI["13c"] = Instance.new("TextLabel", UI["2"]);
UI["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["13c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["13c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["13c"]["TextSize"] = 14;
UI["13c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["13c"]["Size"] = UDim2.new(0, 121, 0, 22);
UI["13c"]["Active"] = true;
UI["13c"]["Text"] "Kilobyte keyboard [V3]"
UI["13c"]["Name"] "Title"
UI["13c"]["BackgroundTransparency"] = 1;
UI["13c"]["Position"] = UDim2.new(0, 9, 0, 2);

UI["13d"] = Instance.new("TextButton", UI["2"]);
UI["13d"]["BorderSizePixel"] = 0;
UI["13d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["13d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["13d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["13d"]["Selectable"] = false;
UI["13d"]["Size"] = UDim2.new(0, 17, 0, 17);
UI["13d"]["Name"] "Settings"
UI["13d"]["Text"] "a +"
UI["13d"]["Position"] = UDim2.new(0.0041841003112494946, 0, 0.9237288236618042, 0);
UI["13d"]["BackgroundTransparency"] = 1;

UI["13e"] = Instance.new("BoolValue", UI["1"]);
UI["13e"]["Name"] "IsSelectingKey"

UI["13f"] = Instance.new("TextButton", UI["1"]);
UI["13f"]["TextWrapped"] = true;
UI["13f"]["TextScaled"] = true;
UI["13f"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
UI["13f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["13f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["13f"]["Selectable"] = false;
UI["13f"]["Visible"] = false;
UI["13f"]["Size"] = UDim2.new(0, 40, 0, 40);
UI["13f"]["Name"] "KEY"
UI["13f"]["Text"] "KEY"
UI["13f"]["Position"] = UDim2.new(0.47962817549705505, 0, 0.46487605571746826, 0);

UI["140"] = Instance.new("UICorner", UI["13f"]);

UI["141"] = Instance.new("UIStroke", UI["13f"]);
UI["141"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["141"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["142"] = Instance.new("TextButton", UI["13f"]);
UI["142"]["TextWrapped"] = true;
UI["142"]["TextScaled"] = true;
UI["142"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
UI["142"]["TextSize"] = 14;
UI["142"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["142"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["142"]["Size"] = UDim2.new(0, 11, 0, 11);
UI["142"]["Name"] "Close"
UI["142"]["Text"] "X"
UI["142"]["Position"] = UDim2.new(1, 0, -0.125, 0);

UI["143"] = Instance.new("UICorner", UI["142"]);

UI["144"] = Instance.new("Frame", UI["1"]);
UI["144"]["Active"] = true;
UI["144"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
UI["144"]["Size"] = UDim2.new(0, 284, 0, 292);
UI["144"]["Position"] = UDim2.new(0.3589794337749481, 0, 0.24793387949466705, 0);
UI["144"]["Visible"] = false;
UI["144"]["Name"] "CreateKey"

UI["145"] = Instance.new("UICorner", UI["144"]);

UI["146"] = Instance.new("UIStroke", UI["144"]);
UI["146"]["Color"] = Color3.fromRGB(158, 0, 255);
UI["146"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["147"] = Instance.new("TextLabel", UI["144"]);
UI["147"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["147"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["147"]["Selectable"] = true;
UI["147"]["TextSize"] = 18;
UI["147"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["147"]["Size"] = UDim2.new(0, 285, 0, 24);
UI["147"]["Active"] = true;
UI["147"]["Text"] "Kilobyte Keyboard - Settings Floating Key"
UI["147"]["Name"] "Title"
UI["147"]["BackgroundTransparency"] = 1;
UI["147"]["Position"] = UDim2.new(-0.0035211266949772835, 0, 0.02054794505238533, 0);

UI["148"] = Instance.new("TextButton", UI["144"]);
UI["148"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
UI["148"]["TextSize"] = 31;
UI["148"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["148"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["148"]["Size"] = UDim2.new(0, 166, 0, 46);
UI["148"]["Name"] "Create"
UI["148"]["Text"] "Create"
UI["148"]["Position"] = UDim2.new(0.2042253464460373, 0, 0.6095890402793884, 0);

UI["149"] = Instance.new("UICorner", UI["148"]);


UI["14a"] = Instance.new("UIStroke", UI["148"]);
UI["14a"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["14a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["14b"] = Instance.new("TextLabel", UI["144"]);
UI["14b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["14b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["14b"]["Selectable"] = true;
UI["14b"]["TextSize"] = 20;
UI["14b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["14b"]["Size"] = UDim2.new(0, 285, 0, 24);
UI["14b"]["Active"] = true;
UI["14b"]["Text"] "Enter your keybind here."
UI["14b"]["Name"] "Title2"
UI["14b"]["BackgroundTransparency"] = 1;
UI["14b"]["Position"] = UDim2.new(-0.003521125763654709, 0, 0.19178083539009094, 0);

UI["14c"] = Instance.new("TextBox", UI["144"]);
UI["14c"]["TextSize"] = 14;
UI["14c"]["TextWrapped"] = true;
UI["14c"]["TextScaled"] = true;
UI["14c"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
UI["14c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["14c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["14c"]["Size"] = UDim2.new(0, 167, 0, 76);
UI["14c"]["Text"] ""
UI["14c"]["Position"] = UDim2.new(0.2042253464460373, 0, 0.29109588265419006, 0);

UI["14d"] = Instance.new("UIStroke", UI["14c"]);
UI["14d"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["14d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["14e"] = Instance.new("UICorner", UI["14c"]);

UI["14f"] = Instance.new("TextButton", UI["144"]);
UI["14f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
UI["14f"]["TextSize"] = 20;
UI["14f"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["14f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["14f"]["Size"] = UDim2.new(0, 166, 0, 22);
UI["14f"]["Name"] "Close"
UI["14f"]["Text"] "Close"
UI["14f"]["Position"] = UDim2.new(0.2042253464460373, 0, 0.8835616707801819, 0);

UI["150"] = Instance.new("UICorner", UI["14f"]);

UI["151"] = Instance.new("UIStroke", UI["14f"]);
UI["151"]["Color"] = Color3.fromRGB(255, 255, 255);
UI["151"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["152"] = Instance.new("LocalScript", UI["144"]);

UI["153"] = Instance.new("Folder", UI["1"]);
UI["153"]["Name"] "Keys"

UI["154"] = Instance.new("BoolValue", UI["1"]);
UI["154"]["Value"] = true;
UI["154"]["Name"] "ToggleShift"

UI["155"] = Instance.new("BoolValue", UI["1"]);
UI["155"]["Name"] "Shifting"

UI["156"] = Instance.new("ImageButton", UI["1"]);
UI["156"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
UI["156"]["Image"] = "http://www.roblox.com/asset/?id=114265663904736"
UI["156"]["Size"] = UDim2.new(0, 40, 0, 40);
UI["156"]["Name"] "FloatingIcon"
UI["156"]["Visible"] = false;
UI["156"]["Position"] = UDim2.new(0.015649452805519104, 0, 0.03064066171646118, 0);

UI["157"] = Instance.new("UICorner", UI["156"]);
UI["157"]["CornerRadius"] = UDim.new(0, 12);

UI["158"] = Instance.new("UIStroke", UI["156"]);
UI["158"]["Color"] = Color3.fromRGB(158, 0, 255);
UI["158"]["Thickness"] = 1.2999999523162842;
UI["158"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

UI["159"] = Instance.new("LocalScript", UI["156"]);

local function C_56()
	local script = UI["56"]

	local btns = script.Parent
	local IsSelecting = script.Parent.Parent.Parent.IsSelectingKey
	
	local function CreateFloatingKey(keybind, text)
		local key = script.Parent.Parent.Parent.KEY:Clone()
		if text == "" then
			text = "Space"
			keybind = "Space"
		end
		key.Parent = script.Parent.Parent.Parent.Keys
		key.Visible = true
		key.Draggable = true
		key.Name = keybind
		key.Text = text
		key.MouseButton1Up:Connect(function()
			keyrelease(Enum.KeyCode[keybind])
		end)
		key.MouseButton1Down:Connect(function()
			keypress(Enum.KeyCode[keybind])		
		end)
		key.Close.MouseButton1Up:Connect(function()
			key:Destroy()
		end)
	end

	for _, keys in pairs(btns:GetChildren()) do
		if keys:IsA("TextButton") then
			if string.find(keys.Name, "-") then
				local key = string.sub(keys.Name, 2)

				keys.MouseButton1Down:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keypress(Enum.KeyCode[key])
					end
				end)
				keys.MouseButton1Up:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keyrelease(Enum.KeyCode[key])
					end
				end)
			elseif string.find(keys.Name, "_") then
				local key = string.sub(keys.Name, 2)

				keys.MouseButton1Down:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keypress(Enum.KeyCode[key])
					end
				end)
				keys.MouseButton1Up:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keyrelease(Enum.KeyCode[key])
					end
				end)

			elseif keys.Name == "RightShift" then
				keys.MouseButton1Up:Connect(function()
					if IsSelecting.Value == true then
						IsSelecting.Value = false
						CreateFloatingKey(keys.Name, keys.Name)
					else
						keypress(Enum.KeyCode[keys.Name])
					end
				end)
			elseif keys.Name == "LeftShift" then
				keys.MouseButton1Up:Connect(function()
					if IsSelecting.Value == true then
						IsSelecting.Value = false
						CreateFloatingKey(keys.Name, keys.Name)
					else
						keypress(Enum.KeyCode[keys.Name])
					end
				end)
				keys.MouseButton1Down:Connect(function()
					if IsSelecting.Value == false then
						keypress(Enum.KeyCode[keys.Name])
					end
				end)

			else
				keys.MouseButton1Down:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(keys.Text, keys.Text)
						IsSelecting.Value = false
					else
						keypress(Enum.KeyCode[keys.Name])
					end
				end)
				keys.MouseButton1Up:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(keys.Text, keys.Text)
						IsSelecting.Value = false
					else
						keyrelease(Enum.KeyCode[keys.Name])
					end
				end)
			end		
		end
	end
end

C_56()

local UIS = game:GetService("UserInputService")

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

dragify(UI["2"])

local function C_138()
	local script = UI["138"]
	local buttons = script.Parent
	local ts = game.TweenService
	local cooldown = false

	buttons.Close.MouseButton1Up:Connect(function()
		script.Parent.Parent:Destroy()
	end)
	buttons.Close.MouseEnter:Connect(function()
		buttons.Close.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
	end)
	buttons.Close.MouseLeave:Connect(function()
		buttons.Close.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	end)
	buttons.Minimize.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
		script.Parent.Parent.FloatingIcon.Visible = true
	end)
	buttons.Window.MouseButton1Up:Connect(function()
		if not cooldown then
			if script.Parent.Background.Visible == true then
				script.Parent.Settings.Visible = false
				script.Parent.Background.Visible = false
				local ti = TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				local tw = ts:Create(script.Parent, ti, {Size = UDim2.new(0, 478,0, 29)})
				tw:Play()
				cooldown = true
				tw.Completed:Wait()
				cooldown = false
			elseif script.Parent.Background.Visible ==false then
				local ti = TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				local tw = ts:Create(script.Parent, ti, {Size = UDim2.new(0, 478,0, 236)})
				tw:Play()
				cooldown = true
				tw.Completed:Wait()
				script.Parent.Settings.Visible = true
				script.Parent.Background.Visible = true
				cooldown = false
			end
		end
	end)

	buttons.Settings.MouseButton1Up:Connect(function()
		script.Parent.Parent.IsSelectingKey.Value = true
	end)

	local IsSelecting = script.Parent.Parent.IsSelectingKey
	IsSelecting:GetPropertyChangedSignal("Value"):Connect(function()
		if IsSelecting.Value == true then
			script.Parent.Title.Text = "Kilobyte keyboard [V3] (Selecting Key)"
		elseif IsSelecting.Value == false then
			script.Parent.Title.Text = "Kilobyte keyboard [V3]"
		end
	end)
end
C_138()

local function C_152()
	local script = UI["152"]
	local close = script.Parent.Close
	local create = script.Parent.Create
	local textbox = script.Parent.TextBox

	script.Parent.Draggable = true
	close.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
	end)
	create.MouseButton1Up:Connect(function()
		if textbox.Text ~= "" then
			local key = script.Parent.Parent.KEY:Clone()
			key.Parent = script.Parent.Parent.Keys
			key.Visible = true
			key.Draggable = true
			key.Name = textbox.Text
			key.MouseButton1Up:Connect(function()
				keyrelease(Enum.KeyCode[textbox.Text])
			end)
			key.MouseButton1Down:Connect(function()
				keypress(Enum.KeyCode[textbox.Text])
			end)
			key.Close.MouseButton1Up:Connect(function()
				key:Destroy()
			end)
		end
	end)
end
C_152()

local function C_159()
	local script = UI["159"]
	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Visible=false
		script.Parent.Parent.Main.Visible = true
	end)
end
C_159()

local function StyleUI(root)
	if not root then return end

	for _, obj in ipairs(root:GetDescendants()) do
		if obj:IsA("UICorner") then
			obj.CornerRadius = UDim.new(0, 4)
		elseif obj:IsA("UIStroke") then
			obj.Color = Color3.fromRGB(255, 255, 255)
		elseif obj:IsA("TextLabel") or obj:IsA("TextButton") then
			obj.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end
end
StyleUI(UI["1"])

return UI["1"]