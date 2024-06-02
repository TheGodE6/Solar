while true do ---- Lots of byte code btw
end

while true do end ---- Lots of bytecode

local function onPlayerAdded(player)
        if joins == true then
             local Player = string.sub(msg, #prefix + 6)
              chat("pm "..player.Name.." Welcome, "..player.Name.."\nThis Server Is Protected By ☢️Radiation Hub☢️ Hope You Enjoy Your Stay!")
        end
end


--- Command Handler ---
function addcommand(cmdName, cmdDescription, cmdFunction)
    commands[cmdName] = cmdName
    descriptions[cmdName] = cmdDescription
    connections[#connections + 1] = plr.Chatted:Connect(function(msg)
            msg = msg:lower()
            args = string.split(msg, " ")
            if args[1] == admin.prefix3 .. cmdName then
                cmdFunction()
            elseif args[1] == "/e" and args[2] == admin.prefix3 .. cmdName then
                args[2] = args[3]
                cmdFunction()
            end
        end)
end
