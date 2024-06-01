---------SETTINGS-------------
local Settings = {
["AutoRun"] = {}, -- Set To Any Value
["Default Whitelisted"] = {}, -- Default whitelisted
["Prefix"] = ">", -- Set This To Any Value
["Joins"] = true, ---- Up to You Pms User When Joined.
["Autoafk"] = true, -- Still In Devlopment
["Srcname"] = "☢️Radiation Hub☢️"
}

----General Locals----
getgenv().rhVersion = "0.27"
getgenv().joins = true
local joins = Settings["Joins"]
local args = {}
local msg = msg:lower()
local Srcname = Settings["Srcname"]
local gojo = false
local prefix = Settings["Prefix"]
local Loops = {}
local player = game.Players
local Kohls = workspace.Terrain:WaitForChild("_Game")
local Map = Kohls:WaitForChild("Workspace")
local Admin = Kohls:WaitForChild("Admin")
local Pads = Admin:WaitForChild("Pads"):GetChildren()
local lp = game.Players.LocalPlayer
local commandlist = {}

-------FUNCTIONS-------
local function chat(msg)
    game.Players:Chat(msg)
end

-----MUSIC LIST--------
local musiclist = {
["1"] = { id = "6937042327" , name = "All dropping 8 beats" },
["2"] = { id = "15689455422", name = "BB-Balls" }
}

------Gear codes----
local periastronsid = {"108158379", "99119240", "80661504", "93136802", "120307951", "159229806", "73829193", "139577901", "80597060", "6949943", "2544549379", "233520257"}

--------Execution--------
local function notify(msg)
      game.StarterGui:SetCore("SendNotification", {
          Title = "Radiation Hub",
          Text = msg,
          Duration = 1
})
end;

-- server msg
function servermsg(name, text)
        game.Players:Chat("h/"..string.rep("\n",34).."["..name.."]")
        game.Players:Chat("h/"..string.rep("\n",36)..text)
end

---COMMANDS---
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    
if string.sub(msg, 1, #prefix + 3) == prefix.."vgc" then
vgcrash()
 end

        if string.sub(msg, 1, #prefix + 5) == prefix.."crash" then
                chat("blind all")
                servermsg(Srcname, "This Server Has Been Closed Due To An Issue.\nRadiation Hub.")
                task.wait(0.0005)
                dcrash()
        end
        
        if string.sub(msg, 1, #prefix + 4) == prefix.."vrtx" then
                chat("fogcolor 100 0 255")
                chat("fogend 1000")
                chat("time 6")
                chat("outdoorambient 0 0 0")
                chat("brightness 0.5")
                chat("ambient 125 0 255")
        end

        if string.sub(msg, 1, #prefix + 6) == prefix.."perias" then
                for i, perias in pairs(periastronsid) do
                    chat("gear me "..perias)
                end
        end

        if string.sub(msg, 1, #prefix + 3) == prefix.."nok" then
                for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                        v.CanTouch = false
                end
        end

        if string.sub(msg, 1, #prefix + 6) == prefix.."pmkick" then
                local Player = string.sub(msg, #prefix + 8)
                Loops.pmkick = true
                repeat task.wait()
                    chat("pm "..Player.." [Radiation Hub]: 😖🙂‍↔️😖🙂‍↔️😫😒😩😞😞😖😞🙂‍↔️😩🙂‍↔️😞😞😩😞😞😖😞😖😞😫😞😖😞😖🥳")
                    chat("freeze "..Player)
                    chat("rainbowify "..Player)
                    chat("name "..Player.." [Radiation Hub]:\n Currently Getting Kicked.")
                until not Loops.pmkick -- make a way to turn this off
        end
        
        if string.sub(msg, 1, #prefix + 8) == prefix.."unpmkick" then
            Loops.pmkick = false
            end

        if string.sub(msg, 1, #prefix + 7) == prefix.."neatdev" then -- Partnership With DeemV1
                servermsg(Srcname, "Loading Boss Fight...")
                wait(5)
                servermsg(Srcname, "BOSS FIGHT LOADED NO CHEATING")
                wait(3)
                chat("music 7006487793")
                wait(3)
                chat("health me 1000")
                wait(3)
                chat("size me 5")
                wait(3)
                chat("char me 236577266")
                wait(3)
                chat("gear me 116693764")
                wait(3)
                chat("gear me 127506105")
                wait(3)
                chat("gear me 168141301")
                wait(3)
                chat("gear me 94233344")
        end

        if string.sub(msg:lower(), 1, #prefix + 6) == "xester" then -- Partnership With DeemV1
              chat("music")
              wait(2)
              chat("h Loading Boss Fight")
              wait(3)
              chat("char me 5136590382")
              wait(3)
              chat("health me 3000")
              wait(3)
              chat("health others 1000")
              wait(3)
              chat("name me Jester MaxHP: 3k")
              wait(3)
              fixcam() -- this function doesn't exist!
              wait(3)
              chat("ungear all")
              wait(3)
              chat("h Still Loading the Boss Fight")
              wait(3)
              chat("gear me 409745306")
              chat("gear me 31314966")
              chat("gear me 16979083")
              chat("gear others 49929767")	
              chat("gear others 49929776")
              chat("gear others 223785473")
              task.wait()
              chat(":m Jester: " .. bosschat) -- What is boss chat?
              task.wait()
              chat("music 1843358057")
    end

    if string.sub(msg, 1, #prefix + 8) == prefix.."antikill" then
        Loops.antikill = true
        repeat task.wait()
        if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                chat("reset me")
        end
        until not Loops.antikill
    end

    if string.sub(msg, 1, #prefix + 6) == prefix.."autogod" then
        Loops.autogod = true
        repeat task.wait()
        if game.Players.LocalPlayer.Character.Humanoid.MaxHealth ~= "inf" then
                        chat("god me")
                        game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
                        game.Players.LocalPlayer.Character.Humanoid.Health = 9e9            
        end
        until not Loops.autogod
    end

    if string.sub(msg, 1, #prefix + 4) == prefix.."lock" then
            local Player = string.sub(msg, 1, #prefix + 6)
            Loops.lock = true
            repeat task.wait()
                if not game.Lighting:FindFirstChild(player) then
                
                    -- v.Name? v.Name implies you've found the full length of the player from game.Players:GetPlayers() 
                    -- You need to look through the player list game.Players:GetPlayers() to find the full username of Player. e.g. "scr", find "scriptingprogrammer".
                    -- when you get the full username of the player, then you can use v.Name.
                
                    chat("name "..Player.." "..Srcname.."\n LOCKED")
                    chat("clone "..Player)
                    chat("trip "..Player)
                    chat("punish "..Player)
                    chat("blind "..Player)
                    chat("pm "..Player.." you are locked from the server. Please Join Another One.")
                end
            until not Loops.lock -- make a way to turn this off
    end
    
    if string.sub(msg, 1, #prefix + 6) == "unlock" then
Loops.lock = false
end

    if string.sub(msg, 1, #prefix + 6) == prefix.."ecrash" then              
        chat("time 0")
        chat("char all 236577266")
        chat("name all Radiation Hub On Top!")
        servermsg(Srcname, "Server Closed By "..Srcname)
        task.wait(0.0005)
        dcrash()
        fcrash()
    end

    if string.sub(msg, 1, #prefix + 7) == prefix.."xester2" then --Partnership With DeemV1
          servermsg(Srcname, "U Defeated me...")
          chat("music")
          wait(2)
          chat("h Loading Boss Fight")
          wait(3)
          chat("char me 5136590382")
          wait(3)
          chat("sethealth me 6000")
          wait(3)
          chat("health me 6000")
          wait(3)
          chat("size me 1.5")
          wait(3)
          chat("sethealth others 2000")
          wait(3)
          chat("health others 2000")
          wait(3)
          chat("name me Corrupted Jester MHP: 6k")
          wait(3)
          fixcam()
          wait(3)
          chat("ungear all")
          wait(3)
          chat("h Still Loading the Boss Fight")
          wait(3)
          chat("gear me 16895215")
          chat("gear me 31314966")
          chat("gear me 16979083")
          chat("gear others 49929767")
          chat("gear others 49929776")
          chat("gear others 223785473")
          chat(":m Corrupted Jester: " .. bosschat) -- set bosschat variable
          wait(2)
          chat("music 1843358057")
    end
    
    if string.sub(msg, 1, #prefix + 7) == prefix.."altkick" then
        notify("This Command Is In Progress")
    end

    if string.sub(msg, 1, #prefix + 11) == prefix.."supportlist" then
        notify("This Script Does Not Run On Solara.")
        notify("This Script Runs On Arceus X")
        notify("This Script Runs On Codex")
        notify("This Script Runs On Wave")
        notify("This Script Does Not Run On Incognito")
        notify("Credits To Corev6 Dev Team.")
    end
end)

----MODES----
game.Players.LocalPlayer.Chatted:Connect(function(cmd)
        if cmd == "mode!gojo" then -- Why steal from simplekah?
            local gojo = true
        end

        if cmd == "disablemode!gojo" then
            local gojo = false
        end

        if cmd == "dx" then
            Loops.dx = true
            repeat task.wait()
                    chat("speed all 0.5")
                    servermsg(Srcname, "Domain Expansion: INFINITY VOID") -- You're spamming this servermsg.
            until not Loops.dx -- add a way to turn this off
         end
                    
        if cmd == "red" then
            servermsg(Srcname, "Universal Red...")
            servermsg(Srcname, "MUAHAHAH")
            chat("speed all inf")
        end
end)

------StartUp Commands------
notify("Radiation Hub Executed!")
chat("vrtx")
servermsg(Srcname, "☢️Radiation Hub☢️ Loaded!\n Made By The ☢️Radiation Dev Team☢️\n Version: "..getgenv().rhVersion.."")

local function onPlayerAdded(player)
        if joins == true then
              chat("pm "..player.Name.." Welcome, "..player.Name.."\nThis Server Is Protected By ☢️Radiation Hub☢️ Hope You Enjoy Your Stay!")
        end
end

game.Players.PlayerAdded:Connect(onPlayerAdded)

function PLAYERCHECK(plr)
  for i, v in pairs(game.Players:GetPlayers()) do
      if string.sub(v.Name:lower(), 1, #plr) == plr:lower() then
          nplr = v.Name
        cplr = v
          Remind("[debug]: Found "..nplr)
      end
  end
end

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

 function purge() --Credits To Knocks/Kneekers
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(455.448242, 3.63637614, 453.299042, 0.649438977, 6.72485001e-08, 0.760413706, -7.56329328e-08, 1, -2.38416611e-08, -0.760413706, -4.20286135e-08, 0.649438977)
        wait(1)
        game.Players:Chat("tp others me") -- use chat function
        game.Players:Chat("speed all 0")
        game.Players:Chat("setgrav all 10000")
        game.Players:Chat("blind others")
        wait(.5)
        for i = 1,100 do
            game.Players:Chat("rocket/all all al")
        end
        wait(.5)
        game.Players:Chat("size all 9.9")
        wait(2)
        for i=1,10 do
            game.Players:Chat("tp others me")
            game.Players:Chat("unskydive all")
        end
        wait(.5)
end

function vgcrash() ---Credits To KohlsLite.
     chat("gear me 00000000000000094794847")
      repeat task.wait() until game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
      local vg = game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
      vg.Parent = game.Players.LocalPlayer.Character
      repeat task.wait() until not game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Coffin")
      repeat task.wait() until game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Remote")
      game.Players.LocalPlayer.Character.VampireVanquisher.Remote:FireServer(Enum.KeyCode.Q)
      for i = 1,100 do
        Chat("unsize me")
end
-----CREDITS------
print("dawninja21 - OWNER")
print("WhoIsTano helped very much even when people called me a skid.prefix")
print("ts2021 i skid a little bit from him 🧌 but he still supported")
print("Razan Helped me sm")
print("idk")
                
------Boot Messages------
notify("Game Name: Kohls Admin House") -- you need to add code to check you're in the correct game first!
notify("Game Supported!") -- you need to add code to check you're in the correct game first!
                
-------Whitelist-------
local whitelist = {
"dawninja21",
"Di33le2",
"ScriptingProgrammer"
}

isWhitelisted = false

local function checkwhitelist()
          for _, whitelistedName in ipairs(whitelist) do
                  if lp.Name == whitelistedName then
                        isWhitelisted = true
                        break
                  end
          end

          if not isWhitelisted then
                lp:Kick("You are not whitelisted.")
          end
end

checkwhitelist()
