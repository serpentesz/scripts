local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Critical Legends") 
local b = w:CreateFolder("made by serpentes") 
local plr = game.Players.LocalPlayer
local char = plr.Character
local statues = {}

b:Button("collect all chests",function()
    local cfrbef = char.PrimaryPart.CFrame
    task.wait()
    delay(11, function()
        char:SetPrimaryPartCFrame(cfrbef)
    end)
    for _,v in pairs(game:GetService("Workspace").Chests:GetDescendants())do
        if v:FindFirstChild("Giver") then
            char:SetPrimaryPartCFrame(v.Giver.CFrame)
            task.wait(.2)
        end
    end
end)

for _,v in pairs(game:GetService("Workspace").Statues:GetChildren())do
   if v.Name:find("Statue") then
       table.insert(statues, v)
    end
end

b:Dropdown("Teleport to statues",statues,true,function(mob)
    local statue = game:GetService("Workspace").Statues:FindFirstChild(mob)
    print(statue.Parent)
    char:SetPrimaryPartCFrame(statue.Part.CFrame*CFrame.new(5,30,0))
end)
