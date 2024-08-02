--// Variables --//
local pf: string = ">" -- don't use angle brackets
local lp: userdata = game:GetService("Players").LocalPlayer
local connections = {}
local CONS = {}
local cmds = {}
local ws = game:GetService("Workspace")
local addcmd = function(names: {string}, func: () -> void)
    for i, _ in next, names do
        if not cmds[names[i]] then
            cmds[names[i]] = func
        end
    end
end
local tick = os.clock()

--//Tables
local onstart = { -- Commands that get said when script loaded
    "nok",
    "antikill", 
    "antihat",
    "antipunish",
    "antidog",
    "antikick",
    "antiabuse"
}
local Blacklisted = { -- Autokick on join
}

local gearbl = {
    "atprog"
}
local GearWhitelisted = { -- Access to Crash Gears
    "Di33le2", "The_0BC", "Ripend", "SZCVAK", "KTMY1",
    "iTsMeRebirth555",  "Dizzy_TheDev",
    "xorobf1239", "xorobf", "TechnoSniperX", "ovical",  --"3cxos",//
    game.Players.LocalPlayer.Name
}
local tools = {
    vanquisher = "94794847",
    vanq = "94794847",
    vampire = "94794847",
    ar = "4842207161",
    cambreak = "4842207161"
}

local blacklistedGears = {
    "AmethystPeriastron", --      93136802
    "AzurePeriastron", --         69499437
    "ChartreusePeriastron", --    80661504
    "CrimsonPeriastron", --       99119240
    "FakeChartreusePeriastron", --          80597060
    "FallPeriastron", --          2544549379
    "FestivePeriastron", --       139577901
    "GrimgoldPeriastron", --      73829193
    "IvoryPeriastron", --         108158379
    "JoyfulPeriastron", --        233520257
    "NoirPeriastron", --          120307951
    "RainbowPeriastron", --        159229806
    "SubspaceTripmine",
    "AR",                --        4842207161 
    "SuperFlyGoldBoombox",
    "VampireVanquisher", --       94794847
    "OrinthianSwordAndShield",--  92628079
    "LaserFingerPointer",
    "Emerald Knights of the Seventh Sanctum Sword and Shield",
}
local periastron = {
    [93136802] = "AmethystPeriastron",
    [69499437] = "AzurePeriastron",
    [80661504] = "ChartreusePeriastron",
    [99119240] = "CrimsonPeriastron",
    [80597060] = "FakeChartreusePeriastron",
    [2544549379] = "FallPeriastron",
    [139577901] = "FestivePeriastron",
    [73829193] = "GrimgoldPeriastron",
    [108158379] = "IvoryPeriastron",
    [233520257] = "JoyfulPeriastron",
    [120307951] = "NoirPeriastron",
    [159229806] = "RainbowPeriastron"
}

local hardcodedgearwl = {
    "Altsarecooleh",
    "jjjuuikjjikkju",
    "Thierry_BaudetREAL",
    "diva49ers",
}

local Loops = {}

local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")



--//Functions
local function antiSpam()
    local charset = {"£", "$", "%", "^", "&", "*", "-", "_", "+", "=", "!", "@", ";", "~","(", ")", "`", "\\", "|", "[", "]", "{", "}", ":", "'", ".", ",", "<", ">","||||||||||||||||||||||||"}
    local f = ""
    for i=1,10 do
        f = f .. charset[math.random(1, #charset)]
    end
    return f
end

function tempCrash(seconds)
    notif("Temp Crashing", Color3.fromRGB(160, 32, 240), 1)
    wait(.35)
    local s = 0
    local eTime = os.time() + seconds
    game.Players:Chat("respawn all")
    repeat
        task.wait(0.05)
        game.Players:Chat("dog all " .. math.random(1, 1000) ..
                    math.random(1, 1000))
        game.Players:Chat("clone all " .. math.random(1, 1000) ..
                    math.random(1, 1000))
    until eTime < os.time()
    game.Players:Chat("undog all")    
    game.Players:Chat("removeclones")
end

function scrash() --//Person 299 Needed
    for i = 1, 5 do
        game.Players:Chat("size all .3")
    end
    for i = 1, 13 do
        game.Players:Chat("rocket/all all all 123456789")
        game.Players:Chat("freeze all all all 123456789")
        game.Players:Chat("dog all all all 123456789")
    end
    for i = 1, 5 do
        game.Players:Chat("size all 10")
    end
    for i = 1, 200 do
        game.Players:Chat("clone all all all 123456789")
    end
    while true do task.wait()
        game.Players:Chat("clone all all all 123456789")
    end
end

local Crashwhitelist = {}

if autocrasher then
    for i,v in pairs(game.Players:GetChildren()) do
if table.find(Crashwhitelist,v.Name) then
    print("NOpe")
else
    game.Players:Chat("blind others")
 game.Players:Chat("m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nServer crashed by Singularity X Reason: Autocrasher is on\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
task.wait(.25)
 scrash()
 wait(0.25)
 local function u()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	end
	u()
	game:GetService("TeleportService").TeleportInitFailed:Connect(function() u() end)
end
end
end

function GetPing()

    return math.random(50, 150)
end



spawn(function()
    while wait(0.001) do
    if AntiRocket then  
for i,v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Rocket" then  
    v:Destroy()
end
    end
        end
    end
    end)

    spawn(function()
        while wait(0.001) do
        if AntiPunish then
            if character and character.Parent == game.Lighting then
                game.Players:Chat("unpunish me")
                character.Parent=workspace
            end
        end
    end
end)

function hat(PlayerName,Nameballs)
    pcall(function()
local baka = Nameballs,2
local word2 = game:GetService("HttpService"):UrlEncode(baka)
local urllol = ("https://catalog.roproxy.com/v1/search/items?category=Accessories&includeNotForSale=true&limit=10&salesTypeFilter=1&Keyword=".. word2)
local response = game:HttpGet(urllol)
local data = game:GetService("HttpService"):JSONDecode(response)

if response then
game.Players:Chat("hat "..PlayerName.." "..data["data"][1]["id"])
end
end)
end 

game.Players.PlayerAdded:Connect(function(v)
    game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\nUsername: "..v.Name.."\nDisplayName: "..v.DisplayName.."\nAccountAge: "..v.AccountAge)
  end)
  
  local function onPlayerLeaving(plr)
  game.Players:Chat("h \n\n\n Singularity X: "..plr.Name.." Has Left The Server.\n\n\n")
  end
  
  game.Players.PlayerAdded:Connect(onPlayerAdded)
  game.Players.PlayerRemoving:Connect(onPlayerLeaving)

function paintmap(message)
	pcall(function()
	colorAPI = {}
	game.Players:Chat("gear me 18474459")
	repeat task.wait() until lp.Backpack:FindFirstChild("PaintBucket")
	lp.Backpack:FindFirstChild("PaintBucket").Parent = lp.Character
		colorAPI.color = function(Part, color)
			local thread = coroutine.create(function() -- x3.5 speed boost
				local Arguments =
				{
					["Part"] = Part,
					["Color"] = color
				}
				game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Arguments)
			end)
			coroutine.resume(thread)
		end
		
		colorAPI.transformToColor3 = function(col)
			local r = col.r
			local g = col.g
			local b = col.b
			return Color3.new(r,g,b);
		end
		
		-- colorAPI.Color3 = function(brickColor)
		--     return colorAPI.transformToColor3(BrickColor.new(brickColor))
		-- end

		colorAPI.colorObbyBox = function(color) -- Default is "Teal"
			for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
				colorAPI.color(v, color) -- colorAPI.transformToColor3(BrickColor.new("Bright red"))
			end
		end
		
		colorAPI.colorObbyBricks = function(color)-- Default is "Really red"
			  for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby"]:GetChildren()) do
				colorAPI.color(v, color)
			end
		end
		
		colorAPI.colorAdminDivs = function(color)-- Default is "Dark stone grey"
			for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
				colorAPI.color(v, color)
			end
		end
		
		colorAPI.colorPads = function(color)-- Default is "Bright green"
			for i,v in pairs(game.Workspace.Terrain["_Game"].Admin["Pads"]:GetChildren()) do
				colorAPI.color(v.Head, color)
			end
		end
		
		colorAPI.colorHouse = function(arg)
			  local wallsC = arg.wallsC
			  local baseC = arg.baseC
			  local roofC = arg.roofC
			  local WANDDC = arg.WANDDC
			  local stairsC = arg.stairsC
			  local floorC = arg.floorC
			  local rooftsC = arg.rooftsC
			  local chiC = arg.chiC
			  
			  -------------------------------------------------------------------- House (really messy ik) --------------------------------------------------------------------
			  
				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetChildren()) do
					coroutine.wrap(function()
							if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
								colorAPI.color(v, wallsC) -- Default is "Brick yellow"
							end -- House walls
						
							if v.Name == "SmoothBlockModel40" then
								colorAPI.color(v, baseC) -- Default is "Bright green"
							end -- House grass base
						
							if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
								colorAPI.color(v, roofC) -- Default is "Bright red"
							end -- House roof
						
							if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
								colorAPI.color(v, WANDDC) -- Default is "Dark orange"
							end -- House windows and door outlines
						
							if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
								colorAPI.color(v, stairsC) -- Default is "Dark stone grey"
							end -- House Stairs
						
							if v.Name == "SmoothBlockModel112" then
								colorAPI.color(v, floorC) -- Default is "Medium blue"
							end -- House floor
						
							if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
								colorAPI.color(v, rooftsC) -- Default is "Reddish brown"
							end -- House roof thingys
						
							if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
								colorAPI.color(v, chiC) -- Default is "Sand red"
							end -- Chi top part
					end)()
				end
		end
		
		colorAPI.colorBuildingBricks = function(arg)
				local DarkStoneGrey = arg.DarkStoneGrey
				local DeepBlue = arg.DeepBlue
				local NY = arg.NY
				local IW = arg.IW
				local LimeGreen = arg.LimeGreen
				local MSG = arg.MSG
				local RB = arg.RB
				local RR = arg.RR
				local TP = arg.TP
				
				-------------------------------------------------------------------- Building Bricks --------------------------------------------------------------------
			  
				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetChildren()) do
					coroutine.wrap(function()
						if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
							colorAPI.color(v, DarkStoneGrey) -- Default is "Dark stone grey"
						end
						
						if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
							colorAPI.color(v, DeepBlue) -- Default is "Deep blue"
						end
						
						if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
							colorAPI.color(v, NY) -- Default is "New Yeller"
						end
						
						if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
							colorAPI.color(v, IW) -- Default is "Institutional white"
						end
						
						if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part9" or v.Name == "Part5" then
							colorAPI.color(v, LimeGreen) -- Default is "Lime green"
						end
						
						if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" then
							colorAPI.color(v, MSG) -- Default is "Medium Stone grey"
						end
						
						if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
							colorAPI.color(v, RB) -- Default is "Really black"
						end
						
						if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
							colorAPI.color(v, RR) -- Default is "Really red"
						end
						
						if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
							colorAPI.color(v, TP) -- Default is "Toothpaste"
						end
					end)()
				end
		end
		
		-------------------------------------------------------------------- BASIC API STUFF HERE --------------------------------------------------------------------
				coroutine.wrap(function()
					colorAPI.colorHouse({
						wallsC = colorAPI.transformToColor3(BrickColor.new(message)),
						baseC = colorAPI.transformToColor3(BrickColor.new(message)),
						roofC = colorAPI.transformToColor3(BrickColor.new(message)),
						WANDDC = colorAPI.transformToColor3(BrickColor.new(message)),
						stairsC = colorAPI.transformToColor3(BrickColor.new(message)),
						floorC = colorAPI.transformToColor3(BrickColor.new(message)),
						rooftsC = colorAPI.transformToColor3(BrickColor.new(message)),
						chiC = colorAPI.transformToColor3(BrickColor.new(message))
					})
				end)()
			task.spawn(function()
			colorAPI.colorBuildingBricks({
				DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new(message)),
				DeepBlue = colorAPI.transformToColor3(BrickColor.new(message)),
				NY = colorAPI.transformToColor3(BrickColor.new(message)),
				IW = colorAPI.transformToColor3(BrickColor.new(message)),
				LimeGreen = colorAPI.transformToColor3(BrickColor.new(message)),
				MSG = colorAPI.transformToColor3(BrickColor.new(message)),
				RB = colorAPI.transformToColor3(BrickColor.new(message)),
				TP = colorAPI.transformToColor3(BrickColor.new(message)),
				RR = colorAPI.transformToColor3(BrickColor.new(message))
			})
		end)
		
				colorAPI.color(game.Workspace.Terrain["_Game"].Admin["Regen"], colorAPI.transformToColor3(BrickColor.new(message)))
				colorAPI.color(game.Workspace.Terrain["_Game"].Workspace["Baseplate"], colorAPI.transformToColor3(BrickColor.new(message)))
				task.spawn(function()
					colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new(message)))
				end)
				task.spawn(function()
					colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new(message)))
				end)
				task.spawn(function()
					colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new(message)))
				end)
				task.spawn(function()
					colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new(message)))
				end)
		task.wait(0.25)
			end)
		end

        function move_part(part, new)
            if not part then return end
            if part.ReceiveAge ~= 0 then return end
            part.Velocity = Vector3.new(31.30, 51.64, 34.1 + vis.angle/10000)
            part.Massless = true
            part.CanCollide = false
            part.Anchored = true
            part.CFrame = part.CFrame:Lerp(new, 0.175)
            task.wait()
            part.Anchored = false
        end

        spawn(function()
            for i,v in pairs(game.Players:GetChildren()) do
                v.Backpack.ChildAdded:connect(function(item)
if table.find(blacklistedGears,item.Name) and not table.find(GearWhitelisted,v.Name) then
    chatshit("ungear/"..v.Name)
    chatshit("ungear/others")
    chatshit("ungear/"..v.Name)
    chatshit("ungear/others")
    chatshit("ungear/"..v.Name)
    chatshit("ungear/others")
end
end)
end
end)

spawn(function()
    for i,v in pairs(game.Players:GetChildren()) do
        v.Backpack.ChildAdded:connect(function(item)
if table.find(blacklistedGears,item.Name) and not table.find(hardcodedgearwl,v.Name) then
chatshit("ungear/"..v.Name)
chatshit("ungear/others")
chatshit("ungear/"..v.Name)
chatshit("ungear/others")
chatshit("ungear/"..v.Name)
chatshit("ungear/others")
end
end)
end
end)

vis = {
	queue = false,
	active = false,
	amount = 12,
	size = '5/2/1',
	orbiter = lp,
	-- parts = {},
	angle = 0,
	speed = 0.01,
	mode = 3,
	velocity = 31.0042,
	modes = {},
	paints = {},
	paint = 'solid',
	radius = 10,
	solid = Color3.fromRGB(64, 128, 255),
	mind = 10,
	append = 0,
	debounce = false,
	var = 5,
	sinangle = 0,
	sinspeed = 0.01,
	freq = 2,
	amp = 5,
	sensitivity = 0.02
}

vis.modes[1] = function()
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		if not v or v.Parent == nil then
			execute('revis')
			return
		end
		
		coroutine.wrap(function()
		    local angle = i * ((2 * math.pi) / vis.amount) + vis.angle
		    local x, z = getxz(angle, vis.mind)
		    
		    local cframe = (vis.orbiter.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p
		    local lookAt = vis.orbiter.Character.HumanoidRootPart.Position
		    
		    move_part(v, CFrame.new(cframe, lookAt))
		end)()
	end
end

--// Also a spinning circle but with vertically spinning parts
vis.modes[2] = function()
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		coroutine.wrap(function()
			if not v or v.Parent == nil then
				execute('revis')
				return
			end
		
		    local angle = i * ((2 * math.pi) / vis.amount) + vis.angle
		    local x, z = getxz(angle, vis.mind)
		    
		    local cframe = (vis.orbiter.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p
		    local lookAt = vis.orbiter.Character.HumanoidRootPart.Position
		    
		    move_part(v, CFrame.new(cframe, lookAt) * CFrame.Angles(0, vis.angle, 0))
		end)()
	end
end

--// Also a spinning circle but with horizontally spinning parts (x axis)
vis.modes[3] = function()
	if #collection_service:GetTagged('Vis_Part') == 0 then
		execute('revis')
		return
	end
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		coroutine.wrap(function()
		    local angle = i * ((2 * math.pi) / vis.amount) + vis.angle
		    local x, z = getxz(angle, vis.mind)
		    
		    local cframe = (vis.orbiter.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p
		    local lookAt = vis.orbiter.Character.HumanoidRootPart.Position
		    
		    move_part(v, CFrame.new(cframe, lookAt) * CFrame.Angles(vis.angle, 0, 0))
		end)()
	end
end

--// Also a spinning circle but with horizontally spinning parts (z axis)
vis.modes[4] = function()
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		coroutine.wrap(function()
			if not v or v.Parent == nil then
				execute('revis')
				return
			end
		
		    local angle = i * ((2 * math.pi) / vis.amount) + vis.angle
		    local x, z = getxz(angle, vis.mind)
		    
		    local cframe = (vis.orbiter.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p
		    local lookAt = vis.orbiter.Character.HumanoidRootPart.Position
		    
		    move_part(v, CFrame.new(cframe, lookAt) * CFrame.Angles(0, 0, vis.angle))
		end)()
	end
end

--// Test with math.sin
vis.modes[5] = function()
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		coroutine.wrap(function()
			if not v or v.Parent == nil then
				execute('revis')
				return
			end
		
		    local angle = i * ((2 * math.pi) / vis.amount) + vis.angle
		    local x, z = getxz(angle, vis.mind)
		    
		    local cframe = (vis.orbiter.Character.HumanoidRootPart.CFrame * CFrame.new(x, 0, z)).p
		    local lookAt = vis.orbiter.Character.HumanoidRootPart.Position
		    local var = math.sin(vis.angle * vis.freq + i * 0.5) * vis.amp
		    local var = math.sin(vis.var * vis.freq * i * 0.5) * vis.amp
		    
		    move_part(v, CFrame.new(cframe + Vector3.new(0, var, 0)), lookAt)
		end)()
	end
end

-- Visualizer paints
vis.paints['hue'] = function()
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		colorAPI.color(v, Color3.fromHSV(glob.hue, 1, 1))
	end
end

vis.paints['reactive'] = function()
	if not _game.Folder:FindFirstChild('Sound') then return end
	
	local s = _game.Folder:FindFirstChild('Sound') 
	
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		colorAPI.color(v, Color3.fromRGB(s.PlaybackLoudness, 128, 255))
	end
end

vis.paints['solid'] = function()
	for i, v in pairs(collection_service:GetTagged('Vis_Part')) do
		colorAPI.color(v, vis.solid)
	end
end

spawn(function()
    while wait() do
    for i,v in pairs(game.Players:GetChildren()) do
        v.Backpack.ChildAdded:connect(function(item)
if table.find(gearbl,v.Name) and not table.find(GearWhitelisted,v.Name) then
    chatshit("ungear/ "..v.Name)
end
end)
end
end
end)

function Chat(msg)
    game.Players:Chat(msg)
end

            


			function giveaura()
				game.Players:Chat("gear me 287426148")
				game.Players:Chat("gear me 287426148")
				looping = true
				while looping do wait(0.01)
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = game.Players.LocalPlayer.Character
						wait()
						v.Parent = game.Players.LocalPlayer.Backpack
						wait()
						v.Parent = game.Players.LocalPlayer.Character
						wait()
						looping = false
						numberto = true
						while numberto do wait(0.002)
			v:Destroy()
			v:Destroy()
			numberto = false
						end
						
					end
				end
			end
			end
            local function movep(part, coords)
                pcall(
                    function()
                        chatshit("gear me 00000000000000000000000000000000000000000000108158379")
                        repeat
                            task.wait()
                        until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
                        game.Players.LocalPlayer.Backpack.IvoryPeriastron.Parent = game.Players.LocalPlayer.Character
                        for i, v in pairs(workspace:GetDescendants()) do
                            if v:IsA("Part") then
                                v.CanCollide = false
                            end
                        end
                        workspace.Gravity = 0
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            coords *
                            CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
                        task.wait(.3)
                        game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
                        repeat
                            task.wait()
                        until game.Workspace.Camera:FindFirstChild("FakeCharacter")
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            part.CFrame *
                            CFrame.new(-1 * (part.Size.X / 2) - (game.Players.LocalPlayer.Character["Torso"].Size.X / 2), 0, 0)
                        task.wait()
                        Loops.upmover = true
                        repeat
                            task.wait()
                            game.Players:Chat("unpunish me me me")
                        until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld") or not Loops.upmover
                        game.Players.LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
                        Loops.upmover = false
                        task.wait(0.3)
                        for i, v in pairs(workspace:GetDescendants()) do
                            if v.Name ~= "Rocket" and v.Name ~= "Addon" and v:IsA("BasePart") then
                                v.CanCollide = true
                            end
                        end
                        workspace.Gravity = 196.2
                        wait(.2)
                        game.Players:Chat(prefix.."fixmover")
                    end
                )
            end
function Chat(msg)
game.Players:Chat(msg)
end
function dcrash()
for i = 1, 50 do
   chatshit("dog all all all")
end
for i = 1, 50 do
   chatshit("clone all all all")
end
while task.wait() do
   chatshit("clone all all all")
end
end
function chatshit(msg)
game.Players:Chat(msg)
end
function hint(message)
if not message then
	return
end
chatshit("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" ..message)
end

local function col(part, c1, c2, c3)
pcall(
	function()
		local args = { [1] = "PaintPart", [2] = {["Part"] = part, ["Color"] = Color3.fromRGB(c1, c2, c3)}}
		spawn(
			function()
				workspace[game:GetService("Players").LocalPlayer.Name]:WaitForChild("PaintBucket"):WaitForChild("Remotes").ServerControls:InvokeServer(
					unpack(args)
				)
			end
		)
	end
)
end

function ban(plr)
    chatshit("punish "..plr)
    chatshit("speed "..plr)
    chatshit("size "..plr.." nan")
    chatshit("reload"..plr)
    chatshit("punish "..plr)
    chatshit("speed "..plr)
    chatshit("size "..plr.." nan")
    chatshit("punish "..plr)
    chatshit("speed "..plr)
    chatshit("size "..plr.." nan")
    chatshit("punish "..plr)
    chatshit("speed "..plr)
    chatshit("size "..plr.." nan")
    chatshit("punish "..plr)
    chatshit("speed "..plr)
    chatshit("size "..plr.." nan")
    chatshit("punish "..plr)
    chatshit("speed "..plr)
    chatshit("size "..plr.." nan")
end

function bendover(name)
    chatshit("rocket/"..name)
    wait(0.2)
    chatshit("freeze "..name)
    wait(0.2)
    chatshit("name "..name.." [TestSubject]")
    wait(0.2)
    chatshit("seizure "..name.." "..name.." "..name)
    wait(0.2)
    chatshit("seizure "..name)
    wait(0.2)
    chatshit("thaw "..name)
    wait(0.2)
    chatshit("unseizure "..name)
    wait(0.2)
    chatshit("tp "..name.." "..name)
    wait(0.2)
    chatshit("unrocket/ "..name)
    wait(0.2)
    chatshit("sit "..name)
    end


function rkick(plr)
    game.Players:Chat("respawn "..plr)
wait(.35)
chatshit("size me nan")
                    chatshit("size "..plr.." nan")
                    chatshit("ff "..plr)
                    chatshit("speed "..plr.." 0")
                    chatshit("setgrav "..plr.." 1000")  
                    wait(.35)
                    chatshit("jail/"..plr)
                local a = true
                if a then
                    for i=1,400 do
                        chatshit("rocket/me/me/me")
                        chatshit("rocket/"..v.Name.."/"..v.Name.."/"..v.Name)
                end
                a=not a
            end
            wait(0.333)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(6)
            game.Players.LocalPlayer.Character.Animate:Destroy()
            for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do v:Stop()end
                            
            local timer = os.clock()
        local a = true
                repeat game:GetService("RunService").RenderStepped:Wait()
                spawn(function()
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "Rocket" then v.CanCollide = false end
                end
                for i,v in pairs(v.Character:GetChildren()) do
                    if v.Name == "Rocket" then v.CanCollide = false end
                end
                    --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,1)*CFrame.Angles(0,math.rad(math.random(0,360)),0) * CFrame.new(0,0,-1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,-2)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    pcall(function()
                        v.Velocity = Vector3.new(0,0,0)
                        v.RotVelocity = Vector3.new(0,0,0)
                    end)
                end
                if a then
                    game.Players:Chat("rocket/me/me/me")
                    else
                        game.Players:Chat("rocket/"..plr.."/"..plr.."/"..plr)
                    end
                    a=not a
                end)
                until os.clock()-timer>30 or not plr
                game.Players:Chat("respawn me")
                wait(.35)
                chatshit("reload "..plr)
                wait(0.333)
            end


function say(msg) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All") end

local function clearLogs()
	for i=1,20 do
		local charset = {"darc", "Darcv3", "darchub.site", "v1", "ontop", "Darcv3ontop", "ahhdaddy", "nologz", "L", "nologgiesforyou", "dontleaveyet:))", "kicksexist", "epicantis", "nokickingforyou", "noskiddies", "skiddingL", "logznomore", "pqkowashere", "iwasstillhere", "#", "{", "}", "?", "+", "="}
		local ch2 = {"#", "{", "}", "!", "'", "@", ":", ";"}
		local fakecommands = {"ff {}{}{}{}{}{}{}", "kill {}{}{}{}", "punish {}{}{}{}{}{}", "ff |||||||||||||||||"}
		local f = ""
		local z = ""
		local b = ""
		for i=1,20 do
			f = f .. charset[math.random(1, #charset)]
		end
		for i=1,50 do
			z = z .. ch2[math.random(1, #ch2)]
		end
		for i=1,10 do
			b = b .. fakecommands[math.random(1, #fakecommands)]
		end
		chatshit("ff " .. f .. tostring(math.random(1, 1000)) .. "\n" .. f .. tostring(math.random(1, 1000)) .. "\n" .. f .. tostring(math.random(1, 1000)))
		chatshit("ff " .. z .. tostring(math.random(1, 1000)) .. "\n" .. z .. tostring(math.random(1, 1000)) .. "\n" .. z .. tostring(math.random(1, 1000)))
		chatshit("ff " .. b .. tostring(math.random(1, 1000)) .. "\n" .. b .. tostring(math.random(1, 1000)) .. "\n" .. b .. tostring(math.random(1, 1000)))
	end
end


--Custom Notification
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local state = false

function option(text, color, time, callback)
   Notification:Notify(
	  { Title = "Singularity X", Description = text },
	  { OutlineColor = color, Time = time, Type = "option" },
	  {
		 Image = "rbxassetid://13235545069",
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
	  { Title = "Singularity X", Description = text },
	  { OutlineColor = color, Time = time, Type = "Default" }
   )
end

local function gpfs(str)
    for i, v in pairs(game.Players:GetPlayers()) do
        if str:lower() == "me" then
            return game.Players.LocalPlayer
        end
        if str:lower() == "all" then
            return game:GetService("Players"):GetChildren() 
        end
        if str:lower() == (v.Name:lower()):sub(1, #str) or str:lower() == (v.DisplayName:lower()):sub(1, #str) then
            return v
        end
    end
end

-- examples
addcmd({"bring"}, function(args)
    local v = gpfs(args[2])
    game.Players:Chat("tp ".. v.Name .. " me")
end)

addcmd({"ref"}, function(args)
    local v = gpfs(args[2])
    game.Players:Chat("reload "..v.Name)
end)

addcmd({"paintall"}, function(args)
    local message = args[2]
            paintmap(message)
            wait(0.999)
            game.Players:Chat("ungear me")
end)

addcmd({"moveregen"}, function()
    movep(game:GetService("Workspace").Terrain["_Game"].Admin.Regen, CFrame.new(Vector3.new(24175, 1000000, 233)))
end)

addcmd({"spam"}, function(args)
    local text = args[2]
    local spam = true
    while spam == true do
    game.Players:Chat(""..text)
    end
end)

addcmd({"stop","unspam"}, function()
    local spam = false
end)

addcmd({"fixregen"}, function()
    movep(game:GetService("Workspace").Terrain["_Game"].Admin.Regen,CFrame.new(-7.16500044, 5.42999268, 94.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0))
end)

addcmd({"movebaseplate","movebp"}, function()
    if workspace.Terrain._Game.Workspace:FindFirstChild("Baseplate") then
        movep(
            workspace.Terrain._Game.Workspace.Baseplate,
            CFrame.new(Vector3.new(24175, 1000000, 233)))
    else
        print("Baseplate Not Loaded!")
    end
end)

addcmd({"fixgrass","fixg"}, function()
    movep(workspace.Terrain._Game.Workspace["Basic House"].SmoothBlockModel40, CFrame.new(-30.0650005, 1.03000009, 72.2430038, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)

addcmd({"fixbp","fixbaseplate"}, function()
    if workspace.Terrain._Game.Workspace:FindFirstChild("Baseplate") then
        movep(
            workspace.Terrain._Game.Workspace.Baseplate,
            CFrame.new(0, 0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        )
    else
        print("Baseplate Not Loaded!")
end
end)

addcmd({"antihat","antih","antihatlag"}, function(args)
    if connections.antihkick == nil then
        connections.antihkick =
            workspace.DescendantAdded:Connect(
            function(v)
                game:GetService("RunService").RenderStepped:Wait()
                if
                    v:IsA("Accessory") and tostring(v.AccessoryType) == "Enum.AccessoryType.Unknown" and
                        v.Name == "Accessory (MeshPart)"
                 then
                    v:Destroy()
                end
            end
        )
        for i, v in pairs(workspace:GetDescendants()) do
            if
                v:IsA("Accessory") and tostring(v.AccessoryType) == "Enum.AccessoryType.Unknown" and
                    v.Name == "Accessory (MeshPart)"
             then
                v:Destroy()
            end
        end
    end
end)

addcmd({"unantihat","unantihatlag","unantih"}, function()
    if connections.antihkick ~= nil then
        connections.antihkick:disconnect()
        connections.antihkick = nil
    end
end)

addcmd({"fixmover"}, function()
    if workspace.Camera:FindFirstChild("FakeCharacter") then
        workspace.Camera.FakeCharacter:Destroy()
    end
    Loops.upmover = false
    for i, v in pairs(workspace:GetDescendants()) do
        if v.Name ~= "Rocket" and v.Name ~= "Addon" and v:IsA("BasePart") then
            v.CanCollide = true
        end
    end
    workspace.Gravity = 196.2
    chatshit("respawn me")
    chatshit("!rwalls")
end)

addcmd({"pickup"}, function(args)
    local v = gpfs(args[2])
    chatshit("invis me")
    chatshit("dog me")
    chatshit("invis me")
    chatshit("!findhat me car")
    chatshit("size me 5")
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = -10    
    chatshit("tp ".. v.Name .. " me")
    chatshit("tp ".. v.Name .. " me")
    chatshit("tp ".. v.Name .. " me")
    chatshit("tp ".. v.Name .. " me")
end)

addcmd({"car"}, function()
    chatshit("invis me")
    chatshit("dog me")
    chatshit("invis me")
    chatshit("!findhat me car")
    chatshit("size me 5")
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = -10
end)

addcmd({"house"}, function()
    CFrame.new(
        -30.1330948,
        8.22999954,
        79.1193771,
        0.999945819,
        9.8654338e-09,
        0.0104114907,
        -9.43833989e-09,
        1,
        -4.10705354e-08,
        -0.0104114907,
        4.09700434e-08,
        0.999945819
    )
end)

addcmd({"antikick"},function()
    Loops.antikick = true
        repeat
            task.wait(.1)
        until not antikick
        workspace.DescendantAdded:Connect(
    function(v)
        if v.Name == "Rocket" or v.Name == "Addon" and Rocket:IsA("BasePart") then
            v.CanCollide = false
            v.CanTouch = false
        end
    end
)
end)

addcmd({"rej","rj","rejoin"},function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId,game.Players.LocalPlayer)
end)

addcmd({"antir","antirocket"}, function()
    _G.antirocket = true
    while _G.antirocket do
        for i, v in pairs(ws:GetDescendants()) do
            if v.Name == "Rocket" then
                v:Destroy()
            end
        end
        game:GetService("RunService").Heartbeat:Wait()
    end
end)

addcmd({"antiabuse"}, function()
    Loops.AntiAbuse = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        if lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND") then
            lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND"):Destroy()
        end
            if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
                chatshit("reload me")
            end
            if lp.Character.Humanoid and lp.Character.Humanoid.Health == 0 then
                chatshit("reset me")
            end
        until not AntiAbuse
        end)
        addcmd({"antikill","antideath"}, function()
            antikill = true
            repeat game:GetService("RunService").RenderStepped:Wait()
                if lp.Character.Humanoid and lp.Character.Humanoid.Health == 0 then
                    chatshit("reset me")
                end
        until not antikill
    end)

    addcmd({"unantikill"},function()
        antikill = false
    end)

        addcmd({"unantiabuse"}, function()
            Loops.AntiAbuse = false
        end)

        addcmd({"nok","noobbykill"}, function()
            for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                v.CanTouch = false
            end
        end)

        addcmd({"unnok","unnok"}, function()
            for i, v in pairs(game:GetService("Workspace").Terrain._Game.Workspace.Obby:GetChildren()) do
                v.CanTouch = true
            end
        end)

        addcmd({"fixfilter"}, function()
            local sdyuadhsadb
                if sdyuadhsadb == true then
                    return
                else
                    sdyuadhsadb = true
                    say("[Singularity X]:Fixing filter")
                for i = 1,14 do
                    chatshit("(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)")
                    chatshit("(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)")
                    chatshit("(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)")
                    chatshit("(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)")
                end
                wait(.35)
                say("[Singularity X]:Filter Fixed")
            end
        end)

        addcmd({"dex"}, function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        end)



local kickering
addcmd({"hkick"}, function(args)
    print(args)
end)

addcmd({"findgear"}, function(args)
    local v = gpfs(args[2])
        local input = args[3]
        local word2 = game:GetService("HttpService"):UrlEncode(input)
local urllol = ("https://catalog.roproxy.com/v1/search/items?category=Accessories&includeNotForSale=true&limit=10&salesTypeFilter=1&subcategory=Gear&Keyword=".. word2)
local response = game:HttpGet(urllol)
local data = game:GetService("HttpService"):JSONDecode(response)
if response then
game.Players:Chat("gear "..v.Name.." "..data["data"][1]["id"])
end
end)

addcmd({"antipunish"}, function()
    AntiPunish = true
    repeat game:GetService("RunService").RenderStepped:Wait()
    game.Lighting.ChildAdded:Connect(function(v)
        if v.Name and v.Name == game.Players.LocalPlayer.Name then
            game.Players:Chat("unpunish me")
        end
    end)
until not AntiPunish
end)

addcmd({"findhat"}, function(args)
    local v = gpfs(args[2])
        local input = args[3]
        local word2 = game:GetService("HttpService"):UrlEncode(input)
local urllol = ("https://catalog.roproxy.com/v1/search/items?category=Accessories&includeNotForSale=true&limit=10&salesTypeFilter=1&Keyword=".. word2)
local response = game:HttpGet(urllol)
local data = game:GetService("HttpService"):JSONDecode(response)

if response then
game.Players:Chat("hat "..v.Name.." "..data["data"][1]["id"])
end
end)

addcmd({"cmds","commands"}, function(args)
    for i,v in pairs(cmds) do
        print(args)
end
end)

addcmd({"super"}, function(args)
    local super = args[2]
    for i=1,100 do
        chatshit("!"..super)
    end
end)

addcmd({"rkick","rlag","rocketkick"}, function(args)
    local v = gpfs(args[2])
    game.Players:Chat("respawn "..v.Name)
wait(.35)
chatshit("size me nan")
                    chatshit("size ".. v.Name .." nan")
                    chatshit("ff ".. v.Name)
                    chatshit("speed ".. v.Name .." 0")
                    chatshit("setgrav ".. v.Name .." 1000")  
                    wait(.35)
                    chatshit("jail/".. v.Name)
                local a = true
                if a then
                    for i=1,400 do
                        chatshit("rocket/me/me/me")
                        chatshit("rocket/".. v.Name.."/".. v.Name.."/".. v.Name)
                end
                a=not a
            end
            wait(0.333)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(6)
            game.Players.LocalPlayer.Character.Animate:Destroy()
            for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do v:Stop()end
                            
            local timer = os.clock()
        local a = true
                repeat game:GetService("RunService").RenderStepped:Wait()
                spawn(function()
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "Rocket" then v.CanCollide = false end
                end
                for i,v in pairs(v.Character:GetChildren()) do
                    if v.Name == "Rocket" then v.CanCollide = false end
                end
                    --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,1)*CFrame.Angles(0,math.rad(math.random(0,360)),0) * CFrame.new(0,0,-1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,-2)
                for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    pcall(function()
                        v.Velocity = Vector3.new(0,0,0)
                        v.RotVelocity = Vector3.new(0,0,0)
                    end)
                end
                if a then
                    game.Players:Chat("rocket/me/me/me")
                    else
                        game.Players:Chat("rocket/".. v.Name .."/".. v.Name .."/".. v.Name)
                    end
                    a=not a
                end)
                until os.clock()-timer>30 or not v
                game.Players:Chat("respawn me")
                wait(.35)
                chatshit("reload ".. v.Name)
                wait(0.333)
            end)

addcmd({"rban"}, function(args)
    local v = gpfs(args[2])
    table.insert(Blacklisted, v.Name)
    chatshit("!rkick ".. v.Name)
end)

addcmd({"lua","run"}, function(args)
    local lua = args[2]
    loadstring(lua)()
end)

addcmd({"hban"}, function(args)
    local v = gpfs(args[2])
    table.insert(Blacklisted, v.Name)
    chatshit("!hkick".. v.Name)
end)

addcmd({"shutdown","close"}, function(args)
    local reason = args[2]
    chatshit("m/ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nServer crashed by Singularity X Reason:\n "..result.."\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
    task.wait(.99)
    notif("Server crashed Reason: "..reason, Color3.fromRGB(160, 32, 240), 5)
    task.wait(.1)
    scrash()
end)

for _,v in ipairs(game.Players:GetPlayers()) do
    v.Chatted:Connect(function(msg)
        if msg:lower() == "/c system" then
            notif(""..v.Name.." is using /c system", Color3.fromRGB(160, 32, 240), 5)
            print("SOMEBODY "..v.Name.." said /c system")
        end
    end)
end

game.Players.PlayerAdded:Connect(function(v)
    if table.find(Blacklisted, v.Name) then
        chatshit("!hkick".. v.Name .. "You are banned")
    end
end)



game.Players.PlayerAdded:Connect(function(v)
    if table.find(rbanned, v.Name) then
        chatshit("!rban".. v.Name .."")
    end
end)

lp.Chatted:Connect(function(msg)
    local args: {string} = msg:split(" ")
    
    local check: string = (args[1]:gsub(pf, ""))
            
    if not cmds[check] then return end
            
    cmds[check](args)    
end)