-- variables --
local plr = game:service"Players".LocalPlayer
local char = plr.Character
local hrp = char.HumanoidRootPart
-- script --
for i,v in pairs(game.Workspace.chest:GetChildren())do
    if v:IsA("UnionOperation") and v.Transparency == 0 then
        hrp.CFrame = v.CFrame
        wait()
    end
end

-- serverhop --
local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/".. game.PlaceId.. "/servers/Public?sortOrder=Asc&limit=100"))
local function ServerHop()
    for i,v in pairs(servers.data) do
        if v.playing ~= v.maxPlayers and v.playerIds ~= game:GetService("Players").LocalPlayer.UserId then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
        end
    end
end
ServerHop()
