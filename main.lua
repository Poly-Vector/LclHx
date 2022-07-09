local lclhx = {}
lclhx.__index = lclhx

local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Lighting = game:GetService("Lighting")

--Credit to @SpyNaz on Roblox for this module, it really helped me out.
local DraggableObject = loadstring(game:HttpGet("https://pastebin.com/raw/4CMfWXRi", true))()
----------------------------------------------------------------------

function lclhx:CreateDefaultButton(Name: string, Parent: Instance, Text: string): TextButton
	local Button = Instance.new("TextButton")
	Button.Parent = Parent
	Button.Name = Name
	Button.Text = Text

	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.Size = UDim2.new(0.25, 0, 0.1, 0)
	Button.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	Button.BorderSizePixel = 0
	Button.Font = Enum.Font.RobotoMono
	Button.TextSize = 14
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)

	local ButtonUIStroke = Instance.new("UIStroke")
	ButtonUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	ButtonUIStroke.Thickness = 1.5
	ButtonUIStroke.Parent = Button
	ButtonUIStroke.Color = Color3.fromRGB(48, 48, 48)

	return Button
end

function lclhx:CreateDefaultTextBox(Name: string, Parent: Instance, PlaceholderText: string): TextBox
	local TextBox = Instance.new("TextBox")
	TextBox.Parent = Parent
	TextBox.Name = Name
	TextBox.Text = ""
	TextBox.PlaceholderText = PlaceholderText

	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.Size = UDim2.new(0.25, 0, 0.1, 0)
	TextBox.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	TextBox.BorderSizePixel = 0
	TextBox.Font = Enum.Font.RobotoMono
	TextBox.TextSize = 14
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

	local TextBoxUIStroke = Instance.new("UIStroke")
	TextBoxUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	TextBoxUIStroke.Thickness = 1.5
	TextBoxUIStroke.Parent = TextBox
	TextBoxUIStroke.Color = Color3.fromRGB(48, 48, 48)

	return TextBox
end

function lclhx:CreateDefaultHeader(Name: string, Parent: Instance, Text: string): TextLabel
	local Header = Instance.new("TextLabel")
	Header.Parent = Parent
	Header.Name = Name
	Header.Text = Text

	Header.AnchorPoint = Vector2.new(0.5, 0.5)
	Header.Size = UDim2.new(0.25, 0, 0.1, 0)
	Header.BackgroundTransparency = 1
	Header.TextColor3 = Color3.fromRGB(255, 255, 255)
	Header.Font = Enum.Font.RobotoMono
	Header.TextSize = 16

	return Header
end

function lclhx:CreateUi(): ScreenGui
	if Player:WaitForChild("PlayerGui"):FindFirstChild("LclHx") then
		Player.PlayerGui.LclHx:Destroy()
	end

	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Parent = Player:WaitForChild("PlayerGui")
	ScreenGui.Name = "LclHx"

	--Background GUI
	local BackgroundGUI = Instance.new("Frame")
	BackgroundGUI.Parent = ScreenGui
	BackgroundGUI.Name = "BackgroundGUI"

	BackgroundGUI.AnchorPoint = Vector2.new(0.5, 0.5)
	BackgroundGUI.Size = UDim2.new(0.35, 0, 0.35, 0)
	BackgroundGUI.Position = UDim2.new(0.5, 0, 0.5, 0)
	BackgroundGUI.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	BackgroundGUI.BorderSizePixel = 0

	local DraggableBackgroundGUI = DraggableObject.new(BackgroundGUI)
	DraggableBackgroundGUI:Enable()

	local BackgroundGUIStroke = Instance.new("UIStroke")
	BackgroundGUIStroke.Parent = BackgroundGUI
	BackgroundGUIStroke.Thickness = 1.5
	BackgroundGUIStroke.Color = Color3.fromRGB(48, 48, 48)

	--Title Bar
	local TitleBar = Instance.new("Frame")
	TitleBar.Parent = BackgroundGUI
	TitleBar.Name = "TitleBar"

	TitleBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TitleBar.Size = UDim2.new(1, 0, 0.1, 0)
	TitleBar.Position = UDim2.new(0.5, 0, 0.05, 0)
	TitleBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	TitleBar.BorderSizePixel = 0

	local TitleText = Instance.new("TextLabel")
	TitleText.Parent = TitleBar
	TitleText.Name = "TitleText"
	TitleText.Text = "LclHx"

	TitleText.AnchorPoint = Vector2.new(0.5, 0.5)
	TitleText.Size = UDim2.new(0.25, 0, 1, 0)
	TitleText.Position = UDim2.new(0.5, 0, 0.5, 0)
	TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
	TitleText.BackgroundTransparency = 1
	TitleText.Font = Enum.Font.RobotoMono
	TitleText.TextSize = 18

	--Button Layout GUI
	local BackgroundGUIContainer = Instance.new("Frame")
	BackgroundGUIContainer.Parent = BackgroundGUI
	BackgroundGUIContainer.Name = "BackgroundGUIContainer"

	BackgroundGUIContainer.AnchorPoint = Vector2.new(0.5, 0.5)
	BackgroundGUIContainer.Size = UDim2.new(0.95, 0, 0.75, 0)
	BackgroundGUIContainer.Position = UDim2.new(0.5, 0, 0.525, 0)
	BackgroundGUIContainer.BackgroundTransparency = 1

	local BackgroundGUIContainerList = Instance.new("UIListLayout")
	BackgroundGUIContainerList.Parent = BackgroundGUIContainer

	BackgroundGUIContainerList.Padding = UDim.new(0.05, 0)
	BackgroundGUIContainerList.SortOrder = Enum.SortOrder.LayoutOrder

	--Buttons & Headers
	local PlayerHeader = lclhx:CreateDefaultHeader("Player",  BackgroundGUIContainer, "Player")
	local WalkSpeedTextBox = lclhx:CreateDefaultTextBox("ChangeWalkSpeed", BackgroundGUIContainer, "Change WalkSpeed")
	local JumpPowerTextBox = lclhx:CreateDefaultTextBox("ChangeJumpPower", BackgroundGUIContainer, "Change JumpPower")
	local TeleportToPlayerTextBox = lclhx:CreateDefaultTextBox("TeleportToPlayer", BackgroundGUIContainer, "Teleport To Player")

	local WorkspaceHeader = lclhx:CreateDefaultHeader("Workspace", BackgroundGUIContainer, "Workspace")
	local GravityTextBox = lclhx:CreateDefaultTextBox("ChangeGravity", BackgroundGUIContainer, "Change Gravity")

	local LightingHeader = lclhx:CreateDefaultHeader("Lighting", BackgroundGUIContainer, "Lighting")
	local FullBrightButton = lclhx:CreateDefaultButton("FullBrightToggle", BackgroundGUIContainer, "FullBright Toggle")

	--Layout Order
	PlayerHeader.LayoutOrder = 000
	WalkSpeedTextBox.LayoutOrder = 001
	JumpPowerTextBox.LayoutOrder = 002
	TeleportToPlayerTextBox.LayoutOrder = 003

	WorkspaceHeader.LayoutOrder = 100
	GravityTextBox.LayoutOrder = 101

	LightingHeader.LayoutOrder = 200
	FullBrightButton.LayoutOrder = 201

	return ScreenGui
end

function lclhx:Inject()
	local StartTime = os.clock()

	repeat
		task.wait()
	until Player.Character

	local Character = Player.Character
	local Humanoid = Character.Humanoid

	local ScreenGui = lclhx:CreateUi()

	--Toggle UI
	local ToggleUIValue = false

	UserInputService.InputBegan:Connect(function(Input, GameProcessedEvent)
		if GameProcessedEvent then
			return
		end

		if Input.KeyCode == Enum.KeyCode.F1 then
			ToggleUIValue = not ToggleUIValue

			if ToggleUIValue == true then
				ScreenGui.Enabled = false
			else
				ScreenGui.Enabled = true
			end
		end
	end)

	--Walk Speed
	local ChangeWalkSpeed = ScreenGui:WaitForChild("BackgroundGUI"):WaitForChild("BackgroundGUIContainer"):WaitForChild("ChangeWalkSpeed")
	
	ChangeWalkSpeed:GetPropertyChangedSignal("Text"):Connect(function()
		local NewWalkSpeedValue = tonumber(ChangeWalkSpeed.Text)

		if NewWalkSpeedValue == nil then
			Humanoid.WalkSpeed = 16
		else
			Humanoid.WalkSpeed = NewWalkSpeedValue
		end
	end)

	--Jump Power
	local ChangeJumpPower = ScreenGui:WaitForChild("BackgroundGUI"):WaitForChild("BackgroundGUIContainer"):WaitForChild("ChangeJumpPower")
	
	ChangeJumpPower:GetPropertyChangedSignal("Text"):Connect(function()
		local NewJumpPowerValue = tonumber(ChangeJumpPower.Text)

		if NewJumpPowerValue == nil then
			Humanoid.JumpPower = 50
		else
			Humanoid.JumpPower = NewJumpPowerValue
		end
	end)

	--Teleport To Player
	local TeleportToPlayer = ScreenGui:WaitForChild("BackgroundGUI"):WaitForChild("BackgroundGUIContainer"):WaitForChild("TeleportToPlayer")

	TeleportToPlayer.FocusLost:Connect(function()
		for _, PlayerTeleportingTo in ipairs(Players:GetPlayers()) do
			if PlayerTeleportingTo.Name:sub(1, #TeleportToPlayer.Text):lower() == TeleportToPlayer.Text:lower() then
				repeat
					task.wait()
				until PlayerTeleportingTo.Character

				local PlayerTeleportingToCharacter = PlayerTeleportingTo.Character

				if PlayerTeleportingTo then
					if
						PlayerTeleportingTo:FindFirstDescendant("Humanoid")
						and PlayerTeleportingToCharacter:FindFirstChild("Torso")
						and PlayerTeleportingToCharacter:FindFirstChild("LeftArm")
						and PlayerTeleportingToCharacter:FindFirstChild("RightArm")
						and PlayerTeleportingToCharacter:FindFirstChild("LeftLeg")
						and PlayerTeleportingToCharacter:FindFirstChild("RightLeg")
					then
						Character:FindFirstChild("HumanoidRootPart").CFrame = PlayerTeleportingToCharacter:FindFirstChild("HumanoidRootPart").CFrame
						Character:FindFirstChild("Torso").CFrame = PlayerTeleportingToCharacter:FindFirstChild("Torso").CFrame
						Character:FindFirstChild("LeftArm").CFrame = PlayerTeleportingToCharacter:FindFirstChild("LeftArm").CFrame
						Character:FindFirstChild("RightArm").CFrame = PlayerTeleportingToCharacter:FindFirstChild("RightArm").CFrame
						Character:FindFirstChild("LeftLeg").CFrame = PlayerTeleportingToCharacter:FindFirstChild("LeftLeg").CFrame
						Character:FindFirstChild("RightLeg").CFrame = PlayerTeleportingToCharacter:FindFirstChild("RightLeg").CFrame
					end

				end
			end
		end
	end)

	--Gravity
	local ChangeGravity = ScreenGui:WaitForChild("BackgroundGUI"):WaitForChild("BackgroundGUIContainer"):WaitForChild("ChangeGravity")

	ChangeGravity:GetPropertyChangedSignal("Text"):Connect(function()
		local NewGravityValue = tonumber(ChangeGravity.Text)

		if NewGravityValue == nil then
			workspace.Gravity = 196.2
		else
			workspace.Gravity = NewGravityValue
		end
	end)

	--Full Bright
	local function GetLightingEffects(Effects: table): table
		local EffectsTable = {}

		for _, Effect in ipairs(Effects) do
			if
				Effect:IsA("BloomEffect")
				or Effect:IsA("BlurEffect")
				or Effect:IsA("ColorCorrectionEffect")
				or Effect:IsA("DepthOfFieldEffect")
				or Effect:IsA("SunRaysEffect")
			then
				EffectsTable[Effect.ClassName] = Effect.Enabled
			elseif Effect:IsA("Atmosphere") then
				EffectsTable[Effect.ClassName] = Effect.Density
			end
		end

		return EffectsTable
	end

	local DefaultLightingSettings = {
		Brightness = Lighting.Brightness,
		GlobalShadows = Lighting.GlobalShadows,
		Ambient = Lighting.Ambient,
		FogEnd = Lighting.FogEnd,
		LightingEffects = GetLightingEffects(Lighting:GetChildren()),
	}

	local FullBrightLightingSettings = {
		Brightness = 1,
		GlobalShadows = false,
		Ambient = Color3.fromRGB(173, 173, 173),
		FogEnd = math.huge,
		LightingEffects = {
			["BloomEffect"] = false,
			["BlurEffect"] = false,
			["ColorCorrectionEffect"] = false,
			["DepthOfFieldEffect"] = false,
			["SunRaysEffect"] = false,
			["Atmosphere"] = 0,
		},
	}

	local FullBrightToggleValue = false
	local FullBrightToggle = ScreenGui:WaitForChild("BackgroundGUI"):WaitForChild("BackgroundGUIContainer"):WaitForChild("FullBrightToggle")

	Lighting:GetPropertyChangedSignal("Brightness"):Connect(function()
		if FullBrightToggleValue == false and Lighting.Brightness ~= FullBrightLightingSettings.Brightness then
			DefaultLightingSettings.Brightness = Lighting.Brightness
		end
	end)

	Lighting:GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if FullBrightToggleValue == false and Lighting.GlobalShadows ~= FullBrightLightingSettings.GlobalShadows then
			DefaultLightingSettings.GlobalShadows = Lighting.GlobalShadows
		end
	end)

	Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()
		if FullBrightToggleValue == false and Lighting.Ambient ~= FullBrightLightingSettings.Ambient then
			DefaultLightingSettings.Ambient = Lighting.Ambient
		end
	end)

	Lighting:GetPropertyChangedSignal("FogEnd"):Connect(function()
		if FullBrightToggleValue == false and Lighting.FogEnd ~= FullBrightLightingSettings.FogEnd then
			DefaultLightingSettings.FogEnd = Lighting.FogEnd
		end
	end)

	for _, Effect in ipairs(Lighting:GetChildren()) do
		if Effect:IsA("BloomEffect") or Effect:IsA("BlurEffect") or Effect:IsA("ColorCorrectionEffect") or Effect:IsA("DepthOfFieldEffect") or Effect:IsA("SunRaysEffect") then
			Effect:GetPropertyChangedSignal("Enabled"):Connect(function()
				if FullBrightToggleValue == false and Effect.Enabled ~= DefaultLightingSettings[Effect.ClassName] then
					DefaultLightingSettings[Effect.ClassName] = Effect.Enabled
				end
			end)
		elseif Effect:IsA("Atmosphere") then
			if FullBrightToggleValue == false and Effect.Density ~= DefaultLightingSettings[Effect.ClassName] then
				DefaultLightingSettings[Effect.ClassName] = Effect.Density
			end
		end
	end

	FullBrightToggle.MouseButton1Click:Connect(function()
		FullBrightToggleValue = not FullBrightToggleValue

		coroutine.wrap(function()
			RunService.RenderStepped:Connect(function()
				if FullBrightToggleValue == true then
					Lighting.Brightness = FullBrightLightingSettings.Brightness
					Lighting.GlobalShadows = FullBrightLightingSettings.GlobalShadows
					Lighting.Ambient = FullBrightLightingSettings.Ambient
					Lighting.FogEnd = FullBrightLightingSettings.FogEnd

					for _, Effect in ipairs(Lighting:GetChildren()) do
						if Effect:IsA("BloomEffect") or Effect:IsA("BlurEffect") or Effect:IsA("ColorCorrectionEffect") or Effect:IsA("DepthOfFieldEffect") or Effect:IsA("SunRaysEffect") then
							Effect.Enabled = FullBrightLightingSettings.LightingEffects[Effect.ClassName]
						elseif Effect:IsA("Atmosphere") then
							Effect.Density = FullBrightLightingSettings.LightingEffects[Effect.ClassName]
						end
					end
				else
					Lighting.Brightness = DefaultLightingSettings.Brightness
					Lighting.GlobalShadows = DefaultLightingSettings.GlobalShadows
					Lighting.Ambient = DefaultLightingSettings.Ambient
					Lighting.FogEnd = DefaultLightingSettings.FogEnd

					for _, Effect in ipairs(Lighting:GetChildren()) do
						if Effect:IsA("BloomEffect") or Effect:IsA("BlurEffect") or Effect:IsA("ColorCorrectionEffect") or Effect:IsA("DepthOfFieldEffect") or Effect:IsA("SunRaysEffect") then
							Effect.Enabled = DefaultLightingSettings.LightingEffects[Effect.ClassName]
						elseif Effect:IsA("Atmosphere") then
							Effect.Density = DefaultLightingSettings.LightingEffects[Effect.ClassName]
						end
					end
				end
			end)
		end)()
	end)

	StarterGui:SetCore("SendNotification", {
		Title = string.format("LclHx Injected! [%.2fms]", (os.clock() - StartTime) * 1000),
		Text = "Press \"F1\" to toggle the LclHx GUI. - Made by PolyVector.",
		Duration = 5,
		Button1 = "Ignore",
	})
end

lclhx:Inject()

return lclhx