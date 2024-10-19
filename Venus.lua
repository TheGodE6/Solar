local lp = game.Players.LocalPlayer
local prefix = ">"

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

lp.Chatted:Connect(function(msg)
local args = msg:split(" ")


    if string.sub(msg, 1, 4) == prefix.."alal" then
                for i, v in pairs(GetPlayer(string.sub(msg,5))) do
            chat("kill "..v.Name)
end
end
    if string.sub(msg, 1, #msg) == prefix.."al" then
            chat("h a")
end
end)