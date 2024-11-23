--[[
Hi, If you have this script ur special.
Also GoodLuck Leaking it.
I Have A Unbypassable whitelist...
i will leak it method one day!
--]]

local commands = {}

local g = getgenv()

local space = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

local commands = {}

local connections = {}

local settings = { 
    prefix = "-",
    antigear = true,
    antirocket = true,
    gears = {},
    gwl = {}
}

local whitelist = {
    admin = {"dawninja21"}, --- people can use ur commands DONT PUT URSELF!!!!
    kick = {},
    GearBlacklisted = {}
}

g.skid = true --- clyde is my god

if skid then
        return
end

local lp = game.Players.LocalPlayer

--// Functions
local function targets(plr)
                                local plrTargets = {}
            for i,v in pairs(game.Players:GetPlayers()) do
        if string.sub(v.Name:lower(), 1, #plr) == plr:lower() then
                table.insert(plrTargets, v)
                        end
                return plrTargets
end
end

local function chat(msg)
            game.Players:Chat(msg)
end


task.spawn(function()
        while settings.antirocket do
            wait()
                for i,v in pairs(game.Workspace:GetDescandents()) do
                    if v.Name == "Rocket" then
                        v:Destroy()
end
end
end
end)

task.spawn(function()
        for i,v in pairs(game.Players:GetPlayers()) do
        v.Chatted:Connect(function(msg)
                if table.find(settings.admin, v.Name) then

                if string.sub(msg, 1, 1) == settings.prefix then
                        chat(msg)
end
end
end)
end
end)

task.spawn(function()
        while settings.antigear do
            wait()
                for i,v in pairs(game.Players:GetPlayers()) do
                        v.Backpack.ChildAdded:Connect(function(gear)
                                for _, gears in pairs(settings.gears) do
                                        if not table.find(settings.gwl, v.Name) then
                                    if gear.Name == gears then
                                        chat("h/\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..v.Name.." Your Are Not Gonna Use "..gears)
end
end
end
end)
end
end
end)

--// Cmds
local function addcmd(command, ...)
    local cmd = commands[command]
    local args = {...}
    if cmd then
        if #args == cmd.args then
            cmd.func(unpack(args))
        end
    end
end
            for i,v in pairs(game.Players:GetPlayers()) do
v.Chatted:Connect(
            function(msg)
                if table.find(whitelist.admin, v.Name) then
    local split = msg:split(" ")
    local args1 = split[2]
    local args2 = split[3]
    local args3 = split[4]
    local cmd = split[1]

commands["killa"] = {
        func = function()
end
}

                chat("part/1/1/1/1")
end

  if cmd == settings.prefix.."gb" then
end
end
end
            )
