local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "EUT Control Panel",
    Icon = 95322022164482,
    LoadingTitle = "Enjoy Exploiting!!!",
    LoadingSubtitle = "Made by Dr4x0z",
    ShowText = "Hello",
    Theme = "Default",

    ToggleUIKeybind = "P",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
})

local Tab = Window:CreateTab("Main", "rewind")

local DestoryButton = Tab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
})

local Section_Mangoes = Tab:CreateSection("Mangoes")

local waitTime_Mangoes = 0

local mangoes = Tab:CreateToggle({
    Name = "AutoCollect",
    CurrectValue = false,
    Callback = function(Value)

        if Value then
            Rayfield:Notify({
                Title = "EUT Exploit",
                Content = "Mangoes AUTO ON",
                Duration = 5,
            })
        else
            Rayfield:Notify({
                Title = "EUT Exploit",
                Content = "Mangoes AUTO OFF",
                Duration = 5,
            })
        end

        local folder = game.workspace.objects.mangotree.mangoes

        while Value do
            if #folder:GetChildren() > 0 then
                for _, m in pairs(folder:GetChildren()) do
                    if m:IsA("Part") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = m.CFrame
                    end
                end
            end
            task.wait(waitTime_Mangoes)
        end
    end,
})

local mangoes_Slider = Tab:CreateSlider({
    Name = "Wait Time",
    Range = {0, 1},
    Increment = 0.1,
    CurrectValue = 0.5,
    Callback = function(Value)
        waitTime_Mangoes = Value
    end,
})

local Section_Gamble = Tab:CreateSection("Gamble")

local waitTime_Gamble = 0

local gambling = Tab:CreateToggle({
    Name = "AutoRoll",
    CurrectValue = false,
    Callback = function(Value)

        if Value then
            Rayfield:Notify({
                Title = "EUT Exploit",
                Content = "Gambling AUTO ON",
                Duration = 5,
            })
        else
            Rayfield:Notify({
                Title = "EUT Exploit",
                Content = "Gambling AUTO OFF",
                Duration = 5,
            })
        end

        while Value do
            game.ReplicatedStorage.remotes.gamble:InvokeServer()
            task.wait(waitTime_Gamble)
        end
    end,
})

local Gamble_Slider = Tab:CreateSlider({
    Name = "Wait Time",
    Range = {0, 1},
    Increment = 0.1,
    CurrectValue = 0.5,
    Callback = function(Value)
        waitTime_Gamble = Value
    end,
})