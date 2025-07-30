-- Ícono flotante (original)
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "IconoFlotante"

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0, 20, 0.5, -25)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://120008128829681"
ImageButton.Name = "BotonPrincipal"
ImageButton.Active = true
ImageButton.Draggable = true

-- Panel principal
local Panel = Instance.new("Frame")
Panel.Name = "PanelFlotante"
Panel.Parent = ScreenGui
Panel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Panel.BackgroundTransparency = 0.3
spawn(function()
	while true do
		for hue = 0, 1, 0.01 do
			Panel.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
			wait(0.05)
		end
	end
end)

Panel.Position = UDim2.new(0, 100, 0.5, -100)
Panel.Size = UDim2.new(0, 510, 0, 400)
Panel.Visible = false
Panel.Active = true
Panel.Draggable = true
Panel.BorderSizePixel = 0

Instance.new("UICorner", Panel).CornerRadius = UDim.new(0, 12)

local Titulo = Instance.new("TextLabel")
Titulo.Parent = Panel
Titulo.Size = UDim2.new(1, 0, 0, 40)
Titulo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Titulo.Text = "⚓ XRNL Hub - By Sebastian"
Titulo.TextColor3 = Color3.fromRGB(255, 255, 255)
Titulo.Font = Enum.Font.GothamBold
Titulo.TextSize = 18
Titulo.TextXAlignment = Enum.TextXAlignment.Left
Titulo.TextYAlignment = Enum.TextYAlignment.Center

Instance.new("UICorner", Titulo).CornerRadius = UDim.new(0, 12)

local contenido = Instance.new("Frame")
contenido.Parent = Panel
contenido.Position = UDim2.new(0, 0, 0, 40)
contenido.Size = UDim2.new(1, 0, 1, -40)
contenido.BackgroundTransparency = 1

-- Función para crear botones
local function crearBoton(texto, parent, posicionY, callback)
	local boton = Instance.new("TextButton")
	boton.Parent = parent
	boton.Size = UDim2.new(1, -20, 0, 30)
	boton.Position = UDim2.new(0, 10, 0, posicionY)
	boton.Text = texto
	boton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	boton.TextColor3 = Color3.fromRGB(255, 255, 255)
	boton.Font = Enum.Font.Gotham
	boton.TextSize = 14
	boton.AutoButtonColor = true
	boton.BorderSizePixel = 0
	Instance.new("UICorner", boton).CornerRadius = UDim.new(0, 6)
	boton.MouseButton1Click:Connect(callback)
	return boton
end

-- Secciones
local juegos = Instance.new("Frame")
juegos.Parent = contenido
juegos.Size = UDim2.new(1, 0, 1, 0)
juegos.BackgroundTransparency = 1

local utilidades = Instance.new("Frame")
utilidades.Parent = contenido
utilidades.Size = UDim2.new(1, 0, 1, 0)
utilidades.BackgroundTransparency = 1
utilidades.Visible = false

local creditos = Instance.new("Frame")
creditos.Parent = contenido
creditos.Size = UDim2.new(1, 0, 1, 0)
creditos.BackgroundTransparency = 1
creditos.Visible = false

local otros = Instance.new("Frame")
otros.Parent = contenido
otros.Size = UDim2.new(1, 0, 1, 0)
otros.BackgroundTransparency = 1
otros.Visible = false

local mine = Instance.new("Frame")
mine.Parent = contenido
mine.Size = UDim2.new(1, 0, 1, 0)
mine.BackgroundTransparency = 1
mine.Visible = false

-- Botones de juegos populares
local y = 10
crearBoton("🧠 Roba un brainlot", juegos, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DynaFetchy/Scripts/refs/heads/main/Loader.lua"))()
end) y += 35

crearBoton("🦑 Squid Game", juegos, y, function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/HIDE-AND-SEEK-Ink-Game-Ringta-Keyless-Script-44688"))()
end) y += 35

crearBoton("🍍 Blox Fruits", juegos, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))()
end) y += 35

crearBoton("🚂 Rieles Muertos", juegos, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DeadRails", true))()
end) y += 35

crearBoton("🚔 Jailbreak", juegos, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular"))()
end)

-- Botones de utilidades
y = 10
crearBoton("⚙️ Infinity Yield", utilidades, y, function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-TOUCH-FLING-ULTRA-POWER-30194"))()
end) y += 35

crearBoton("💀 Ghost (hub)", utilidades, y, function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end) y += 35

crearBoton("🕊️ Volar (Fly)", utilidades, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end) y += 35

-- Teleport a jugador (prompt para ingresar nombre)
createButton("📍 Teleport a jugador", function()
    local plrName = game:GetService("Players"):GetPlayers()[1] and game:GetService("Players"):GetPlayers()[1].Name or ""
    local inputGui = Instance.new("ScreenGui", game.CoreGui)
    inputGui.Name = "TPInputGui"

    local inputFrame = Instance.new("Frame", inputGui)
    inputFrame.Size = UDim2.new(0, 300, 0, 120)
    inputFrame.Position = UDim2.new(0.5, -150, 0.5, -60)
    inputFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    inputFrame.BorderSizePixel = 0
    inputFrame.Active = true
    inputFrame.Draggable = true
    local corner = Instance.new("UICorner", inputFrame)
    corner.CornerRadius = UDim.new(0, 10)

    local textLabel = Instance.new("TextLabel", inputFrame)
    textLabel.Size = UDim2.new(1, -20, 0, 30)
    textLabel.Position = UDim2.new(0, 10, 0, 10)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1,1,1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 18
    textLabel.Text = "Ingresa el nombre del jugador"

    local textBox = Instance.new("TextBox", inputFrame)
    textBox.Size = UDim2.new(1, -20, 0, 30)
    textBox.Position = UDim2.new(0, 10, 0, 50)
    textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    textBox.TextColor3 = Color3.new(1,1,1)
    textBox.Font = Enum.Font.Gotham
    textBox.TextSize = 18
    textBox.Text = ""

    local tpButton = Instance.new("TextButton", inputFrame)
    tpButton.Size = UDim2.new(0.5, -15, 0, 30)
    tpButton.Position = UDim2.new(0, 10, 0, 90)
    tpButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
    tpButton.TextColor3 = Color3.new(1,1,1)
    tpButton.Font = Enum.Font.GothamBold
    tpButton.TextSize = 18
    tpButton.Text = "Teleport"

    local cancelButton = Instance.new("TextButton", inputFrame)
    cancelButton.Size = UDim2.new(0.5, -15, 0, 30)
    cancelButton.Position = UDim2.new(0.5, 5, 0, 90)
    cancelButton.BackgroundColor3 = Color3.fromRGB(180, 70, 70)
    cancelButton.TextColor3 = Color3.new(1,1,1)
    cancelButton.Font = Enum.Font.GothamBold
    cancelButton.TextSize = 18
    cancelButton.Text = "Cancelar"

    tpButton.MouseButton1Click:Connect(function()
        local targetName = textBox.Text
        local targetPlayer = Players:FindFirstChild(targetName)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
            end
        end
        inputGui:Destroy()
    end)

    cancelButton.MouseButton1Click:Connect(function()
        inputGui:Destroy()
    end)
end)

-- Créditos
local textoCred = Instance.new("TextLabel", creditos)
textoCred.Size = UDim2.new(1, -20, 0, 60)
textoCred.Position = UDim2.new(0, 10, 0, 20)
textoCred.BackgroundTransparency = 1
textoCred.TextColor3 = Color3.fromRGB(255, 255, 255)
textoCred.Text = "🎉 Gracias por usar XRNL Hub\nRedes sociales:"
textoCred.Font = Enum.Font.GothamBold
textoCred.TextSize = 15
textoCred.TextWrapped = true

crearBoton("🎵 TikTok: @christ_sebast_7d", creditos, 100, function()
	setclipboard("https://www.tiktok.com/@christ_sebast_7d")
end)

crearBoton("📸 Instagram: @Roseb_astian", creditos, 140, function()
	setclipboard("https://www.instagram.com/roseb_astian/")
end)

crearBoton("🔥 Kill Aura", otros, y, function()
    loadstring(game:HttpGet("https://pastebin.com/raw/aYZSFAGB", true))()
end)
y = y + 35

crearBoton("👁️ ESP PLAYERS", otros, y, function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/wa0101/Roblox-ESP/refs/heads/main/esp.lua", true))()
end)

crearBoton("Prueba", mine, y, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TU-USUARIO/TU-REPO/main/combate.lua"))()
end)


-- Botones de navegación entre secciones
local nav = Instance.new("Frame")
nav.Parent = Panel
nav.Size = UDim2.new(0, 350, 0, 30)
nav.Position = UDim2.new(0, 0, 1, -30)
nav.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Instance.new("UICorner", nav).CornerRadius = UDim.new(0, 0)

local function cambiarSeccion(seccion)
	juegos.Visible = seccion == "juegos"
	utilidades.Visible = seccion == "utilidades"
	creditos.Visible = seccion == "creditos"
	otros.Visible = seccion == "otros"
	mine.Visible = seccion == "mine"
end

local function navBoton(nombre, x, seccion)
	local b = Instance.new("TextButton")
	b.Parent = nav
	b.Size = UDim2.new(0, 100, 1, 0)
	b.Position = UDim2.new(0, x, 0, 0)
	b.Text = nombre
	b.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	b.TextColor3 = Color3.fromRGB(255, 255, 255)
	b.Font = Enum.Font.Gotham
	b.TextSize = 14
	b.MouseButton1Click:Connect(function()
		cambiarSeccion(seccion)
	end)
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
end

navBoton("🎮 Juegos", 5, "juegos")
navBoton("🛠️ Utilidades", 115, "utilidades")
navBoton("💬 Créditos", 225, "creditos")
navBoton("❓ Otros..", 5 + 3*110, "otros") -- posición automática hacia la derecha
navBoton("🗣️ mine", 5 + 3*120, "mine") -- posición automática hacia la derecha

-- Mostrar/Ocultar panel con clic al ícono
local abierto = false
ImageButton.MouseButton1Click:Connect(function()
	abierto = not abierto
	Panel.Visible = abierto
end)
