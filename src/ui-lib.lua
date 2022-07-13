local LclHx_UI = {}
LclHx_UI.__index = LclHx_UI

local StarterGui = game:GetService("StarterGui")
local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")


function LclHx_UI.CreateTitleWindow(Title: string, Parent: Instance,  Size: UDim2, Position, UDim2)
    local Frame = Instance.new("Frame")
    Frame.Parent = Parent
    Frame.Name = "WindowFrame"

    Frame.Size = Size
    Frame.Position = Position
    Frame.AnchorPoint = UDim2(0.5, 0, 0.5, 0)
    Frame.BorderSizePixel = 1.5

    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame.BorderColor3 = Color3.fromRGB(48, 48, 48)

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = Frame
    TitleLabel.Name = Title

    TitleLabel.Size = UDim2.new(1, 0, 0.1, 0)
    TitleLabel.Position = UDim2.new(0.5, 0, 0.1, 0)
end

return LclHx_UI