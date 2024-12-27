getgenv().AutoWin = false

task.spawn(function()
   while getgenv().AutoWin == true and task.wait(2) do
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3735, 108, 290)
end
end)

task.spawn(function()
game.Players.LocalPlayer.Chatted:Connect(function(msg)
   if msg == "autowin" then
     getgenv().AutoWin = true
end
   if msg = "unautowin" then
getgenv().AutoWin == false
end
end
end)