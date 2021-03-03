--// variables \\--
local plr = game:service"Players".LocalPlayer
local char = plr.Character

--// functions \\--
local function refill()
    fireclickdetector(game:GetService("Workspace").RefillStation.ClickDetector)
    game:GetService("ReplicatedStorage").PlayerRemoteEvent:FireServer("Update Blade Count")
end

local function hittitan()
    for i,v in pairs(game:GetService("Workspace")["Titans[Normal]"]:GetChildren())do
        if v:IsA("Model") then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Hit Titan", v.Nape, char.HumanoidRootPart)
            wait()
            char.HumanoidRootPart.CFrame = v.Nape.CFrame
        end
    end
end

local function escape()
    game:GetService("ReplicatedStorage").PlayerRemoteEvent:FireServer("Escape Grab")
end


--// ui lib \\--
local Abstract = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/AbstractUI/AbstractUI"))()
local UI = Abstract:Create("attack on sex", UDim2.new(0, 420, 0, 450))
UI:Divider("made by serpentes")

--// main script \\--
UI:Toggle("Autofarm", "autofarm the titans", false, function(state)
shared.Enabled = state
pcall(function()
    while wait()do
        if shared.Enabled then 
            refill()
            hittitan()
            escape()
        end
    end
end)
end)
