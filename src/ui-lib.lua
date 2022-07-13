local LclHx_UI = {}
LclHx_UI.__index = LclHx_UI

local StarterGui = game:GetService("StarterGui")
local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")


function LclHx_UI.CreateTitleWindow(Title: string, Parent: Instance,  Size: UDim2, Position, UDim2)
    local Window = Instance.new("ScreenGui")
    Window.Parent = Parent
    Window.Name = Title

    local Frame = Instance.new("Frame")
    Frame.Parent = Window
    Frame.Name = "WindowFrame"

    Frame.Size = Size
    Frame.Position = Position
    Frame.BorderSizePixel = 1.5

    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame.BorderColor3 = Color3.fromRGB(48, 48, 48)
end

return LclHx_UI