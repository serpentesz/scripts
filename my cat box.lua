local plr = game:service"Players".LocalPlayer
local char = plr.Character

local Abstract = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/AbstractUI/AbstractUI"))()
local UI = Abstract:Create("furry kitty simulator", UDim2.new(0, 420, 0, 450))
UI:Divider("made by serpentes")
UI:Toggle("Toy TP", "Teleports to all toys in the map", false, function(state)
shared.Enabled = state
while wait()do
    if shared.Enabled == true then
        for i,v in pairs(game:service"Workspace".DEV.Plastics:GetDescendants())do
            if v:IsA("MeshPart") then
                    if shared.Enabled == false then return end
                char:SetPrimaryPartCFrame(v.CFrame)
                wait(.01)
            end
        end
    end
end
end)

UI:Button("Get 9e9 coins", "It's 9e9, don't set it to math.huge", function()
    game:GetService("ReplicatedStorage").Prizes.Collect:FireServer("Coin", "9e9")
end)
