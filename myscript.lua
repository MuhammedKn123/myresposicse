local Players = game:GetService("Players")
local Teams = game:GetService("Teams")

local function highlightPlayer(player)
    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character
    highlight.Color = player.TeamColor.Color
    highlight.Adornee = player.Character:FindFirstChild("Head")
    highlight.Enabled = false
end

for _, player in pairs(Players:GetPlayers()) do
    highlightPlayer(player)
end

Players.PlayerAdded:Connect(function(player)
    highlightPlayer(player)
end)
