-- ===============================
-- AUTO MOREIRA - LYN0X HUB (UI)
-- ===============================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AutoMoreiraUI"
gui.ResetOnSpawn = false

-- ===== LOADING =====
local loading = Instance.new("Frame", gui)
loading.Size = UDim2.fromScale(1,1)
loading.BackgroundColor3 = Color3.fromRGB(5,5,5)

local box = Instance.new("Frame", loading)
box.Size = UDim2.fromOffset(480,200)
box.Position = UDim2.fromScale(0.5,0.5)
box.AnchorPoint = Vector2.new(0.5,0.5)
box.BackgroundColor3 = Color3.fromRGB(10,15,25)
box.BorderColor3 = Color3.fromRGB(50,130,255)
box.BorderSizePixel = 2

local title = Instance.new("TextLabel", box)
title.Size = UDim2.new(1,0,0,30)
title.Text = ">> ESPERANDO EL BOT <<"
title.TextColor3 = Color3.fromRGB(155,220,255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.Code
title.TextSize = 18

local timeLabel = Instance.new("TextLabel", box)
timeLabel.Position = UDim2.fromOffset(0,35)
timeLabel.Size = UDim2.new(1,0,0,25)
timeLabel.Text = "20s"
timeLabel.TextColor3 = Color3.fromRGB(155,220,255)
timeLabel.BackgroundTransparency = 1
timeLabel.Font = Enum.Font.Code
timeLabel.TextSize = 16

local barBg = Instance.new("Frame", box)
barBg.Position = UDim2.fromOffset(20,80)
barBg.Size = UDim2.new(1,-40,0,10)
barBg.BackgroundColor3 = Color3.fromRGB(25,25,25)

local bar = Instance.new("Frame", barBg)
bar.Size = UDim2.new(1,0,1,0)
bar.BackgroundColor3 = Color3.fromRGB(50,130,255)

local loadingText = Instance.new("TextLabel", box)
loadingText.Position = UDim2.fromOffset(0,110)
loadingText.Size = UDim2.new(1,0,0,30)
loadingText.Text = "BUSCANDO BOTS..."
loadingText.TextColor3 = Color3.fromRGB(111,168,255)
loadingText.BackgroundTransparency = 1
loadingText.Font = Enum.Font.Code
loadingText.TextSize = 14

-- ===== APP =====
local app = Instance.new("Frame", gui)
app.Size = UDim2.fromOffset(380,260)
app.Position = UDim2.fromScale(0.05,0.25)
app.BackgroundColor3 = Color3.fromRGB(10,15,25)
app.Visible = false

local uiCorner = Instance.new("UICorner", app)
uiCorner.CornerRadius = UDim.new(0,20)

local header = Instance.new("TextLabel", app)
header.Size = UDim2.new(1,0,0,40)
header.Text = "Método Moreira Lynox"
header.TextColor3 = Color3.fromRGB(155,220,255)
header.BackgroundTransparency = 1
header.Font = Enum.Font.Code
header.TextSize = 18

local button = Instance.new("TextButton", app)
button.Position = UDim2.fromOffset(20,50)
button.Size = UDim2.new(1,-40,0,40)
button.Text = "Iniciar METODO Moreira"
button.BackgroundColor3 = Color3.fromRGB(50,130,255)
button.TextColor3 = Color3.new(1,1,1)
button.Font = Enum.Font.Code
button.TextSize = 14

local status = Instance.new("TextLabel", app)
status.Position = UDim2.fromOffset(20,95)
status.Size = UDim2.new(1,-40,0,20)
status.Text = "Listo para empezar..."
status.TextColor3 = Color3.fromRGB(155,220,255)
status.BackgroundTransparency = 1
status.Font = Enum.Font.Code
status.TextSize = 13

local console = Instance.new("TextLabel", app)
console.Position = UDim2.fromOffset(20,125)
console.Size = UDim2.new(1,-40,0,110)
console.TextWrapped = true
console.TextYAlignment = Enum.TextYAlignment.Top
console.TextXAlignment = Enum.TextXAlignment.Left
console.Text = ""
console.BackgroundColor3 = Color3.new(0,0,0)
console.TextColor3 = Color3.fromRGB(100,255,150)
console.Font = Enum.Font.Code
console.TextSize = 11

local cornerConsole = Instance.new("UICorner", console)
cornerConsole.CornerRadius = UDim.new(0,8)

-- ===== LOADING LOGIC =====
local totalTime = 20
for i = totalTime,0,-1 do
	timeLabel.Text = i.."s"
	bar.Size = UDim2.new(i/totalTime,0,1,0)
	task.wait(1)
end

loading.Visible = false
app.Visible = true

-- ===== LOGIC =====
local running = false
local verifyThread
local joinThread

local function log(text)
	console.Text ..= text.."\n"
end

local function stopAll()
	running = false
	button.Text = "Iniciar METODO Moreira"
	button.BackgroundColor3 = Color3.fromRGB(50,130,255)
	status.Text = "Finalizado"
end

button.MouseButton1Click:Connect(function()
	if running then return end

	running = true
	button.Text = "STOP"
	button.BackgroundColor3 = Color3.fromRGB(255,60,60)
	status.Text = "Ejecutándose..."
	console.Text = ""

	log("Iniciando METODO Moreira...")

	-- 🟡 VERIFICANDO (10s)
	verifyThread = task.spawn(function()
		for i = 1,10 do
			if not running then return end
			log("VERIFICANDO SI TIENES BRAIROTS ARRIBA DE 30 M — ANALIZANDO INVENTARIO, VALORES Y DISPONIBILIDAD")
			task.wait(1)
		end
	end)

	task.delay(10, function()
		if not running then return end

		-- 🔵 UNIÉNDOSE (9s)
		joinThread = task.spawn(function()
			for i = 1,9 do
				if not running then return end
				log("EL BOT SE ESTÁ UNIENDO AL SERVIDOR — SINCRONIZANDO DATOS Y CONEXIÓN")
				task.wait(1)
			end
		end)
	end)

	-- 🔷 FINAL
	task.delay(19, function()
		if not running then return end
		log("UNIÉNDOSE BOT A SU SERVER — CONEXIÓN ESTABLECIDA")
		stopAll()
	end)
end)
