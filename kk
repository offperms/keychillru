
local Players: Players = game:GetService("Players")
local UserInputService: UserInputService = game:GetService("UserInputService")
local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService: TeleportService = game:GetService("TeleportService")

local LocalPlayer: Player = Players.LocalPlayer
local PlayerMouse: PlayerMouse = LocalPlayer:GetMouse()

--#endregion
-- library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/plugss/custom-ui/main/EditedKavoUI"))();
-- windows
local Window = Library.CreateLib("_.chill hub ._", "Ocean")
-- tabs
local Tab = Window:NewTab("Main")
local Tps = Window:NewTab("Tps")
local Player = Window:NewTab("Player")
local Fun = Window:NewTab("Fun")
local Logs = Window:NewTab("Logs")
-- sections
local TpsSection = Tps:NewSection("Tps")
local FunSection = Fun:NewSection("Fun")
local LogsSection = Logs:NewSection("Logs:")
local MainSection = Tab:NewSection("madeby chill hub devs")
local PlayerSection = Player:NewSection("Player")

local function RandomCapitalization(txt)
    local str = ""
    for i = 1, string.len(txt), 1 do
        if math.random(1, 2) == 1 then
            str = str .. string.upper(string.sub(txt, i, i))
        else
            str = str .. string.lower(string.sub(txt, i, i))
        end
    end
    return str
end
-- Logs

LogsSection:NewLabel("will be updating soon!!!")
LogsSection:NewLabel("updated")
--endohlogs
MainSection:NewLabel("new discord:https://discord.gg/vXfTJCfFWM.")
MainSection:NewLabel("Full script by ! EMPLIC#9999")

MainSection:NewButton("Rejoin", "Rejoin the place.", function()
    local PlaceId = game.PlaceId
    local JobId = game.JobId

    return TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
end)

MainSection:NewButton("new ui peak", "Rejoin the place.", function()
-- chillhub peak
-- Happy hallowen
loadstring(game:HttpGet(('https://raw.githubusercontent.com/plugss/Chillhub/main/README.md'),true))()
end)

MainSection:NewButton("Rtx Graphics", "Loads rtx graphics.", function()
-- Roblox Graphics Enhancher
local light = game.Lighting
for i, v in pairs(light:GetChildren()) do
	v:Destroy()
end

local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light

-- enable or disable shit

local config = {

	Terrain = true;
	ColorCorrection = true;
	Sun = true;
	Lighting = true;
	BloomEffect = true;
	
}

-- settings {

color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = false
bloom.Intensity = 0.1

sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1

bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1

blur.Enabled = false
blur.Size = 6

-- settings }


if config.ColorCorrection then
	color.Enabled = true
end


if config.Sun then
	sun.Enabled = true
end


if config.Terrain then
	-- settings {
	ter.WaterColor = Color3.fromRGB(10, 10, 24)
	ter.WaterWaveSize = 0.15
	ter.WaterWaveSpeed = 22
	ter.WaterTransparency = 1
	ter.WaterReflectance = 0.05
	-- settings }
end


if config.Lighting then
	-- settings {
	light.Ambient = Color3.fromRGB(0, 0, 0)
	light.Brightness = 4
	light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
	light.ExposureCompensation = 0
	light.FogColor = Color3.fromRGB(132, 132, 132)
	light.GlobalShadows = true
	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
	light.Outlines = false
	-- settings }
end
end)



MainSection:NewKeybind("Toggle ui", "Toggles the ui", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

MainSection:NewButton("Kill Everyone (patched) rip", "kills everyone", function()
    task.spawn(function()
        local CoordinateFrame = CFrame.new(-8.65939236, 22.2416039, 51.2895126)
        local Character = game:GetService("Players").LocalPlayer.Character
        local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        
        Humanoid.RootPart.CFrame = CoordinateFrame
        local Tool = Character:FindFirstChildWhichIsA("Tool") or Character:WaitForChild("Sword")
        local Handle = Tool:WaitForChild("Handle")

        for i = 1, 7, 1 do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("join .gg/vXfTJCfFWM made by Emplic", "All")
        end
        
        while true do
            if Tool:IsDescendantOf(Character) then
                for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
                    if Player ~= game:GetService("Players").LocalPlayer then
                        pcall(function()
                            Player.Character:FindFirstChildWhichIsA("Humanoid").RootPart.CFrame = Handle.CFrame * CFrame.new(math.random() / 8, math.random() / 8, math.random() / 8)
                        end)
                    end
                end
                Tool:Activate()
            end
            task.wait(0)
        end
    end)
end)

MainSection:NewButton("copydiscord/chillruinerv2's discord", "copys the discord.", function()
   setclipboard('https://discord.gg/vXfTJCfFWM')
end)

MainSection:NewButton("Admin ui (Updated)", "Credits to EMPLIC 9999", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/Admin-UI/main/Emplic"))()
end)

MainSection:NewButton("Discord version - ui ", "Credits to EMPLIC 9999", function()
   loadstring(game:HttpGetAsync('https://rentry.org/tdx6w/raw'))()
end)

MainSection:NewSlider("WalkSpeed", "Change your movement magnitude.", 250, 16, function(WalkSpeed: number?)
    local Character = LocalPlayer.Character
    if Character then
        local Humanoid: Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        if Humanoid then
            Humanoid.WalkSpeed = WalkSpeed
        end
    end
end)

PlayerSection:NewButton("Naked","No clothes for you",function()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    		if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
    			v:Destroy()
    		end
    	end
    end)

MainSection:NewSlider("JumpPower", "Change your initial jump velocity.", 250, 50, function(JumpPower: number?)
    local Character = LocalPlayer.Character
    if Character then
        local Humanoid: Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        if Humanoid then
            Humanoid.JumpPower = JumpPower
        end
    end
end)

MainSection:NewTextBox("buy item", "gets a item", function(txt)
local args = {
    [1] = "BuyItem",
    [2] = txt
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
end)

MainSection:NewTextBox("tp to player", "gets a item", function(txt)

local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local p2 = txt
local pos = p1.CFrame

p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame


end)


MainSection:NewButton("Reset Character", "Reset your player character to the last location.", function()
    local Character = LocalPlayer.Character
    if Character then
        local Humanoid: Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        if Humanoid and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
            local LastCoordinateFrame = Humanoid.RootPart.CFrame
            task.wait(Character:BreakJoints())
            repeat
                task.wait(0)
            until LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead
            LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").RootPart.CFrame = LastCoordinateFrame
            return
        end
    end
end)

MainSection:NewToggle("Buy soda (Requires 50+ cash)", "Make your player auto buy soda", function(v)
    getgenv().RE = v
    while true do
        if not getgenv().RE then return end
        
     wait()

local args = {
    [1] = "BuyItem",
    [2] = "Soda"
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

end
local Event = game:GetService("Players").LocalPlayer.REEvent
        Event:FireServer(RE)
        wait(0.1)
    end)



MainSection:NewToggle("Buy cookie (Requires 100+ cash)", "Make your player auto buy cookie", function(v)
    getgenv().RE = v
    while true do
        if not getgenv().RE then return end
        
     wait()

local args = {
    [1] = "BuyItem",
    [2] = "Cookie"
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

end
local Event = game:GetService("Players").LocalPlayer.REEvent
        Event:FireServer(RE)
        wait(0.1)
    end)
MainSection:NewButton("Get all items (Requires 1k+ cash)", "Loads up Fates admin", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/Buy-all-stuff/main/Kill%20all%20-%20Emplic"))()
end)

MainSection:NewButton("Fates Admin (can get sword)", "Loads up Fates admin", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
    end)

MainSection:NewButton("Chathax (If you wanna spam something)", "LoadFEChathax", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/Chathax/main/FE"))()
end)





MainSection:NewButton("Spam the Chat", "Spam the chat with a randomized capitalization quote.", function()
    local DefaultChatSystemChatEvents: Folder = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", math.huge)
    if DefaultChatSystemChatEvents and typeof(DefaultChatSystemChatEvents) == "Instance" and DefaultChatSystemChatEvents:IsA("Folder") then
        local SayMessageRequest: RemoteEvent = DefaultChatSystemChatEvents:WaitForChild("SayMessageRequest", math.huge)
        if SayMessageRequest and typeof(SayMessageRequest) == "Instance" and SayMessageRequest:IsA("RemoteEvent") then
            for i = 1, 7, 1 do
                SayMessageRequest:FireServer(RandomCapitalization("hello"), require(game:GetService("Chat").ClientChatModules.ChatSettings).GeneralChannelName)
            end
        end
    end
end)

MainSection:NewButton("Chat Troll", "Makes u chat everything everyone says", function() 	local Action = game.Players:GetPlayers()
  for i = 1,#Action do
Action[i].Chatted:connect(function(Message)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".."["..Action[i].Name.."]".." "..Message, "All")
  end)
end end)


MainSection:NewButton("FE Emote GUI", "Loads up a FE Emote gui", function() if _G.emotegui then return end _G.emotegui = true return loadstring(game:HttpGet("https://pastebin.com/raw/DjsEQMxQ"))(); end)
MainSection:NewButton("Infinite Yield FE", "Load Infinite Yield FE.", function() return loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))(); end)
MainSection:NewButton("FE Nullware Hub", "Loads up the FE Nullware Hub.", function() if _G.nullwareloaded then return end _G.nullwareloaded = true loadstring(game:HttpGetAsync("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/dabc2500988785fbec1ce7c7aaee105d/raw/hVQJXfF4sR6yqSfJ"))() end)
MainSection:NewButton("Buy 30+ Cookies(Requires 50+ Cash)", "Give yourself an absurd number of cookies.", function() return loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/cokies/main/sc"))(); end)
MainSection:NewButton("Spam Buy Cookies (Requires 50+ Cash)", "Credits to EMPLIC 9999", function()
    while true do
     wait()
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "BuyItem",
    [2] = "Cookie"
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
local args = {
    [1] = "BuyItem",
    [2] = "Cookie"
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

end
end)

PlayerSection:NewButton("Run Flying Script (E)", "Press (E) to use.", function() if _G.flyscriptenabled then return; end; _G.flyscriptenabled = true; return loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/fly/main/lmao"))(); end)
LocalPlayer.CharacterAdded:Connect(function() _G.flyscriptenabled = false; end)

PlayerSection:NewButton("Korblox", "Applies the Korblox\'s RightLeg descendant.", function()
    local AccessoryEvent: RemoteEvent = ReplicatedStorage:WaitForChild("AccessoryEvent", math.huge)
    if AccessoryEvent and typeof(AccessoryEvent) == "Instance" and AccessoryEvent:IsA("RemoteEvent") then
        return AccessoryEvent:FireServer("Korblox")
    end
end)

PlayerSection:NewButton("Headless", "Applies the Headless Horseman\'s Head descendant.", function()
    local AccessoryEvent: RemoteEvent = ReplicatedStorage:WaitForChild("AccessoryEvent", math.huge)
    if AccessoryEvent and typeof(AccessoryEvent) == "Instance" and AccessoryEvent:IsA("RemoteEvent") then
        return AccessoryEvent:FireServer("Headless")
    end
end)

local TeleportToLocation; TeleportToLocation = function(CoordinateFrame: CFrame)
    local Character = LocalPlayer.Character
    if Character then
        local Humanoid: Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        if Humanoid and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
            Humanoid.RootPart.CFrame = CoordinateFrame
        end
    end
end



--#region

TpsSection:NewButton("Teleport @ Living Room", "tp", function()
    return TeleportToLocation(CFrame.new(-77, 4, 52))
end)

TpsSection:NewButton("Teleport @ Shop", "tp", function()
    return TeleportToLocation(CFrame.new(-108, 4, 53))
end)

TpsSection:NewButton("Teleport @ Hidden Area", "tp", function()
    return TeleportToLocation(CFrame.new(-133, 4, 53))
end)

TpsSection:NewButton("Teleport @ SpawnLocation", "tp", function()
    return TeleportToLocation(CFrame.new(-113, 4, 98))
end)

TpsSection:NewButton("Teleport @ Bed", "tp", function()
    return TeleportToLocation(CFrame.new(-43, 4, 17))
end)

TpsSection:NewButton("Teleport @ Desktop", "tp", function()
    return TeleportToLocation(CFrame.new(-30, 4, 86))
end)

TpsSection:NewButton("Teleport @ Outdoors", "tp", function()
    return TeleportToLocation(CFrame.new(-55, 19, 53))
end)

TpsSection:NewButton("Teleport @ Pool", "tp", function()
    return TeleportToLocation(CFrame.new(-107, 19, 123))
end)

TpsSection:NewButton("Teleport @ Group\'s Hidden Area", "tp", function()
    return TeleportToLocation(CFrame.new(-127, 4, 121))
end)

TpsSection:NewButton("Teleport @ Sword Area", "tp", function()
    return TeleportToLocation(CFrame.new(-10,20,60))
end)
-- fun 
FunSection:NewButton("Destroy group door", "Destorys group door", function()
GroupDoor:Remove()
end)

FunSection:NewButton("kill roblox proccess", "kills roblox proccess", function()
 game:shutdown()
end)

FunSection:NewButton("Ear Rape", "executes a earrape", function()
while true do 
if not game:IsLoaded() then game.Loaded:Wait() end

local caniputmyballsinyojaws = UserSettings():GetService("UserGameSettings")
local yojawsballsinyojaws = settings()["Rendering"]

caniputmyballsinyojaws.MasterVolume = 10000000000000000000000000000
caniputmyballsinyojaws.SavedQualityLevel = 10000000000000000000000000000 
yojawsballsinyojaws.QualityLevel = Enum.QualityLevel.Level01
    wait(2)

print(game:GetService("SoundService").RespectFilteringEnabled)


for _, sound in next, workspace:GetDescendants() do
   if sound:IsA("Sound") then
       sound:Play()
   end
end
end
end)

FunSection:NewButton("Break Audio", "Breakes the audio thats is in the workspace.", function()
   -- Decompiled with the Synapse X Luau decompiler.

local v1 = { { 1 }, { 1 }, { 1 }, { 1 }, { 1 }, { 1 }, { 1 }, { 1 }, { 1 } };
local l__Audio__2 = workspace:WaitForChild("Audio");
local v3 = Random.new():NextInteger(1, #v1);
local l__RE__1 = game:GetService("ReplicatedStorage"):WaitForChild("RE");
function playOnClients(p1)
	l__RE__1:FireAllClients("Play", p1);
end;
while true do
	wait();
	sInfo = v1[v3];
	l__Audio__2.SoundId = "rbxassetid://" .. tostring(sInfo[1]);
	l__Audio__2:Play();
	local u2 = false;
	local u3 = false;
	local v4 = l__Audio__2.Stopped:Connect(function()
		u3 = true;
	end);
	while true do
		wait();
		if u2 then
			break;
		end;
		if u3 then
			break;
		end;	
	end;
	l__Audio__2.Ended:Connect(function()
		u2 = true;
	end):Disconnect();
	v4:Disconnect();
	v3 = v3 + 1;
	if #v1 < v3 then
		v3 = 1;
	end;
end;

end)

FunSection:NewButton("Big Head (Rthro Head Required)", "Rthro head, From the packages, like danny.", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/sysGhost-aka-BiKode/BigHeadV2/main/BigHeadV2-r15", true))(); end)
FunSection:NewButton("Invisible Script", "", function() return loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/bd62009d461c948d466222f4f9333f9420130fbb/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))(); end)
--#endregion

game:GetService("StarterGui"):SetCore("SendNotification", {
    ["Title"] = "Thanks for using.",
    ["Text"] = string.format("Created by %s & %s", "\"\"", "\"! EMPLIC#9999\""),
    ["Duration"] = 10,
})
