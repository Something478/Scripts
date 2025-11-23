getgenv().createGlow = function(object, baseColor, options)
    options = options or {}
    local glowIntensity = options.intensity or 1
    local glowSpeed = options.speed or 2
    local pulseType = options.pulseType or "smooth"
    
    local runService = game:GetService("RunService")
    local timeOffset = math.random() * 10
    
    
    local originalProps = {}
    
    if object:IsA("BasePart") then
        originalProps.Material = object.Material
        originalProps.Color = object.Color
        object.Material = Enum.Material.Neon
    elseif object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
        originalProps.TextColor3 = object.TextColor3
        originalProps.TextStrokeColor3 = object.TextStrokeColor3
        originalProps.TextStrokeTransparency = object.TextStrokeTransparency
        if object.TextStrokeTransparency == 1 then
            object.TextStrokeTransparency = 0.5
        end
    elseif object:IsA("ImageLabel") or object:IsA("ImageButton") then
        originalProps.ImageColor3 = object.ImageColor3
    elseif object:IsA("Frame") then
        originalProps.BackgroundColor3 = object.BackgroundColor3
    end
    
    
    local connection
    connection = runService.Heartbeat:Connect(function(deltaTime)
        if not object or object.Parent == nil then
            connection:Disconnect()
            return
        end
        
        local time = tick() * glowSpeed + timeOffset
        local pulse = 0
        
        if pulseType == "smooth" then
            pulse = (math.sin(time) + 1) / 2
        elseif pulseType == "breathe" then
            pulse = (math.sin(time * 0.5) + 1) / 2
        elseif pulseType == "rapid" then
            pulse = (math.sin(time * 3) + 1) / 2
        end
        
        pulse = pulse * glowIntensity
        
        local glowColor = Color3.new(
            math.min(baseColor.R * (0.7 + pulse * 0.3), 1),
            math.min(baseColor.G * (0.7 + pulse * 0.3), 1),
            math.min(baseColor.B * (0.7 + pulse * 0.3), 1)
        )
        
        if object:IsA("BasePart") then
            object.Color = glowColor
        elseif object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
            object.TextColor3 = glowColor
            object.TextStrokeColor3 = glowColor
            object.TextStrokeTransparency = 0.5 - (pulse * 0.3)
        elseif object:IsA("ImageLabel") or object:IsA("ImageButton") then
            object.ImageColor3 = glowColor
        elseif object:IsA("Frame") then
            object.BackgroundColor3 = glowColor
        end
    end)
    
    
    return function()
        connection:Disconnect()
        if object and object.Parent then
            if object:IsA("BasePart") then
                object.Material = originalProps.Material
                object.Color = originalProps.Color
            elseif object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                object.TextColor3 = originalProps.TextColor3
                object.TextStrokeColor3 = originalProps.TextStrokeColor3
                object.TextStrokeTransparency = originalProps.TextStrokeTransparency
            elseif object:IsA("ImageLabel") or object:IsA("ImageButton") then
                object.ImageColor3 = originalProps.ImageColor3
            elseif object:IsA("Frame") then
                object.BackgroundColor3 = originalProps.BackgroundColor3
            end
        end
    end
end