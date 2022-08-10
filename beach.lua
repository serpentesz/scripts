for i,v in pairs(game.Workspace:GetDescendants())do
    if v:FindFirstChild("EmptyBottle") then
        v.EmptyBottle.ObjectRemote:FireServer()
        wait(.2)
    end
end
