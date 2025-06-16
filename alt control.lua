-- made by cxo
--task.wait(1.5)

--// fling made by anthonyisnthere, voidfling made by digitality \\--

-- CXO WAS HERE --


-- VARIABLES --

local murd, sher
local whitelisted = {"ripcxo", "Trogdor973", "itspavvv", "Dekryptionite", "D_ionte", "Dawninja21alt", "map_272"}
local lp = game.Players.LocalPlayer
local lpn = lp.Name
local prefix = "/"
local cmds = {}
local flingers = {}
local nonosquares = {}

-- FUNCTIONS --

function p(a, me)
	local ps = game.Players:GetPlayers()
	local found = {}

	if a:lower() == "me" then
		found = {me}
	elseif a:lower() == "others" then
		for i, player in ipairs(ps) do
			if player ~= me then
				table.insert(found, player)
			end
		end
	elseif a:lower() == "all" then
		found = ps
	elseif a:lower() == "random" then
		if #ps > 0 then
			found = {ps[math.random(1, #ps)]}
		end
	else
		for i, player in ipairs(ps) do
			if player.Name:lower():sub(1, #a) == a:lower() or player.DisplayName:lower():sub(1, #a) == a:lower() then
				table.insert(found, player)
			end
		end
	end

	return found
end

local function addcmd(data)
	if cmds[data.Name] then
		return
	end

	if not data.Aliases then
		data.Aliases = {}
	end

	if data.Player == nil then
		data.Player = true
	end

	cmds[data.Name] = {
		Data = data
	}
end

function notify(msg, icon)
	game.StarterGui:SetCore("SendNotification",
	{
		Title = "cxo's admin",
		Text = msg,
		Icon = icon or "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=".. lpn,
		Duration = 5.5
	})
end

function speak(p, msg)

	--[[task.spawn(function()
		game:GetService("TextChatService"):WaitForChild("TextChannels"):FindFirstChild("RBXGeneral"):SendAsync("/w @".. p.Name)
	end)]]

	for i,v in pairs(game:GetService("TextChatService"):WaitForChild("TextChannels"):GetChildren()) do
		if v.Name:match("RBXWhisper:") then
			if string.find(v.Name, tostring(p.UserId)) then
				v:SendAsync(msg)
				break
			end
		end
	end
	
	--game:GetService("TextChatService"):WaitForChild("TextChannels"):FindFirstChild("RBXGeneral"):SendAsync(msg)
end

function check(p)
	if p and p.Character and p.Backpack and p.Character:FindFirstChild("HumanoidRootPart") then
		return true
	else
		return false
	end
end

function placeid()
	return game.PlaceId
end

function murderer()
	for i,v in pairs(game.Players:GetPlayers()) do
		if check(v) and (v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife")) then
			murd = v.Name
			print("[cxo's admin]: Murderer is ".. v.Name)
		end
	end
end

function sherrif()
	for i,v in pairs(game.Players:GetPlayers()) do
		if check(v) and (v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun")) then
			sher = v.Name
			print("[cxo's admin]: Sherrif is ".. v.Name)
		end
	end
end

function fling(p)
	-- Made by AnthonyIsntHere --

	local Targets = {p.Name}

	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer

	local AllBool = false

	local GetPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = Players:GetPlayers()
			if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _,x in next, Players:GetPlayers() do
				if x ~= Player then
					if x.Name:lower():match("^"..Name) then
						return x;
					elseif x.DisplayName:lower():match("^"..Name) then
						return x;
					end
				end
			end
		else
			return
		end
	end

	local Message = function(_Title, _Text, Time)
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
	end

	local SkidFling = function(TargetPlayer)
		local Character = Player.Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
		local RootPart = Humanoid and Humanoid.RootPart

		local TCharacter = TargetPlayer.Character
		local THumanoid
		local TRootPart
		local THead
		local Accessory
		local Handle

		if TCharacter:FindFirstChildOfClass("Humanoid") then
			THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
		end
		if THumanoid and THumanoid.RootPart then
			TRootPart = THumanoid.RootPart
		end
		if TCharacter:FindFirstChild("Head") then
			THead = TCharacter.Head
		end
		if TCharacter:FindFirstChildOfClass("Accessory") then
			Accessory = TCharacter:FindFirstChildOfClass("Accessory")
		end
		if Accessoy and Accessory:FindFirstChild("Handle") then
			Handle = Accessory.Handle
		end

		if Character and Humanoid and RootPart then
			if RootPart.Velocity.Magnitude < 50 then
				getgenv().OldPos = RootPart.CFrame
			end
			if THumanoid and THumanoid.Sit and not AllBool then
				return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
			end
			if THead then
				workspace.CurrentCamera.CameraSubject = THead
			elseif not THead and Handle then
				workspace.CurrentCamera.CameraSubject = Handle
			elseif THumanoid and TRootPart then
				workspace.CurrentCamera.CameraSubject = THumanoid
			end
			if not TCharacter:FindFirstChildWhichIsA("BasePart") then
				return
			end

			local FPos = function(BasePart, Pos, Ang)
				RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
				Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
				RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
				RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
			end

			local SFBasePart = function(BasePart)
				local TimeToWait = 2
				local Time = tick()
				local Angle = 0

				repeat
					if RootPart and THumanoid then
						if BasePart.Velocity.Magnitude < 50 then
							Angle = Angle + 100

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
						else
							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()
						end
					else
						break
					end
				until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
			end

			workspace.FallenPartsDestroyHeight = 0/0

			local BV = Instance.new("BodyVelocity")
			BV.Name = "EpixVel"
			BV.Parent = RootPart
			BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
			BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

			if TRootPart and THead then
				if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
					SFBasePart(THead)
				else
					SFBasePart(TRootPart)
				end
			elseif TRootPart and not THead then
				SFBasePart(TRootPart)
			elseif not TRootPart and THead then
				SFBasePart(THead)
			elseif not TRootPart and not THead and Accessory and Handle then
				SFBasePart(Handle)
			else
				return Message("Error Occurred", "Target is missing everything", 5)
			end

			BV:Destroy()
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			workspace.CurrentCamera.CameraSubject = Humanoid

			repeat
				RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
				Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
				Humanoid:ChangeState("GettingUp")
				table.foreach(Character:GetChildren(), function(_, x)
					if x:IsA("BasePart") then
						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
					end
				end)
				task.wait()
			until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
			workspace.FallenPartsDestroyHeight = getgenv().FPDH
		else
			return Message("Error Occurred", "Random error", 5)
		end
	end

	--[[if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
	getgenv().Welcome = true]]
	if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

	if AllBool then
		for _,x in next, Players:GetPlayers() do
			SkidFling(x)
		end
	end

	for _,x in next, Targets do
		if GetPlayer(x) and GetPlayer(x) ~= Player then
			if GetPlayer(x).UserId ~= 1414978355 then
				local TPlayer = GetPlayer(x)
				if TPlayer then
					SkidFling(TPlayer)
				end
			else
				--Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
			end
		elseif not GetPlayer(x) and not AllBool then
			--Message("Error Occurred", "Username Invalid", 5)
		end
	end
end

function gethrp(char)
	local c = char or lp.Character
	local hrp = c and c:FindFirstChild("HumanoidRootPart")
	return hrp
end

function head(char)
	local c = char or lp.Character
	local head = c and c:FindFirstChild("Head")
	return head
end

function hum(char)
	local c = char or lp.Character
	local hum = c and c:FindFirstChildWhichIsA("Humanoid")
	return hum
end

function fullbreakvel(instance)
	local instance = instance or lp.Character
	local part = instance and (instance:IsA("BasePart") and instance or instance:IsA("Model") and (instance.PrimaryPart or instance:FindFirstChildWhichIsA("BasePart")) or instance:FindFirstChildWhichIsA("BasePart"))
	if not part then
		return
	end
	part.AssemblyAngularVelocity = Vector3.new()
	part.AssemblyLinearVelocity = Vector3.new()
	for i, v in part:GetConnectedParts(true) do
		v.AssemblyAngularVelocity = Vector3.new()
		v.AssemblyLinearVelocity = Vector3.new()
	end
end

function kill(target, timer)
	local ws = workspace
	local runservice = game:GetService("RunService")
	local part = (target:IsA("BasePart") and target) or (target:IsA("Model") and (head(target) or target.PrimaryPart or target:FindFirstChildWhichIsA("BasePart"))) or (target:IsA("Player") and target.Character and head(target.Character))
	if not part then
		return
	end
	local isplr = target:IsA("Player") or target:IsA("Model") and target:FindFirstChildWhichIsA("Humanoid")
	ws.CurrentCamera.CameraSubject = part
	if not gethrp() then
		repeat task.wait() until gethrp()
	end
	if not hum() then
		repeat task.wait() until hum()
	end
	if part and not part:IsGrounded() then
		local oldpos = gethrp().CFrame
		hum():ChangeState(Enum.HumanoidStateType.Physics)
		if hum().Sit and gethrp():IsGrounded() then
			hum():SetStateEnabled("Seated", false)
		end
		local fling = true
		local tp = true
		local flinging = true
		coroutine.wrap(function()
			while tp and part and part:IsDescendantOf(ws) do
				local targetcf = (part.CFrame + part.Velocity * 0.7)
				gethrp().CFrame = CFrame.new(targetcf.X, targetcf.Y + part.Size.Y/2 + gethrp().Size.Z/2, targetcf.Z) * CFrame.Angles(math.rad(-90), 0, 0)
				gethrp().AssemblyLinearVelocity = Vector3.new(0, -10e30, 0)
				runservice.PostSimulation:Wait()
				local targetcf = (part.CFrame + part.Velocity * 0.75)
				if gethrp() then
					gethrp().CFrame = CFrame.new(targetcf.X, targetcf.Y - part.Size.Y/2 - gethrp().Size.Z/2, targetcf.Z) * CFrame.Angles(math.rad(-90), 0, 0)
					gethrp().AssemblyLinearVelocity = Vector3.new(0, -10e30, 0)
				end
				runservice.PostSimulation:Wait()
			end
		end)()
		coroutine.wrap(function()
			if timer and tonumber(timer) then
				task.wait(timer)
			end
			flinging = false
		end)()
		while flinging and part and part.Velocity.Magnitude < 100 do 
			task.wait() 
		end
		tp = false
		fling = false
		fullbreakvel()
		hum():ChangeState(Enum.HumanoidStateType.GettingUp)
		gethrp().CFrame = oldpos
		hum():SetStateEnabled("Seated", true)
		ws.CurrentCamera.CameraSubject = hum()
		coroutine.wrap(function()
			local done
			coroutine.wrap(function()
				task.wait(0.1)
				done = true
			end)()
			while not done and gethrp() and hum() do
				if (gethrp().Position - oldpos.Position).Magnitude > 5 then
					fullbreakvel()
					hum():ChangeState(Enum.HumanoidStateType.GettingUp)
					gethrp().CFrame = oldpos
				else
					oldpos = gethrp().CFrame
				end
				task.wait()
			end
		end)()
	elseif not part then
		return false
	end
end

function touchfling(sender, plr)
	if table.find(flingers, plr.Name) then
		return
	else
		table.insert(flingers, plr.Name)
	end

	local sussy
	local raped = {}

	local function begin()
		if check(plr) and table.find(flingers, plr.Name) then
			for i,v in pairs(plr.Character:GetChildren()) do
				if v:IsA("BasePart") then
					v.Touched:Connect(function(hit)
						local p = hit.Parent
						local p2 = game.Players:GetPlayerFromCharacter(p)

						if not p2 then return end
						if p2 == plr then return end
						if p2 == sender then return end
						if table.find(whitelisted, p2.Name) then return end
						if not p:FindFirstChild("Humanoid") or not p:FindFirstChild("HumanoidRootPart") then return end

						local pcf = plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart.CFrame
						if not pcf then return end
						local timeout = tick()
						repeat
							task.wait()
						until (p.HumanoidRootPart.Position - pcf.Position).Magnitude >= 2 or tick() - timeout > 3

						if table.find(raped, p2.Name) then
							return
						else
							table.insert(raped, p2.Name)
						end

						fling(p2)

						task.wait(3)
						table.remove(raped, table.find(raped, p2.Name))
					end)
				end
			end
		end
	end

	begin()

	sussy = plr.CharacterAdded:Connect(function()

		if not table.find(flingers, plr.Name) then
			sussy:Disconnect()
		end

		plr.Character:WaitForChild("HumanoidRootPart")
		begin()
	end)
end

function notouch(sender, plr, radius)
	
	if table.find(nonosquares, plr.Name) then
		print(plr.Name .." already has anti touch enabled!")
		return
	else
		table.insert(nonosquares, plr.Name)
	end

	local sussy
	local raped = {}

	local function begin()
		if check(plr) then
			if not plr.Character:FindFirstChild("Anti Touch") then
				local box = Instance.new("Part", plr.Character)
				local w = Instance.new("WeldConstraint", box)
				box.Name = "Anti Touch"
				box.BrickColor = BrickColor.new("Really red")
				box.Size = Vector3.new(radius, 5, radius)
				box.CanCollide = false
				box.CastShadow = false
				box.Material = Enum.Material.Neon
				box.CFrame = plr.Character.HumanoidRootPart.CFrame

				w.Part0 = box
				w.Part1 = plr.Character.HumanoidRootPart

				box.Touched:Connect(function(hit)
					local p = hit.Parent
					local p2 = game.Players:GetPlayerFromCharacter(p)

					if not p2 then return end
					if p2 == plr then return end
					if p2 == sender then return end
					if table.find(whitelisted, p2.Name) then return end
					if not p:FindFirstChild("Humanoid") or not p:FindFirstChild("HumanoidRootPart") then return end

					if table.find(raped, p2.Name) then
						return
					else
						table.insert(raped, p2.Name)
					end

					fling(p2)

					task.wait(3)
					table.remove(raped, table.find(raped, p2.Name))

				end)

			end
		end
	end

	begin()

	sussy = plr.CharacterAdded:Connect(function()

		if not table.find(nonosquares, plr.Name) then
			sussy:Disconnect()
		end

		plr.Character:WaitForChild("HumanoidRootPart")
		begin()
	end)
end

-- CMDS --

addcmd({
	Name = "fling",
	Aliases = {},
	Function = function(sender, targets, arguments)
		for i, plr in ipairs(targets) do
			fling(plr)
		end
	end
})

addcmd({
	Name = "sit",
	Aliases = {"seat"},
	Function = function(sender, targets, arguments)
		if lp.Character and lp.Character:FindFirstChild("Humanoid") then
			lp.Character.Humanoid.Sit = true
		end
	end
})

addcmd({
	Name = "jump",
	Aliases = {},
	Function = function(sender, targets, arguments)
		if lp.Character and lp.Character:FindFirstChild("Humanoid") then
			lp.Character.Humanoid.Jump = true
		end
	end
})

-- add /to here --

addcmd({
	Name = "whitelist",
	Aliases = {"wl"},
	Function = function(sender, targets, arguments)
		for i, plr in ipairs(targets) do
			if not table.find(whitelisted, plr.Name) then
				table.insert(whitelisted, plr.Name)
			end
		end
	end
})

addcmd({
	Name = "unwhitelist",
	Aliases = {"unwl"},
	Function = function(sender, targets, arguments)
		for i, plr in ipairs(targets) do
			if table.find(whitelisted, plr.Name) then
				table.remove(whitelisted, table.find(whitelisted, plr.Name))
			end
		end
	end
})

addcmd({
	Name = "kill",
	Aliases = {"voidfling"},
	Player = false,
	Function = function(sender, targets, arguments)
		local plr
		
		if not arguments[1] then
			plr = sender.Name
		else
			plr = arguments[1]
		end
		
		if plr == "murderer" then
			murderer()
			
			local timeout = tick()
			repeat task.wait() until (murd ~= nil) or (tick() - timeout >= 1)
			
			kill(game.Players:FindFirstChild(murd), 5)
			return
		elseif plr == "sherrif" then
			sherrif()
			
			local timeout = tick()
			repeat task.wait() until (sher ~= nil) or (tick() - timeout >= 1)
			
			kill(game.Players:FindFirstChild(sher), 5)
			return
		end
		
		if plr == "me" then
			plr = sender.Name
		end

		local argt = p(plr, sender)

		kill(argt[1], 5)
	end
})

addcmd({
	Name = "roles",
	Aliases = {},
	Function = function(sender, targets, arguments)
		murderer()
		sherrif()
		local timeout = tick()
		repeat task.wait() until (murd ~= nil and sher ~= nil) or (tick() - timeout >= 1)
		
		if sender.Name == lpn then
			
			if murd == nil then
				notify("murderer was not found")
			end

			if sher == nil then
				notify("sherrif was not found")
			end

			if murd == nil or sher == nil then
				return
			end
			
			notify(murd .." is the murderer", "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=".. murd)
			notify(sher .." is the sherrif", "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=".. sher)
			return
		end
		
		if murd == nil then
			speak(sender, "[cxo's admin]: murderer was not found")
		end

		if sher == nil then
			speak(sender, "[cxo's admin]: sherrif was not found")
		end

		if murd == nil or sher == nil then
			return
		end
		
		speak(sender, "[cxo's admin]: MURDERER: ".. murd)
		speak(sender, "[cxo's admin]: SHERRIF: ".. sher)
	end
})

addcmd({
	Name = "touchfling",
	Aliases = {},
	Function = function(sender, targets, arguments)
		for i, plr in ipairs(targets) do
			touchfling(sender, plr)
		end
	end
})

addcmd({
	Name = "notouch",
	Aliases = {},
	Function = function(sender, targets, arguments)
		local radius = tonumber(arguments[1]) or 10
		for i, plr in ipairs(targets) do
			notouch(sender, plr, radius)
		end
	end
})

addcmd({
	Name = "touch",
	Aliases = {},
	Function = function(sender, targets, arguments)
		for i, plr in ipairs(targets) do
			if table.find(nonosquares, plr.Name) then
				table.remove(nonosquares, table.find(nonosquares, plr.Name))
				print("removed ".. plr.Name .." from the table")
				if plr.Character then
					plr.Character:FindFirstChild("Anti Touch", true):Destroy()
				end
			end
		end
	end
})

addcmd({
	Name = "untouchfling",
	Aliases = {"notouchfling"},
	Function = function(sender, targets, arguments)
		for i, plr in ipairs(targets) do
			if table.find(flingers, plr.Name) then
				table.remove(flingers, table.find(flingers, plr.Name))
			end
		end
	end
})

addcmd({
	Name = "cmds",
	Aliases = {"commands", "help"},
	Function = function(sender, targets, arguments)
		local commands = ""
		for i, cmd in pairs(cmds) do
			commands = commands .. i .. ", "
		end

		commands = commands:sub(1, -3)
		print("[cxo's admin] ".. commands)
		
		if sender.Name == lpn then
			notify("Press F9 or say /console.")
			return
		end
		
		speak(sender, "[cxo's admin]: " .. commands)
	end
})
--[[
addcmd({
	Name = "test",
	Aliases = {},
	Function = function(sender, targets, arguments)
		local a = table.concat(arguments, " ")
		speak(a, "[cxo's admin]: test cmd")
	end
})
]]
-- CHATTED --

game:GetService("TextChatService").OnIncomingMessage = function(m)
	if m.TextSource then
		local v = game.Players:GetPlayerByUserId(m.TextSource.UserId)
		if v then
			if m.Status == Enum.TextChatMessageStatus.Success then
				print("[cxo's admin] ".. v.Name ..": ".. m.Text)
				if table.find(whitelisted, v.Name) or v.Name == game.Players.LocalPlayer.Name then
					local msg = m.Text

					if msg:sub(1, #prefix) == prefix then
						msg = msg:sub(#prefix + 1)

						local parts = msg:split(" ")
						local cmdname = parts[1]

						local command = cmds[cmdname]
						if not command then
							for i, cmd in pairs(cmds) do
								if table.find(cmd.Data.Aliases, cmdname) then
									command = cmd
									break
								end
							end
						end

						if command then
							local playerless = command.Data.Player
							local target
							local args

							if playerless then
								target = parts[2] or "me"
								args = {table.unpack(parts, 3)}
							else
								target = nil
								args = {table.unpack(parts, 2)}
							end

							local targets = playerless and p(target, v) or nil
							command.Data.Function(v, targets, args)
						else
							if v.Name ~= lpn then
								speak(v, "[cxo's admin]: Command '" .. cmdname .. "' was not found.")
							else
								notify("Command '" .. cmdname .. "' was not found.")
							end
						end
					else
						--notfi(v, "Error", "Incorrect prefix, prefix is: ".. prefix)
					end
					print("[DEBUG]: ".. m.TextChannel.Name)
				else
					return
				end
			end
		end
	end
end

for i,v in pairs(game.Players:GetPlayers()) do
	if table.find(whitelisted, v.Name) then
		speak(v, "[cxo's admin]: You are whitelisted! Say ".. prefix .."cmds to view the commands.")
	end
	game:GetService("TextChatService"):WaitForChild("TextChannels"):FindFirstChild("RBXGeneral"):SendAsync("/w @".. p.Name)
end

game.Players.ChildAdded:Connect(function(p)
	notify(p.Name .." joined", "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=".. p.Name)
	print("[cxo's admin] ".. p.Name .." joined")
	if table.find(whitelisted, p.Name) then
		speak(p, "[cxo's admin]: You are whitelisted! Say ".. prefix .."cmds to view the commands.")
	end
	game:GetService("TextChatService"):WaitForChild("TextChannels"):FindFirstChild("RBXGeneral"):SendAsync("/w @".. p.Name)
end)

game.Players.ChildRemoved:Connect(function(p)
	notify(p.Name .." left", "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userName=".. p.Name)
	print("[cxo's admin] ".. p.Name .." left")

	if table.find(nonosquares, p.Name) then
		table.remove(nonosquares, table.find(nonosquares, p.Name))
	end

	if table.find(flingers, p.Name) then
		table.remove(flingers, table.find(flingers, p.Name))
	end

end)
