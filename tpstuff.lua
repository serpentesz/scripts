-- teleport methods
local players = game.Players
local plr = players.LocalPlayer
local char = plr.Character
local root = char.HumanoidRootPart

local rootCFrame = root.CFrame

local tweenService = game:GetService("TweenService")

local function simpleTP(goal)
    char:SetPrimaryPartCFrame(goal.CFrame)
end

local function lerpTP(goal)
    for i = 0,1,0.01 do
        rootCFrame = rootCFrame:lerp(CFrame.new(goal.Position), i)
        wait()
    end
end

local function tweenTP(goal, speed)
    tweenService:Create(root, TweenInfo.new(speed, Enum.EasingStyle.Linear), {CFrame = goal})
end
