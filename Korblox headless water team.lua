wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Script by Water hub";
    Text = "ok now enjoy with script"; -- Water team
    Duration = 5;
})






-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local korbloxheadless = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Korblox = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Headless = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

korbloxheadless.Name = "korblox headless"
korbloxheadless.Parent = ScreenGui
korbloxheadless.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
korbloxheadless.BorderColor3 = Color3.fromRGB(0, 0, 0)
korbloxheadless.BorderSizePixel = 0
korbloxheadless.Position = UDim2.new(0.313280433, 0, 0.364197552, 0)
korbloxheadless.Size = UDim2.new(0, 194, 0, 142)

UICorner.Parent = korbloxheadless

Korblox.Name = "Korblox"
Korblox.Parent = korbloxheadless
Korblox.BackgroundColor3 = Color3.fromRGB(255, 7, 7)
Korblox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Korblox.BorderSizePixel = 0
Korblox.Position = UDim2.new(0.0650430247, 0, 0.0689655393, 0)
Korblox.Size = UDim2.new(0, 168, 0, 49)
Korblox.Font = Enum.Font.SourceSans
Korblox.Text = "Korblox"
Korblox.TextColor3 = Color3.fromRGB(0, 0, 0)
Korblox.TextScaled = true
Korblox.TextSize = 14.000
Korblox.TextWrapped = true
Korblox.MouseButton1Click:Connect(function()
	local ply = game.Players.LocalPlayer
	local chr = ply.Character
	chr.RightLowerLeg.MeshId = "902942093"
	chr.RightLowerLeg.Transparency = "1"
	chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	chr.RightFoot.MeshId = "902942089"
	chr.RightFoot.Transparency = "1"
end)

UICorner_2.Parent = Korblox

Headless.Name = "Headless"
Headless.Parent = korbloxheadless
Headless.BackgroundColor3 = Color3.fromRGB(255, 1, 1)
Headless.BorderColor3 = Color3.fromRGB(0, 0, 0)
Headless.BorderSizePixel = 0
Headless.Position = UDim2.new(0.0640227348, 0, 0.558620632, 0)
Headless.Size = UDim2.new(0, 169, 0, 51)
Headless.Font = Enum.Font.SourceSans
Headless.Text = "Headless"
Headless.TextColor3 = Color3.fromRGB(0, 0, 0)
Headless.TextScaled = true
Headless.TextSize = 14.000
Headless.TextWrapped = true
Headless.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
		if (v:IsA("Decal")) then
			v.Transparency = 1
		end
	end
end)

UICorner_3.Parent = Headless

-- Scripts:

local function QIJTSM_fake_script() -- korbloxheadless.LocalScript 
	local script = Instance.new('LocalScript', korbloxheadless)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(QIJTSM_fake_script)()
