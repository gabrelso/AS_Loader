local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
    Title = "Cum Hub : Dragon Blox GT",
    SubTitle = "que bosta em",
    SaveFolder = "testando | redz lib v5.lua"
})

local Tab1 = Window:MakeTab({"Main", "home"})
local Tab2 = Window:MakeTab({"Halloween", "moon"})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://18372013477", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 6) }
})

local vim = game:GetService("VirtualInputManager")
getgenv().autoV = false
getgenv().autoE = false
getgenv().autoC = false
getgenv().autoQ = false

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

Tab1:AddToggle({
    Name = "Auto Ki + Energy",
    Default = false,
    Callback = function(Value)
        getgenv().autoQ = Value
        getgenv().autoC = Value
        if Value then
            AutoKiEnergy()
        end
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 1",
    Description = "Teleport to Pumpkin Location 1.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2330.640869140625, 550.7536010742188, -1724.03173828125)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 2",
    Description = "Teleport to Pumpkin Location 2.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1402.6492919921875, 552.6553344726562, 1864.331298828125)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 3",
    Description = "Teleport to Pumpkin Location 3.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-287.9718322753906, 551.8124389648438, -369.174072265625)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 4",
    Description = "Teleport to Pumpkin Location 4.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(206.6642303466797, 550.7536010742188, -1967.5059814453125)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 5",
    Description = "Teleport to Pumpkin Location 5.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(776.6201782226562, 550.7536010742188, -1586.50634765625)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 6",
    Description = "Teleport to Pumpkin Location 6.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2678.873291015625, 550.7536010742188, -994.9588623046875)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 7",
    Description = "Teleport to Pumpkin Location 7.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2588.227294921875, 564.5017700195312, -4670.9208984375)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 8",
    Description = "Teleport to Pumpkin Location 8.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-242.6627197265625, 3360.113525390625, -2763.47265625)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 9",
    Description = "Teleport to Pumpkin Location 9.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-522.2780151367188, 645.3949584960938, -2774.021484375)
    end
})

Tab2:AddButton({
    Name = "TP Pumpkin 10",
    Description = "Teleport to Pumpkin Location 10.",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(417.4867248535156, 549.7522583007812, -3276.27490234375)
    end
})

function AutoKiEnergy()
    spawn(function()
        while getgenv().autoQ do
            local energy = game.Players.LocalPlayer.Status.Energy.Value
            local maxEnergy = game.Players.LocalPlayer.Status.MaxEnergy.Value
            local energyThreshold = maxEnergy * 0.05

            vim:SendKeyEvent(true, "Q", false, game)
            vim:SendKeyEvent(false, "Q", false, game)

            if energy <= energyThreshold then
                vim:SendKeyEvent(true, "C", false, game)
                task.wait(7.95)
                vim:SendKeyEvent(false, "C", false, game)
            end

            wait(0.1)
        end
    end)
end
