--[[
script made by dawninaj21
only access script
guns.lol/person299
       ]]

local gplr = game.Players:GetPlayers()
local gbanned = {}
local connections = {}
local lp = game.Players.LocalPlayer
local prefix = ">"
local lpc = lp.Character
local lpch = lpc.HumanoidRootPart
local g = getgenv()

local function chat(msg)
    game.Players:Chat(msg)
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


spawn(function()
for i,v in pairs(gplr) do
v.Backpack.ChildAdded:Connect(function()
    if table.find(gbanned, v.Name) then
        chat("unegar "..v.Name)
    end
end)
end
end)

function wl(p)
p.Chatted:Connect(function(msg)

    if string.sub(msg, 1, 4) == prefix.."spam" then
        local spammer = string.sub(msg, 6)
          g.Spam = true
           while g.Spam do
            chat(spammer)
           end
        end

        if string.sub(msg, 1, 6) == prefix.."unspam" then
            g.Spam = false
        end

    if string.sub(msg, 1, 8) == prefix.."antikill" then
        g.Antikill = true
        while g.Antikill do
        if lpch.Health <= 0 then
            chat("reset me")
        end
    end
end



    if string.sub(msg, 1, 4) == prefix.."alal" then
                local plr = string.sub(msg, 6)
                    GetPlayer(plr)
            chat("kill "..plr.Name)
end

   if string.sub(msg, 1, 3) == prefix.."vis" then
    visc()
end
    if string.sub(msg, 1, #msg) == prefix.."al" then
            chat("h a")
end
end)
end

wl(dawninja21alt)
wl(lp)
