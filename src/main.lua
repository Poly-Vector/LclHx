local StarterGui = game:GetService("StarterGui")
local LclHx = {}
LclHx.__index = LclHx

local LclHx_UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Poly-Vector/LclHx/master/src/ui-lib.lua"))()

local function CreateUi()
	local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

	local Window = Instance.new(StarterGui, PlayerGui)
	local UI = LclHx_UI.CreateTitleWindow("LclHx", Window, UDim2.new(0, 300, 0, 50), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0))
end

return LclHx