local UI = {}

UI["main_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["main_1"]["Name"] = "KB_V2"
UI["main_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

UI["show_2"] = Instance.new("ImageButton", UI["main_1"])
UI["show_2"]["BorderSizePixel"] = 0
UI["show_2"]["BackgroundColor3"] = Color3.fromRGB(9, 0, 59)
UI["show_2"]["Image"] = "http://www.roblox.com/asset/?id=114265663904736"
UI["show_2"]["Size"] = UDim2.new(0.05292, 0, 0.12449, 0)
UI["show_2"]["Name"] = "Show"
UI["show_2"]["Position"] = UDim2.new(0.01893, 0, 0.00282, 0)
UI["show_2"]["Visible"] = false

UI["UICorner_3"] = Instance.new("UICorner", UI["show_2"])
UI["UICorner_3"]["CornerRadius"] = UDim.new(0, 4)

UI["UIStroke_4"] = Instance.new("UIStroke", UI["show_2"])
UI["UIStroke_4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_4"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_5"] = Instance.new("UIGradient", UI["UIStroke_4"])
UI["UIGradient_5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["keyboard_6"] = Instance.new("Frame", UI["main_1"])
UI["keyboard_6"]["BorderSizePixel"] = 5
UI["keyboard_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["keyboard_6"]["Size"] = UDim2.new(0.41375, 0, 0.52061, 0)
UI["keyboard_6"]["Position"] = UDim2.new(0.08179, 0, 0, 0)
UI["keyboard_6"]["BorderColor3"] = Color3.fromRGB(255, 255, 255)
UI["keyboard_6"]["Name"] = "Keyboard"

UI["hide_7"] = Instance.new("TextButton", UI["keyboard_6"])
UI["hide_7"]["TextWrapped"] = true
UI["hide_7"]["BorderSizePixel"] = 0
UI["hide_7"]["TextScaled"] = true
UI["hide_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["hide_7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["hide_7"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["hide_7"]["Size"] = UDim2.new(0.08721, 0, 0.16304, 0)
UI["hide_7"]["Text"] = "–"
UI["hide_7"]["Name"] = "hide"
UI["hide_7"]["Position"] = UDim2.new(0.80233, 0, 0.02174, 0)

UI["UICorner_8"] = Instance.new("UICorner", UI["hide_7"])
UI["UICorner_8"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_9"] = Instance.new("UIGradient", UI["hide_7"])
UI["UIGradient_9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_a"] = Instance.new("UIStroke", UI["hide_7"])
UI["UIStroke_a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_a"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_b"] = Instance.new("UIGradient", UI["UIStroke_a"])
UI["UIGradient_b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UICorner_c"] = Instance.new("UICorner", UI["keyboard_6"])
UI["UICorner_c"]["CornerRadius"] = UDim.new(0, 4)

UI["line4_d"] = Instance.new("Frame", UI["keyboard_6"])
UI["line4_d"]["BorderSizePixel"] = 0
UI["line4_d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["line4_d"]["Size"] = UDim2.new(0.97674, 0, 0.18478, 0)
UI["line4_d"]["Position"] = UDim2.new(0.01163, 0, 0.79348, 0)
UI["line4_d"]["Name"] = "line4"

UI["key_e"] = Instance.new("TextButton", UI["line4_d"])
UI["key_e"]["TextWrapped"] = true
UI["key_e"]["BorderSizePixel"] = 0
UI["key_e"]["TextScaled"] = true
UI["key_e"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_e"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_e"]["Size"] = UDim2.new(0.13095, 0, 0.88235, 0)
UI["key_e"]["Text"] = "R-Alt"
UI["key_e"]["Name"] = "key"
UI["key_e"]["Position"] = UDim2.new(0.70833, 0, 0.05882, 0)

UI["UICorner_f"] = Instance.new("UICorner", UI["key_e"])
UI["UICorner_f"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_10"] = Instance.new("UIGradient", UI["key_e"])
UI["UIGradient_10"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_11"] = Instance.new("UIStroke", UI["key_e"])
UI["UIStroke_11"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_11"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_12"] = Instance.new("UIGradient", UI["UIStroke_11"])
UI["UIGradient_12"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UICorner_13"] = Instance.new("UICorner", UI["line4_d"])
UI["UICorner_13"]["CornerRadius"] = UDim.new(0, 4)

UI["key_14"] = Instance.new("TextButton", UI["line4_d"])
UI["key_14"]["TextWrapped"] = true
UI["key_14"]["BorderSizePixel"] = 0
UI["key_14"]["TextScaled"] = true
UI["key_14"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_14"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_14"]["Size"] = UDim2.new(0.14881, 0, 0.88235, 0)
UI["key_14"]["Text"] = "L-Ctrl"
UI["key_14"]["Name"] = "key"
UI["key_14"]["Position"] = UDim2.new(0, 0, 0.05882, 0)

UI["UICorner_15"] = Instance.new("UICorner", UI["key_14"])
UI["UICorner_15"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_16"] = Instance.new("UIGradient", UI["key_14"])
UI["UIGradient_16"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_17"] = Instance.new("UIStroke", UI["key_14"])
UI["UIStroke_17"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_17"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_18"] = Instance.new("UIGradient", UI["UIStroke_17"])
UI["UIGradient_18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_19"] = Instance.new("TextButton", UI["line4_d"])
UI["key_19"]["TextWrapped"] = true
UI["key_19"]["BorderSizePixel"] = 0
UI["key_19"]["TextScaled"] = true
UI["key_19"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_19"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_19"]["Size"] = UDim2.new(0.14881, 0, 0.88235, 0)
UI["key_19"]["Text"] = "R-Ctrl"
UI["key_19"]["Name"] = "key"
UI["key_19"]["Position"] = UDim2.new(0.85119, 0, 0.05882, 0)

UI["UICorner_1a"] = Instance.new("UICorner", UI["key_19"])
UI["UICorner_1a"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_1b"] = Instance.new("UIGradient", UI["key_19"])
UI["UIGradient_1b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_1c"] = Instance.new("UIStroke", UI["key_19"])
UI["UIStroke_1c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_1c"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_1d"] = Instance.new("UIGradient", UI["UIStroke_1c"])
UI["UIGradient_1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["space_1e"] = Instance.new("ImageButton", UI["line4_d"])
UI["space_1e"]["BorderSizePixel"] = 0
UI["space_1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["space_1e"]["Size"] = UDim2.new(0.39286, 0, 0.88235, 0)
UI["space_1e"]["Name"] = "space"
UI["space_1e"]["Position"] = UDim2.new(0.30357, 0, 0.05882, 0)

UI["UICorner_1f"] = Instance.new("UICorner", UI["space_1e"])
UI["UICorner_1f"]["CornerRadius"] = UDim.new(0, 4)

UI["UIStroke_20"] = Instance.new("UIStroke", UI["space_1e"])
UI["UIStroke_20"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_20"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_21"] = Instance.new("UIGradient", UI["UIStroke_20"])
UI["UIGradient_21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_22"] = Instance.new("TextButton", UI["line4_d"])
UI["key_22"]["TextWrapped"] = true
UI["key_22"]["BorderSizePixel"] = 0
UI["key_22"]["TextScaled"] = true
UI["key_22"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_22"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_22"]["Size"] = UDim2.new(0.13095, 0, 0.88235, 0)
UI["key_22"]["Text"] = "L-Alt"
UI["key_22"]["Name"] = "key"
UI["key_22"]["Position"] = UDim2.new(0.16071, 0, 0.05882, 0)

UI["UICorner_23"] = Instance.new("UICorner", UI["key_22"])
UI["UICorner_23"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_24"] = Instance.new("UIGradient", UI["key_22"])
UI["UIGradient_24"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_25"] = Instance.new("UIStroke", UI["key_22"])
UI["UIStroke_25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_25"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_26"] = Instance.new("UIGradient", UI["UIStroke_25"])
UI["UIGradient_26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["close_27"] = Instance.new("TextButton", UI["keyboard_6"])
UI["close_27"]["TextWrapped"] = true
UI["close_27"]["BorderSizePixel"] = 0
UI["close_27"]["TextScaled"] = true
UI["close_27"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["close_27"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["close_27"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["close_27"]["Size"] = UDim2.new(0.08721, 0, 0.16304, 0)
UI["close_27"]["Text"] = "X"
UI["close_27"]["Name"] = "close"
UI["close_27"]["Position"] = UDim2.new(0.90116, 0, 0.02174, 0)

UI["UICorner_28"] = Instance.new("UICorner", UI["close_27"])
UI["UICorner_28"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_29"] = Instance.new("UIGradient", UI["close_27"])
UI["UIGradient_29"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_2a"] = Instance.new("UIStroke", UI["close_27"])
UI["UIStroke_2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_2a"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_2b"] = Instance.new("UIGradient", UI["UIStroke_2a"])
UI["UIGradient_2b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["line3_2c"] = Instance.new("Frame", UI["keyboard_6"])
UI["line3_2c"]["BorderSizePixel"] = 0
UI["line3_2c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["line3_2c"]["Size"] = UDim2.new(0.68023, 0, 0.18478, 0)
UI["line3_2c"]["Position"] = UDim2.new(0.15698, 0, 0.59783, 0)
UI["line3_2c"]["Name"] = "line3"

UI["key_2d"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_2d"]["TextWrapped"] = true
UI["key_2d"]["BorderSizePixel"] = 0
UI["key_2d"]["TextScaled"] = true
UI["key_2d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_2d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_2d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_2d"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_2d"]["Text"] = "C"
UI["key_2d"]["Name"] = "key"
UI["key_2d"]["Position"] = UDim2.new(0.2906, 0, 0.05882, 0)

UI["UICorner_2e"] = Instance.new("UICorner", UI["key_2d"])
UI["UICorner_2e"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_2f"] = Instance.new("UIGradient", UI["key_2d"])
UI["UIGradient_2f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_30"] = Instance.new("UIStroke", UI["key_2d"])
UI["UIStroke_30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_30"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_31"] = Instance.new("UIGradient", UI["UIStroke_30"])
UI["UIGradient_31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_32"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_32"]["TextWrapped"] = true
UI["key_32"]["BorderSizePixel"] = 0
UI["key_32"]["TextScaled"] = true
UI["key_32"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_32"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_32"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_32"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_32"]["Text"] = "N"
UI["key_32"]["Name"] = "key"
UI["key_32"]["Position"] = UDim2.new(0.7265, 0, 0.05882, 0)

UI["UICorner_33"] = Instance.new("UICorner", UI["key_32"])
UI["UICorner_33"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_34"] = Instance.new("UIGradient", UI["key_32"])
UI["UIGradient_34"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_35"] = Instance.new("UIStroke", UI["key_32"])
UI["UIStroke_35"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_35"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_36"] = Instance.new("UIGradient", UI["UIStroke_35"])
UI["UIGradient_36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UICorner_37"] = Instance.new("UICorner", UI["line3_2c"])
UI["UICorner_37"]["CornerRadius"] = UDim.new(0, 4)

UI["key_38"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_38"]["TextWrapped"] = true
UI["key_38"]["BorderSizePixel"] = 0
UI["key_38"]["TextScaled"] = true
UI["key_38"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_38"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_38"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_38"]["Text"] = "B"
UI["key_38"]["Name"] = "key"
UI["key_38"]["Position"] = UDim2.new(0.5812, 0, 0.05882, 0)

UI["UICorner_39"] = Instance.new("UICorner", UI["key_38"])
UI["UICorner_39"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_3a"] = Instance.new("UIGradient", UI["key_38"])
UI["UIGradient_3a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_3b"] = Instance.new("UIStroke", UI["key_38"])
UI["UIStroke_3b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_3b"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_3c"] = Instance.new("UIGradient", UI["UIStroke_3b"])
UI["UIGradient_3c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_3d"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_3d"]["TextWrapped"] = true
UI["key_3d"]["BorderSizePixel"] = 0
UI["key_3d"]["TextScaled"] = true
UI["key_3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_3d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_3d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_3d"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_3d"]["Text"] = "Z"
UI["key_3d"]["Name"] = "key"
UI["key_3d"]["Position"] = UDim2.new(0, 0, 0.05882, 0)

UI["UICorner_3e"] = Instance.new("UICorner", UI["key_3d"])
UI["UICorner_3e"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_3f"] = Instance.new("UIGradient", UI["key_3d"])
UI["UIGradient_3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_40"] = Instance.new("UIStroke", UI["key_3d"])
UI["UIStroke_40"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_40"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_41"] = Instance.new("UIGradient", UI["UIStroke_40"])
UI["UIGradient_41"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_42"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_42"]["TextWrapped"] = true
UI["key_42"]["BorderSizePixel"] = 0
UI["key_42"]["TextScaled"] = true
UI["key_42"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_42"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_42"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_42"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_42"]["Text"] = "M"
UI["key_42"]["Name"] = "key"
UI["key_42"]["Position"] = UDim2.new(0.87179, 0, 0.05882, 0)

UI["UICorner_43"] = Instance.new("UICorner", UI["key_42"])
UI["UICorner_43"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_44"] = Instance.new("UIGradient", UI["key_42"])
UI["UIGradient_44"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_45"] = Instance.new("UIStroke", UI["key_42"])
UI["UIStroke_45"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_45"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_46"] = Instance.new("UIGradient", UI["UIStroke_45"])
UI["UIGradient_46"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_47"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_47"]["TextWrapped"] = true
UI["key_47"]["BorderSizePixel"] = 0
UI["key_47"]["TextScaled"] = true
UI["key_47"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_47"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_47"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_47"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_47"]["Text"] = "V"
UI["key_47"]["Name"] = "key"
UI["key_47"]["Position"] = UDim2.new(0.4359, 0, 0.05882, 0)

UI["UICorner_48"] = Instance.new("UICorner", UI["key_47"])
UI["UICorner_48"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_49"] = Instance.new("UIGradient", UI["key_47"])
UI["UIGradient_49"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_4a"] = Instance.new("UIStroke", UI["key_47"])
UI["UIStroke_4a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_4a"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_4b"] = Instance.new("UIGradient", UI["UIStroke_4a"])
UI["UIGradient_4b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_4c"] = Instance.new("TextButton", UI["line3_2c"])
UI["key_4c"]["TextWrapped"] = true
UI["key_4c"]["BorderSizePixel"] = 0
UI["key_4c"]["TextScaled"] = true
UI["key_4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_4c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_4c"]["Size"] = UDim2.new(0.12821, 0, 0.88235, 0)
UI["key_4c"]["Text"] = "X"
UI["key_4c"]["Name"] = "key"
UI["key_4c"]["Position"] = UDim2.new(0.1453, 0, 0.05882, 0)

UI["UICorner_4d"] = Instance.new("UICorner", UI["key_4c"])
UI["UICorner_4d"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_4e"] = Instance.new("UIGradient", UI["key_4c"])
UI["UIGradient_4e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_4f"] = Instance.new("UIStroke", UI["key_4c"])
UI["UIStroke_4f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_4f"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_50"] = Instance.new("UIGradient", UI["UIStroke_4f"])
UI["UIGradient_50"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["line2_51"] = Instance.new("Frame", UI["keyboard_6"])
UI["line2_51"]["BorderSizePixel"] = 0
UI["line2_51"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["line2_51"]["Size"] = UDim2.new(0.87791, 0, 0.18478, 0)
UI["line2_51"]["Position"] = UDim2.new(0.05814, 0, 0.40217, 0)
UI["line2_51"]["Name"] = "line2"

UI["key_52"] = Instance.new("TextButton", UI["line2_51"])
UI["key_52"]["TextWrapped"] = true
UI["key_52"]["BorderSizePixel"] = 0
UI["key_52"]["TextScaled"] = true
UI["key_52"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_52"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_52"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_52"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_52"]["Text"] = "K"
UI["key_52"]["Name"] = "key"
UI["key_52"]["Position"] = UDim2.new(0.78808, 0, 0.05882, 0)

UI["UICorner_53"] = Instance.new("UICorner", UI["key_52"])
UI["UICorner_53"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_54"] = Instance.new("UIGradient", UI["key_52"])
UI["UIGradient_54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_55"] = Instance.new("UIStroke", UI["key_52"])
UI["UIStroke_55"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_55"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_56"] = Instance.new("UIGradient", UI["UIStroke_55"])
UI["UIGradient_56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_57"] = Instance.new("TextButton", UI["line2_51"])
UI["key_57"]["TextWrapped"] = true
UI["key_57"]["BorderSizePixel"] = 0
UI["key_57"]["TextScaled"] = true
UI["key_57"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_57"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_57"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_57"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_57"]["Text"] = "A"
UI["key_57"]["Name"] = "key"
UI["key_57"]["Position"] = UDim2.new(0, 0, 0.05882, 0)

UI["UICorner_58"] = Instance.new("UICorner", UI["key_57"])
UI["UICorner_58"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_59"] = Instance.new("UIGradient", UI["key_57"])
UI["UIGradient_59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_5a"] = Instance.new("UIStroke", UI["key_57"])
UI["UIStroke_5a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_5a"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_5b"] = Instance.new("UIGradient", UI["UIStroke_5a"])
UI["UIGradient_5b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_5c"] = Instance.new("TextButton", UI["line2_51"])
UI["key_5c"]["TextWrapped"] = true
UI["key_5c"]["BorderSizePixel"] = 0
UI["key_5c"]["TextScaled"] = true
UI["key_5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_5c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_5c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_5c"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_5c"]["Text"] = "L"
UI["key_5c"]["Name"] = "key"
UI["key_5c"]["Position"] = UDim2.new(0.90066, 0, 0.05882, 0)

UI["UICorner_5d"] = Instance.new("UICorner", UI["key_5c"])
UI["UICorner_5d"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_5e"] = Instance.new("UIGradient", UI["key_5c"])
UI["UIGradient_5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_5f"] = Instance.new("UIStroke", UI["key_5c"])
UI["UIStroke_5f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_5f"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_60"] = Instance.new("UIGradient", UI["UIStroke_5f"])
UI["UIGradient_60"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_61"] = Instance.new("TextButton", UI["line2_51"])
UI["key_61"]["TextWrapped"] = true
UI["key_61"]["BorderSizePixel"] = 0
UI["key_61"]["TextScaled"] = true
UI["key_61"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_61"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_61"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_61"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_61"]["Text"] = "G"
UI["key_61"]["Name"] = "key"
UI["key_61"]["Position"] = UDim2.new(0.45033, 0, 0.05882, 0)

UI["UICorner_62"] = Instance.new("UICorner", UI["key_61"])
UI["UICorner_62"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_63"] = Instance.new("UIGradient", UI["key_61"])
UI["UIGradient_63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_64"] = Instance.new("UIStroke", UI["key_61"])
UI["UIStroke_64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_64"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_65"] = Instance.new("UIGradient", UI["UIStroke_64"])
UI["UIGradient_65"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UICorner_66"] = Instance.new("UICorner", UI["line2_51"])
UI["UICorner_66"]["CornerRadius"] = UDim.new(0, 4)

UI["key_67"] = Instance.new("TextButton", UI["line2_51"])
UI["key_67"]["TextWrapped"] = true
UI["key_67"]["BorderSizePixel"] = 0
UI["key_67"]["TextScaled"] = true
UI["key_67"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_67"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_67"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_67"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_67"]["Text"] = "F"
UI["key_67"]["Name"] = "key"
UI["key_67"]["Position"] = UDim2.new(0.33775, 0, 0.05882, 0)

UI["UICorner_68"] = Instance.new("UICorner", UI["key_67"])
UI["UICorner_68"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_69"] = Instance.new("UIGradient", UI["key_67"])
UI["UIGradient_69"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_6a"] = Instance.new("UIStroke", UI["key_67"])
UI["UIStroke_6a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_6a"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_6b"] = Instance.new("UIGradient", UI["UIStroke_6a"])
UI["UIGradient_6b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_6c"] = Instance.new("TextButton", UI["line2_51"])
UI["key_6c"]["TextWrapped"] = true
UI["key_6c"]["BorderSizePixel"] = 0
UI["key_6c"]["TextScaled"] = true
UI["key_6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_6c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_6c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_6c"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_6c"]["Text"] = "J"
UI["key_6c"]["Name"] = "key"
UI["key_6c"]["Position"] = UDim2.new(0.6755, 0, 0.05882, 0)

UI["UICorner_6d"] = Instance.new("UICorner", UI["key_6c"])
UI["UICorner_6d"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_6e"] = Instance.new("UIGradient", UI["key_6c"])
UI["UIGradient_6e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_6f"] = Instance.new("UIStroke", UI["key_6c"])
UI["UIStroke_6f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_6f"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_70"] = Instance.new("UIGradient", UI["UIStroke_6f"])
UI["UIGradient_70"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_71"] = Instance.new("TextButton", UI["line2_51"])
UI["key_71"]["TextWrapped"] = true
UI["key_71"]["BorderSizePixel"] = 0
UI["key_71"]["TextScaled"] = true
UI["key_71"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_71"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_71"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_71"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_71"]["Text"] = "S"
UI["key_71"]["Name"] = "key"
UI["key_71"]["Position"] = UDim2.new(0.11258, 0, 0.05882, 0)

UI["UICorner_72"] = Instance.new("UICorner", UI["key_71"])
UI["UICorner_72"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_73"] = Instance.new("UIGradient", UI["key_71"])
UI["UIGradient_73"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_74"] = Instance.new("UIStroke", UI["key_71"])
UI["UIStroke_74"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_74"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_75"] = Instance.new("UIGradient", UI["UIStroke_74"])
UI["UIGradient_75"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_76"] = Instance.new("TextButton", UI["line2_51"])
UI["key_76"]["TextWrapped"] = true
UI["key_76"]["BorderSizePixel"] = 0
UI["key_76"]["TextScaled"] = true
UI["key_76"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_76"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_76"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_76"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_76"]["Text"] = "H"
UI["key_76"]["Name"] = "key"
UI["key_76"]["Position"] = UDim2.new(0.56291, 0, 0.05882, 0)

UI["UICorner_77"] = Instance.new("UICorner", UI["key_76"])
UI["UICorner_77"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_78"] = Instance.new("UIGradient", UI["key_76"])
UI["UIGradient_78"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_79"] = Instance.new("UIStroke", UI["key_76"])
UI["UIStroke_79"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_79"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_7a"] = Instance.new("UIGradient", UI["UIStroke_79"])
UI["UIGradient_7a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_7b"] = Instance.new("TextButton", UI["line2_51"])
UI["key_7b"]["TextWrapped"] = true
UI["key_7b"]["BorderSizePixel"] = 0
UI["key_7b"]["TextScaled"] = true
UI["key_7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_7b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_7b"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_7b"]["Size"] = UDim2.new(0.09934, 0, 0.88235, 0)
UI["key_7b"]["Text"] = "D"
UI["key_7b"]["Name"] = "key"
UI["key_7b"]["Position"] = UDim2.new(0.22517, 0, 0.05882, 0)

UI["UICorner_7c"] = Instance.new("UICorner", UI["key_7b"])
UI["UICorner_7c"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_7d"] = Instance.new("UIGradient", UI["key_7b"])
UI["UIGradient_7d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_7e"] = Instance.new("UIStroke", UI["key_7b"])
UI["UIStroke_7e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_7e"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_7f"] = Instance.new("UIGradient", UI["UIStroke_7e"])
UI["UIGradient_7f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["title_80"] = Instance.new("TextLabel", UI["keyboard_6"]);
UI["title_80"]["TextWrapped"] = true;
UI["title_80"]["BorderSizePixel"] = 0;
UI["title_80"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["title_80"]["TextScaled"] = true;
UI["title_80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["title_80"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["title_80"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
UI["title_80"]["BackgroundTransparency"] = 1;
UI["title_80"]["Size"] = UDim2.new(0.76744, 0, 0.16304, 0);
UI["title_80"]["Text"] = "Kilobyte keyboard [V2]";
UI["title_80"]["Name"] = [[Title]];
UI["title_80"]["Position"] = UDim2.new(0.01744, 0, 0.02174, 0);

UI["UIGradient_81"] = Instance.new("UIGradient", UI["title_80"])
UI["UIGradient_81"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["line1_82"] = Instance.new("Frame", UI["keyboard_6"])
UI["line1_82"]["BorderSizePixel"] = 0
UI["line1_82"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["line1_82"]["Size"] = UDim2.new(0.97674, 0, 0.18478, 0)
UI["line1_82"]["Position"] = UDim2.new(0.01163, 0, 0.20652, 0)
UI["line1_82"]["Name"] = "line1"

UI["key_83"] = Instance.new("TextButton", UI["line1_82"])
UI["key_83"]["TextWrapped"] = true
UI["key_83"]["BorderSizePixel"] = 0
UI["key_83"]["TextScaled"] = true
UI["key_83"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_83"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_83"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_83"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_83"]["Text"] = "E"
UI["key_83"]["Name"] = "key"
UI["key_83"]["Position"] = UDim2.new(0.20238, 0, 0.05882, 0)

UI["UICorner_84"] = Instance.new("UICorner", UI["key_83"])
UI["UICorner_84"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_85"] = Instance.new("UIGradient", UI["key_83"])
UI["UIGradient_85"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_86"] = Instance.new("UIStroke", UI["key_83"])
UI["UIStroke_86"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_86"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_87"] = Instance.new("UIGradient", UI["UIStroke_86"])
UI["UIGradient_87"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_88"] = Instance.new("TextButton", UI["line1_82"])
UI["key_88"]["TextWrapped"] = true
UI["key_88"]["BorderSizePixel"] = 0
UI["key_88"]["TextScaled"] = true
UI["key_88"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_88"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_88"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_88"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_88"]["Text"] = "W"
UI["key_88"]["Name"] = "key"
UI["key_88"]["Position"] = UDim2.new(0.10119, 0, 0.05882, 0)

UI["UICorner_89"] = Instance.new("UICorner", UI["key_88"])
UI["UICorner_89"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_8a"] = Instance.new("UIGradient", UI["key_88"])
UI["UIGradient_8a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_8b"] = Instance.new("UIStroke", UI["key_88"])
UI["UIStroke_8b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_8b"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_8c"] = Instance.new("UIGradient", UI["UIStroke_8b"])
UI["UIGradient_8c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_8d"] = Instance.new("TextButton", UI["line1_82"])
UI["key_8d"]["TextWrapped"] = true
UI["key_8d"]["BorderSizePixel"] = 0
UI["key_8d"]["TextScaled"] = true
UI["key_8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_8d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_8d"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_8d"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_8d"]["Text"] = "T"
UI["key_8d"]["Name"] = "key"
UI["key_8d"]["Position"] = UDim2.new(0.40476, 0, 0.05882, 0)

UI["UICorner_8e"] = Instance.new("UICorner", UI["key_8d"])
UI["UICorner_8e"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_8f"] = Instance.new("UIGradient", UI["key_8d"])
UI["UIGradient_8f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_90"] = Instance.new("UIStroke", UI["key_8d"])
UI["UIStroke_90"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_90"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_91"] = Instance.new("UIGradient", UI["UIStroke_90"])
UI["UIGradient_91"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_92"] = Instance.new("TextButton", UI["line1_82"])
UI["key_92"]["TextWrapped"] = true
UI["key_92"]["BorderSizePixel"] = 0
UI["key_92"]["TextScaled"] = true
UI["key_92"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_92"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_92"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_92"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_92"]["Text"] = "I"
UI["key_92"]["Name"] = "key"
UI["key_92"]["Position"] = UDim2.new(0.70833, 0, 0.05882, 0)

UI["UICorner_93"] = Instance.new("UICorner", UI["key_92"])
UI["UICorner_93"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_94"] = Instance.new("UIGradient", UI["key_92"])
UI["UIGradient_94"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_95"] = Instance.new("UIStroke", UI["key_92"])
UI["UIStroke_95"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_95"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_96"] = Instance.new("UIGradient", UI["UIStroke_95"])
UI["UIGradient_96"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_97"] = Instance.new("TextButton", UI["line1_82"])
UI["key_97"]["TextWrapped"] = true
UI["key_97"]["BorderSizePixel"] = 0
UI["key_97"]["TextScaled"] = true
UI["key_97"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_97"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_97"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_97"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_97"]["Text"] = "O"
UI["key_97"]["Name"] = "key"
UI["key_97"]["Position"] = UDim2.new(0.80952, 0, 0.05882, 0)

UI["UICorner_98"] = Instance.new("UICorner", UI["key_97"])
UI["UICorner_98"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_99"] = Instance.new("UIGradient", UI["key_97"])
UI["UIGradient_99"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_9a"] = Instance.new("UIStroke", UI["key_97"])
UI["UIStroke_9a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_9a"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_9b"] = Instance.new("UIGradient", UI["UIStroke_9a"])
UI["UIGradient_9b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_9c"] = Instance.new("TextButton", UI["line1_82"])
UI["key_9c"]["TextWrapped"] = true
UI["key_9c"]["BorderSizePixel"] = 0
UI["key_9c"]["TextScaled"] = true
UI["key_9c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_9c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_9c"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_9c"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_9c"]["Text"] = "R"
UI["key_9c"]["Name"] = "key"
UI["key_9c"]["Position"] = UDim2.new(0.30357, 0, 0.05882, 0)

UI["UICorner_9d"] = Instance.new("UICorner", UI["key_9c"])
UI["UICorner_9d"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_9e"] = Instance.new("UIGradient", UI["key_9c"])
UI["UIGradient_9e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_9f"] = Instance.new("UIStroke", UI["key_9c"])
UI["UIStroke_9f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_9f"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_a0"] = Instance.new("UIGradient", UI["UIStroke_9f"])
UI["UIGradient_a0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_a1"] = Instance.new("TextButton", UI["line1_82"])
UI["key_a1"]["TextWrapped"] = true
UI["key_a1"]["BorderSizePixel"] = 0
UI["key_a1"]["TextScaled"] = true
UI["key_a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_a1"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_a1"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_a1"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_a1"]["Text"] = "P"
UI["key_a1"]["Name"] = "key"
UI["key_a1"]["Position"] = UDim2.new(0.91071, 0, 0.05882, 0)

UI["UICorner_a2"] = Instance.new("UICorner", UI["key_a1"])
UI["UICorner_a2"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_a3"] = Instance.new("UIGradient", UI["key_a1"])
UI["UIGradient_a3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_a4"] = Instance.new("UIStroke", UI["key_a1"])
UI["UIStroke_a4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_a4"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_a5"] = Instance.new("UIGradient", UI["UIStroke_a4"])
UI["UIGradient_a5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UICorner_a6"] = Instance.new("UICorner", UI["line1_82"])
UI["UICorner_a6"]["CornerRadius"] = UDim.new(0, 4)

UI["key_a7"] = Instance.new("TextButton", UI["line1_82"])
UI["key_a7"]["TextWrapped"] = true
UI["key_a7"]["BorderSizePixel"] = 0
UI["key_a7"]["TextScaled"] = true
UI["key_a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_a7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_a7"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_a7"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_a7"]["Text"] = "U"
UI["key_a7"]["Name"] = "key"
UI["key_a7"]["Position"] = UDim2.new(0.60714, 0, 0.05882, 0)

UI["UICorner_a8"] = Instance.new("UICorner", UI["key_a7"])
UI["UICorner_a8"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_a9"] = Instance.new("UIGradient", UI["key_a7"])
UI["UIGradient_a9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_aa"] = Instance.new("UIStroke", UI["key_a7"])
UI["UIStroke_aa"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_aa"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_ab"] = Instance.new("UIGradient", UI["UIStroke_aa"])
UI["UIGradient_ab"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_ac"] = Instance.new("TextButton", UI["line1_82"])
UI["key_ac"]["TextWrapped"] = true
UI["key_ac"]["BorderSizePixel"] = 0
UI["key_ac"]["TextScaled"] = true
UI["key_ac"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_ac"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_ac"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_ac"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_ac"]["Text"] = "Q"
UI["key_ac"]["Name"] = "key"
UI["key_ac"]["Position"] = UDim2.new(0, 0, 0.05882, 0)

UI["UICorner_ad"] = Instance.new("UICorner", UI["key_ac"])
UI["UICorner_ad"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_ae"] = Instance.new("UIGradient", UI["key_ac"])
UI["UIGradient_ae"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_af"] = Instance.new("UIStroke", UI["key_ac"])
UI["UIStroke_af"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_af"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_b0"] = Instance.new("UIGradient", UI["UIStroke_af"])
UI["UIGradient_b0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["key_b1"] = Instance.new("TextButton", UI["line1_82"])
UI["key_b1"]["TextWrapped"] = true
UI["key_b1"]["BorderSizePixel"] = 0
UI["key_b1"]["TextScaled"] = true
UI["key_b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["key_b1"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["key_b1"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["key_b1"]["Size"] = UDim2.new(0.08929, 0, 0.88235, 0)
UI["key_b1"]["Text"] = "Y"
UI["key_b1"]["Name"] = "key"
UI["key_b1"]["Position"] = UDim2.new(0.50595, 0, 0.05882, 0)

UI["UICorner_b2"] = Instance.new("UICorner", UI["key_b1"])
UI["UICorner_b2"]["CornerRadius"] = UDim.new(0, 4)

UI["UIGradient_b3"] = Instance.new("UIGradient", UI["key_b1"])
UI["UIGradient_b3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_b4"] = Instance.new("UIStroke", UI["key_b1"])
UI["UIStroke_b4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_b4"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_b5"] = Instance.new("UIGradient", UI["UIStroke_b4"])
UI["UIGradient_b5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

UI["UIStroke_b6"] = Instance.new("UIStroke", UI["keyboard_6"])
UI["UIStroke_b6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["UIStroke_b6"]["Color"] = Color3.fromRGB(255, 255, 255)

UI["UIGradient_b7"] = Instance.new("UIGradient", UI["UIStroke_b6"])
UI["UIGradient_b7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(101, 0, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(170, 0, 255))}

local VIM = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local keyMap = {
    ["Q"] = Enum.KeyCode.Q,
    ["W"] = Enum.KeyCode.W,
    ["E"] = Enum.KeyCode.E,
    ["R"] = Enum.KeyCode.R,
    ["T"] = Enum.KeyCode.T,
    ["Y"] = Enum.KeyCode.Y,
    ["U"] = Enum.KeyCode.U,
    ["I"] = Enum.KeyCode.I,
    ["O"] = Enum.KeyCode.O,
    ["P"] = Enum.KeyCode.P,
    ["A"] = Enum.KeyCode.A,
    ["S"] = Enum.KeyCode.S,
    ["D"] = Enum.KeyCode.D,
    ["F"] = Enum.KeyCode.F,
    ["G"] = Enum.KeyCode.G,
    ["H"] = Enum.KeyCode.H,
    ["J"] = Enum.KeyCode.J,
    ["K"] = Enum.KeyCode.K,
    ["L"] = Enum.KeyCode.L,
    ["Z"] = Enum.KeyCode.Z,
    ["X"] = Enum.KeyCode.X,
    ["C"] = Enum.KeyCode.C,
    ["V"] = Enum.KeyCode.V,
    ["B"] = Enum.KeyCode.B,
    ["N"] = Enum.KeyCode.N,
    ["M"] = Enum.KeyCode.M,
    ["L-Ctrl"] = Enum.KeyCode.LeftControl,
    ["L-Alt"] = Enum.KeyCode.LeftAlt,
    ["R-Alt"] = Enum.KeyCode.RightAlt,
    ["R-Ctrl"] = Enum.KeyCode.RightControl,
    [" "] = Enum.KeyCode.Space
}

local heldKeys = {}

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

dragify(UI["keyboard_6"])
dragify(UI["show_2"])

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

local function setupKeyButton(button)
    local keyText = button.Text
    local keyCode = keyMap[keyText]
    
    if keyCode then
        HoverAnim(button)
        
        button.MouseButton1Down:Connect(function()
            if not heldKeys[keyText] then
                heldKeys[keyText] = true
                VIM:SendKeyEvent(true, keyCode, false, nil)
            end
        end)
        
        button.MouseButton1Up:Connect(function()
            if heldKeys[keyText] then
                heldKeys[keyText] = false
                VIM:SendKeyEvent(false, keyCode, false, nil)
            end
        end)
        
        button.MouseLeave:Connect(function()
            if heldKeys[keyText] then
                heldKeys[keyText] = false
                VIM:SendKeyEvent(false, keyCode, false, nil)
            end
        end)
    end
end

for _, button in pairs(UI["keyboard_6"]:GetDescendants()) do
    if button:IsA("TextButton") and button.Name == "key" then
        setupKeyButton(button)
    end
end

UI["space_1e"].MouseButton1Down:Connect(function()
    if not heldKeys[" "] then
        heldKeys[" "] = true
        VIM:SendKeyEvent(true, Enum.KeyCode.Space, false, nil)
    end
end)

UI["space_1e"].MouseButton1Up:Connect(function()
    if heldKeys[" "] then
        heldKeys[" "] = false
        VIM:SendKeyEvent(false, Enum.KeyCode.Space, false, nil)
    end
end)

UI["space_1e"].MouseLeave:Connect(function()
    if heldKeys[" "] then
        heldKeys[" "] = false
        VIM:SendKeyEvent(false, Enum.KeyCode.Space, false, nil)
    end
end)

UI["hide_7"].MouseButton1Click:Connect(function()
    UI["keyboard_6"].Visible = false
    UI["show_2"].Visible = true
end)

UI["show_2"].MouseButton1Click:Connect(function()
    UI["keyboard_6"].Visible = true
    UI["show_2"].Visible = false
end)

UI["close_27"].MouseButton1Click:Connect(function()
    for keyName, isHeld in pairs(heldKeys) do
        if isHeld and keyMap[keyName] then
            VIM:SendKeyEvent(false, keyMap[keyName], false, nil)
        end
    end
    task.wait(0.3)
    UI["main_1"]:Destroy()
end)

UI["keyboard_6"].Visible = true
UI["show_2"].Visible = false

UI["main_1"].AncestryChanged:Connect(function()
    if not UI["main_1"].Parent then
        for keyName, isHeld in pairs(heldKeys) do
            if isHeld and keyMap[keyName] then
                VIM:SendKeyEvent(false, keyMap[keyName], false, nil)
            end
        end
    end
end)

return UI["main_1"]