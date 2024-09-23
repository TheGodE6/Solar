--[[
Hi, If you have this scriot ur special.
Also GoodLuck Leaking it.
I Have A Unbypassabke whitelist...
i will leak it method one day!
--]]

local commands = {}

local whitelist = {
    kick = {},
    wl = {},
    gears = {}
}

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
