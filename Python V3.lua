--[[
Script Will Go Private Soon.
Dm me for access if u want it.
Private in 3 weeks cya.
the erros are crazy ill fix them but
to lazy rn
Siyuru private in 3 days 🐍 on top
im trying to learn to break a loop but its not goin well
--]]


--- VARS
local RunService = game:GetService("RunService")
local commands = {}
local CONS = {}
local lp = game.Players.LocalPlayer
local bp = Backpack
local lpc = lp.Character
local lpch= lpc.HumanoidRootPart
local gwl = {}
local aname = "<Python.docx V3🐍>"
local autorun = {}
local bgears = {
"VampireVanquisher",
"PortableJustice"
}
local prefix = "-"
local Whitelisted = {"dawninja21", "dawninja21alt"}


--//Funcs
local function targets(a)
local args = {}
        for i, plr in pairs(game.Players:GetPlayers()) do
        if string.sub(plr.Name:lower(),1,#a) == a:lower() then
            table.insert(args1, plr)
end
      end
                return args1
end

local function notif(msg)
        game.StarterGui:SetCore("SendNotification", {
                Title = "Siyuru.Docx V3",
                Text = msg,
                Duration = 1
        })
end;

function startups()
        for i = 1,#autorun do
                chat(autorun[i])
end
end

startups()

function chat(msg)
        game.Players:Chat(msg)
end


--//Cmds
--- edited scv2 handla ---
--- idk if this handler works but u can use it if u want ---
--- open source ---

local function check(a)
  for i,v in pairs(game.Players:GetPlayers()) do
    if string.sub(v.Name:lower(),1,#a) == a:lower() or string.sub(v.DisplayName:lower(), 1, #a) == a:lower() then
plr = v
                if a:lower() == "me" then
                        return lp
end
    end
  end
end

local function chat(msg)
game.Players:Chat(msg)
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local split = string.split(msg, " ")
        local cmd = split[1]
        local args1 = split[2]

if cmd == prefix.."toolban" then
					check(args[2])
CONS[plr.Name.." ToolBan"] = RunService.RenderStepped:Connect(function()
if plr.Backpack:FindFirstChildOfClass("Tool") then
chat("ungear "..plr.Name)
end
end)
end


if cmd == prefix.."untoolban" then
                        for i, plr in ipairs(targets(args1)) do
        CONS[plr.Name.." Toolban"]:Disconnect()
end
end

        if cmd == prefix.."vgc" then
    chat("gear me 00000000000000094794847")
    local tool = lp.bp:WaitForChild("VampireVanquisher")
tool.Parent = game.Players.LocalPlayer.Character
tool:Activate()
wait(0.1)
     for i = 1,100 do
chat("unsize me me me")
end
notif("Server Crashed!")
end

addcommand({
        Name = "anticrash",
        Function = function()
                        CONS.gearbl = RunService.RenderStepped:Connect(function()
                task.spawn(function()
                                for i,v in pairs(game.Players:GetPlayers())
                        v.Backpack.ChildAdded:Connect(function(gear)
                                for _, v in pairs(gearbl) do
                                        if gear.Name == gearbl then
                                                chat(":ungear/"..v.Name)
                                                chat(":h/\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nBuddy Ur Not Gonna Use "..gearbl.." "..v.Name)
end)
end)
end
})

addcommand({
        Name = "unanticrash",
        Function = function()
                CONS.gearbl:Disconnect()
end
})

addcommand({
        Name = "cool",
         Function = function()
game.Players:Chat("h a")
end
})

addcommand({
            Name = "ban2",
    Function = function()
for i, plr in ipairs(targets(args[2])) do
            table.insert(Blacklisted, plr.Name)
        end
end
})

addcommand({
        Name = "antikill",
        Function = function(targets)
                                for i, plr in ipairs(targets(args[2]) do
                CONS[plr.Name.." ANTIKILL"] = plr.CharacterAdded:Connect(function(a)
                       a:WaitForChild("Humanoid").Died:Once:(function()
                                chat("rest "..plr.Name.." (fuck)")
                                chat("god "..plr.Name.." (fuck)")
end)
end)
end
end
})

addcommand({
        Name = "unantikill",
        Function = function()
                check(args[2])
                        CONS[plr.Name.." ANTIKILL"]:Disconnect()
end
})
            

addcommand({
        Name = "wl",
        Function = function()
    for i, plr in ipairs(targets(args[2]) do
                table.insert(Whitelisted, plr.Name)
end
end
})

addcommand({
            Name = "gwl",
            Function = function(targets)
           for i, plr in ipairs(targets) do
table.insert(gwl, plr.Name)
end
end
})

addcommand({
        Name = "ban",--- i might change to another ban
        Function = function()
check(args[2])
chat("h \n\n\n\n\n\n\n\n\n\n"..aname.."\n\n\n\n\n"..plr.Name.." Has Just Been Banned!")
                CONS[plr.Name.." Ban"] = RunService.Renderstepped:Connect(function()
                wait()
        if not plr then
                CONS[plr.Name.." Ban"]:Disconnect()
                        else
if not game.Lighting:FindFirstChild(plr.Name) then
    chat("skydive "..plr.Name)
   chat("blind "..plr.Name)
     chat("punish "..plr.Name)
   chat("pm "..plr.Name.." Your Have Been Blacklisted From The Server!")
end
end
end)
end
})

addcommand({
        Name = "BanHammer",
        Function = function()
                        for i,plr in ipairs(targets(args[2])) do
       mode = args[2]
               chat("gear "..plr.Name.." 10468797")
                        chat("h/"..string.rep("\n",30).."BanHammer Given! to "..plr.Name.." Say -bcommands To Learn More!")
            local mode = kill
      local tool = game.Players.LocalPlayer.Backpack:WaitForChild("BanHammer")
      tool.Handle.Touched:Connect(function(v)
         local p = v.Parent
               if p == plr.Name then return end
      if p.Character.Humanoid.Health <= 0 then return end
            if not p:FidFirstChild("Humanoid") then return end
                        if mode == "explode" then
         for i = 1,50 do
chat("explode "..p)
end
end

if mode == "kill" then
chat("kill "..p)
end

if mode == "kick" then
chat("-k1 "..p)
end
end)
end
                        end
})

addcommand({
      Name = "nok",
                Function = function()
        for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                v.CanCollide = false
                v.CanTouch = false
end
end
})

addcommand({
        Name = "Test",
        Function = function()
                while true do
                        chat("h a")
task.wait(10)
        break
end
end
})


addcommand({ --- test
        Name = "king",
        Function = function()
        chat("kill "..plr.Name)
                end
})

task.spawn(function() --- yea idc if im called a skid
game.Players.Chatted:Connect(function(msg) --- literally i tried a wl like 30 times and it didnt work
                if table.find(Whitelisted, v.Name) then
                        if string.sub(msg, 1, 1) == ":" then return end

                        if string.sub(msg, 1, 1) == "" then return end

                        if string.sub(msg, 1, 1) == "/" then return end

                        if string.sub(msg, 1, 1,) == prefix then
                                chat(msg)
end
end
end)
end

task.spawn(function() --- credits to jotunn i couldnt figure this simple shit out LOL
          local wl = isfile("Whitelisted.txt")
            if not wl then 
               writefile("Whitelisted.txt", "Roblox\n")
            else
              wl = readfile("Whitelisted.txt"):split("\n")
              for i = 1,#wl do 
                table.insert(Whitelisted, wl[i])
              end 
            end
end)

task.spawn(function()
          local bl = isfile("Blacklisted.txt")
            if not bl then 
               writefile("Blacklisted.txt", "Roblox\n")
            else
              bl = readfile("Blacklisted.txt"):split("\n")
              for i = 1,#bl do 
                table.insert(_G.Blacklisted, bl[i])
              end 
            end
end)

        task.spawn(function()
            while true do
    wait()
            pcall(function()
    for i, v in ipairs(Blacklisted) do
        if not v then
            break
                    else
        if not game.Lighting:FindFirstChild(v) then
            chat("punish "..v.Name)
                chat("blind "..v.Name)
                        chat("skydive "..v.Name)
end
end
end
end)
end
end)
							task.spawn(function()
				    CONS["_BANG2"] = RunService.RenderStepped:Connect(function()
        for i, gearz in pairs(bgears) do
                        for i,v in pairs(game:GetService("Players"):GetChildren()) do
                                        v.Backpack:ChildAdded:Connect(function(gear)
                                                if gear.Name == gears then
            if v.Name ~= lp.Name and not table.find(gwl, v.Name) then
                        chat(":reset "..v.Name.." (FUCK)")
                        chat(":h/"..string.rep("\n",30).."["..aname.."]\n"..v.Name.." Just tried to use "..gear.Name.." WILD!")
end
end
end
end
end)
end)

local Whitelist = {
"Nunin"
}

local function wl()
        for i,v in pairs(Whitelist) do
        if lp.Name ~= v then
                while true do end
        else
                print("Whitelisted!")
end
end
end

wl()