local plrTargets = {}
local lp = game.Players.LocalPlayer
local prefix = ">"

local function chat(msg)
    game.Players:Chat(msg)
end
local function targets(plr)
local plrTargets = {}
        for i, plr in pairs(game.Players:GetPlayers()) do
        if string.sub(plr.Name:lower(),1,#plr) == plr:lower() then
            table.insert(plrTargets, plr)
end
      end
                return plrTargets
end

lp.Chatted:Connect(function(msg)
local args = msg:split(" ")


    if msg == prefix.."test" then
                for i, plr in pairs(targets(args[2]) do
            chat("h "..plr.Name.." test")
end
end
end)