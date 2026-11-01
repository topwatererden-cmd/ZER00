-- ZERO | DMVS Community Edition
-- No key system
-- Legitimate local UI only; does not unlock server-side skins.

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "ZERO"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(260, 220)
frame.Position = UDim2.new(0.5, -130, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
frame.BorderSizePixel = 0
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
title.Text = "ZERO | DMVS"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

local info = Instance.new("TextLabel")
info.Position = UDim2.fromOffset(10, 60)
info.Size = UDim2.new(1, -20, 0, 80)
info.BackgroundTransparency = 1
info.TextColor3 = Color3.new(1, 1, 1)
info.Text = "ZERO loaded successfully!\nLocal UI demo only."
info.TextWrapped = true
info.TextScaled = true
info.Font = Enum.Font.Gotham
info.Parent = frame

local close = Instance.new("TextButton")
close.Position = UDim2.new(0, 10, 1, -45)
close.Size = UDim2.new(1, -20, 0, 35)
close.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
close.TextColor3 = Color3.new(1, 1, 1)
close.Text = "CLOSE"
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.Parent = frame

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
