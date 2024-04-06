-- Loops --
local Loops = {}

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
	Remind("You've already executed KohlsLite!") 
end

_G.kohlsexecuted = true

-- Speak --
local function speak(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

-- Prefix --
local prefix = ">" -- This can be of any length

--- Execution ---
local function Remind(msg)
        game.StarterGui:SetCore("SendNotification", {
                Title = "Radiation Hub",
                Text = msg,
                Duration = 5.5 -- 1 is too short do 5.5
        })
end

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

-- Command hub --
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        task.wait(0)
        if string.sub(msg:lower(), 1, #prefix + 5) == prefix .. "crash" then
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

        if string.sub(msg:lower(), 1, #prefix + 2) == prefix ..'dc' then
            print('test')
            chat("h \n\n\n\n\n\n Server closed by ~Exile Admin~. \n\n\n\n\n\n")
            for i = 1,100 do
                          chat("clone all all all")
                          chat("dog all all all")
		    end
        end

	    if string.sub(msg:lower(), 1, #prefix + 4) == prefix..'lock' then
    	        local blacklistables = string.sub(msg:lower(), #prefix + 6)
		        local name = string.sub(msg:lower(), #prefix + 4)
		        PLAYERCHECK(blacklistables)
         	    if nplr ~= nil then
			            blacklistables = nplr
			            Loops.lock = true 
                	    repeat task.wait()
              			    if not game.Lighting:FindFirstChild(blacklistables) then
                                chat("name "..blacklistables.." [~Exile Admin~]\n LOCKED")
                        		chat("clone "..blacklistables)
                        		chat("trip "..blacklistables)
                        		chat("punish "..blacklistables)
				            end
			            until not Loops.lock
		        end
	    end

        if string.sub(msg:lower(), 1, #prefix + 8) == "antikill" then
		    Loops.antikill = true
		    repeat task.wait()
			    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    		chat("reset me")
                end
		    until not Loops.antikill
	    end


        if string.sub(msg:lower(), 1, #prefix + 8) == "antilogs" then
		    Antilogs()
	    end

        if string.sub(msg:lower(), 1, #prefix + 10) == 'antipunish' then
			Loops.antipunish = true
			repeat task.wait()
 					if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                				chat("unpunish me")
            		end
			until not Loops.antipunish				
	    end

        if string.sub(msg:lower(), 1, #prefix + 7) == "antimsg" then
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

-- Anti Crash/Gear --
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
				chat("punish "..v.Name)
                		chat("h \n\n\n\n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use gears due to anti gear (2). \n\n\n\n\n\n")
			end
            	end
       	    end
	    end
     end 
end)

--- Credits ---
print("dawninja21 - OWNER")
print("Gojo for SimpleKAH v2. He taught me very well and I wouldn't know how to make this script without him.")
print("WhoIsTano for helping very much even when people called me a skid.")
print("TS2021 - I skidded a little bit from him 🧌 but he still supported.")
print("Razan for helped me so much.")

--- Boot Messages ---
chat("h \n\n\n\n\n\n ~Exile Admin~ V3.17 Loaded! \n\n\n\n\n\n Made By The ~Exile Admin Dev Team.")
speak("Exile Admin Loaded! [Exile Admin]: Please Message stewiegod1090 For Support!")

--- Module autos ---
for i, v in pairs(game:GetService("Workspace").Terrain["_Game"].Workspace.Obby:GetChildren()) do -- also removes obby walls collision
        		v.CanTouch = false
end

-- Anti Logs --
local function Antilogs()
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

        else
                chat("h \n\n\n\n\n\n\n\n Username: " .. player.Name .. " \n Age: " .. player.AccountAge .. " \nhas joined the game. \n~Exile Admin~")
        end
end)

game.Players.ChildRemoved:Connect(function(player)
        chat("h \n\n\n\n\n\n\n\n " .. player.Name .. " \n has left the game. \n~Exile Admin~")
end)
