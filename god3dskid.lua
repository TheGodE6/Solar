-- TheGodE6 is a skid
-- if you're going to skid do it right xd - ts2021
-- i dont condone on this

-- Settings --
local Settings = {
    ["Autorun Commands"] = {}, -- Commands to run automatically
    ["Default Whitelisted"] = {}, -- People whitelisted by default
    ["Default Banned"] = {}, -- People banned by default [Broken]
    ["Default Softlocked"] = {},
    ["Prefix"] = ".", -- Prefix used for running commands
    ["Person299's Admin"] = true, -- If you do not own Person299's Admin, some commands will be fixed appropriately
    ["Script Name"] = "Radiation Hub"
}

-- Variables --
local commandlist = {}
local Connections = {}

local running = true
local GUI = {}

local prefix = Settings["Prefix"]
local srcname = Settings["Script Name"]

-- Command shit --
function addCommand(name,args,func)
    table.insert(commandlist,{name,args,func})
end

function runCommand(param1, specargs)
    for i, asdfuhiswuejfniuserf in pairs(commandlist) do
        if prefix .. asdfuhiswuejfniuserf[1] == param1 and running then
            if #specargs > #asdfuhiswuejfniuserf[2] - 1 then
                pcall(function()
                        local s, f = pcall(asdfuhiswuejfniuserf[3](specargs))
                        if not s then
                            if consoleOn then
                                print(f)
                            end
                        end
                end)
                return
            else
                local lister = prefix .. asdfuhiswuejfniuserf[1] .. " "
                for i, d in pairs(asdfuhiswuejfniuserf[2]) do
                    lister = lister .. d .. " "
                end
             --   GUI:SendMessage("Radiation Hub", "The command you have recently sent is not properly formatted.\n The correct format is: \n " ..lister)
            end
        end
    end
end

-- Function shit --
function chat(msg)
        game.Players:Chat(msg)
end

function servermsg(msg)
        chat("h \n\n\n ["..srcname.."]: "..msg.." \n\n\n")
end

function aservermsg(msg)
        chat("h \n\n\n "..msg.." \n\n\n")
end

-- crashes --
function dcrash()
        for i = 1,100 do
            chat("dog all all")
            chat("clone all all")
        end
end

function fcrash()
    for i = 1,100 do
            chat("freeze all")
            chat("clone all")
    end
end

function purge()
end

-- Command list shit --
addCommand("cmds",{},function()
    if consoleOn then 
              print("-:COMMANDS ["..tostring(#commandlist).."]:-") 
    end
    
    for i,v in pairs(commandlist) do
        local lister = ""
        for i,d in pairs(v[2]) do 
                lister = lister..d.." "
        end
        if consoleOn then 
                  print(v[1].." "..lister)
        end
    end
    
   -- GUI:SendMessage("Radiation Hub", "Check the developer console for the commands.")
end)

addCommand("crash",{},function()
        chat("blind all")
        servermsg("This server has been crashed due to an issue (404).")
        task.wait(0.0005)
        dcrash()
end)

addCommand("vrtx",{},function()
        chat("fogcolor 100 0 255")
        chat("fogend 1000")
        chat("time 6")
        chat("outdoorambient 0 0 0")
        chat("brightness 0.5")
        chat("ambient 125 0 255")
end)

local periastronsid = {"108158379", "99119240", "80661504", "93136802", "120307951", "159229806", "73829193", "139577901", "80597060", "6949943", "2544549379", "233520257"}
addCommand("perias",{},function()
        for i, v in pairs(periastronsid) do
                chat("gear me "..v)
        end
end)

addCommand("nok",{},function()
            for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                        v.CanTouch = false
            end
end)

addCommand("ecrash",{},function()
            chat("time 0")
            chat("char all 236577266")
            chat("name all "..srcname.." on top!")
            aservermsg("Server closed by "..srcname)
            task.wait(0.0005)
            dcrash()
            fcrash()
end)

addCommand("purge",{},function()
        chat("blind all")
        aservermsg("Server purged by "..srcname)
        task.wait(0.0005)
        purge()
end)

-- Command handler shit
Connections.Chatted = game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if not running then 
              return 
    end
    
    local BM = msg:split(" ")
    
    if BM[1] == "/e" then
        table.remove(BM,1)
    end
    
    if string.sub(BM[1],0,#prefix) == prefix then
              local commandname = BM[1]:lower()
              local t = ""
              table.remove(BM,1)
              local findargs = {}
              for i,v in pairs(BM) do
                      table.insert(findargs,v)
                      t=t..v.." "
              end
              spawn(function()
                      runCommand(commandname,findargs)
              end)
              if consoleOn then
                    print("running command: "..commandname.." "..t)
              end
    end
end)
