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
            task.wait(1)
        end
    end,
})