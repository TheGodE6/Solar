getgenv().prefix = "?"
getgenv().joins = false
getgenv().VgGear = "VampireVanquisher"
getgenv().Loops = {}
getgenv().version = "0.5.6"

local function gpfs(str)
    for i, v in pairs(game.Players:GetPlayers()) do
        if str:lower() == "me" then
            return game.Players.LocalPlayer
        end
        if str:lower() == (v.Name:lower()):sub(1, #str) or str:lower() == (v.DisplayName:lower()):sub(1, #str) then
            return v
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


    if cmd[1] == prefix.."sponge" then
        local plr = gpfs(args[2])
        chat("hat "..plr.Name.." 18100795481")
    end

    if cmd[1] == prefix.."spam" then
        local spam = string.sub(msg, #args + 1)
        Loops.spam = true
        repeat task.wait()
            chat(spam)
        until not Loops.spam
    end

    if cmd[1] == prefix.."unspam" then
        getgenv().Loops = false
    end

    if cmd[1] == prefix.."iy" then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end

    if cmd[1] == prefix.."run" then
            local execute = #args[1] + 1
        loadstring(string.sub(msg, execute))()
        end

        if cmd [1] == prefix.."silcrash" then
            chat("h \n\n\n\n\n\n\n\n\n\nn\n\n\n\n\n\n\nSc-Kah aka Scyz Presents.\n\n\n\nThe Best Crash In The World!\n\n\nJk Hehe")
            task.wait(3)
            Dcrash()
        end

if cmd[1] == prefix.."anticrash" then
            for i,v in pairs(game.Players:GetChildren()) do
    if v.Character:FindFirstChild(VgGear) or v.Backpack:FindFirstChild(VgGear) then
        chat("ungear/others")
        for i = 1,14 do
            chat(" h\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nBlud u are not  using Vg Sucka")
        end
    end
end
            

if cmd[1] == prefix.."fixfilter" then
    for i = 1,14 do
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*!@#")
        chat("*(&#_(*&_(*^!(^#(@*^!^#_(*w!@#")
    end
end
end)
