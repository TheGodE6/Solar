getgenv().prefix = "-"
getgenv().joins = false
getgenv().VgGear = "VampireVanquisher"
getgenv().Loops = {}
getgenv().version = "0.5.7"
getgenv().antirocket = true

function gpfs(str)
    for i, v in pairs(game.Players:GetPlayers()) do
        if str:lower() == "me" then
            return game.Players.LocalPlayer
        end
        if str:lower() == (v.Name:lower()):sub(1, #str) or str:lower() == (v.DisplayName:lower()):sub(1, #str) then
            return v
        end
    end
end

function say(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

if antirocket then
for i,v in pairs(game.Workspace:GetDescendants()) do
if v.Name == "Rocket" then
v:Destroy()
end
end
end





--- Functions ---
function chat(msg)
    game.Players:Chat(msg)
end



chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSolar.lua Rewrite Version: "..version.." Loaded!")

function Dcrash()
    for i = 1,100 do
        chat("dog all all all")
        chat("clone all all all")
    end
    end
--- Command Hub ---
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local cmd = msg:split(" ")
    local args = msg:split(" ")


    if string.sub(msg, 2) == prefix.."re" then
        local plr = string.sub(msg, #prefix + 4)
        chat("reset "..plr)
    end

    if string.sub(msg, 4) == "spam" then
        local spam = string.sub(msg, 6)
        Loops.spam = true
        repeat task.wait()
            chat(spam)
        until not Loops.spam
    end

    if string.sub(msg, 6)"unspam" then
        getgenv().Loops = false
    end

    if string.sub(msg, 2) == "iy" then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end

    if string.sub(msg, 3) == "run" then
   local code = string.sub(msg, 5) 
        loadstring(code)
end

       if string.sub(msg, 8) == "silcrash" then
            for i = 1,14 do
            chat("h \n\n\n\n\n\n\n\n\n\nn\n\n\n\n\n\n\nSc-Kah aka Scyz Presents.\n\n\n\nThe Best Crash In The World!\n\n\nJk Hehe")
            task.wait(1.5)
            Dcrash()
            end
    end

if string.sub(msg, 9) == "anticrash" then
            for i,v in pairs(game.Players:GetPlayers()) do
    if v.Character:FindFirstChild(VgGear) or v.Backpack:FindFirstChild(VgGear) then
        chat("ungear/others")
        for i = 1,14 do
            chat(" h\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nBlud u are not  using Vg Sucka")
        end
    end
end
end
            

if string.sub(msg, 9) == prefix.."fixfilter" then
            say("[Solar.lua]: Fixing Filter!")
            say("[Solar.lua]: Filter Fixed!")
                task.wait(.3)
    for i = 1,14 do
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*w!@#")
    end
end
end)