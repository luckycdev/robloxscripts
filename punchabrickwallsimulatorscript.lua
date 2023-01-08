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
text.Text = "I have depreceated my script (lucky#9919's punch a brick wall sim script) and take no credit for the script being ran. This script auto farms, sells, and rebirths for you"
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
errorquestion.Text = "I found this script on youtube and mine broke and this one actually works, again i take zero credit just putting it here so people can have a working script. the script is on https://pastebin.com/KpYWiXd2"
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

    getgenv().bones = true
getgenv().upgrade = true
getgenv().rebirth = true
getgenv().autoSell = true
getgenv().delay = 0.1
 
local player = game.Players.LocalPlayer
local sell = game:GetService("Workspace").SellPart
local v1,v2 = math.huge, 0
 
while task.wait(delay) do
   if bones then
       v2 = math.ceil(5 * 1.9 ^ player:WaitForChild("BoneCount").Value)
       game:GetService("Workspace").AddBones:FireServer(v1, v2)
       if autoSell then
           firetouchinterest(player.Character.HumanoidRootPart, sell, 0)
           task.wait()
           firetouchinterest(player.Character.HumanoidRootPart, sell, 1)
       end
   end
   if upgrade then
       game:GetService("Workspace").UpgradeBone:FireServer()
   end
   if rebirth then
       game:GetService("ReplicatedStorage").Rebirth:FireServer(tonumber(player.PlayerGui.RebirthShop.Frame.RebirthLevel.Text))
   end
end
