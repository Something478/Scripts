local CoreGui = game:GetService("CoreGui")

local whitelistedContainers = {
    ["RobloxGui"] = true,
    ["PlayerList"] = true,
    ["ExperienceChat"] = true,
    ["BubbleChat"] = true,
    ["DevConsole"] = true,
    ["SocialService"] = true,
    ["PerformanceStats"] = true,
    ["ScreenShotTool"] = true,
    ["EmotesMenu"] = true,
    ["CallDialogScreen"] = true,
    ["CaptureManager"] = true,
    ["CaptureOverlay"] = true,
    ["Composer"] = true,
    ["ContactList"] = true,
    ["Chat"] = true,
    ["HeadsetDisconnectedDialog"] = true,
    ["InExperienceInterventionApp"] = true,
    ["PlayerMenuScreen"] = true,
    ["PurchasePromptApp"] = true,
    ["RobloxPromptGui"] = true,
    ["ScreenshotsCarousel"] = true,
    ["TeleportEffectGui"] = true
}

local function getTopLevelContainer(object)
    local current = object
    while current.Parent and current.Parent ~= CoreGui and current.Parent ~= game do
        current = current.Parent
    end
    return current
end

local function isJumbled(name)
    if string.match(name, "[^%w%s%-%.]") then
        return true
    end
    
    if #name > 30 then
        return true
    end
    
    return false
end

local function scanCoreGuiAndDestroy()
    print("--- Starting CoreGui Security Scan ---")
    local destroyedCount = 0
    local descendants = CoreGui:GetDescendants()
    
    for _, object in ipairs(descendants) do
        local name = object.Name
        local topContainer = getTopLevelContainer(object)
        
        if topContainer and whitelistedContainers[topContainer.Name] then
            continue
        end
        
        if isJumbled(name) then
            print(string.format(
                "Removing suspicious object: '%s' (Class: %s)",
                name,
                object.ClassName
            ))
            
            object:Destroy()
            destroyedCount = destroyedCount + 1
        end
    end
    
    if destroyedCount > 0 then
        print(string.format("--- Scan Complete: Removed %d suspicious objects ---", destroyedCount))
    else
        print("--- Scan Complete: No suspicious objects found ---")
    end
end

scanCoreGuiAndDestroy()