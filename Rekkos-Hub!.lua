-- Stop making new scripts that are similar to your old ones! Continue updating your old ones.
-- Defender v3 -> Radiation Hub -> Exile Admin -> Radiation Hub -> Rekkos-Hub! 5 scripts???
-- fine ill stop i swear but do u think my anticrash id decent and yes i made it
-- this script was to honor someone who left me with this script i didnt make it

local Settings = {
["Version"] = "0.3",
["Autorun Commands"] = {}, -- Commands that will autorun upon start up
["Default Whitelisted"] = {}, -- People that are whitelisted by default
["Prefix"] = "-", -- The prefix that you want to use for this script
["Joins"] = false, ---- When a user joins, they get PMed about the fact this script protects the server
["Autoafk"] = false, -- When you're AFK, it will name you AFK, god you and ff you. Still in development
["Script Name"] = "Rekkos-Hub-Beta" -- Name of the script
}

--- Rekkos General Locals! ---
local Version = Settings["Version"]
local Prefix = Settings["Prefix"]
local Srcname = Settings["Script Name"]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local gearblacklist = {"RainbowPeriastron","CrimsonPeriastron","JoyfulPeriastron","AzurePeriastron","FestivePeriastron","FallPeriastron","GrimgoldPeriastron","NoirPeriastron","ChartreusePeriastron","IvoryPeriastron"}
local Loops = {}

--- Functions ---
function chat(msg)
	game.Players:Chat(msg)
end

function servermsg(msg)
	chat("h \n\n\n\n\n\n"..Srcname..": "..msg.."\n\n\n\n\n\n\n")
end

-- Crashes
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
end)

addCommand("mute",{"player"},function(args, MuteReason)
	for i,v in pairs(GetPlayers(args[1])) do
		OrionLib:MakeNotification({
            		Name = "Rekkos Hub",
            		Content = "Person Is Now Getting Muted...",
            		Image = "rbxassetid://562993",
            		Time = 10
        	})
		Loops.mute = true
		repeat task.wait()
			chat("pm "..v.Name.." You Are Now Muted for "..MuteReason)
		until not Loops.mute
	end
end)

addCommand("house",{},function()
	OrionLib:MakeNotification({
            	Name = "Rekkos Hub",
            	Content = "You Have Been Teleported To The House!",
            	Image = "rbxassetid://562993",
            	Time = 10
        })
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-29.809, 8.229, 72.000) --- credits to ultra i didnt have iy
end)

addCommand("crash",{},function()
	OrionLib:MakeNotification({
            Name = "Rekkos Hub",
            Content = "crashing...",
            Image = "rbxassetid://562993",
            Time = 10
        })
	task.wait(0.0005)
	fcrash()
	dcrash()
end)

addCommand("anticrash",{},function(args)
		for i,v in pairs(GetPlayers(args[1])) do
			OrionLib:MakeNotification({
            Name = "Rekkos Hub",
            Content = "Someone Just Tried To Crash!",
            Image = "rbxassetid://562993",
            Time = 10
        })
                                Loops.anticrash = true
                                repeat task.wait()
                             if v.Backpack:FindFirstChild(bannedgears) or v.Character:FindFirstChild(gearblacklist) then
                                                  chat("ungear "..v.Name)      

chat("h\n\n\n\n\n\n\n\n\n\n\n\n\n\n "..v.Name.." HAS JUST TRIED TO CRASH POINT AND LAUGH LOLLL")
                                        end
                                        until not Loops.anticrash
                                end
	end)

addCommand("bring",{"player"},function(args)
	for i,v in pairs(GetPlayers(args[1])) do
		OrionLib:MakeNotification({
            		Name = "Rekkos Hub",
            		Content = "Succesfuly Bringed!!",
         		Image = "rbxassetid://562993",
            		Time = 10
       		 })
		chat("tp "..v.Name.." me")
	end
end)

	
addCommand("to",{"player"},function(args)
	for i,v in pairs(GetPlayers(args[1])) do
		OrionLib:MakeNotification({
            		Name = "Rekkos Hub",
            		Content = "Succesfuly Tp-ed!",
         		Image = "rbxassetid://562993",
            		Time = 10
       		 })
		chat("tp me "..v.Name)
	end
end)

addCommand("slock,{},function(args) --- Worst Slock Ever I know Dont Hate
     for i,v in pairs(GetPlayers(args[1)) do
   if game.Players.Playeradded then
   chat("-mute "..v.Name)
end)
