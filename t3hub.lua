local Settings = {
	InviteCode = "uyUu7tQznF"
}

-- Objects
local HttpService = game:GetService("HttpService")
local RequestFunction

if syn and syn.request then
	RequestFunction = syn.request
elseif request then
	RequestFunction = request
elseif http and http.request then
	RequestFunction = http.request
elseif http_request then
	RequestFunction = http_request
end

local DiscordApiUrl = "http://127.0.0.1:%s/rpc?v=1"

-- Start
if not RequestFunction then
	return print("Your executor does not support http requests.")
end

for i = 6453, 6464 do
	local DiscordInviteRequest = function()
		local Request = RequestFunction({
			Url = string.format(DiscordApiUrl, tostring(i)),
			Method = "POST",
			Body = HttpService:JSONEncode({
				nonce = HttpService:GenerateGUID(false),
				args = {
					invite = {code = Settings.InviteCode},
					code = Settings.InviteCode
				},
				cmd = "INVITE_BROWSER"
			}),
			Headers = {
				["Origin"] = "https://discord.com",
				["Content-Type"] = "application/json"
			}
		})
	end
	spawn(DiscordInviteRequest)
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("T3Hub", "DarkTheme")
local Main = Window:NewTab("Main")
local Player = Window:NewTab("Player")
local Scripts = Window:NewTab("Scripts")
local PlayerSection = Player:NewSection("Player")
local MainSection = Main:NewSection("Main")
local KeybindSection = Main:NewSection("Keybinds")
local ScriptSection = Scripts:NewSection("Free Scripts")

PlayerSection:NewSlider("Walkspeed", "Adjust Walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
PlayerSection:NewSlider("Jump Power", "Adjust jump height", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
KeybindSection:NewKeybind("Press M to toggle gui", "", Enum.KeyCode.M, function()
	Library:ToggleUI()
end)
ScriptSection:NewButton("Amogus", "Turns you into amogus", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/amongus.lua",true))()
end)
PlayerSection:NewButton("Reset", "", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
ScriptSection:NewButton("Old Roblox", "Does what the title says", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/small%20projects/project%3A2016/2016raw.lua",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/oldanim.lua"),true)()
end)
MainSection:NewLabel("made by T3Manager#0001")
