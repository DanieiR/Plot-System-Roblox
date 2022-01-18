while wait(1) do
	if script.Parent.Parent.Parent.Parent.Owner.Value ~= "Buy Plot" then
		script.Parent.Text = "Owned by: " .. script.Parent.Parent.Parent.Parent.Owner.Value
	end
end
