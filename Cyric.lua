local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
local Window = Rayfield:CreateWindow({
   Name = "Syric [Private Edition]",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by dawninja21",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Syric [Private]",
      Subtitle = "Key System",
      Note = "dm dawninja21 on discord for the script", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"godisgood100"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Sword Abilitys", "rewind")
local Toggle = Tab:CreateToggle({
   Name = "Subspace",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
       if Value then
   sub = true
local args = {
    [1] = "Explos"
}
       while sub do
  wait(0.7)
game:GetService("Players").LocalPlayer.Character.SubSpace.ExplosionEvent:FireServer(unpack(args))
end
   else
    sub = false
    end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Killstreak Ultanitum",
   CurrentValue = false,
   Flag = "Toggle2", 
   Callback = function(Value)
       if Value then
local args = {
    [1] = "Rage"
}
    ksul = true
		  while ksul do
				wait(0.7)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Killstreak Ultimatium").RageEvent:FireServer(unpack(args))
end
  else
		ksul = false
end
  end,
	})

local Tab = Window:CreateTab("Teleports", "rewind")

local Button = Tab:CreateButton({
   Name = "Stellar Ray",
   Callback = function()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10397, 4631, -5525)
   end,
})

local Button = Tab:CreateButton({
   Name = "Noobs",
   Callback = function()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9252, 4629, -4990)
   end,
})
	
Rayfield:LoadConfiguration()