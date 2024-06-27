local Settings = {
["AutoRun Commands"] = {},
["Version"] = "0.5",
["Autorun Commands"] = {}, -- Commands that will autorun upon start up
["Default Whitelisted"] = {}, -- People that are whitelisted by default
["Prefix"] = "-", -- The prefix that you want to use for this script
["Joins"] = false, ---- When a user joins, they get PMed about the fact this script protects the server
["Autoafk"] = false, -- When you're AFK, it will name you AFK, god you and ff you. Still in development
["Script Name"] = "Rekkos-Hub-Beta" -- Name of the script
}

--- Autorun Function ---
function autorunCommands()
    for _, command in pairs(StartUps) do
        local splitCommand = string.split(command, " ")
        local cmdName = splitCommand[1]
        table.remove(splitCommand, 1)
        runCommand(Prefix..cmdName, splitCommand)
    end
end

--- StartUps ---
servermsg("Rekkos Hub Loaded In "..LoadTime.." ms")
say("Rekkos.lua Loaded In "..LoadTime.." ms")
--- Rekkos General Locals! ---
local Version = Settings["Version"]
local Prefix = Settings["Prefix"]
local Srcname = Settings["Script Name"]
local StartUps = Settings["AutoRun Commands"]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() -- Credits To WhoIsTano -- tano didn't make orion LOL
local gearblacklist = {"RainbowPeriastron","CrimsonPeriastron","JoyfulPeriastron","AzurePeriastron","FestivePeriastron","FallPeriastron","GrimgoldPeriastron","NoirPeriastron","ChartreusePeriastron","IvoryPeriastron"}
local Loops = {}
local LoadTime = math.random(0, 1000) -- wow great coding :skull:

--- Functions ---
function say(msg)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

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
            		Time = 10 -- 10 seconds?
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

addCommand("nok",{},function()
            for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
			OrionLib:MakeNotification({
            Name = "Rekkos Hub",
            Content = "No Obby Kill On!", -- Why does it repeat for EACH obby brick
            Image = "rbxassetid://562993",
            Time = 10
        })
                        v.CanTouch = false
            end
end)

addCommand("vrtx",{},function()
        chat("fogcolor 100 0 255")
        chat("fogend 1000")
        chat("time 6")
        chat("outdoorambient 0 0 0")
        chat("brightness 0.5")
        chat("ambient 125 0 255")
end)

addCommand("anticrash",{},function(args)
		for i,v in pairs(GetPlayers(args[1])) do
			OrionLib:MakeNotification({
            Name = "Rekkos Hub",
            Content = "Someone Just Tried To Crash!", -- why is it here??
            Image = "rbxassetid://562993",
            Time = 10
        })
                                Loops.anticrash = true
                                repeat task.wait()
                             if v.Backpack:FindFirstChild(bannedgears) or v.Character:FindFirstChild(gearblacklist) then -- what two lists??
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
            		Content = "Succesfuly Bringed!!", -- well, that's if you actually have admin. also there's a spelling error
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
            		Content = "Succesfuly Tp-ed!", -- well, that's if you actually have admin
         		Image = "rbxassetid://562993",
            		Time = 10
       		 })
		chat("tp me "..v.Name)
	end
end)

addCommand("slock",{},function(args) --- Worst Slock Ever I know Dont Hate
     for i,v in pairs(GetPlayers(args[1])) do
OrionLib:MakeNotification({
            	Name = "Rekkos Hub",
            	Content = "Server Is Now Locked!",
            	Image = "rbxassetid://562993",
            	Time = 10
        })
   if game.Players.Playeradded then -- what is that??
   chat("-mute "..v.Name.." This Server Is ServerLocked Right Now.") -- who is v.Name here?? why does it use "-" instead of the set prefix value?
end
end
end)
