local plotName = script.Parent.Parent.PlotName.Value
script.Parent.ClickDetector.MouseClick:Connect(function(player)
	if script.Parent.Parent.Owner.Value == "Buy Plot" then
		game.ReplicatedStorage.PlotRemotes.BuyProperty:FireClient(player,plotName)
	end
	
end)
script.Parent.Parent.Owner.ChildAdded:Connect(function()
	script.Parent.SurfaceGui.TextLabel.Text = script.Parent.Parent.Owner.Value
end)
