--[[
script made by dawninaj21
i have a whitelist system so goodluck getting through it
only access script
guns.lol/preson299
       ]]

local lp = game.Players.LocalPlayer
local prefix = ">"
local lpc = lp.Character
local lpch = lpc.HumanoidRootPart
local g = getgenv()

local function chat(msg)
    game.Players:Chat(msg)
end

function visc()
    local vis = Instance.new(part,"workspace")
end

function GetPlayer(target)
    local plrs = game:service("Players"):GetPlayers()
    if target:lower() == "all" then
        return plrs
    elseif target:lower() == "others" then
        for index, plr in pairs(plrs) do
            if plr == game:service("Players").LocalPlayer then
                table.remove(plrs, index)
                return plrs
            end
        end
    elseif target:lower() == "me" then
        return {game:service("Players").LocalPlayer}
    else
        local plrTargets = {}
        for index, plr in pairs(plrs) do
            if plr.Name:sub(1, #target):lower() == target:lower() or plr.DisplayName:sub(1, #target):lower() == target:lower()  then
                table.insert(plrTargets, plr)
            end
        end
        return plrTargets
    end
end

game.Players.Backpack.ChildAdded:Connect(function()
    if table.find(gbanned, v.Name) then
        chat("unegar "..v.Name)
    end
end)

function wl(p)
p.Chatted:Connect(function(msg)

    if string.sub(msg, 1, ) == prefix.."antikikll" then
        g.Antikill = true
        while g.Antikill do
        if lpch.Health <= 0 then
            chat("reset me")
        end
    end
end
    end

    if string.sub(msg, 1, 4) == prefix.."lock" then -- unfinished cuz
    end


    if string.sub(msg, 1, 4) == prefix.."alal" then
                for i, v in pairs(GetPlayer(string.sub(msg,6))) do
            chat("kill "..v.Name)
end

   if string.sub(msg, 1, 3) == prefix.."vis" then
    visc()
end
    if string.sub(msg, 1, #msg) == prefix.."al" then
            chat("h a")
end
end)
end

local wl = {}

function simplewl()
    if lp.Name ~= wl then
        lp:Kick("[Venus.lua]: Only  Access script dm dawninja21 for access.")
    end
end

wl(dawninja21alt)
wl(lp)
