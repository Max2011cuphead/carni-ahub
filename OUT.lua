-- LocalScript para criar e gerenciar o botão OUT
-- Coloque este script em StarterPlayer > StarterPlayerScripts ou StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Criar a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExitGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Criar o botão OUT
local button = Instance.new("TextButton")
button.Name = "OUT"
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0.5, -75, 0.9, -25) -- Centro inferior da tela
button.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
button.BorderSizePixel = 2
button.BorderColor3 = Color3.fromRGB(150, 30, 30)
button.Text = "OUT"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 24
button.Font = Enum.Font.GothamBold
button.Parent = screenGui

-- Adicionar cantos arredondados (opcional)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = button

-- Função que será executada quando o botão for clicado
local function onButtonClick()
    print("Jogador saindo da experiência...")
    player:Kick("Você saiu da experiência.")
end

-- Conecta a função ao evento de clique do botão
button.MouseButton1Click:Connect(onButtonClick)

-- Feedback visual ao passar o mouse
button.MouseEnter:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
end)

button.MouseLeave:Connect(function()
    button.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
end)