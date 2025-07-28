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
Panel.Position = UDim2.new(0, 100, 0.5, -100)
Panel.Size = UDim2.new(0, 350, 0, 320)
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

crearBoton("🚔 Jailbreak", juegos, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular"))()
end)

-- Botones de utilidades
y = 10
crearBoton("⚙️ Infinity Yield", utilidades, y, function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-TOUCH-FLING-ULTRA-POWER-30194"))()
end) y += 35

crearBoton("🕊️ Volar (Fly)", utilidades, y, function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
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

-- Mostrar/Ocultar panel con clic al ícono
local abierto = false
ImageButton.MouseButton1Click:Connect(function()
	abierto = not abierto
	Panel.Visible = abierto
end)
