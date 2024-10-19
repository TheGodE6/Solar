local plrTargets = {}
local lp = game.Players.LocalPlayer
local prefix = ">"

local function chat(msg)
    game.Players:Chat(msg)
end
local function targets(a)
local args = {}
        for i, plr in pairs(game.Players:GetPlayers()) do
        if string.sub(plr.Name:lower(),1,#a) == a:lower() then
            table.insert(args, plr)
end
      end
                return args
end

lp.Chatted:Connect(function(msg)

    if msg == prefix.."test" then
            chat("h Test")
end
end)