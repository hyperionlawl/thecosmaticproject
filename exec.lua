--[[
 ██████╗ ██████╗ ███████╗███╗   ███╗ ██████╗
██╔════╝██╔═══██╗██╔════╝████╗ ████║██╔═══██╗
██║     ██║   ██║███████╗██╔████╔██║██║   ██║
██║     ██║   ██║╚════██║██║╚██╔╝██║██║   ██║
╚██████╗╚██████╔╝███████║██║ ╚═╝ ██║╚██████╔╝
 ╚═════╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝ ╚═════╝
We unparallelled.
]]
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = true

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local CosmoTextFrame = Instance.new("Frame")
CosmoTextFrame.Size = UDim2.new(0.3, 0, 0.1, 0)
CosmoTextFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
CosmoTextFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CosmoTextFrame.Parent = Frame


local CosmoText = Instance.new("TextLabel")
CosmoText.Size = UDim2.new(1, 0, 1, 0)
CosmoText.Text = "Cosmo"
CosmoText.TextColor3 = Color3.new(1, 1, 1)
CosmoText.Font = Enum.Font.SourceSansBold
CosmoText.TextSize = 50
CosmoText.BackgroundTransparency = 1
CosmoText.Parent = CosmoTextFrame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.9, 0, 0.7, 0)
TextBox.Position = UDim2.new(0.05, 0, 0.15, 0)
TextBox.Text = ""
TextBox.BackgroundTransparency = 0.5
TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBox.TextWrapped = true
TextBox.ClearTextOnFocus = false
TextBox.MultiLine = true
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextSize = 20
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.Parent = Frame

local ExecuteButton = Instance.new("TextButton")
ExecuteButton.Size = UDim2.new(0.4, 0, 0.1, 0)
ExecuteButton.Position = UDim2.new(0.05, 0, 0.85, 0)
ExecuteButton.Text = "Execute"
ExecuteButton.BackgroundColor3 = TextBox.BackgroundColor3
ExecuteButton.TextColor3 = Color3.new(1, 1, 1)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.TextSize = 18
ExecuteButton.Parent = Frame


local ClearButton = Instance.new("TextButton")
ClearButton.Size = UDim2.new(0.4, 0, 0.1, 0)
ClearButton.Position = UDim2.new(0.55, 0, 0.85, 0)
ClearButton.Text = "Clear"
ClearButton.BackgroundColor3 = TextBox.BackgroundColor3
ClearButton.TextColor3 = Color3.new(1, 1, 1)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.TextSize = 18
ClearButton.Parent = Frame

local DestroyButton = Instance.new("TextButton")
DestroyButton.Size = UDim2.new(0.1, 0, 0.1, 0)
DestroyButton.Position = UDim2.new(0.9, 0, 0, 0)
DestroyButton.Text = "Destroy"
DestroyButton.BackgroundColor3 = TextBox.BackgroundColor3
DestroyButton.TextColor3 = Color3.new(1, 1, 1)
DestroyButton.Font = Enum.Font.SourceSans
DestroyButton.TextSize = 18
DestroyButton.Parent = Frame

local UNCButton = Instance.new("TextButton")
UNCButton.Size = UDim2.new(0.1, 0, 0.1, 0)
UNCButton.Position = UDim2.new(0.8, 0, 0, 0)
UNCButton.Text = "UNC"
UNCButton.BackgroundColor3 = TextBox.BackgroundColor3
UNCButton.TextColor3 = Color3.new(1, 1, 1)
UNCButton.Font = Enum.Font.SourceSans
UNCButton.TextSize = 18
UNCButton.Parent = Frame

ExecuteButton.MouseButton1Click:Connect(function()
    local script = TextBox.Text
    local success, result = pcall(function()
 
       loadstring(script)()
    end)
    if not success then
        warn("Error:", result)
    end
end)

UNCButton.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
end)

ClearButton.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)

DestroyButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
