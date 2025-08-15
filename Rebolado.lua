-- Carrega a RedzLib (troque o link se tiver a URL da v3)
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

-- Cria a janela principal
local Window = redzlib:MakeWindow({
    Title = "💃 Rebolado Hub",
    SubTitle = "Brookhaven Edition",
    SaveFolder = "ReboladoHub.lua"
})

-- 🎯 Aba Principal
local MainTab = Window:MakeTab({"Principal", "home"})

MainTab:AddButton({
    "🏖 Ir para a Casa da Praia",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1111, 15, -805) 
    end
})

MainTab:AddButton({
    "🛍 Ir para o Shopping",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 15, -493)
    end
})

MainTab:AddButton({
    "🏫 Ir para a Escola",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(460, 15, -70)
    end
})

-- 🤹 Aba de Diversão
local FunTab = Window:MakeTab({"Diversão", "smile"})

FunTab:AddButton({
    "⚡ Ativar Modo Velocidade",
    function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    end
})

FunTab:AddButton({
    "🦘 Ativar Super Pulo",
    function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
    end
})

FunTab:AddButton({
    "♻ Resetar Velocidade/Pulo",
    function()
        local humanoid = game.Players.LocalPlayer.Character.Humanoid
        humanoid.WalkSpeed = 16
        humanoid.JumpPower = 50
    end
})

-- ⚙ Aba de Configuração
local SettingsTab = Window:MakeTab({"Configuração", "gear"})

SettingsTab:AddButton({
    "🌙 Tema Escuro",
    function()
        redzlib:SetTheme("Dark")
    end
})

SettingsTab:AddButton({
    "☀ Tema Claro",
    function()
        redzlib:SetTheme("Light")
    end
})
