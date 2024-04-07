local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local state = false

function option(text, color, time, callback)
   Notification:Notify(
      { Title = "Route", Description = text },
      { OutlineColor = color, Time = time, Type = "option" },
      {
         Image = "rbxassetid://16754163547",
         ImageColor = Color3.fromRGB(52, 50, 201),
         Callback = function(State)
            state = State
            callback(state)
         end
      }
   )
end

function notif(text, color, time)
   Notification:Notify(
      { Title = "Violet", Description = text },
      { OutlineColor = color, Time = time, Type = "Default" }
   )
end

local Settings = {
   ["Autorun Commands"] = {"nok"}, -- Commands to run automatically
   ["Default Whitelisted"] = {"p3ud","t_echr","MasterOfSouls","me_Capybara", "Festive", "whatveidone"}, -- People whitelisted by default
   ["Default Banned"] = {"794x794","Instlgator","blue20043","Arman2oooo","aonhayhoinon011","KsiPrimeUwu","BarfinOnTheHomeless"}, -- People banned by default
   ["Prefix"] = ".", -- Prefix used for running commands
   ["Perm"] = false,
   ["Person299's Admin"] = false,
   ["Default Softlocked"] = {"794x794","Instlgator","blue20043","Arman2oooo","aonhayhoinon011","KsiPrimeUwu","BarfinOnTheHomeless","InceptionToxic","KyjeuX","surakurd","KohlsH_Angler","brandonx08x","Isuresurescirpt"}, -- If you do not own Person299's Admin, some commands will be fixed appropriately
}

game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
repeat wait() until game:IsLoaded()

repeat task.wait() until game:IsLoaded()

function dcrash()
    for i = 1, 50 do
       game.Players:Chat("dog all all all")
    end
    for i = 1, 50 do
       game.Players:Chat("clone all all all")
    end
    while task.wait() do
       game.Players:Chat("clone all all all")
    end
end


local loadtime = os.clock()
local owner = game.Players.LocalPlayer
local chr,character,char = owner.Character
local consoleOn = false
game:GetService("RunService").RenderStepped:Connect(function()
   chr=owner.Character
end)
local running = true
local prefix = Settings["Prefix"]
local GUI = {}
local commandlist = {}
local Connections = {}
local Loops = {}
local Toolbans = {}
local ServerLockedProtection = {}
local Whitelisted = Settings["Default Whitelisted"]
local Banned = Settings["Default Banned"]
local PersonsAdmin = Settings["Person299's Admin"]
local perm = Settings["perm"]
local ServerLocked = false
local ServerLockedSoundEnabled = false
local ServerLockedSound = ""

local Audios = {}
spawn(function()
local s,f=pcall(function()
local audioHttpRequest = game:HttpGet("https://pastebin.com/raw/avxb44gq")
for i,v in pairs(audioHttpRequest:split("\n")) do
   local data = v:split(";")
   table.insert(Audios,{data[1],data[2],data[3],data[4]})
end
end)if s then print("Bypassed audios loaded successfully")else print("Bypassed audios could not be loaded")end end)

local lettersStringFormat=[[abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()_+={}|[]\;',./<>?:`~-]]
local lettersTableFormat={}
for i=1,#lettersStringFormat do
   table.insert(lettersTableFormat,lettersStringFormat:sub(i,i))
end


if perm then
   game.Players:Chat("unperm")
end

function Hint(name, text)
   if PersonsAdmin then
      game.Players:Chat("h/" .. string.rep("\n", 34) .. "[" .. name .. "]")
      game.Players:Chat("h/" .. string.rep("\n", 36) .. text)
   else
      game.Players:Chat("h " .. string.rep("\n", 34) .. "[" .. name .. "]")
      game.Players:Chat("h " .. string.rep("\n", 36) .. text)
   end
end

function GetPlayers(jjk)
local boss = lp
local fat = {}
if jjk:lower() == "me" then 
return {boss} 

elseif jjk:lower() == "all" then 
return game:GetService("Players"):GetChildren() 

elseif jjk:lower() == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= boss.Name then
table.insert(fat,v)
end
end
return fat

elseif jjk:lower() == "random" then
return {game:GetService("Players"):GetChildren()[math.random(1,#game:GetService("Players"):GetChildren())]}

else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.Name:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.DisplayName:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
return fat
end

end

--These are the functions used for playing music and sounds
function GetGuitar()
   if game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword") then
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
       tool.Parent = game.Players.LocalPlayer.Character
       return tool
   elseif game.Players.LocalPlayer.Character:FindFirstChild("GuitarSword") then
       return game.Players.LocalPlayer.Character:FindFirstChild("GuitarSword")
   else
       game.Players:Chat("gear me 60357982")
       repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
       tool.Parent = game.Players.LocalPlayer.Character
       return tool
   end
end
function GetDrum()
   if game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit") then
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
       tool.Parent = game.Players.LocalPlayer.Character
       return tool
   elseif game.Players.LocalPlayer.Character:FindFirstChild("DrumKit") then
       return game.Players.LocalPlayer.Character:FindFirstChild("DrumKit")
   else
       game.Players:Chat("gear me 33866728")
       repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
       tool.Parent = game.Players.LocalPlayer.Character
       return tool
   end
end
function GetBongo()
   if game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums") then
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
       tool.Parent = game.Players.LocalPlayer.Character
       return tool
   elseif game.Players.LocalPlayer.Character:FindFirstChild("BongoDrums") then
       return game.Players.LocalPlayer.Character:FindFirstChild("BongoDrums")
   else
       game.Players:Chat("gear me 57902997")
       repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
       tool.Parent = game.Players.LocalPlayer.Character
       return tool
   end
end
function PlayNote(Note)
   local Tool = GetGuitar()
   Tool.Handle:FindFirstChild(Note):Play()
end
function PlayDrum(Sound)
   local Tool = GetDrum()
   Tool.Handle:FindFirstChild(Sound):Play()
end
function PlayBongo(Sound)
   local Tool = GetBongo()
   Tool.Handle:FindFirstChild(Sound):Play()
end

function moveObject(target,wawawaa)
   function equipivory()
      if lp.Backpack:FindFirstChild("IvoryPeriastron") then
         lp.Backpack.IvoryPeriastron.Parent = lp.Character
      else
          if not lp.Character:FindFirstChild("IvoryPeriastron") then
              game.Players:Chat("gear me 108158379")
              repeat wait() until lp.Backpack:FindFirstChild("IvoryPeriastron")
              lp.Backpack.IvoryPeriastron.Parent = lp.Character
          end
      end
   end
   equipivory()
  if lp.Character:FindFirstChild("IvoryPeriastron") then
     local cf = lp.Character.HumanoidRootPart
     local setdadamncframe = true
     local thedollar = wawawaa
     spawn(function()
       repeat game:GetService("RunService").RenderStepped:Wait()
       game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = thedollar
       game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
       until not setdadamncframe
       end)
     wait(0.2)
       setdadamncframe = false
     lp.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
     cf.Anchored = false
     local looping = true
     local thedollarsecondary = Instance.new("Part",cf.Parent)
     thedollarsecondary.Anchored = true
     thedollarsecondary.Size = Vector3.new(10,1,10)
     thedollarsecondary.CFrame = (target.CFrame * CFrame.new(-1*(target.Size.X/2)-(lp.Character['Torso'].Size.X/2), 0, 0)) * CFrame.new(0,-3.5,0)
     spawn(function()
        while true do
           game:GetService('RunService').Heartbeat:wait()
           game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
           target.RotVelocity = Vector3.new(0,0,0)
                     target.Velocity = Vector3.new(0,0,0)
                     cf.Velocity = Vector3.new(0,0,0)
                     cf.RotVelocity = Vector3.new(0,0,0)
            cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(lp.Character['Torso'].Size.X/2), 0, 0)
           if not looping then break end
        end
     end)
     spawn(function() while looping do game:GetService('RunService').Heartbeat:wait() game:GetService("Players"):Chat('unpunish me') end end)
     wait(0.3)
     looping = false
     lp.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
     wait(0.3)
     game:GetService("Players"):Chat("respawn me")
     
  end
end

function getSoundId(githubLink,fileName)
   if not isfolder("LocalMusic") then makefolder("LocalMusic") end
   if not isfile("LocalMusic/"..tostring(fileName)..".mp3") then
       writefile("LocalMusic/"..tostring(fileName)..".mp3",syn.request({Url=githubLink, Method='GET'}).Body)
   end
   return getsynasset("LocalMusic/"..tostring(fileName)..".mp3")
end

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
               Hint("Violet", "The command you have recently sent is not properly formatted.\n The correct format is: \n "..lister)
           end
       end
   end
end

addCommand("goto",{"player"},function(args)
   for i,v in pairs(GetPlayers(args[1])) do
   game.Players:Chat("tp me "..v.Name.."")
   end
end)

addCommand("bring",{"player"},function(args)
   for i,v in pairs(GetPlayers(args[1])) do
   game.Players:Chat("tp "..v.Name.." me")
   end
end)

addCommand("ref",{"player"},function(args)
   for i,v in pairs(GetPlayers(args[1])) do
   game.Players:Chat("reload "..v.Name.."")
   end
end)

addCommand("antiabuse",{},function()
   Loops.antiabuse = true
   repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
       if chr and chr.Parent == game.Lighting then
           game.Players:Chat("unpunish me")
     chr.Parent=workspace
       end
       if lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND") then
           lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND"):Destroy()
           game.Players:Chat("unblind me")
       end
       if chr and chr.Humanoid and chr.Humanoid.Health <=0 then
           game.Players:Chat("reset me")
       end
  if chr and chr:FindFirstChild("Rocket") then
     for i,v in pairs(chr:GetChildren()) do if v.Name=="Rocket" then v:Destroy() end end
     if PersonsAdmin then game.Players:Chat("unrocket/me") else game.Players:Chat("reset me") end
  end
       if chr and chr:FindFirstChild("ice") then
           game.Players:Chat("unfreeze me")
           chr:FindFirstChild("ice"):Destroy()
           for i,v in pairs(chr:GetDescendants()) do
               if v:IsA("BasePart") then v.Anchored = false end
           end
       end
       if chr and chr:FindFirstChild("Addon") then
           chr:FindFirstChild("Addon"):Destroy()
           game.Players:Chat("reset me")
       end
       if chr and chr.Head and chr.Torso and game.Players.LocalPlayer:DistanceFromCharacter(game.Players.LocalPlayer.Character.Torso.Position) == 0 then
           game.Players:Chat("reset me")
       end
       if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.Name.."'s jail") then
           game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.Name.."'s jail"):Destroy()
           game.Players:Chat("unjail me")
       end
       if chr and chr.Torso and chr.Torso:FindFirstChild("SPINNER") then
           chr.Torso:FindFirstChild("SPINNER"):Destroy()
           game.Players:Chat("unspin me")
       end
       if plr.PlayerGui:FindFirstChild("NoClip") then
           plr.PlayerGui:FindFirstChild("NoClip"):Destroy()
           if chr and chr.Torso then chr.Torso.Anchored = false end
           if chr and chr.Humanoid then chr.Humanoid.PlatformStand = false end
           game.Players:Chat("clip me")
       end
      
           local player = game.Players.LocalPlayer
            if player.Character then
                   local humanoid = player.Character:WaitForChild("Humanoid", 1)
                   if humanoid and humanoid.PlatformStand then
                       humanoid.PlatformStand = false
                       Chat("unstun me")
                   end
           
               if game.Players.LocalPlayer.Character:FindFirstChild("Seizure") then
               Chat("unseizure me")
           end
    
          if game.Players.LocalPlayer.UserId ~= game.Players.LocalPlayer.CharacterAppearanceId then
             Chat("unchar me")
          end
       end
       
               for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                       if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "HintGUI" or v.Name == "Ice" then
                                   v:Destroy()
                       end
               end
       
   end)until not Loops.antiabuse
end)

addCommand("antispeed",{},function()
  local function onChar(Char)
     repeat wait() until Char:FindFirstChildOfClass("Humanoid")
        Connections.antispeedb = Char.Humanoid.Changed:Connect(function(prop)
           if prop == "WalkSpeed" then
              game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
           end
     end)
  end
  
  Connections.antispeeda = game.Players.LocalPlayer.CharacterAdded:Connect(onChar)
  onChar(game.Players.LocalPlayer.Character)
end)

addCommand("unantispeed",{},function()
  Connections.antispeeda:Disconnect()
  Connections.antispeedb:Disconnect()
end)

addCommand("antimsg",{},function()
  Loops.antimessage = true
  repeat game:GetService("RunService").RenderStepped:Wait()
     pcall(function()
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HintGui") then
           game.Players.LocalPlayer.PlayerGui:FindFirstChild("HintGui"):Destroy()
           game.Players:Chat("clr")
        end
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MessageGui") then
           game.Players.LocalPlayer.PlayerGui:FindFirstChild("MessageGui"):Destroy()
           game.Players:Chat("clr")
        end
        
        if game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message") then
           if not string.find(game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message").Text,ScriptName) then
              game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message"):Destroy()
              game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message")
           end
        end
        if game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint") then
           if not string.find(game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint").Text,ScriptName) then
              game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint"):Destroy()
              game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint")
           end
        end
     end)
  until not Loops.antimessage
end)

addCommand("unantimsg",{},function()
  Loops.antimessage = false
end)

addCommand("antifly",{},function()
   Loops.antifly = true
   repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
       if plr.PlayerGui:FindFirstChild("Fly") then
           plr.PlayerGui:FindFirstChild("Fly"):Destroy()
           if chr and chr.Torso then chr.Torso.Anchored = false end
           if chr and chr.Humanoid then chr.Humanoid.PlatformStand = false end
           game.Players:Chat("unfly me")
       end
   end)
   until not Loops.antifly
end)

addCommand("unantifly",{},function()
   Loops.antifly = false
end)

addCommand("lock",{},function()
    game.Players:Chat("altblind")
    game.Players:Chat("unpunish all "..math.random(1,1000));task.wait()
 game.Players:Chat("invis all "..math.random(1,1000))
 game.Players:Chat(":refresh all "..math.random(1,1000))
 game.Players:Chat("invis all "..math.random(1,1000))
 game.Players:Chat(":kill all "..math.random(1,1000))
 game.Players:Chat(":trip all "..math.random(1,1000))
 game.Players:Chat(":setgrav all" .. " -1000000000000000000000000000000000000000000000000000000000000000000000000000000000000");wait(.1)
 game.Players:Chat("invis all all all "..math.random(1,1000))
 game.Players:Chat(":unpunish all all all "..math.random(1,1000));task.wait(.2)
 game.Players:Chat("invis all "..math.random(1,1000));wait(.2)
 game.Players:Chat(":reset all "..math.random(1,1000));wait(.15)
 game.Players:Chat(":punish all all all   "..math.random(1,1000));wait(.1)
 end)
 
 addCommand("altblind",{},function()
 game.Players:Chat(":blind all")
 game.Players:Chat("fogcolor 0 0 0")
 game.Players:Chat("fogend nil")
 game.Players:Chat("brightness nan")
 game.Players:Chat("time -")
 end)

addCommand("antikick",{},function()
   Loops.antikick = true
   repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
   if chr and chr:FindFirstChild("BlueBucket") then
       chr:FindFirstChild("BlueBucket"):Destroy()
       game.Players:Chat("removetools me")
   end
   if plr and plr.Backpack and plr.Backpack:FindFirstChild("BlueBucket") then
       plr.Backpack:FindFirstChild("BlueBucket"):Destroy()
       game.Players:Chat("removetools me")
   end
   if chr and chr:FindFirstChild("HotPotato") then
       chr:FindFirstChild("HotPotato"):Destroy()
       game.Players:Chat("removetools me")
   end
   if plr and plr.Backpack and plr.Backpack:FindFirstChild("HotPotato") then
       plr.Backpack:FindFirstChild("HotPotato"):Destroy()
       game.Players:Chat("removetools me")
   end
   if chr and chr:FindFirstChild("DriveBloxUltimateCar") then
       chr:FindFirstChild("DriveBloxUltimateCar"):Destroy()
       game.Players:Chat("removetools me")
   end
   if plr and plr.Backpack and plr.Backpack:FindFirstChild("DriveBloxUltimateCar") then
       plr.Backpack:FindFirstChild("DriveBloxUltimateCar"):Destroy()
       game.Players:Chat("removetools me")
   end
  for i,v in pairs(workspace:GetDescendants()) do
     if v and v.Name == "Rocket" then
        pcall(function()
           if v.CanCollide then
              v.CanCollide = false
           end
        end)
     end
  end
   end)until not Loops.antikick
end)

addCommand("anticrash",{},function()
   runCommand(prefix.."antikick",{})
end)

addCommand("unanticrash",{},function()
   runCommand(prefix.."unantikick",{})
end)

addCommand("unantikick",{},function()
   Loops.antikick = false
end)

addCommand("antiservercrash",{},function()
   Loops.antiservercrash = true
   repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
   for i,v in pairs(game.Players:GetPlayers()) do
       spawn(function()
           if v and v.Character and v.Character:FindFirstChild("VampireVanquisher") then v.Character:FindFirstChild("VampireVanquisher"):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("reset "..v.Name)game.Players:Chat("kill "..v.Name)
               Hint(Violet, "Please don't crash the server, "..v.DisplayName..".")
               end
       end)
       spawn(function()
           if v.Backpack:FindFirstChild("VampireVanquisher") then v.Backpack:FindFirstChild("VampireVanquisher"):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("reset "..v.Name)
               Hint(Violet, "Please don't crash the server, "..v.DisplayName..".")
               end
       end)
   end
   end)until not Loops.antiservercrash
end)

addCommand("unantiservercrash",{},function()
   Loops.antiservercrash = false
end)

addCommand("spamcommands",{"delay","command"},function(args)
   Loops.spamcommand = true
   repeat
       local message = args[2]
   for i=3, #args do
           if args[i]=="<%RANDOMSTRING%>" then
               local asuhdyuasd=""
               for i=1,25 do
               asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
               end
               
               message = message.." "..asuhdyuasd
           elseif args[i]==[[\n]] then
           message = message.." ".."\n"
           else
           message = message.." "..args[i]
           end
   end
       for i,v in pairs(message:split("|")) do
           game.Players:Chat(v)
           wait(tonumber(args[1]))
       end
until not Loops.spamcommand
end)

addCommand("bind",{"key","command"},function(args)
   Connections["_Binding"..tostring(math.random(0,99999))] =game:GetService("UserInputService").InputBegan:Connect(function(Key,GP)
       if not GP and Key.KeyCode == Enum.KeyCode[args[1]] then
       local message = args[2]
   for i=3, #args do
           if args[i]=="<%RANDOMSTRING%>" then
               local asuhdyuasd=""
               for i=1,25 do
               asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
               end
               
               message = message.." "..asuhdyuasd
           elseif args[i]==[[\n]] then
           message = message.." ".."\n"
           elseif args[i]=="<%MOUSETARGET%>" then
               local MouseTarget = plr:GetMouse().Target
               MouseTarget = MouseTarget.Parent
               if MouseTarget:IsA("Accessory") or MouseTarget:IsA("Hat") then
                   MouseTarget = MouseTarget.Parent
               end
               if MouseTarget:FindFirstChild("Humanoid") and not string.find(MouseTarget.Name," ") then
                   message = message.." "..MouseTarget.Name
               else
                   message = message.." ".."COULDNOTFINDPLAYER"
               end
           else
           message = message.." "..args[i]
           end
   end
       for i,v in pairs(message:split("|")) do
           game.Players:Chat(v)
       end
   end
end)
end)

addCommand("unbind",{},function()
for i,v in pairs(Connections) do if i:sub(1,8) == "_Binding" then v:Disconnect() end end
end)

addCommand("tomouse",{},function()
chr.HumanoidRootPart.CFrame = plr:GetMouse().Hit
end)

addCommand("house",{},function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.3467445, 8.22999954, 73.5216293)
end)

addCommand("fregen",{},function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Regen.CFrame * CFrame.new(0,2.5,0)
end)

addCommand("lock",{},function()
   game.Players:Chat("altblind")
   game.Players:Chat("unpunish all "..math.random(1,1000));task.wait()
game.Players:Chat("invis all "..math.random(1,1000))
game.Players:Chat(":refresh all "..math.random(1,1000))
game.Players:Chat("invis all "..math.random(1,1000))
game.Players:Chat(":kill all "..math.random(1,1000))
game.Players:Chat(":trip all "..math.random(1,1000))
game.Players:Chat(":setgrav all" .. " -1000000000000000000000000000000000000000000000000000000000000000000000000000000000000");wait(.1)
game.Players:Chat("invis all all all "..math.random(1,1000))
game.Players:Chat(":unpunish all all all "..math.random(1,1000));task.wait(.2)
game.Players:Chat("invis all "..math.random(1,1000));wait(.2)
game.Players:Chat(":reset all "..math.random(1,1000));wait(.15)
game.Players:Chat(":punish all all all   "..math.random(1,1000));wait(.1)
end)

addCommand("altblind",{},function()
game.Players:Chat(":blind all")
game.Players:Chat("fogcolor 0 0 0")
game.Players:Chat("fogend nil")
game.Players:Chat("brightness nan")
game.Players:Chat("time -")
end)

addCommand("nok",{},function()
    for _, Bricks in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
		Bricks.CanTouch = false ---- your welcome tano! - DIZZY
   notif("No Obby Kill has been Enabled", Color3.fromRGB(160, 32, 240), 2)
    end
end)

addCommand("unnok",{},function()
    for _, Bricks in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
		Bricks.CanTouch = true ---- your welcome tano! - DIZZY
   notif("No Obby Kill has been Disabled", Color3.fromRGB(160, 32, 240), 2)
    end
end)

addCommand("antikill",{},function()
    while task.wait() do
        game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function() if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
              game.Players:Chat("reload me")
              game.Players:Chat("god me")
        end end)
    end
end)

addCommand("perm",{},function()
    perm = true
    Loops.perm = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        padNames = {}
        for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
            table.insert(padNames,v.Name)
        end
        if not table.find(padNames,game.Players.LocalPlayer.Name.."'s admin") then
            if table.find(padNames,"Touch to get admin") then
                for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
                    if v.Name == "Touch to get admin" then
                        firetouchinterest(chr.Head,v.Head,0)firetouchinterest(chr.Head,v.Head,1)
                        break
                    end
                end
            else
                
            end
        end
    until not Loops.perm
end)

addCommand("unperm",{},function()
    local perm = false
    Loops.perm = false
end)

addCommand("noperm",{},function()
    runCommand(prefix.."unperm",{})
end)

addCommand("rebootserver",{},function()
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
wait(.1)
game.Players:Chat('size all .3')
game.Players:Chat('size all .3')
game.Players:Chat('freeze all')
game.Players:Chat('setgrav all 100000')
game.Players:Chat('size all 10')
game.Players:Chat('clone all all all')
game.Players:Chat('size all .3')
game.Players:Chat('size all 10')
end)

addCommand("sync",{},function()
local folder = workspace.Terrain._Game.Folder
game.Players:Chat("clr")
repeat task.wait() until not folder:FindFirstChild("Sound")	
game.Players:Chat("time -")
game.Players:Chat("fogcolor 0 0 0")
game.Players:Chat("fogend 500")
game.Players:Chat("music 1839333797");
repeat task.wait() until folder:FindFirstChild("Sound") and folder:FindFirstChild("Sound").Playing
local sound = folder:FindFirstChild("Sound")
task.spawn(function() 
if sound.TimePosition == 0 then repeat task.wait() until not sound.TimePosition == 0 end
if sound.TimePosition ~= 0 then repeat task.wait() until not sound.TimePosition == 0 end
game.Players:Chat("fix");
game.Players:Chat("clr");
end)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\nBoom boom                                               ");wait(.75)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                         wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                         wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                            wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                          wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                         wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                         wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                            wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                          wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Wa ba baaaaaa                                             ");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                              Wa ba baaaaaa");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Baaaaaa");wait(1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                          Bah bah");wait(.25)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                   Baaaaaa");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Bah bah bah bah");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                         wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                         wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                            wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                          wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                  wooooooooo");wait(1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                                                                 wooooooooo");wait(1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n wooooooooooooooooo (ahh- haaaaaaaa waaaaaaaa haaaaaaaaaaa)");wait(5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Ba ba da ba baaaaam");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Ba da ba baaaaam");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Ba da ba baaaaaaaaaaaaaaaaaaaam");wait(3.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Ba ba da ba baaaaam                                                             ");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                                        ba da baaaaaaaaaaa haaaaaaaaaaaaaa aaaaaaaaaaaaa haaaaaaaaaa");wait(5.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                         wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                         wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                            wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                          wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                         wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                         wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                            wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                          wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Wa ba baaaaaa                                             ");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                              Wa ba baaaaaa");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Baaaaaa");wait(1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                          Bah bah");wait(.25)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                   Baaaaaa");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Bah bah bah bah");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                         wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                         wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                            wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                          wooooooooo");wait(2)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Oooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                     wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                        wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                           wooo");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                  wooooooooo");wait(1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                                                                 wooooooooo");wait(1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n wooooooooooooooooo (ahh- haaaaaaaa waaaaaaaa haaaaaaaaaaa)");wait(4.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n            dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n                        dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n                                    dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n                                                  dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n                                                               dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n                                                                           dun                                               ");wait(.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n dun                                               ");wait(.25)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n                                               dun");wait(.25)
end)

addCommand("lg",{},function()
   Loops.autoadmin = true
   repeat game:GetService("RunService").RenderStepped:Wait()
       for i,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
           if v.Name ~= plr.Name.."'s admin" then
               firetouchinterest(chr.Head,v.Head,0)firetouchinterest(chr.Head,v.Head,1)
           end
       end
   until not Loops.autoadmin
end)

addCommand("unlg",{},function()
    Loops.autoadmin = false
end)

addCommand("dcrash",{},function()
    dcrash()
end)

addCommand("pmkick",{},function()
   game.Players:Chat("freeze "..v.Name)
   game.Players:Chat("dog "..v.Name)
   game.Players:Chat("rainbowify "..v.Name)
   game.Players:Chat(".spam name "..v.Name.. " Dogs> \n Cats")
   game.Players:Chat(".spam pm " .. v.Name .. " ðððððfððð¤£ð­ðððfððððððððfððfðððð¤£ð­ððfðððððfðððððððððð¤£ð­ððððððððððððððððð¤£ð­ððððððððð ðððððððð¤£ð­ððððððððððððððððð¤£ð­ððððððððððððððððð¤£ð­ððððððððððððððððð¤£ð­ððððððððð")
end)

addCommand("rocketpurge",{},function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(455.448242, 3.63637614, 453.299042, 0.649438977, 6.72485001e-08, 0.760413706, -7.56329328e-08, 1, -2.38416611e-08, -0.760413706, -4.20286135e-08, 0.649438977)
wait(1)
game.Players:Chat("tp others me")
game.Players:Chat("speed all 0")
game.Players:Chat("setgrav all 10000")
game.Players:Chat("blind others")
wait(.5)

for i=1,1000 do
game.Players:Chat("rocket/ all all all "..math.random(1,1000))
end
wait(.5)
game.Players:Chat("size all 9.9")
wait(2)
for i=1,10 do
game.Players:Chat("tp others me")
game.Players:Chat("unskydive all")
wait(.5)
end
end)

Connections.Chatted = game.Players.LocalPlayer.Chatted:Connect(function(msg)
   if not running then return end
   local BM = msg:split(" ")
   if BM[1] == "/e" then
       table.remove(BM,1)
   end
   if string.sub(BM[1],0,#prefix) == prefix then
   local commandname = BM[1]:lower()
   local t = ""
   table.remove(BM,1)
   local findargs = {}
   for i,v in pairs(BM) do
       table.insert(findargs,v)
       t=t..v.." "
   end
   spawn(function()runCommand(commandname,findargs)end)
   if consoleOn then
   print("running command: "..commandname.." "..t)
   end
   end
end)

Connections.PlayerChatted = game.Players.PlayerChatted:Connect(function(PlayerChatType,sender,message)--game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering").OnClientEvent:Connect(function(message)
   local s,f=pcall(function()
   
   
   if table.find(Whitelisted,sender.Name) then
       if not running then return end
       local BM = message:split(" ")
       if BM[1] == "/e" then
           table.remove(BM,1)
       end
       if string.sub(BM[1],0,1) == prefix then
       local commandname = BM[1]:lower()
       local t = ""
       table.remove(BM,1)
       local findargs = {}
       for i,v in pairs(BM) do
           table.insert(findargs,v)
           t=t..v.." "
       end
       spawn(function()runCommand(commandname,findargs)end)
       if consoleOn then
       Hint("Violet", "running command: "..commandname.." "..t)
       end
       end
   end
   end) if not s then print(f)end
end)

local function PlayerAdded(Player)
   spawn(function()
       repeat wait() until Player and Player.Name
       if table.find(Whitelisted,Player.Name) then
           Hint("Violet", "You are whitelisted, "..Player.Name..".\nUse .altcmds to see a list of commands.")
       end
       
       if table.find(DefaultSoftlocked,Player.Name) then
           repeat wait() until Player and Player.Character
           wait(0.25)
           runCommand(prefix.."softlock",{Player.Name})
       end

       if table.find(Banned,Player.Name) then
           repeat wait() until Player and Player.Character
           wait(0.25)
           game.Players.LocalPlayer:kick("Nah nigga you thought you was gonna kick someone")
       end
    end)
--// functions--//

Connections.PlayerAdded = game.Players.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(game.Players:GetPlayers()) do PlayerAdded(v) end

spawn(function()
for i,v in pairs(Settings["Autorun Commands"]) do
   if not running then return end
   local BM = v:split(" ")
   local commandname = prefix..BM[1]:lower()
   local t = ""
   table.remove(BM,1)
   local findargs = {}
   for i,v2 in pairs(BM) do
       table.insert(findargs,v2)
       t=t..v2.." "
   end
   spawn(function()runCommand(commandname,findargs)end)
   if consoleOn then
   print("autorunning command: "..commandname.." "..t)
   end
end end)
end

notif("Loaded the script in "..tostring(math.floor((os.clock()-loadtime)*1000)).."", Color3.fromRGB(52, 50, 201), 5)
