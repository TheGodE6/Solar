--- Settings ---
local prefix = ">"

--- General Locals ---
local players = game.Players
local SPlayers = game:GetService("Players")
local Kohls = workspace.Terrain:WaitForChild("_Game")
local Map = Kohls:WaitForChild("Workspace")
local Admin = Kohls:WaitForChild("Admin")
local Pads = Admin:WaitForChild("Pads"):GetChildren()
local localplayer = game.Players.LocalPlayer
local Loops = {lock
}

--- Music list ---
local musiclist = {
["1"] = { id = "9043887091" , name = "Lofi Chill A" },
["2"] = { id = "15689455422" , name = "kirkiimad - i love (slow+reverb version)" },
["3"] = { id = "6681840651" , name = "What?!" },
["4"] = { id = "6937042327" , name = "Stunning" }
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
                chat("h \n\n\n " .. player.Name .. " \n Age: " .. player.AccountAge .. " \nhas joined the game. \n~Exile Admin~")
        end
end

local function onPlayerLeaving(player)
        chat("h \n\n\n " .. player.Name .. " \n has left the game. \n~Exile Admin~")
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerLeaving)

--- Commands ---
        if string.sub(msg(), 1, #prefix + 5) == prefix .. "crash" then
              chat("h \n\n\n Server closed by ~Exile Admin~.\n\n\n")
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
                
        if string.sub(msg(), 1, #prefix + 8) == prefix .. "dogcrash" then
	        chat("h \n\n\n Server closed by ~Exile Admin~.\n\n\n")
                for i = 1,100 do
                          chat("clone all all all")
                          chat("dog all all all")
                end 
        end

	if string.sub(msg:lower(), #prefix + 4) == prefix..'lock' then
    		local name = string.sub(msg:lower(), #prefix + 6)
                Loops.lock = true 
                repeat task.wait()
              		if not game:GetService("Lighting"):FindFirstChild(name) then
                        	chat("name [~Exile Admin~] "..name.." Stewie Groomed Me")
                        	chat("clone "..name)
                        	chat("trip "..name)
                        	chat("punish "..name)
               		end 
		until not Loops.lock
	end
end
--- Credits ---
print("dawninja21 - OWNER")
print("Gojo for SimpleKAH v2. He taught me very well and I wouldn't know how to make this script without him.")
print("WhoIsTano for helping very much even when people called me a skid.")
print("TS2021 - I skidded a little bit from him 🧌 but he still supported.")
print("Razan for helped me so much.")

--- Boot Messages ---
chat("h \n\n\n\n\n\n ~Exile Admin~ V3.17 Loaded! \n\n\n\n\n\n Made By The ~Exile Admin Dev Team.")

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
	if YOUantiblind == true then
	   for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "EFFECTGUIBLIND" then
                    v:Destroy()
                end
            end
	end
			
	if YOUantigs == true then
		if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
			game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()	
		end
	end
			
	if YOUanticlone == true then
	    if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name) then
                chat("unclone me")
            end
	end

	if YOUantidog == true then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("Seat") then
				chat("undog me")
			end
            	end
	end
			
	if YOUantifire == true then
	    if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Fire") then
                    chat("unfire me")
                end
            end
	end
			
	if YOUantifreeze == true then
	     if game.Players.LocalPlayer.Character:FindFirstChild("ice") then
                chat("thaw me")
            end
	end
			
	if YOUantifly == true then
	    if not game.Players.LocalPlayer.Character:FindFirstChild("Seizure") and game.Players.LocalPlayer.Character.Humanoid:GetState().Name == "PlatformStanding" then
                chat("unfly me")
                chat("clip me")
            end
	end
			
	if YOUantiff == true then
	 if game.Players.LocalPlayer.Character:FindFirstChild("ForceField") then
                chat("unff me")
            end
	end

	if autoff == true then
	    if not game.Players.LocalPlayer.Character:FindFirstChild("ForceField") then
		chat("ff me")
		task.wait(0.1)
            end
	end

	if autogod == true then
	    if tostring(game.Players.LocalPlayer.Character.Humanoid.MaxHealth) ~= "inf" then
    		chat("god me")
                game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
                game.Players.LocalPlayer.Character.Humanoid.Health = 9e9            
	    end
	end
			
	if YOUantiglow == true then
	   if game.Players.LocalPlayer.Character:FindFirstChild("PointLight") then
                  chat("unglow me")
            end
	end
			
	if YOUantihealthc == true then
	   if not game.Players.LocalPlayer.Character.Humanoid.Health == 100 then
		chat("health me 100")         
	   end
        end
            
	if YOUantijail == true then
	    if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name .. "'s jail") then
                chat("unjail me")
            end
        end
			
	if YOUantijump == true then
	    if not game.Players.LocalPlayer.Character.Humanoid.JumpPower == 50 then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
	end
			
	if YOUantikill == true then
	   if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    chat("reset me")
                end
	end
			
	if YOUantimsg == true then
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
	end
			
	if YOUantiname == true then
	     if game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model") then
		chat("reset me")
	     end
	end

	if YOUantiexplode == true then
	     if game.Players.LocalPlayer.Character:FindFirstChild("Explosion") then
		chat("reset me")
	     end
	end

	if YOUantichar == true then
	   if game.Players.LocalPlayer.UserId ~= game.Players.LocalPlayer.CharacterAppearanceId then
	      chat("unchar me")
	   end
	end
			
	if YOUantiparticles == true then
	   if game.Players.LocalPlayer.Character:FindFirstChild("ParticleEmitter") then
                  chat("unparticle me")
            end
	end
			
	if YOUantipunish == true then
	    if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                chat("unpunish me")
            end
	end
			
	if YOUantirocket == true then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "Rocket" then 
			     v:Destroy()
			end
                end
	end
			
	if YOUantisit == true then
	   local player = game.Players.LocalPlayer
            	 if player.Character then
                    local humanoid = player.Character:WaitForChild("Humanoid", 1)
                    if humanoid and humanoid.Sit then
                        humanoid.Sit = false
                        chat("unsit me")
                    end
             	end
	end
			
	if YOUantiseizure == true then
	        if game.Players.LocalPlayer.Character:FindFirstChild("Seizure") then
                chat("unseizure me")
            end
	end
			
	if YOUantismoke == true then
	     if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Smoke") then
                    chat("unsmoke me")
                end
            end
	end
			
	if YOUantisparkles == true then
	    if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                if game.Players.LocalPlayer.Character.Torso:FindFirstChild("Sparkles") then
                    chat("unsparkles me")
                end
            end
	end
			
	if YOUantispeed == true then
	    if not game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 16 then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
	end

	if YOUantispin == true then
		if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                	if game.Players.LocalPlayer.Character.Torso:FindFirstChild("SPINNER") then
                    		chat("unspin me")
                	end
                end
	end
			
	if YOUantistun == true then
	    local player = game.Players.LocalPlayer
             if player.Character then
                    local humanoid = player.Character:WaitForChild("Humanoid", 1)
                    if humanoid and humanoid.PlatformStand then
                        humanoid.PlatformStand = false
                        chat("unstun me")
                    end
             end
	end

	if YOUantisetgrav == true then
		if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                	if game.Players.LocalPlayer.Character.Torso:FindFirstChildOfClass("BodyForce") then
					game.Players.LocalPlayer.Character.Torso:FindFirstChildOfClass("BodyForce"):Destroy()
					chat("respawn me")
			end
                end
	end
			
	if YOUantiswag == true then
		if game.Players.LocalPlayer.Character:FindFirstChild("EpicCape") then
                	chat("normal me")
		end
	end
			
	end
end)

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


game:GetService("RunService").RenderStepped:Connect(function()
	task.wait(0)
        for i, v in ipairs(game.Players:GetPlayers()) do
	    if v.Backpack and v.Character then
            if v.Backpack:FindFirstChild("VampireVanquisher") or v.Character:FindFirstChild("VampireVanquisher") then
               if v ~= game.Players.LocalPlayer and anticrash2 == true --[[and not table.find(GWhitelisted, v.Name)]] then
                c("ungear "..v.Name)
                chat("punish "..v.Name)
                chat("h \n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use the Vampire Vanquisher due to anti crash (2). \n\n\n")
               end
            end
			
            if v.Backpack:FindFirstChild("OrinthianSwordAndShield") or v.Character:FindFirstChild("OrinthianSwordAndShield") then
               if v ~= game.Players.LocalPlayer and anticrash2 == true --[[and not table.find(GWhitelisted, v.Name)]] then
                chat("ungear "..v.Name)
                chat("punish "..v.Name)
                chat("h \n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use the Orinthian Sword and Shield due to anti crash (2). \n\n\n")
               end
            end
			
	    for i, gear in pairs(v.Backpack:GetChildren()) do
            	if gear:IsA("Tool") and antigear2 == true then
               		if v.Name ~= game.Players.LocalPlayer.Name --[[and not table.find(GWhitelisted, v.Name)]] then
				chat("ungear "..v.Name)
				chat("punish "..v.Name)
                		chat("h \n\n\n [~Exile Admin~]: Sorry, "..v.Name.. ", you cannot use gears due to anti gear (2). \n\n\n")
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
                localplayer:Kick("[~Exile Admin~]: You are not whitelisted.")
        end
end

checkwhitelist()
