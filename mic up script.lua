--INIT
if game.PlaceId == 6884319169 then
	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("Mic Up Script by lucky#9919", "Ocean")
    --send notification thingy :)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Enabled Mic Up Script",
        Text = "Enabled Mic Up Script by lucky#9919",
        Duration = 4,
    })
    
--MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("join discord.gg/nAEtSVbcKx")

--VR (CREDIT TO ABACAXL)
            MainSection:NewButton("Fake VR (scroll in all the way)", "Enable the fake vr script called CloVR (by Abacaxl)", function()
                print("Activated Fake VR")
                loadstring(game:HttpGet("https://gist.githubusercontent.com/Toon-arch/9b118500cc792514a3048ffa723b7666/raw/bed5f399b252c75e58a9eec70634f6636ac8ac78/vr"))()
            end)

--VOICECHAT SPY
            MainSection:NewButton("Voicechat Spy GUI", "Open a GUI to spy on the selected person (by m0thra)", function()
            getgenv().VoicechatSpySettings = {
                TrackVoice3d = false,
                FollowDistance = 0
            }
            loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/ProjectBoring/Voicechat-Spy-v1-by-mothra/main/Main%20Script'))()
        end)

--PUSH TO TALK (CREDIT TO Skidnik#8041)
MainSection:NewButton("Push To Talk press T to toggle", "Push To Talk (T to toggle)(by Skidnik#8041)", function()
    local VoiceChat = game:GetService("VoiceChatInternal");
    local UserInputService = game:GetService("UserInputService");
    local toggleKey = "T";
    local enumKey = Enum.KeyCode[toggleKey];
    local vc_enabled = true; --Don't touch this
    local function pushToTalk(inputObj)
        if inputObj.KeyCode ~= enumKey then return; end
        vc_enabled = (not vc_enabled);
        VoiceChat:PublishPause(vc_enabled);
    end
    UserInputService.InputBegan:Connect(pushToTalk);
    UserInputService.InputEnded:Connect(pushToTalk);
end)

--INFINITE YIELD ADMIN
MainSection:NewButton("Infinite Yield (Admin Commands)", "Admin commands using Infinite Yield", function()
    print("Activated Infinite Yield")
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

    --UNIVERSAL
    local Universal = Window:NewTab("Universal")
    local UniversalSection = Universal:NewSection("join discord.gg/nAEtSVbcKx")    
    --speed
    UniversalSection:NewSlider("Walkspeed", "Changes your walkspeed (default:16)", 500, 16, function(speedset)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedset
        print("changed walkspeed to ", speedset)
    end)

    UniversalSection:NewButton("Reset walkspeed", "reset your walkspeed", function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        print("Reset your walkspeed")
    end)

--infjump (CREDIT TO Chaosxtp, 0x 59, and Vzurxy)
UniversalSection:NewButton("Infinite Jump press F to toggle", "press f(by Chaosxtp, 0x 59, and Vzurxy)", function()
    print("Now infinite jumping")
print("started the infinite jump script")
_G.infinjump = true

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
end)

--the error gui cuz a diff game
else 
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local text = Instance.new("TextLabel")
local errorquestion = Instance.new("TextLabel")
local closebutton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.303797454, 0, 0.320245385, 0)
main.Size = UDim2.new(0, 577, 0, 342)
main.Active = true
main.Draggable = true

text.Name = "text"
text.Parent = main
text.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
text.BorderColor3 = Color3.fromRGB(255, 0, 0)
text.BorderSizePixel = 0
text.Size = UDim2.new(0, 577, 0, 117)
text.Font = Enum.Font.SourceSans
text.Text = "Game is not Mic Up. Script did not run "
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextSize = 31.000

errorquestion.Name = "errorquestion"
errorquestion.Parent = main
errorquestion.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
errorquestion.BorderColor3 = Color3.fromRGB(255, 0, 0)
errorquestion.BorderSizePixel = 0
errorquestion.Position = UDim2.new(0.24783361, 0, 0.234635338, 0)
errorquestion.Size = UDim2.new(0, 291, 0, 117)
errorquestion.Font = Enum.Font.SourceSans
errorquestion.Text = "If this is an error and you are on 6884319169 then dm lucky#9919"
errorquestion.TextColor3 = Color3.fromRGB(255, 255, 255)
errorquestion.TextScaled = true
errorquestion.TextSize = 34.000
errorquestion.TextWrapped = true

closebutton.Name = "closebutton"
closebutton.Parent = main
closebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closebutton.Position = UDim2.new(0.325823218, 0, 0.707602322, 0)
closebutton.Size = UDim2.new(0, 200, 0, 50)
closebutton.Font = Enum.Font.SourceSans
closebutton.Text = "Close"
closebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
closebutton.TextSize = 57.000
closebutton.MouseButton1Down:connect(function()
main.Visible = false
	end)
end
