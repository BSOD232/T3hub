local player = game:GetService("Players").LocalPlayer

if identifyexecutor() == "Krnl" or identifyexecutor() == "Synapse X" then   
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

    local Password = Instance.new("ScreenGui")
    local BackDrop = Instance.new("Frame")
    local Navbar = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local TextBox = Instance.new("TextBox")
    local TextButton = Instance.new("TextButton")
    local TextLabel_2 = Instance.new("TextLabel")

    Password.Name = "Password"
    Password.Parent = game.CoreGui.RobloxGui.Modules.Common.Examples
    Password.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    BackDrop.Name = "BackDrop"
    BackDrop.Parent = Password
    BackDrop.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    BackDrop.BorderSizePixel = 0
    BackDrop.Position = UDim2.new(0.319004536, 0, 0.342022955, 0)
    BackDrop.Size = UDim2.new(0, 480, 0, 303)
    BackDrop.Draggable = true

    Navbar.Name = "Navbar"
    Navbar.Parent = BackDrop
    Navbar.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    Navbar.BorderSizePixel = 0
    Navbar.Size = UDim2.new(0, 480, 0, 34)
    Navbar.Draggable = true

    TextLabel.Parent = Navbar
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.208333328, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 277, 0, 34)
    TextLabel.Font = Enum.Font.Jura
    TextLabel.Text = "PASSWORD"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true


    TextBox.Parent = BackDrop
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.BorderSizePixel = 0
    TextBox.Position = UDim2.new(0.291666657, 0, 0.336633652, 0)
    TextBox.Size = UDim2.new(0, 200, 0, 50)
    TextBox.Font = Enum.Font.TitilliumWeb
    TextBox.PlaceholderText = "Password"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.TextScaled = true
    TextBox.TextSize = 14.000
    TextBox.TextWrapped = true


    TextButton.Parent = BackDrop
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.Position = UDim2.new(0.360416651, 0, 0.584158421, 0)
    TextButton.Size = UDim2.new(0, 132, 0, 45)
    TextButton.Font = Enum.Font.Nunito
    TextButton.Text = "Submit"
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextScaled = true
    TextButton.TextSize = 14.000
    TextButton.TextWrapped = true


    TextLabel_2.Parent = BackDrop
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(0.360416651, 0, 0.821782172, 0)
    TextLabel_2.Size = UDim2.new(0, 135, 0, 26)
    TextLabel_2.Font = Enum.Font.Nunito
    TextLabel_2.Text = "INCORRECT PASSWORD"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true
    TextLabel_2.Visible = false


    TextButton.MouseButton1Click:Connect(function()
	    if TextBox.Text == "T3onTop" then
	    	Password:Destroy()
	    	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	    	local Window = Library.CreateLib("T3Hub", "DarkTheme")
	    	local Main = Window:NewTab("Main")
	    	local Player = Window:NewTab("Player")
	    	local Scripts = Window:NewTab("Scripts")
	    	local PlayerSection = Player:NewSection("Player")
	    	local MainSection = Main:NewSection("Main")
	    	local KeybindSection = Main:NewSection("Keybinds")
	    	local FreeScriptSection = Scripts:NewSection("Free Scripts")
            local HatScriptSection = Scripts:NewSection("Hat Scripts (listed in discord)")

	    	PlayerSection:NewSlider("Walkspeed", "Adjust Walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
		    	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
		    end)
		    PlayerSection:NewSlider("Jump Power", "Adjust jump height", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
		    	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	    	end)
	    	KeybindSection:NewKeybind("Press M to toggle gui", "", Enum.KeyCode.M, function()
	    		Library:ToggleUI()
	    	end)
	    	FreeScriptSection:NewButton("Amogus", "Turns you into amogus", function()
	    		loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/amongus.lua",true))()
	    	end)
	    	PlayerSection:NewButton("Reset", "", function()
		    	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	    	end)
	    	FreeScriptSection:NewButton("Old Roblox", "Does what the title says", function()
	    		loadstring(game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/small%20projects/project%3A2016/2016raw.lua",true))()
	    		loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/oldanim.lua"),true)()
		    end)
		    MainSection:NewLabel("Made by T3Manager#0001")
            HatScriptSection:NewButton("FE Flinging Titan", "you'll see", function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/flingingtitan.lua",true))()
            end)
            MainSection:NewButton("Discord Invite", "", function()
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
            end)
    	else
	    	TextLabel_2.Visible = true
	    	wait(1)
	    	TextLabel_2.Visible = false
    	end
    end)
else
    player:Kick("you can only use krnl or synapse")
end
