local Settings = {
    ["Autorun Commands"] = {}, -- Commands to run automatically
    ["Default Whitelisted"] = {}, -- People whitelisted by default
    ["Default Banned"] = {}, -- People banned by default [Broken]
    ["Default Softlocked"] = {},
    ["Prefix"] = ".", -- Prefix used for running commands
    ["Person299's Admin"] = true, -- If you do not own Person299's Admin, some commands will be fixed appropriately
}

local commandlist = {}
local Connections = {}

local running = true
local GUI = {}

local prefix = Settings["Prefix"]

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
    
   -- GUI:SendMessage("ii' s St upid Ad min", "Check the developer console for the commands.")
end)

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
