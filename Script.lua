--[[
Hi, If you have this script ur special.
Also GoodLuck Leaking it.
I Have A Unbypassable whitelist...
i will leak it method one day!
--]]

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
    admin = {}, --- people can use ur commands DONT PUT URSELF!!!!
    kick = {},
    GearBlacklisted = {}
}

getgenv().clydefuck = true

if clydefuck then
        return
end

local lp = game.Players.LocalPlayer

local prefix = settings.prefix

--// Functions
local function targets(plr)
            for i,v in pairs(game.Players:GetPlayers())
                local plrTargets = {}
        if string.sub(v.Name:lower(), 1, #plr) == plr:lower() then
                table.insert(plrTargets, v)
                        end
        return plrTargets
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
        for i,v in pairs(game.Players:GetPlayers())
        v.Chatted:Connect(function(msg)
                if table.find(settings.admin, v.Name) then
                    if string.sub(msg, 1, 1) == "" then return end

                    if string.sub(msg, 1, 1) == ":" then return end
                
                    if string.sub(msg, 1, 1) == "/" then return end
                    
                    if string.sub(msg, 1, 1) == settings.prefix then
                        chat(msg)
end
end)
end)

task.spawn(function()
        while settings.antigear do
            wait()
                for i,v in pairs(game.Players:GetPlayeds()) do
                        v.Backpack.ChildAdded:Connect(function(gear)
                                for _, gears in pairs(settings.gears) do
                                        if not table.find(settings.gwl, v.Name) then
                                    if gear.Name == gears then
                                        chat("h/\"..string.rep("\n",30).." "..v.Name.." Your Are Not Gonna Use "..gears)
end
end)
end
end
end
end)

function addcmd(info)
        local cmdName = info.Name
        local cmdFunction = info.cmdFunction 
 commands[cmdName] = cmdName
        connections[#connections + 1] = lp.Chatted:Connect(function(msg)
            msg = msg:lower
            args = msg:split(" ")
                    if args[1] == prefix .. cmdName then
                        cmdFunction()
end
end)
end

--// Cmds
addcmd({
        "gwl",
        Function = function()
                for i, plr in ipairs(targets(args[2]) do
                    table.insert(settings.gwl, plr.Name)
    end
end
})


--// Whitelist
local Whitelist2 = {}

            task.spawn(function()
for i,v in ipairs(Whitelist2)
    if v ~= lp.Name then
            while true do end
end
end
end)
