local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")
local Workspace = game:GetService("Workspace")
local DataStore2 = require(game.ServerScriptService.Plots.DataStore2)

DataStore2.Combine("DATA","Cash")

Players.PlayerAdded:Connect(function(player)

	local cashStore= DataStore2("Cash", player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"

	local cash = Instance.new("IntValue")
	cash.Name = "Cash"
	cash.Value = cashStore:Get(0)
	cash.Parent = leaderstats
	cashStore:OnUpdate(function(newCash)
		cash.Value = newCash
	end)
	leaderstats.Parent = player
end)