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

local Section = Tab:CreateSection("Section Example")

local _DestoryButton = Tab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
})

local Section2 = Tab:CreateSection("Section Example 2")