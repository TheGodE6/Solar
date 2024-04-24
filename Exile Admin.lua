-- Deprecated DO NOT USE--
----Credits----
Corev6 devs, cxo, kohlslite owner- ts2021
-- Loops --
local Loops = {}

-- general locals--
local wl = {} ---wl person on sight
local rkicker = {} --- rkick on sight
local pmkicker = {} -- auto pmkick on sight
local locker = {} -- auto lock on sight
local commandlist = {}
local toolbanner ={}
local srcowner = dawninja21
local srcname = Exile-Admin-Script
-- Remind --
local function Remind(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "~Exile Admin Script~",
		Text = msg,
		Duration = 1
	})
end;

-- Chat --
local function chat(msg)
      game.Players:Chat(msg)
end

--- Music list ---
local musiclist = {
["1"] = { id = "9043887091" , name = "Lofi Chill A" },
["2"] = { id = "15689455422" , name = "kirkiimad - i love (slow+reverb version)" },
["3"] = { id = "6681840651" , name = "What?!" },
["4"] = { id = "6937042327" , name = "Stunning" }
}

--- Gear lists --- 
local periastronsid = {"108158379", "99119240", "80661504", "93136802", "120307951", "159229806", "73829193", "139577901", "80597060", "69499437", "2544549379", "233520257"}

-- Check execution --
if _G.kohlsexecuted then 
	return 
	Remind("You've already executed ~Exile ADmin SCript~") 
end

_G.kohlsexecuted = true

-- Speak --
local function speak(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

-- Prefix -- -- This can be of any length

--- Startup commands ---
local defaults = {}

local function startupScripts()
		for i = 1, #defaults do
        		Chat(defaults[i]) 
		end
end

--- Devs ---
local devs = {"dawninja21","Di33le2","dawninja21alt","ScriptingProgrammer","Exfamous_X"}

-- Player finding --
function PLAYERCHECK(plr)
  for i, v in pairs(game.Players:GetPlayers()) do
      if string.sub(v.Name:lower(), 1, #plr) == plr:lower() then
          nplr = v.Name
	  cplr = v
          Remind("[debug]: Found "..nplr)
      end
  end
end

---Functions---
function addcommand(name,args,func)
        table.insert(commandlist,{name,args,func})
     end
-- Command hub --
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        task.wait(0)
        if string.sub(msg:lower(), 1, 5) == "vgc" then
              chat("h \n\n\n\n\n\n Server closed by ~Exile Admin~. \n\n\n\n\n\n")
              task.wait(.5)
              chat("gear me 00000000000000094794847")
              repeat task.wait() until game.Players.LocalPlayer.Backpack:WaitForChild("VampireVanquisher")
              local vg = game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
              vg.Parent = game.Players.LocalPlayer.Character
              task.wait(0.2)
              vg:Activate()
              task.wait(.15)
              for i = 1,100 do
                chat("unsize me me me")
              end
        end

        if string.sub(msg:lower(), 1, 2) == 'dc' then
            print('test')
            chat("h \n\n\n\n\n\n Server closed by ~Exile Admin~. \n\n\n\n\n\n")
            for i = 1,100 do
                          chat("clone all all all")
                          chat("dog all all all")
		    end
        end

        game.Players.LocalPlayer.Chatted:Connect(function(msg)
	    if string.sub(msg:lower(), 1, 4) == 'lock' then
		        local name = string.sub(msg:lower(), #prefix + 4)
		        PLAYERCHECK(locker)
         	    if nplr ~= nil then
			            locker = nplr
			            Loops.lock = true 
                	    repeat task.wait()
              			    if not game.Lighting:FindFirstChild(locker) then
                                chat("name "..locker.." [~Exile Admin~]\n LOCKED")
                        		chat("clone "..locker)
                        		chat("trip "..locker)
                        		chat("punish "..locker)
                                        chat("blind "..locker)
                                        chat("pm "..locker.." you are locked from the server. Please Join Another One.")
				            end
			            until not Loops.lock
		        end
	    end

            addcommand("unlock",{"player"},function(args)
                for i,v in pairs(GetPlayers(args[1])) do
               table.find(locker, v.Name)
            table.remove(locker, v.Name)
                game.Players:Chat("respawn "..v.Name)
                game.Players:Chat("unpunish "..v.Name)
               end
            end)
      
            addcommand("toolban",{"player"},function(args)
                for i,v in pairs(GetPlayers(args[1])) do
                        table.find(toolbanner)
                        table.insert(toolbanner, v.Name)
                        if v.Backpack:FindFirstChildWhichIsA("Tool") or v.Character:FindFirstChildWhichIsA("Tool") then
                                chat("ungear "..v.Name)
                            end)
                        end
                    end)

                    addcommand("untoolban",{"player"},function(args)
                        for i,v in pairs(GetPlayers(args[1])) do
                                table.find(toolbanner)
                                table.remove(toolbanner, v.Name)
                        end
                end)


                game.Players.LocalPlayer.Chatted:Connect(function(msg)
		if string.sub(msg:lower(), 1, 4) == "spam" then
			local spam = string.sub(msg:lower(), 6)
			Loops.spamming = true
			repeat task.wait()
				chat(spam)
			until not Loops.spamming
			end
		end)
                
                addcommand("unspam",{},function()
                        Loops.spamming = false
         end)

        if string.sub(msg:lower(), 1, 8) == "antikill" then
		    Loops.antikill = true
		    repeat task.wait()
			    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    		chat("reset me")
                end
		    until not Loops.antikill
	    end


        if string.sub(msg:lower(), 1, 8) == "antilogs" then
		    Antilogs()
	    end

        if string.sub(msg:lower(), 1, 10) == 'antipunish' then
			Loops.antipunish = true
			repeat task.wait()
 					if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                				chat("unpunish me")
            		end
			until not Loops.antipunish				
	    end

        if string.sub(msg:lower(), 1, 7) == "antimsg" then
            Loops.antimsg = true
            repeat task.wait()
                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                	    if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "HintGUI" or v.Name == "Ice" then
                    		v:Destroy()
                	    end
                    end
		            for i, v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
			            if v.Name == "Message" then
				            v:Destroy()
			            end
		            end
            until not Loops.antimsg
        end
end)

addcommand("pmkick",{"player"},function(args)
   for i,v in pairs(GetPlayers(args[1])) do
        table.insert(pmkicker, name)
        Loops.pmkick = true
        repeat task.wait()
                chat("name .."pmkicker.." Currently Getting Kiced. \n [EXILE ADMIN SCRIPT]")
                chat("freeze "..pmkicker)
                chat("rainbowify "..pmkicker)
                chat("pm "..pmkicker.." 😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀😀😃f😄😁f😆😅😂🤣😭💀💀f💀💀💀💀💀f💀💀😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀 😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀😀😃😄😁😆😅😂🤣😭💀💀💀💀💀💀💀💀💀")
until not Loops.pmkick
end

addcommand("autogod",{},function()
        Loops.autogod = true
        repeat task.wait()
                if tostring(game.Players.LocalPlayer.Character.Humanoid.MaxHealth) ~= "inf" then
                        chat("god me")
                    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
                    game.Players.LocalPlayer.Character.Humanoid.Health = 9e9            
                end
     ----Crash/Gear/Antigear----
game:GetService("RunService").RenderStepped:Connect(function()
	task.wait()
        for i, v in ipairs(game.Players:GetPlayers()) do
	    if v.Backpack and v.Character then
            if v.Backpack:FindFirstChild("VampireVanquisher") or v.Character:FindFirstChild("VampireVanquisher") then
               if v ~= game.Players.LocalPlayer and anticrash2 == true  then
                chat("ungear "..v.Name)
                chat("punish "..v.Name)
                chat("h \n\n\n\n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use the Vampire Vanquisher due to anti crash (2). \n\n\n\n\n\n")
               end
            end
			
            if v.Backpack:FindFirstChild("OrinthianSwordAndShield") or v.Character:FindFirstChild("OrinthianSwordAndShield") then
               if v ~= game.Players.LocalPlayer and anticrash2 == true  then
                chat("ungear "..v.Name)
                chat("punish "..v.Name)
                chat("h \n\n\n\n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use the Orinthian Sword and Shield due to anti crash (2). \n\n\n\n\n\n")
               end
            end
	
	    for i, gear in pairs(v.Backpack:GetChildren()) do
            	if gear:IsA("Tool") and antigear2 == true then
               		if v.Name ~= game.Players.LocalPlayer.Name  then
				chat("ungear "..v.Name)
                		chat("h \n\n\n\n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use gears due to anti gear (2). \n\n\n\n\n\n")
			end
            	end
       	    end
	    end
     end 
end)

addcommand("anticrash",{},function()
        for i,v in pairs(GetPlayers()) do
                repeat task.wait()
                Loops.anticrash = true
                repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
                    spawn(function()
                        if v.Character:FindFirstChild("VampireVanquisher") then v.Character:FindFirstChild("VampireVanquisher"):Destroy()
                    chat(" h\n\n\n\n\n\n\n\n\n\\n\n\n\n\\n "..v.Name.." HAS JUST TRIED TO CRASH POINT AND LAUGH LOLLL")
                        end)
                end)
        until not Loops.anticrash
            end)
--- Credits ---
print("dawninja21 - OWNER")
print("Gojo for SimpleKAH v2. He taught me very well and I wouldn't know how to make this script without him.")
print("WhoIsTano for helping very much even when people called me a skid.")
print("TS2021 - I skidded a little bit from him 🧌 but he still supported.")
print("Razan for helped me so much.")

--- Boot Messages ---
chat("h \n\n\n\n\n\n ~Exile Admin~ V3.17 Loaded! \n\n\n\n\n\n Made By The ~Exile Admin Dev Team.")
--- Module autos ---
for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do -- also removes obby walls collision
        		v.CanTouch = false
end

-- Anti Logs --
function Antilogs()
      for i = 1,100 do
		chat("ff [Exile Admin]: Exile Admin On Top")
      end
end
-- Welcoming and Leaving --
game.Players.ChildAdded:Connect(function(player)
        if player.Name == "dawninja21" or player.Name == "dawninja21alt" then
                chat("h \n\n\n dawninja21 (owner of Exile Admin) has joined! \n\n\n")
                print("dawninja21 [owner of Radiation Hub] joined the server!")

        elseif player.Name == "Di33le2" then
                chat("h \n\n\n Di33le2 (dev of Exile Admin) has joined! \n\n\n")
                print("Di33le2 [dev of Radiation Hub] joined the server!")

        elseif player.Name == "ScriptingProgrammer" then 
                chat("h \n\n\n ScriptingProgrammer (dev of Exile Admin) has joined! \n\n\n")
                print("ScriptingProgrammer [dev of Radiation Hub] joined the server!")

        elseif player.Name == "Exfamous_X" then 
                chat("h \n\n\n Exfamous_X (dev of Exile Admin) has joined! \n\n\n")
                print("Exfamous_X [dev of Radiation Hub] joined the server!")

	elseif player.Name == "3cxos" then 
                chat("h \n\n\n 3cxos (dev of Exile Admin) has joined! \n\n\n")
                print("3cxos [dev of Radiation Hub] joined the server!")

        else
                chat("h \n\n\n\n\n\n\n\n Username: " .. player.Name .. " \n Age: " .. player.AccountAge .. " \nhas joined the game. \n~Exile Admin~")
        end
end)

									local blacklist = msg:sub(1,9)

game.Players.ChildRemoved:Connect(function(player)
        chat("h \n\n\n\n\n\n\n\n " .. player.Name .. " \n has left the game. \n~Exile Admin~")
end)
end
end)
