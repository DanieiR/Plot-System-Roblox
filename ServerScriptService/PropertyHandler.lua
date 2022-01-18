plots = workspace:WaitForChild("Plots")
buyPropertyEvent = game.ReplicatedStorage.PlotRemotes:WaitForChild("BuyProperty")
players = game:GetService("Players")
local DataStore2 = require(game.ServerScriptService.Plots.DataStore2)
game.ReplicatedStorage.PlotRemotes.BuyProperty.OnServerEvent:Connect(function(player)
	local cashStore = DataStore2("Cash", player)
	for i,plotTouched in pairs(plots:GetChildren())do
		if plotTouched.Owner.Value == "Buy Plot" and player.leaderstats.Cash.Value >= 1000 then
			plotTouched.Owner.Value = player.Name
			player.leaderstats.Cash.Value -= 1000
		elseif plotTouched.Owner.Value ~= "Buy Plot" then
			player.PlayerGui.Popups.Owned.Visble = true
			wait(1)
			player.PlayerGui.Popups.Owned.Visble = false
		elseif player.leaderstats.Cash.Value < 1000 then
			player.PlayerGui.Popups.CashLess.Visble = true
			wait(1)
			player.PlayerGui.Popups.CashLess.Visble = false
		
		end
	end
end)

--players.PlayerRemoving:Connect(function(player) 
--	for i,v in pairs(plots:GetChildren())do
--		if v.Owner.Value == player.Name then
--			v.Owner.Value = ""
--		end
--	end
--end)