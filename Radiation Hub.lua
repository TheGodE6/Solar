---------SETTINGS-------------
local settings = {
["AutoRun"] = {}, -- Set To Any Value
["Default Whitelisted"] = {}, -- Default whitelisted
["Prefix"] = ">" -- Set This To Any Value
["joins"] = true,
}
----General Locals----
getgenv().joins = true
local args = string.split(msg, " ")
local gojo = false
local prefix = settings["Prefix"]
local Loops = {}
local player = game.Players
local Kohls = workspace.Terrain:WaitForChild("_Game")
local Map = Kohls:WaitForChild("Workspace")
local Admin = Kohls:WaitForChild("Admin")
local Pads = Admin:WaitForChild("Pads"):GetChildren()
local lp = game.Players.LocalPlayer
local commandlist = {}
-----MUSIC LIST--------
local musiclist = {
["1"] = { id = "6937042327" },
["2"] = { id = "15689455422", name = "BB-Balls" }
}
---COMMAND HANDLER---
  function addcommand(name,args,func)
    table.insert(commandlist,{name,args,func})
end
---COMMANDS---
addcommand("crash",{},function()  
chat("blind all")
servermsg("This Server Has Been Closed Due To An Issue.\nRadiation Hub.)
task.wait(0.0005)
dcrash()
end)

     addcommand("vrtx",{},function()
         chat("fogcolor 100 0 255")
                chat("fogend 1000")
                chat("time 6")
                chat("outdoorambient 0 0 0")
                chat("brightness 0.5")
                chat("ambient 125 0 255")
            end)

addcommand("perias",{},function()
chat("gear me "..periastronsid)
             end)

addcommand("nok",{},function()
for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                        v.CanTouch = false
            end
end)

addcommand("pmkick",{"player"},function()
      for i,v in pairs(GetPlayers(args[1])) do
       Loops.pmkick = true
            repeat task.wait()
chat("pm"..v.Name.." [Radiation Hub]: 😖🙂‍↔️😖🙂‍↔️😫😒😩😞😞😖😞🙂‍↔️😩🙂‍↔️😞😞😩😞😞😖😞😖😞😫😞😖😞😖🥳")
                  chat("freeze "..v.Name)
chat("rainbowify "..v.Name)
chat("name " .. v.Name .. " [Radiation Hub]:\n Currently Getting Kicked.")
until not Loops.pmkick
end
end)

if cmd == "neatdev" then --Partnership With DeemV1
    serversg("Loading Boss Fight....")
    wait(5)
    servermsg("BOSS FIGHT LOADED NO CHEATING")
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

addcommand("xester",{},function()--Partnership With DeemV1
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
      fixcam()
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
      chat(":m Jester: " .. bosschat)
      task.wait()
      chat("music 1843358057")
end)
    addcommand("antikill",{},function()
    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
        chat("reset me")
        end

addcommand("autogod",{},function()
if game.Players.LocalPlayer.Character.Humanoid.MaxHealth ~= "inf" then
                        chat("god me")
                    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
                    game.Players.LocalPlayer.Character.Humanoid.Health = 9e9            
end

            addcommand("lock",{"player"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
        Loops.lock = true
        repeat task.wait()
            if not game.Lighting:FindFirstChild(v.Name) then
                chat("name "..v.Name.." "..srcname.."\n LOCKED")
                                    chat("clone "..v.Name)
                                    chat("trip "..v.Name)
                                    chat("punish "..v.Name)
                                        chat("blind "..v.Name)
                                        chat("pm "..v.Name.." you are locked from the server. Please Join Another One.")            end
        until not Loops.lock
                                end
end)

addcommand("ecrash",{},function()                
chat("time 0")
chat("char all 236577266")
chat("name all "..srcnamr.." On Top!")
servermsg("Server Closed By "..srcname)
task.wait(0.0005)
dcrash()
fcrash()
end)

addcommand("xester2",{},function() --Partnership With DeemV1
    servermsg("U Defeated me...")
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
      chat(":m Corrupted Jester: " .. bosschat)
      wait(2)
      chat("music 1843358057")
end)

addcommand("purge",{},function()
chat("blind all")
servermsg("Server Purged By "..srcname)
task.wait(0.0005)
purge()
end)

addcommand("altkick",{},function()
notify("This Command Is In Progress")
end)

addcommand("notify",{"player"},function(args)
for i,v in pairs(GetPlayers(args[1])) do
chat("pm "..v.Name.." You Have Been Warned.")
end)

addcommand("supportlist",{},function()
notify("This Script Does Not Run On Solara.")
notify("This Script Runs On Arceus X")
notify("This Script Runs On Codex")
notify("This Script Runs On Wave")
notify("This Script Does Not Run On Incognito")
notify("Credits To Corev6 Dev Team.")
end)
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
------StartUp Commands------
notify("Radiation Hub Executed!")
chat("vrtx")
servermsg("Radiation Hub Loaded!")
-------FUNCTIONS-------
local function chat(msg)
    game.Players:Chat(msg)
end

local function onPlayerAdded(player)
if joins = true then
      chat("pm "..player.Name.." Welcome, "..player.Name.."\nThis Server Is Protected By ☢️Radiation Hub☢️ Hope You Enjoy Your Stay!")
end

game.Players.PlayerAdded:Connect(onPlayerAdded)

function dcrash()
for i = 1,100 do
chat("dog all all")
chat("clone all all")
end

function servermsg(msg)
chat("h \n\n\n\n\n\n\n[Radiation Hub]: "..msg.."\n\n\n\n\n\n\n")
end

function PLAYERCHECK(plr)
  for i, v in pairs(game.Players:GetPlayers()) do
      if string.sub(v.Name:lower(), 1, #plr) == plr:lower() then
          nplr = v.Name
        cplr = v
          Remind("[debug]: Found "..nplr)
      end
  end
end

function fcrash()
    for i = 1,100 do
    chat("freeze all")
    chat("clone all")
    end

 function purge() --Credits To Knocks/Kneekers
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(455.448242, 3.63637614, 453.299042, 0.649438977, 6.72485001e-08, 0.760413706, -7.56329328e-08, 1, -2.38416611e-08, -0.760413706, -4.20286135e-08, 0.649438977)
wait(1)
game.Players:Chat("tp others me")
game.Players:Chat("speed all 0")
game.Players:Chat("setgrav all 10000")
game.Players:Chat("blind others")
wait(.5)

for i = 1,100 do
game.Players:Chat("rocket/ all all al")
end
wait(.5)
game.Players:Chat("size all 9.9")
wait(2)
for i=1,10 do
game.Players:Chat("tp others me")
game.Players:Chat("unskydive all")
wait(.5)
end
----MODES----
game.Players.LocalPlayer.Chatted:Connect(function(cmd)
if cmd == "mode!gojo" then
local gojo = true
end

if cmd == "disablemode!gojo" then
local gojo = false
end

if cmd == "dx" then
Loops.dx = true
repeat task.wait()
chat("speed all 0.5")
servermsg("Domain Expansion: INFINITY VOID")
                        until not Loops.dx
                        end
end)

if cmd == "red" then
            servermsg("Universal Red...")
            servermsg("MUAHAHAH")
            chat("speed all inf")
end

-----CREDITS------
print("dawninja21 - OWNER")
print("WhoIsTano helped very much even when people called me a skid.prefix")
print("ts2021 i skid a little bit from him 🧌 but he still supported")
print("Razan Helped me sm")
print("idk")
------Boot Messages------
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n☢️Radiation Hub☢️ V2.17 Loaded!\n\n\nMade By The Radiation Dev Team.")
notiy("Game Name: Kohls Admin House")
notify("Game Supported!")
-------Whitelist-------
local whitelist = {
"dawninja21",
"Di33le2",
"ScriptingProgrammer"
}

local function checkwhitelist()
          for _, whitelistedName in ipairs(whitelist) do
                  if lp.Name == whitelistedName then
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
end
end)
end)
