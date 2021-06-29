--// variables \\--
local plr = game:service"Players".LocalPlayer
local char = plr.Character

--// functions \\--

local function fruits()
    local args = {
   [1] = "Legendary" --Uncommon,Common,Epic,Legendary
}

game:GetService("Players").LocalPlayer.PlayerGui.SpinGui.LOL.Spin.Spin.Reward:FireServer(unpack(args))
end


--// main script \\--

while wait()do
fruits()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
   if v:IsA("Tool")  then
    wait()
    v.Parent = game.Players.LocalPlayer.Character
    wait()
    v.Parent = game.Workspace
end
end
end
