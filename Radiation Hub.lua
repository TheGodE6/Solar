--- Settings ---
local Settings = {
        ["prefix"] = ">",
}

--- General Locals ---
local players = game.Players
local SPlayers = game:GetService("Players")
local Kohls = workspace.Terrain:WaitForChild("_Game")
local Map = Kohls:WaitForChild("Workspace")
local Admin = Kohls:WaitForChild("Admin")
local Pads = Admin:WaitForChild("Pads"):GetChildren()
local localplayer = game.Players.LocalPlayer
local Loops = {lock}

--- Music list ---
local musiclist = {
["1"] = { id = "6937042327" },
["2"] = { id = "15689455422" },
["3"] = { id = "6681840651" },
["4"] = { id = "9043887091" } 
}

--- Gear lists --- 
local periastronsid = { 108158379, 99119240, 80661504, 93136802, 120307951, 159229806, 73829193, 139577901, 80597060, 69499437, 2544549379, 233520257 }

--- Execution ---
local function Remind(msg)
        game.StarterGui:SetCore("SendNotification", {
                Title = "Radiation Hub",
                Text = msg,
                Duration = 1
        })
end

--- Startup commands ---

--- Devs ---
local devs = {"dawninja21","Di33le2","dawninja21alt","ScriptingProgrammer","Exfamous_X"}

--- Functions ---
local function chat(msg)
        game.Players:Chat(msg)
end

local function onPlayerAdded(player)
        if player.Name == "dawninja21" or player.Name == "dawninja21alt" then
                chat("h \n\n\n dawninja21 (owner of Radiation Hub) has joined! \n\n\n")
                print("dawninja21 [owner of Radiation Hub] joined the server!")

        elseif player.Name == "Di33le2" then
                chat("h \n\n\n Di33le2 (dev of Radiation Hub) has joined! \n\n\n")
                print("Di33le2 [dev of Radiation Hub] joined the server!")

        elseif player.Name == "ScriptingProgrammer" then 
                chat("h \n\n\n ScriptingProgrammer (dev of Radiation Hub) has joined! \n\n\n")
                print("ScriptingProgrammer [dev of Radiation Hub] joined the server!")

        elseif player.Name == "Exfamous_X" then 
                chat("h \n\n\n Exfamous_X (dev of Radiation Hub) has joined! \n\n\n")
                print("Exfamous_X [dev of Radiation Hub] joined the server!")

        else
                chat("h \n " .. player.Name .. " \n Age: " .. player.AccountAge .. " \nhas joined the game. \n☢️Radiation Hub☢️")
        end
end

local function onPlayerLeaving(player)
        chat("h \n\n\n " .. player.Name .. " \n has left the game. \n ☢Radiation Hub☢️")
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerLeaving)

--- Commands ---
game.Players.LocalPlayer.chatted:Connect(function(msg)
        local msgsplit = msg:split(" ")
        local cmd = msgsplit[1]
        local cmd2 = msgsplit[2]

        if cmd == prefix .. "music" then
                local song = musiclist[cmd2]
                chat("music " .. song.Id)
        end

        if cmd == prefix .. "vgcrash" then
              chat("h \n\n\n Server Closed By Radiation Hub.\n\n\n")
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
                
        if cmd == prefix .. "dogcrash" then
                for i = 1,100 do
                          chat("clone all all all")
                          chat("dog all all all")
                end 
        end

        if cmd == prefix .."lock" then
                Loops.lock =  true 
                repeat task.wait()
                        chat("trip "..Player.Name)
                        chat("name "..Player.Name.." Stewie Groomed Me")
                        chat("punish "..Player.Name)
                        chat("clone "..Player.Name)
                 until not Loops.lock 
        end

end)


--- Credits ---
print("dawninja21 - OWNER")
print("Gojo for SimpleKAH v2. He taught me very well and I wouldn't know how to make this script without him.")
print("WhoIsTano for helping very much even when people called me a skid.")
print("TS2021 - I skidded a little bit from him 🧌 but he still supported.")
print("Razan for helped me so much.")

--- Boot Messages ---
chat("h \n\n\n\n\n\n ☢️Radiation Hub☢️ V2.17 Loaded! \n\n\n\n\n\n Made By The Radiation Dev Team.")
chat("h \n\n\n From now on, this server will be protected thanks to "..game.Players.LocalPlayer.Name..". \n\n\n")

--- Module autos ---
local objs = game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()
for i, obj in pairs(objs) do
        coroutine.wrap(function()
        	pcall(function()
                    obj.TouchInterest:Destroy()
                end)
        end)()
end

task.spawn(function()
	while true do
		task.wait()
		for i, v in ipairs(game.Players:GetPlayers()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				if ALLanticlone == true then
	    				if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(v.Name) then
                				chat("unclone "..v.Name)
					else end
				end

				if ALLantidog == true then
	     				for i,x in pairs(v.Character:GetDescendants()) do
						if x:IsA("Seat") then
							chat("undog "..v.Name)
						else end
					end
				end
				
				if ALLantifire == true then
	   				 if v.Character:FindFirstChild("Torso") then
                				if v.Character.Torso:FindFirstChild("Fire") then
                    					chat("unfire "..v.Name)
						else end
					else end
				end
				
				if ALLantifreeze == true then
	     				if v.Character:FindFirstChild("ice") then
               					 chat("thaw "..v.Name)
					else end
				end
				
				if ALLantifly == true then
	   				 if not v.Character:FindFirstChild("Seizure") and v.Character.Humanoid:GetState().Name == "PlatformStanding" then
                				chat("unfly "..v.Name)
               					 chat("clip "..v.Name)
					else end
				end
				
				if ALLantiff == true then
	 				if v.Character:FindFirstChild("ForceField") then
                				chat("unff "..v.Name)
					else end
				end

				
				if ALLantiglow == true then
	   				if v.Character:FindFirstChild("PointLight") then
                  				chat("unglow "..v.Name)
					else end
				end
				
				if ALLantihealthc == true then
	   				if not v.Character.Humanoid.Health == 100 then
						chat("health "..v.Name.." 100")
					else end
       				 end
            
				if ALLantijail == true then
	   				 if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(v.Name .. "'s jail") then
               					 chat("unjail "..v.Name)
					else end
       				 end
				
				if ALLantijump == true then
	  				  if not v.Character.Humanoid.JumpPower == 50 then
						chat("normaljump "..v.Name)
					  else end
				end

				if ALLantiexplode == true then
	     				if v.Character:FindFirstChild("Explosion") then
						chat("reset "..v.Name)
					else end
				end
						
				if ALLantikill == true then
	 				  if v.Character.Humanoid.Health == 0 then
                 				   chat("reset "..v.Name)
					  else end
				end

				if table.find(loopkill, v.Name) then
					if v.Character.Humanoid.Health ~= 0 then
                    				chat("kill "..v.Name)
					end
        			end

				if ALLantichar == true then
	   				if v.UserId ~= v.CharacterAppearanceId then
	    					  chat("unchar "..v.Name)
					else end
				end

				if ALLantiname == true then
					   if v and v.Character:FindFirstChildOfClass("Model") then
						chat("reset "..v.Name)
					   else end
				end
				
				if ALLantiparticles == true then
	   				if v.Character:FindFirstChild("ParticleEmitter") then
               					   chat("unparticle"..v.Name)
					else end
				end
				
				if ALLantipunish == true then
	  				  if game.Lighting:FindFirstChild(v.Name) then
              					  chat("unpunish "..v.Name)
					  else end
				end
				
				if ALLantirocket == true then
	 				  if v.Character:FindFirstChild("Rocket") then
          				      chat("reload "..v.Name)
					  else end
				end
				
				if ALLantisit == true then
                   			 local humanoid = v.Character:WaitForChild("Humanoid", 1)
                  			  if humanoid and humanoid.Sit then
                   				     chat("unsit "..v.Name)
					else end
				end
				
				if ALLantiseizure == true then
	      				  if v.Character:FindFirstChild("Seizure") then
           				     chat("unseizure "..v.Name)
					  else end
				end
				
				if ALLantismoke == true then
	   				  if v.Character:FindFirstChild("Torso") then
              					  if v.Name.Character.Torso:FindFirstChild("Smoke") then
                					    chat("unsmoke "..v.Name)
						  else end
					  else end
				end
				
				if ALLantisparkles == true then
					    if v.Character:FindFirstChild("Torso") then
              					  if v.Character.Torso:FindFirstChild("Sparkles") then
                   					 chat("unsparkles "..v.Name)
						  else end
					    else end
				end
				
				if ALLantispeed == true then
	   				 if not v.Character.Humanoid.WalkSpeed == 16 then
						chat("speed "..v.Name.." 16")
					 else end
				end

				if ALLantispin == true then
					if v.Character:FindFirstChild("Torso") then
                				if v.Torso:FindFirstChild("SPINNER") then
                    					chat("unspin "..v.Name)
                				end
               				 end
				end
					
				if gjdelock == true then
	    				if not v.Character.Humanoid.WalkSpeed == 0 then
							chat("speed "..v.Name.." 0")
	   				 end
				end
				
				if ALLantistun == true then
                    			local humanoid = v.Character:WaitForChild("Humanoid", 1)
                    			if humanoid and humanoid.PlatformStand then
                        			chat("unstun "..v.Name)
                   			 end
				end

				if ALLantisetgrav == true then
					if v.Character:FindFirstChild("Torso") then
                				if v.Character.Torso:FindFirstChildOfClass("BodyForce") then
							chat("respawn "..v.Name)
						end
               				 end
				end
					
				if ALLantiswag == true then
					if v.Character:FindFirstChild("EpicCape") then
                				chat("normal "..v.Name)
					end
				end

			end		
		end
	end
end)
end

game:GetService("RunService").RenderStepped:Connect(function()
	task.wait(0)
        for i, v in ipairs(game.Players:GetPlayers()) do
	    if v.Backpack and v.Character then
            if v.Backpack:FindFirstChild("VampireVanquisher") or v.Character:FindFirstChild("VampireVanquisher") then
               if v ~= game.Players.LocalPlayer and anticrash2 == true --[[and not table.find(GWhitelisted, v.Name)]] then
                c("ungear "..v.Name)
                chat("punish "..v.Name)
                chat("h \n\n\n [KohlsLite]: Sorry, "..v.Name.. ", you cannot use the Vampire Vanquisher due to anti crash (2). \n\n\n")
               end
            end
			
            if v.Backpack:FindFirstChild("OrinthianSwordAndShield") or v.Character:FindFirstChild("OrinthianSwordAndShield") then
               if v ~= game.Players.LocalPlayer and anticrash2 == true --[[and not table.find(GWhitelisted, v.Name)]] then
                chat("ungear "..v.Name)
                chat("punish "..v.Name)
                chat("h \n\n\n [KohlsLite]: Sorry, "..v.Name.. ", you cannot use the Orinthian Sword and Shield due to anti crash (2). \n\n\n")
               end
            end
			
	    for i, gear in pairs(v.Backpack:GetChildren()) do
            	if gear:IsA("Tool") and antigear2 == true then
               		if v.Name ~= game.Players.LocalPlayer.Name --[[and not table.find(GWhitelisted, v.Name)]] then
				chat("ungear "..v.Name)
				chat("punish "..v.Name)
                		chat("h \n\n\n [KohlsLite]: Sorry, "..v.Name.. ", you cannot use gears due to anti gear (2). \n\n\n")
			end
            	end
       	    end
	    end
     end 
end)

--- Whitelist ---
local whitelisted = {"dawninja21","Di33le2","dawninja21alt","ScriptingProgrammer","Exfamous_X"}

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
