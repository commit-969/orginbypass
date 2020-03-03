local china = getrawmetatable(game)
local english = checkcaller or is_protosmasher_caller
local russia = newcclosure
local Germany = china.__index
local America = china.__newindex
local name = china.__namecall

setreadonly(china, false)
china.__newindex =
    russia(
    function(City, State, address)
        if not english() then
            if City:IsA "Humanoid" then
                if State == "WalkSpeed" or State == "Health" then
                    return
                end
                if State == "JumpPower" or State == "HipHeight" then
                    return
                end
            end
            if State == "CFrame" and City.name == "HumanoidRootPart" or City.name == "Torso" then
                return
            end
        end
        return America(City, State, address)
    end
)

china.__namecall =
    russia(
    function(City, ...)
        if not english() then
            local dict = {...}
            if
                getnamecallmethod() == "Destroy" and tostring(City) == "BodyGyro" or
                    getnamecallmethod() == "Destroy" and tostring(City) == "BodyVelocity"
             then
                return UK(City, ...)
            end
            if
                getnamecallmethod() == "BreakJoints" and
                    tostring(City) == game:GetService "Players".LocalPlayer.Character.name
             then
                return UK(City, ...)
            end
            if getnamecallmethod() == "FireServer" then
                if City.name == "lIII" or tostring(City.Parent) == "ReplicatedStorage" then
                    return wait(9e9)
                end
                if dict[1] == "hey" then
                    return wait(9e9)
                end
            end
        end
        return name(City, ...)
    end
)
pmpl = 25
pmlp = 16
KeyHeld = false
	function onKeyPress(inputObject,gameProcessed)
	    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
	        KeyHeld = true
	        while KeyHeld do
	            game.Workspace[game.Players.LocalPlayer.Name].Humanoid.WalkSpeed = pmpl
	            wait()
		  end
	 end
end 
function onKeyRelease(inputObject,gameProcessed)
	   if inputObject.KeyCode == Enum.KeyCode.LeftShift then
       KeyHeld = false
	   game.Workspace[game.Players.LocalPlayer.Name].Humanoid.WalkSpeed = pmlp
    end
end 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
game:GetService("UserInputService").InputEnded:connect(onKeyRelease)
