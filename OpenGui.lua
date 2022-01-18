local guiText = script.Parent.PlotGui["Yes/No Frame"].TextLabel
game.ReplicatedStorage.PlotRemotes.BuyProperty.OnClientEvent:Connect(function(plotName)
	guiText.Text = "Would you like to buy " .. plotName .. " For 1000 Cash? "
	script.Parent.PlotGui.Enabled = true

end)