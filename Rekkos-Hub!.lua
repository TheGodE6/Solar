--- Revamp ---

repeat task.wait() until game:IsLoaded()

local Settings = {
    ["AutoRun Commands"] = {},
    ["Version"] = "0.5",
    ["Default Whitelisted"] = {},
    ["Prefix"] = "-",
    ["Joins"] = false,
    ["Autoafk"] = false,
    ["bannedgears"] = {"VampireVanquisher", "OrinthianSwordAndShield", "RainbowPeriastron", "CrimsonPeriastron", "JoyfulPeriastron", "AzurePeriastron", "FestivePeriastron", "FallPeriastron", "GrimgoldPeriastron", "NoirPeriastron", "ChartreusePeriastron", "IvoryPeriastron"},
    ["Script Name"] = "Rekkos-Hub-Beta",
    ["gearwhitelist"] = {"dawninja21", "dawninja21alt"} -- players you do not want to be effected by antigear
}

local enabled = {
    ["antigears"] = true, -- enables anti gears ( so that people cant abuse them )
}

-- u aint gon like this but im doing string.sub ( the current way ur doing it doesnt work at all )

local Version = Settings["Version"]
local Srcname = Settings["Script Name"]
local prefix = Settings["Prefix"]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local LoadTime = tick()
local Loops = {}
local connections = {}
local lp = game.Players.LocalPlayer
local lpc = lp.Character
local hideid = "00000000000000000000000000000000000000000000000000000000000000000000"

local function notify(msg)
        OrionLib:MakeNotification({
            Name = "Rekkos Hub",
            Content = msg,
            Image = "rbxassetid://562993",
            Time = 5.5
        })
    end


local function say(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

local function chat(msg)
    game.Players:Chat(msg)
end

local function servermsg(msg)
    chat("h \n\n\n\n\n\n" .. Srcname .. ": " .. msg .. "\n\n\n\n\n\n\n")
end

-- this antigear was made by dek so credit him not me --
local function antigears()
    while true do
        if enabled.antigears then
            if not connections.antigears then
                connections.antigears = game:GetService("RunService").RenderStepped:Connect(function()
                    for i, player in pairs(game.Players:GetPlayers()) do
                        if player.Name ~= game.Players.LocalPlayer.Name and not table.find(Settings.gearwhitelist, player.Name) then
                            if player.Character then
                                for i, gear in ipairs(Settings.bannedgears) do
                                    if player.Backpack:FindFirstChild(gear) or player.Character:FindFirstChild(gear) then
                                        local plrname = player.Name
                                        chat(":ungear " .. plrname .. " others clyde fuck")
                                        for i = 1, 14 do
                                            task.wait(.3)
                                            chat("h/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n".. plrname .. " Just tried to use " .. gear .. "\n\n\n(point and laugh)")
                                        end
                                        task.wait(3.5)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        else
            if connections.antigears then
                connections.antigears:Disconnect()
                connections.antigears = nil
            end
        end
        task.wait(0.1)
    end
end

local function dcrash()
    for i = 1, 100 do
        chat("dog all all")
        chat("clone all all")
    end
end

local function fcrash()
    for i = 1, 100 do
        chat("freeze all")
        chat("clone all")
    end
end

-- ripped from kohls lite thanx ts2021 but ive been on this script for an hour and ur old one was RETARDED daw

function check(plr)
    for i, v in pairs(game.Players:GetPlayers()) do
        if string.sub(v.Name:lower(), 1, #plr) == plr:lower() or string.sub(v.DisplayName:lower(), 1, #plr) == plr:lower() then
            player = v.Name
            cplr = v
        end
    end
end

--- Command Hub! ---

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    task.wait()

        if string.sub(msg, 1, #prefix + 4) == prefix.."spam" then
            local spam = string.sub(msg, #prefix + 6)
            Loops.spam = true
            repeat task.wait()
            chat(spam)
        until not Loops.spam
    end

        if string.sub(msg:lower(), 1, #prefix + 5) == prefix..'house' then
            lpc.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
        end

        if string.sub(msg:lower(), 1, #prefix + 3) == prefix..'nok' then
            for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                if v.Name == "TouchInterest" then
                    v:Destroy()
                end
            end
        end

         if string.sub(msg, 1, #prefix + 8) == prefix.."antikill" then
        Loops.antikill = true
        repeat task.wait()
        if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                chat("reset me")
        end
        until not Loops.antikill
    end

if string.sub(msg, 1, #prefix + 10) == prefix.."unantikill" then
        Loops.antikill = false
        end

        if string.sub(msg:lower(), 1, #prefix + 2) == prefix..'to' then
            local plr = string.sub(msg:lower(), #prefix + 4)
            check(plr)
            if player ~= nil then
                lpc.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
            notify("Brought you to "..plr)
            end
        end

        if string.sub(msg:lower(), 1, #prefix + 5) == prefix..'bring' then
            local plr = string.sub(msg:lower(), #prefix + 7)
            check(plr)
            if player ~= nil then
                chat("tp "..plr.." me")
            notify("Brought "..plr.." to you!")
            end
        end

        if string.sub(msg:lower(), 1, #prefix + 4) == prefix..'mute' then
            local plr = string.sub(msg:lower(), #prefix + 6)
            local MuteReason = string.sub(msg:lower(), #prefix + 8)
            check(plr)
            if player ~= nil then
                notify(""..plr.." is being muted")
                Loops.mute = true
                repeat task.wait()
                    chat("pm/"..plr.."/\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYou are muted!\nReason: ".. MuteReason .."\n😹😹😹\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                until not Loops.mute
            end
        end

        -- use this here if u wanna stop shit, put all Loops in here --
        if string.sub(msg:lower(), 1, #prefix + 4) == prefix..'stop' then
            Loops.mute = false
            Loops.spam = false
        end

        if string.sub(msg:lower(), 1, #prefix + 8) == prefix..'dogcrash' then
            chat(prefix .."stop")
            dcrash()
        end

        if string.sub(msg:lower(), 1, #prefix + 11) == prefix..'freezecrash' then
            chat(prefix .."stop")
            fcrash()
        end

        if string.sub(msg:lower(), 1, #prefix + 4) == prefix..'vrtx' then
            chat("fogcolor 100 0 255")
            chat("fogend 1000")
            chat("time 6")
            chat("outdoorambient 0 0 0")
            chat("brightness 0.5")
            chat("ambient 125 0 255")
        end

local bawlls

-- i gave u my awesome supa amazing hatkick wowza its good!!! --

        if string.sub(msg:lower(), 1, #prefix + 5) == prefix..'hkick' then
            local rnpos = lpc.HumanoidRootPart.CFrame
            local plr = string.sub(msg:lower(), #prefix + 7)
            check(plr)
            if player ~= nil then
                if bawlls == true then
                    return
                else
                    bawlls = true
                lpc.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-482.402496, 3.69999933, -483.656372, -0.69966048, -6.97966627e-08, -0714475453, -8.5245567e-08, 1, -1.42114089e-08, 0.714475453, 5.09627078e-08, -0.69966048))
                task.wait(.23)
                chat("tp "..plr.." me")
                task.wait(.4)
                chat("reset "..plr)
                task.wait(.1)
                chat("blind "..plr)
                chat("speed "..plr.." 0")
                chat("size "..plr.." nan")
                lpc.HumanoidRootPart.CFrame = rnpos
                task.wait(.3)
                chat("spin "..plr)
                chat("jail/ "..plr)
                for i = 1,90 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
                task.wait(.3)
                for i = 1,100 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
                task.wait(.3)
                for i = 1,99 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
                task.wait(.3)
                chat("clone "..plr)
                task.wait(.3)
                for i = 1,99 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
                task.wait(.3)
                for i = 1,100 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
                task.wait(.3)
                for i = 1,100 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
                task.wait(.3)
                for i = 1,100 do
                    chat("hat "..plr.." ".. hideid .."18101265026")
                end
            bawlls = false
            end
        end

        if string.sub(msg:lower(), 1, #prefix + 12) == prefix..'antigear' then
            enabled.antigears = true
        end

        if string.sub(msg:lower(), 1, #prefix + 12) == prefix..'unantigear' then
            enabled.antigears = false
        end

        -- more commands --
    
    end
end)

-- loading the functions --

spawn(antigears)

----------------------------

local time = math.floor((tick() - LoadTime) * 1000)

notify("Loaded! in ".. time .."ms.\nVersion is: ".. Version)
say("[".. Srcname .."]: Loaded! in ".. time .."ms.")