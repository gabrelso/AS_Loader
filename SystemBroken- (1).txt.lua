local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
    Title = "Cum Hub : Dragon Blox GT",
    SubTitle = "que bosta em",
    SaveFolder = "testando | redz lib v5.lua"
})

local Tab1 = Window:MakeTab({"Main", "home"})
local Tab2 = Window:MakeTab({"Halloween", "moon"})
local Tab3 = Window:MakeTab({"Misc", "plus"})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://18372013477", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})

local player = game.Players.LocalPlayer
local vim = game:GetService("VirtualInputManager")
local energy = player.Status.Energy.Value
local TeleportService = game:GetService("TeleportService")

getgenv().autoV = false
getgenv().autoE = false
getgenv().autoQ = false
getgenv().shaders = false

local Section = Tab1:AddSection("Strength")
Tab1:AddToggle({
    Name = "Auto Strength",
    Default = false,
    Callback = function(ValueE)
        getgenv().autoE = ValueE
        if ValueE then
            while getgenv().autoE do
                wait(0.1)
                vim:SendKeyEvent(true, "E", false, game)
                vim:SendKeyEvent(false, "E", false, game)
            end
        end
    end
})

local Section1 = Tab1:AddSection("Defense")
Tab1:AddToggle({
    Name = "Auto Defense",
    Default = false,
    Callback = function(ValueV)
        getgenv().autoV = ValueV
        if ValueV then
            while getgenv().autoV do
                wait(0.1)
                vim:SendKeyEvent(true, "V", false, game)
                vim:SendKeyEvent(false, "V", false, game)
            end
        end
    end
})

local Section2 = Tab1:AddSection("Ki / Energy")
Tab1:AddToggle({
    Name = "Auto Ki",
    Default = false,
    Callback = function(ValueQ)
        getgenv().autoQ = ValueQ
        if ValueQ then
            AutoKi()
        end
    end
})

local Section4 = Tab3:AddSection("Themes / Shaders")
Tab3:AddToggle({
    Name = "Shaders",
    Default = false,
    Callback = function(ValueS)
        getgenv().shaders = ValueS
        if ValueS then
            ToggleShaders()
        end
    end
})

Tab3:AddButton({
    Name = "Reset",
    Callback = function()
        player.Character.Humanoid.Health = 0
    end
})

Tab3:AddButton({
    Name = "Rejoin Server",
    Callback = function()
        TeleportService:TeleportToPlaceInstance(game.PlaceId, player.JobId)
    end
})


Tab3:AddButton({ Name = "Dark Theme", Callback = function() redzlib:SetTheme("Dark") end })
Tab3:AddButton({ Name = "Darker Theme", Callback = function() redzlib:SetTheme("Darker") end })
Tab3:AddButton({ Name = "Dark Purple", Callback = function() redzlib:SetTheme("Purple") end })

local Section3 = Tab2:AddSection("Halloween Event Pumpkin Locations")

-- Teleport buttons for pumpkin locations
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 1", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(2330.640869140625, 550.7536010742188, -1724.03173828125) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 2", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(1402.6492919921875, 552.6553344726562, 1864.331298828125) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 3", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-287.9718322753906, 551.8124389648438, -369.174072265625) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 4", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(206.6642303466797, 550.7536010742188, -1967.5059814453125) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 5", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(776.6201782226562, 550.7536010742188, -1586.50634765625) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 6", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(2678.873291015625, 550.7536010742188, -994.9588623046875) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 7", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(2588.227294921875, 564.5017700195312, -4670.9208984375) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 8", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-242.6627197265625, 3360.113525390625, -2763.47265625) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 9", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-522.2780151367188, 645.3949584960938, -2774.021484375) 
    end 
})
Tab2:AddButton({ 
    Name = "TP Pumpkin Location 10", 
    Callback = function() 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(417.4867248535156, 549.7522583007812, -3276.27490234375) 
    end 
})
Tab2:AddButton({
    Name = "TP All Pumpkin Locations",
    Callback = function()
        local locations = {
            CFrame.new(2330.640869140625, 550.7536010742188, -1724.03173828125),
            CFrame.new(1402.6492919921875, 552.6553344726562, 1864.331298828125),
            CFrame.new(-287.9718322753906, 551.8124389648438, -369.174072265625),
            CFrame.new(206.6642303466797, 550.7536010742188, -1967.5059814453125),
            CFrame.new(776.6201782226562, 550.7536010742188, -1586.50634765625),
            CFrame.new(2678.873291015625, 550.7536010742188, -994.9588623046875),
            CFrame.new(2588.227294921875, 564.5017700195312, -4670.9208984375),
            CFrame.new(-242.6627197265625, 3360.113525390625, -2763.47265625),
            CFrame.new(-522.2780151367188, 645.3949584960938, -2774.021484375),
            CFrame.new(417.4867248535156, 549.7522583007812, -3276.27490234375)
        }
        for _, loc in pairs(locations) do
            player.Character.HumanoidRootPart.CFrame = loc
            wait(2)
        end
    end
})

function AutoKi()
    spawn(function()
        while getgenv().autoQ do
            vim:SendKeyEvent(true, "Q", false, game)
            vim:SendKeyEvent(false, "Q", false, game)
            if energy <= 0.05 * player.Status.MaxEnergy.Value then
                player.Character.Humanoid.Health = 0
            end
            wait(0.1)
        end
    end)
end

function ToggleShaders()
    if getgenv().shaders then
        local Sky = Instance.new("Sky")
        local Bloom = Instance.new("BloomEffect")
        local Blur = Instance.new("BlurEffect")
        local ColorC = Instance.new("ColorCorrectionEffect")
        local SunRays = Instance.new("SunRaysEffect")
        
        -- Correct access to Lighting service
        local Lighting = game:GetService("Lighting")
        
        Lighting.Brightness = 2.25
        Lighting.ExposureCompensation = 0.1
        Lighting.ClockTime = 17.55
        
        Sky.SkyboxBk = "http://www.roblox.com/asset/?id=..." -- Provide actual asset IDs
        Sky.SkyboxDn = "http://www.roblox.com/asset/?id=..." -- Provide actual asset IDs
        Sky.SkyboxFt = "http://www.roblox.com/asset/?id=..."
        Sky.SkyboxLf = "http://www.roblox.com/asset/?id=..."
        Sky.SkyboxRt = "http://www.roblox.com/asset/?id=..."
        Sky.SkyboxUp = "http://www.roblox.com/asset/?id=..."
        Sky.Parent = Lighting
        
        Bloom.Intensity = 0.1
        Bloom.Threshold = 0
        Bloom.Size = 100
        Bloom.Parent = Lighting
        
        Blur.Size = 2
        Blur.Parent = Lighting
        
        ColorC.Saturation = 0.05
        ColorC.Contrast = 0.1
        ColorC.Brightness = 0.1
        ColorC.TintColor = Color3.fromRGB(255, 224, 219)
        ColorC.Parent = Lighting
        
        SunRays.Intensity = 0.05
        SunRays.Spread = 1
        SunRays.Parent = Lighting
    else
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("Sky") or v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
                v:Destroy()
            end
        end
        
        local Lighting = game:GetService("Lighting")
        if Lighting then
            Lighting.Brightness = 1
            Lighting.ExposureCompensation = 0
            Lighting.ClockTime = 12 -- Reset to noon
        end
    end
end

local vu = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)
