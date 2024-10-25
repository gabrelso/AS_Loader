local player = game.Players.LocalPlayer
local vim = game:GetService("VirtualInputManager")
local TeleportService = game:GetService("TeleportService")
local _wait = task.wait

getgenv().autoV = false
getgenv().autoE = false
getgenv().autoQ = false
getgenv().destroyBlast = false

function AutoKi()
    spawn(function()
        while getgenv().autoQ do
            local energy = player.Status.Energy.Value
            local maxEnergy = player.Status.MaxEnergy.Value
            
            if energy <= 0.05 * maxEnergy then
                player.Character.Humanoid.Health = 0
            else
                vim:SendKeyEvent(true, "Q", false, game)
                vim:SendKeyEvent(false, "Q", false, game)
            end
            wait(0.1)
        end
    end)
end

local vu = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)

-- //////////// [UI SETUP] ////////////////////////

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
    Title = "Cum Hub : Dragon Blox GT",
    SubTitle = "big blek manki boi",
    SaveFolder = "cumHub-DBGT.json"
})

local Tab1 = Window:MakeTab({"Main", "home"})
local Tab2 = Window:MakeTab({"Halloween", "moon"})
local Tab3 = Window:MakeTab({"Misc", "plus"})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://89982798855448", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})

local Section = Tab1:AddSection("Strength")
Tab1:AddToggle({
    Name = "Auto Strength",
    Default = false,
    Flag = "AutoStrength",
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
    Flag = "AutoDefense",
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
    Flag = "AutoKi",
    Callback = function(ValueQ)
        getgenv().autoQ = ValueQ
        if ValueQ then
            AutoKi()
        end
    end
})

local Section5 = Tab3:AddSection("Utilities")
Tab3:AddButton({
    Name = "Reset",
    Callback = function()
        player.Character.Humanoid.Health = 0
    end
})

Tab3:AddButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end
})

Tab3:AddToggle({
    Name = "Delete Ki Blast [BOOST FPS]",
    Default = false,
    Flag = "DeleteKiBlast",
    Callback = function(ValueDK)
        getgenv().destroyBlast = ValueDK
        while getgenv().destroyBlast do
            wait(0.1)
            for _, part in pairs(workspace.PartStorage:GetChildren()) do
                part:Destroy()
            end
        end
    end
})

local Section3 = Tab2:AddSection("Halloween Event Pumpkin Locations")

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
