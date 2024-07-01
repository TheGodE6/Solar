local Settings = {
["AutoRun Commands"] = {},
["Script Name"] = "XKah.lua"
}
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

if string.sub(msg, 1, #prefix + 4) == "mute" then
local muted = {}
for i,v in pairs(muted) do
chat("fling "..v.Name.."")
