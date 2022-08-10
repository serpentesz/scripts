for i,v in pairs(game.Workspace.Washed:GetChildren())do
    if v:FindFirstChild("EmptyBottle") then
        v.ObjectRemote:FireServer()
        wait(.2)
    end
end

