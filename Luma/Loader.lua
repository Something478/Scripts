local CollectionService = game:GetService("CollectionService");
local TweenService = game:GetService("TweenService");
local G2L = {};

G2L["Luma_1"] = Instance.new("ScreenGui",
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["Luma_1"]["Name"] = [[Luma]];
G2L["Luma_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["Luma_1"]["RobloxLocked"] = true

CollectionService:AddTag(G2L["Luma_1"], [[main]]);

G2L["Tab_2"] = Instance.new("Frame", G2L["Luma_1"]);
G2L["Tab_2"]["Active"] = true;
G2L["Tab_2"]["BorderSizePixel"] = 0;
G2L["Tab_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Tab_2"]["Size"] = UDim2.new(0, 624, 0, 24);
G2L["Tab_2"]["Position"] = UDim2.new(0, 345, 0, 94);
G2L["Tab_2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Tab_2"]["Name"] = [[Tab]];
G2L["Tab_2"]["BackgroundTransparency"] = 0.2;


G2L["MinimizeButton_3"] = Instance.new("TextButton", G2L["Tab_2"]);
G2L["MinimizeButton_3"]["TextSize"] = 9;
G2L["MinimizeButton_3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["MinimizeButton_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["MinimizeButton_3"]["BackgroundTransparency"] = 1;
G2L["MinimizeButton_3"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["MinimizeButton_3"]["Text"] = [[-]];
G2L["MinimizeButton_3"]["Name"] = [[MinimizeButton]];
G2L["MinimizeButton_3"]["Position"] = UDim2.new(0, 560, 0, 0);


G2L["Window_4"] = Instance.new("Frame", G2L["Tab_2"]);
G2L["Window_4"]["ZIndex"] = 0;
G2L["Window_4"]["BorderSizePixel"] = 0;
G2L["Window_4"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["Window_4"]["Size"] = UDim2.new(0, 624, 0, 338);
G2L["Window_4"]["Position"] = UDim2.new(0, 0, 0, 18);
G2L["Window_4"]["Name"] = [[Window]];


G2L["UICorner_5"] = Instance.new("UICorner", G2L["Window_4"]);



G2L["ScrollingFrame_6"] = Instance.new("ScrollingFrame", G2L["Window_4"]);
G2L["ScrollingFrame_6"]["BorderSizePixel"] = 0;
G2L["ScrollingFrame_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ScrollingFrame_6"]["Size"] = UDim2.new(0, 618, 0, 338);
G2L["ScrollingFrame_6"]["Position"] = UDim2.new(0, 4, 0, 0);
G2L["ScrollingFrame_6"]["BackgroundTransparency"] = 1;


G2L["UIListLayout_7"] = Instance.new("UIListLayout", G2L["ScrollingFrame_6"]);



G2L["TabName_8"] = Instance.new("TextLabel", G2L["Tab_2"]);
G2L["TabName_8"]["BorderSizePixel"] = 0;
G2L["TabName_8"]["TextSize"] = 18;
G2L["TabName_8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["TabName_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TabName_8"]["FontFace"] = Font.new([[Enum.Font.Code]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["TabName_8"]["TextColor3"] = Color3.fromRGB(255, 255, 555);
G2L["TabName_8"]["BackgroundTransparency"] = 1;
G2L["TabName_8"]["Size"] = UDim2.new(0, 218, 0, 18);
G2L["TabName_8"]["Text"] = [[Luma UI]];
G2L["TabName_8"]["Name"] = [[TabName]];
G2L["TabName_8"]["Position"] = UDim2.new(0, 6, 0, 0);


G2L["FullscreenButton_9"] = Instance.new("TextButton", G2L["Tab_2"]);
G2L["FullscreenButton_9"]["TextSize"] = 9;
G2L["FullscreenButton_9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["FullscreenButton_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["FullscreenButton_9"]["BackgroundTransparency"] = 1;
G2L["FullscreenButton_9"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["FullscreenButton_9"]["Text"] = [[□]];
G2L["FullscreenButton_9"]["Name"] = [[FullscreenButton]];
G2L["FullscreenButton_9"]["Position"] = UDim2.new(0, 580, 0, 0);


G2L["CloseButton_a"] = Instance.new("TextButton", G2L["Tab_2"]);
G2L["CloseButton_a"]["TextSize"] = 9;
G2L["CloseButton_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["CloseButton_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["CloseButton_a"]["BackgroundTransparency"] = 1;
G2L["CloseButton_a"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["CloseButton_a"]["Text"] = [[×]];
G2L["CloseButton_a"]["Name"] = [[CloseButton]];
G2L["CloseButton_a"]["Position"] = UDim2.new(0, 598, 0, 0);


G2L["UIDragDetector_b"] = Instance.new("UIDragDetector", G2L["Tab_2"]);

local isMinimized = false;
local isFullscreen = false;
local originalSize = G2L["Tab_2"].Size;
local originalPosition = G2L["Tab_2"].Position;
local originalWindowSize = G2L["Window_4"].Size;
local originalScrollSize = G2L["ScrollingFrame_6"].Size;
local wasMinimizedBeforeFullscreen = false;

local originalMinimizePos = G2L["MinimizeButton_3"].Position;
local originalFullscreenPos = G2L["FullscreenButton_9"].Position;
local originalClosePos = G2L["CloseButton_a"].Position;

local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);

G2L["CloseButton_a"].MouseButton1Click:Connect(function()
	local fadeOut = TweenService:Create(G2L["Luma_1"], tweenInfo, {
		Enabled = false
	});
	fadeOut:Play();

	fadeOut.Completed:Connect(function()
		G2L["Luma_1"]:Destroy();
	end);
end);

G2L["MinimizeButton_3"].MouseButton1Click:Connect(function()
	if isFullscreen then
		return;
	end

	if not isMinimized then
		isMinimized = true;

		local minimizeTween = TweenService:Create(G2L["Window_4"], tweenInfo, {
			Size = UDim2.new(0, 624, 0, 0)
		});

		local minimizeScrollTween = TweenService:Create(G2L["ScrollingFrame_6"], tweenInfo, {
			Size = UDim2.new(0, 618, 0, 0)
		});

		minimizeTween:Play();
		minimizeScrollTween:Play();
		G2L["MinimizeButton_3"].Text = "-";
	else
		isMinimized = false;

		local restoreTween = TweenService:Create(G2L["Window_4"], tweenInfo, {
			Size = originalWindowSize
		});

		local restoreScrollTween = TweenService:Create(G2L["ScrollingFrame_6"], tweenInfo, {
			Size = originalScrollSize
		});

		restoreTween:Play();
		restoreScrollTween:Play();
		G2L["MinimizeButton_3"].Text = "-";
	end
end);

G2L["FullscreenButton_9"].MouseButton1Click:Connect(function()
	if not isFullscreen then
		isFullscreen = true;

		wasMinimizedBeforeFullscreen = isMinimized;
		if isMinimized then
			isMinimized = false;
			G2L["Window_4"].Size = originalWindowSize
			G2L["ScrollingFrame_6"].Size = originalScrollSize
			G2L["MinimizeButton_3"].Text = "-";
		end

		originalSize = G2L["Tab_2"].Size;
		originalPosition = G2L["Tab_2"].Position;
		originalWindowSize = G2L["Window_4"].Size;
		originalScrollSize = G2L["ScrollingFrame_6"].Size;

		G2L["UIDragDetector_b"].Enabled = false;

		G2L["MinimizeButton_3"].TextTransparency = 0.5;

		local fullscreenTabTween = TweenService:Create(G2L["Tab_2"], tweenInfo, {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0)
		});

		local fullscreenWindowTween = TweenService:Create(G2L["Window_4"], tweenInfo, {
			Size = UDim2.new(1, 0, 1, -24),
			Position = UDim2.new(0, 0, 0, 24)
		});

		local fullscreenScrollTween = TweenService:Create(G2L["ScrollingFrame_6"], tweenInfo, {
			Size = UDim2.new(1, -4, 1, -24)
		});

		local minimizeButtonTween = TweenService:Create(G2L["MinimizeButton_3"], tweenInfo, {
			Position = UDim2.new(1, -78, 0, 3)
		});

		local fullscreenButtonTween = TweenService:Create(G2L["FullscreenButton_9"], tweenInfo, {
			Position = UDim2.new(1, -58, 0, 3)
		});

		local closeButtonTween = TweenService:Create(G2L["CloseButton_a"], tweenInfo, {
			Position = UDim2.new(1, -38, 0, 3)
		});

		fullscreenTabTween:Play();
		fullscreenWindowTween:Play();
		fullscreenScrollTween:Play();
		minimizeButtonTween:Play();
		fullscreenButtonTween:Play();
		closeButtonTween:Play();

		G2L["FullscreenButton_9"].Text = "❐";

	else
		isFullscreen = false;

		G2L["UIDragDetector_b"].Enabled = true;

		G2L["MinimizeButton_3"].TextTransparency = 0;

		local restoreTabTween = TweenService:Create(G2L["Tab_2"], tweenInfo, {
			Size = originalSize,
			Position = originalPosition
		});

		if wasMinimizedBeforeFullscreen then
			isMinimized = true;
			local restoreWindowTween = TweenService:Create(G2L["Window_4"], tweenInfo, {
				Size = UDim2.new(0, 624, 0, 0),
				Position = UDim2.new(0, 0, 0, 18)
			});
			local restoreScrollTween = TweenService:Create(G2L["ScrollingFrame_6"], tweenInfo, {
				Size = UDim2.new(0, 618, 0, 0)
			});
			restoreWindowTween:Play();
			restoreScrollTween:Play();
		else
			local restoreWindowTween = TweenService:Create(G2L["Window_4"], tweenInfo, {
				Size = originalWindowSize,
				Position = UDim2.new(0, 0, 0, 18)
			});
			local restoreScrollTween = TweenService:Create(G2L["ScrollingFrame_6"], tweenInfo, {
				Size = originalScrollSize
			});
			restoreWindowTween:Play();
			restoreScrollTween:Play();
		end

		local restoreMinimizeTween = TweenService:Create(G2L["MinimizeButton_3"], tweenInfo, {
			Position = originalMinimizePos
		});

		local restoreFullscreenTween = TweenService:Create(G2L["FullscreenButton_9"], tweenInfo, {
			Position = originalFullscreenPos
		});

		local restoreCloseTween = TweenService:Create(G2L["CloseButton_a"], tweenInfo, {
			Position = originalClosePos
		});

		restoreTabTween:Play();
		restoreMinimizeTween:Play();
		restoreFullscreenTween:Play();
		restoreCloseTween:Play();

		G2L["FullscreenButton_9"].Text = "□";
	end
end);

return G2L["Luma_1"], require;