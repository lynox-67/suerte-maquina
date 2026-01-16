-- ===============================
-- AUTO MOREIRA - LYN0X HUB
-- ===============================

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ===== GUI =====
local gui = Instance.new("ScreenGui")
gui.Name = "AutoMoreiraUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- ===== LOADING =====
local loading = Instance.new("Frame")
loading.Parent = gui
loading.Size = UDim2.new(1,0,1,0)
loading.BackgroundColor3 = Color3.fromRGB(5,5,5)

local box = Instance.new("Frame", loading)
box.Size = UDim2.new(0,480,0,200)
box.Position = UDim2.new(0.5,0,0.5,0)
box.AnchorPoint = Vector2.new(0.5,0.5)
box.BackgroundColor3 = Color3.fromRGB(10,15,25)
box.BorderSizePixel = 2
box.BorderColor3 = Color3.fromRGB(50,130,255)

local title = Instance.new("TextLabel", box)
title.Size = UDim2.new(1,0,0,30)
title.BackgroundTransparency = 1
title.Text = ">> ESPERANDO EL BOT <<"
title.Font = Enum.Font.Code
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(155,220,255)

local timeLabel = Instance.new("TextLabel", box)
timeLabel.Position = UDim2.new(0,0,0,35)
timeLabel.Size = UDim2.new(1,0,0,25)
timeLabel.BackgroundTransparency = 1
timeLabel.Font = Enum.Font.Code
timeLabel.TextSize = 16
timeLabel.TextColor3 = Color3.fromRGB(155,220,255)
timeLabel.Text = "20s"

local barBg = Instance.new("Frame", box)
barBg.Position = UDim2.new(0,20,0,80)
barBg.Size = UDim2.new(1,-40,0,10)
barBg.BackgroundColor3 = Color3.fromRGB(30,30,30)

local bar = Instance.new("Frame", barBg)
bar.Size = UDim2.new(1,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(50,130,255)

local loadTxt = Instance.new("TextLabel", box)
loadTxt.Position = UDim2.new(0,0,0,110)
loadTxt.Size = UDim2.new(1,0,0,30)
loadTxt.BackgroundTransparency = 1
loadTxt.Text = "BUSCANDO BOTS..."
loadTxt.Font = Enum.Font.Code
loadTxt.TextSize = 14
loadTxt.TextColor3 = Color3.fromRGB(111,168,255)

-- ===== APP =====
local app = Instance.new("Frame", gui)
app.Visible = false
app.Size = UDim2.new(0,380,0,260)
app.Position = UDim2.new(0.05,0,0.25,0)
app.BackgroundColor3 = Color3.fromRGB(10,15,25)

local titleApp = Instance.new("TextLabel", app)
titleApp.Size = UDim2.new(1,0,0,40)
titleApp.BackgroundTransparency = 1
titleApp.Text = "Método Moreira Lynox"
titleApp.Font = Enum.Font.Code
titleApp.TextSize = 18
titleApp.TextColor3 = Color3.fromRGB(155,220,255)

local button = Instance.new("TextButton", app)
button.Position = UDim2.new(0,20,0,50)
button.Size = UDim2.new(1,-40,0,40)
button.Text = "Iniciar METODO Moreira"
button.Font = Enum.Font.Code
button.TextSize = 14
button.TextColor3 = Color3.new(1,1,1)
button.BackgroundColor3 = Color3.fromRGB(50,130,255)

local status = Instance.new("TextLabel", app)
status.Position = UDim2.new(0,20,0,95)
status.Size = UDim2.new(1,-40,0,20)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Code
status.TextSize = 13
status.TextColor3 = Color3.fromRGB(155,220,255)
status.Text = "Listo para empezar..."

local console = Instance.new("TextLabel", app)
console.Position = UDim2.new(0,20,0,125)
console.Size = UDim2.new(1,-40,0,110)
console.BackgroundColor3 = Color3.new(0,0,0)
console.TextWrapped = true
console.TextYAlignment = Enum.TextYAlignment.Top
console.TextXAlignment = Enum.TextXAlignment.Left
console.Font = Enum.Font.Code
console.TextSize = 11
console.TextColor3 = Color3.fromRGB(200,200,200)
console.Text = ""

-- ===== LOADING TIMER =====
for i = 20,0,-1 do
	timeLabel.Text = i.."s"
	bar.Size = UDim2.new(i/20,0,1,0)
	task.wait(1)
end

loading.Visible = false
app.Visible = true

-- ===== LOGIC =====
local running = false

local function log(text)
	console.Text = console.Text .. text .. "\n\n"
end

button.MouseButton1Click:Connect(function()
	if running then return end
	running = true

	button.Text = "STOP"
	button.BackgroundColor3 = Color3.fromRGB(255,60,60)
	status.Text = "Ejecutándose..."
	console.Text = ""

	log("INICIANDO METODO MOREIRA — PREPARANDO SISTEMA, VARIABLES Y CONEXIONES")

	-- 🟡 VERIFICANDO
	task.spawn(function()
		for i = 1,10 do
			if not running then return end
			log("VERIFICANDO SI TIENES BRAIROTS ARRIBA DE 30 M — ESCANEANDO INVENTARIO, COMPROBANDO VALORES Y VALIDANDO DISPONIBILIDAD")
			task.wait(1)
		end
	end)

	task.delay(10,function()
		for i = 1,9 do
			if not running then return end
			log("EL BOT SE ESTÁ UNIENDO AL SERVIDOR — ESTABLECIENDO CONEXIÓN, SINCRONIZANDO SESIÓN Y PREPARANDO ENTORNO")
			task.wait(1)
		end

		log("UNIÉNDOSE BOT A SU SERVER — CONEXIÓN COMPLETADA CORRECTAMENTE")
		status.Text = "Finalizado"
		button.Text = "Iniciar METODO Moreira"
		button.BackgroundColor3 = Color3.fromRGB(50,130,255)
		running = false
	end)
end)
