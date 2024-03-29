---------SETTINGS-------------
local Settings = {
        ["prefix"] = ">",
}
--------------------------------------------

----General Locals----
local players = game.Players
local SPlayers = game:GetService("Players")
local Kohls = workspace.Terrain:WaitForChild("_Game")
local Map = Kohls:WaitForChild("Workspace")
local Admin = Kohls:WaitForChild("Admin")
local Pads = Admin:WaitForChild("Pads"):GetChildren()
local localplayer = game.Players.LocalPlayer
local devs = {"dawninja21","Di33le2","dawninja21alt","ScriptingProgrammer","Exfamous_X"}
local Loops = {lock}

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
        
end

if cmd == prefix .."lock" then
        Loops.lock =  true repeat wait()
chat("trip "..Player.Name)
chat("name "..Player.Name.." Stewie Groomed Me")
chat("punish "..Player.Name)
chat("clone "..Player.Name)
until not Loops.lock end
-----CREDITS------
print("dawninja21 - OWNER")
print("GOJO simplekah v2 he taught me very well and i wouldnt know how to make it without him")
print("WhoIsTano helped very much even when people called me a skid.prefix")
print("ts2021 i skid a little bit from him 🧌 but he still supported")
print("Razan Helped me sm")

------Boot Messages------
game.Players:Chat("h \n\n\n\n\n\n ☢️Radiation Hub☢️ V2.17 Loaded! \n\n\n\n\n\n Made By The Radiation Dev Team. \n\n\n")

--------MODULE AUTOS-------
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump1" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump2" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump3" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump4" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump5" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump6" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump7" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump8" then
        v:Destroy()
    end
end
for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
    if v.Name == "Jump9" then
        v:Destroy()
    end
end

game:GetService'Players':Chat(("h From now on, this server is protected thanks to "..game.Players.LocalPlayer.Name.."'s script!"))
for i,vai in pairs(game.Players:GetChildren()) do
    while vai ~= nil do wait(0.3)
if #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
    wait(0.6)
end
        for i,v in pairs(game.Players:GetChildren()) do
            if game:GetService("Workspace"):FindFirstChild(tostring(v.Name)) == nil then
            game:GetService("Players"):Chat("unpunish all")
            wait(0.2)
            end
            if v.Character.Humanoid ~= nil then
            if v.Character.Humanoid.Health < 100 then
                if v.Character.Humanoid.Health ~= 0 then
                game:GetService'Players':Chat(("health "..v.Name.." 100"))
                if v.Character.Humanoid.Health < 51 then
                    game:GetService'Players':Chat(("ff "..v.Name))
                end
                end
            elseif #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
            end
            if v.Character.Humanoid.Health == 0 then
                game:GetService'Players':Chat(("reset "..v.Name))
            elseif #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
                end
            if v.Character.Humanoid.PlatformStand == true then
                game:GetService'Players':Chat(("unstun "..v.Name))
            elseif #game.Players:GetChildren() < #game.Players:GetChildren() and #game.Players:GetChildren() > #game.Players:GetChildren() then
            end
            end
            for i,bruv in pairs(v.Character:GetChildren()) do
                if bruv.Name == "Seizure" then
                    game:GetService'Players':Chat(("unseizure "..v.Name))
                end
                end
            for i,ve in pairs(v.Backpack:GetChildren()) do
                if ve.Name == "VampireVanquisher" then
                    game:GetService'Players':Chat(("reset "..v.Name))
                    game:GetService'Players':Chat(("h/-------------"..v.Name.." TRYED TO CRASH THE SERVER LOL-------------"))
                    end
            end
            for i,vi in pairs(v.Character:GetChildren()) do
                if vi.Name == "VampireVanquisher" then
                    game:GetService'Players':Chat(("reset "..v.Name))
                    game:GetService'Players':Chat(("h/-------------"..v.Name.." TRYED TO CRASH THE SERVER LOL-------------"))
            end
            end
                for i,v1r in pairs(game.Workspace.Terrain["_Game"].Folder:GetChildren()) do
                    if v1r.Name == v.Name.."'s jail" then
                        wait(0.5)
                        game:GetService'Players':Chat(("removejails"))
                end
        end
        end
        for i,vr in pairs(game.Workspace.Terrain["_Game"].Folder:GetChildren()) do
            if vr.Name == "Sound" then
                game:GetService'Players':Chat(("stopmusic"))
                game:GetService'Players':Chat(("h/Sorry, try next time using a boombox!"))
            end
        end
    end
end
-------Whitelist-------
local whitelist = {
        "dawninja21",
        "Di33le2",
        "ScriptingProgrammer",
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
                end
        end
