-- dawninja STOP CHANGING THE NAME OF YOUR SCRIPT!!!!!!!!
-- wdym im not

local Settings = {
["Version"] = "0.1",
["Autorun Commands"] = {}, -- Commands that will autorun upon start up
["Default Whitelisted"] = {}, -- People that are whitelisted by default
["Prefix"] = ">", -- The prefix that you want to use for this script
["Joins"] = false, ---- When a user joins, they get PMed about the fact this script protects the server
["Autoafk"] = false, -- When you're AFK, it will name you AFK, god you and ff you. Still in development
["Script Name"] = ["Rekkos-Hub-Beta"] -- Name of the script
}

--- Rekkos General Locals! ---
local Version = Settings["Version"]
local Prefix = Settings["Prefix"]
local Srcname = Settings["Script Name"]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Loops = {}
--- Functions ---
function chat(msg)
game.Players:Chat(msg)
end


--- Command Handler (credits to ii) ---
function addCommand(name,args,func)
    table.insert(commandlist,{name,args,func})
end

function runCommand(param1,specargs)
    for i,asdfuhiswuejfniuserf in pairs(commandlist) do
        if prefix..asdfuhiswuejfniuserf[1] == param1 and running then
            if #specargs > #asdfuhiswuejfniuserf[2]-1 then
		pcall(function()
            local s,f = pcall(asdfuhiswuejfniuserf[3](specargs))
            if not s then if consoleOn then print(f) end end
end)
            return
            else
                local lister = prefix..asdfuhiswuejfniuserf[1].." "
                for i,d in pairs(asdfuhiswuejfniuserf[2]) do lister = lister..d.." " end
            end
        end
    end
end

--- Command Hub! ---
addCommand("whitelist",{},function()
end

addCommand("mute",{"player"},function(args, MuteReason)
for i,v in pairs(GetPlayers(args[1])) do
OrionLib:MakeNotification({
            Name = "Rekkos Hub",
            Content = "Person Is Now Muted......",
            Image = "rbxassetid://562993",
            Time = 8
        })
Loops.mute = true
repeat task.wait()
chat("pm "..v.Name.." You Are Now Muted for MuteReason[1]")
end)

addCommand("house",{},function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.809, 8.229, 72.000) --- credits to ultra i didnt have iy
				end
