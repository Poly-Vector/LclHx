local LclHx = {}
LclHx.__index = LclHx

local LclHx_UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/LclHx/LclHx-UI/master/src/ui-lib.lua"))()

local function CreateUi()
	local UI = LclHx_UI.CreateTitleWindow("LclHx", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"), UDim2.new(0, 300, 0, 50), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0))
end

return LclHx