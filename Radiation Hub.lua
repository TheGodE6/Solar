---------SETTINGS-------------
local settings = {
prefix = ">"
}
--------------------------------------------
local g = getgenv()
for key, value in pairs(settings) do
        g[key] = value
end
----General Locals----
local players = game.Players
local SPlayers = game:GetService("Players")
local Kohls = workspace.Terrain:WaitForChild("_Game")
local Map = Kohls:WaitForChild("Workspace")
local Admin = Kohls:WaitForChild("Admin")
local Pads = Admin:WaitForChild("Pads"):GetChildren()
local localplayer = game.Players.LocalPlayer
local devs = {"dawninja21","Di33le2","dawninja21alt","ScriptingProgrammer"}

-----Music-------
local musiclist = {
["1"] = { id = "6937042327" },
["2"] = { id = "15689455422" },
["3"] = { id = "6681840651" },
["4"] = { id = "9043887091" } 
}

------Gear codes------
local periastronsid = { 108158379, 99119240, 80661504, 93136802, 120307951, 159229806, 73829193, 139577901, 80597060, 69499437, 2544549379, 233520257 }

--------Execution--------
local function Remind(msg)
        game.StarterGui:SetCore("SendNotification", {
                Title = "Radiation Hub",
                Text = msg,
                Duration = 1
        })
end;
------StartUp Commands------




--------Devs----------







---------MESSAGES----------

-------FUNCTIONS-------
local function chat(msg)
        game.Players:Chat(msg)
end

local function onPlayerAdded(player)
        if player.Name == "dawninja21" then
                chat("h \n\n\n dawninja21 (owner of Radiation Hub) has joined! \n\n\n")
                print("dawninja21 [owner of Radiation Hub] joined the server!")

        elseif player.Name == "Di33le2" then
                chat("h \n\n\n Di33le2 (dev of Radiation Hub) has joined! \n\n\n")
                print("Di33le2 [dev of Radiation Hub] joined the server!")

        elseif player.Name == "ScriptingProgrammer" then 
                chat("h \n\n\n ScriptingProgrammer (dev of Radiation Hub) has joined! \n\n\n")
                print("ScriptingProgrammer [dev of Radiation Hub] joined the server!")
        else
                chat("h \n " .. player.Name .. " \n Age: " .. player.AccountAge .. " \nhas joined the game. \n☢️Radiation Hub☢️")
        end
end

local function onPlayerLeaving(player)
        chat("h \n\n\n " .. player.Name .. " \n has left the game. \n ☢Radiation Hub☢️")
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerLeaving)

-----COMMANDS-----
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local msgsplit = msg:split(" ")
        local cmd = msgsplit[1]
        local arg2 = msgsplit[2]
        local song = musiclist[arg2]

        if cmd == prefix .. "music" then
                chat("music " .. song.Id)
        end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local msgsplit = msg:split(" ")
        local cmd = msgsplit[1]
                
        if cmd == prefix .. "crash" then
      chat("h \n\n\n Server Closed By Radiation Hub.\n\n\n")
      chat("gear me 00000000000000094794847")
      repeat task.wait() until game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
      local vg = game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
      vg.Parent = game.Players.LocalPlayer.Character
      task.wait(0.2)
      vg:Activate()
      wait(.15)
      for i = 1,100 do
          Chat("unsize me me me")
      end

if cmd == prefix .. "dogcrash" then
       chat ("blind all")
       chat ("h \n\n\nThis server is closed by Radiation Hub.Listen To This Relaxing Music!\n\n\n")
       chat ("music 9043887091") 
       chat ("dog all all all")
       chat ("clone all all all")
end

if cmd == prefix .. "music" then
       chat("music "..musiclist[musicplay].id)
end

if cmd == prefix .."lock" then
chat(“size “..name“ 0”)
chat(“clone “..name)
chat(“name “..name “ Stewie Groomed Me”)
end
-----CREDITS------
print("dawninja21 - OWNER")
print("GOJO simplekah v2 he taught me very well and i wouldnt know how to make it without him")
print("WhoIsTano helped very much even when people called me a skid.prefix")
print("ts2021 i skid a little bit from him 🧌 but he still supported")
print("Razan Helped me sm")

------Boot Messages------
game.Players:Chat("h \n\n\n\n\n\n ☢️Radiation Hub☢️ V2.17 Loaded! \n\n\n\n\n\n Made By The Radiation Dev Team. \n\n\n")

-------Whitelist-------
local whitelist = {
        "dawninja21",
        "Di33le2",
        "ScriptingProgrammer"
}

local function checkwhitelist()
        for _, whitelistedName in ipairs(whitelist) do
                if localplayer.Name == whitelistedName then
                        isWhitelisted = true
                break
                end
        end

        if not isWhitelisted then
                localplayer:Kick("You are not whitelisted.")
        end
end

checkwhitelist()
