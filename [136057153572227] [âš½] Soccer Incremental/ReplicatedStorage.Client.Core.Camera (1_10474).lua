-- Name: Camera
-- Path: game:GetService("ReplicatedStorage").Client.Core.Camera
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5837613999974565 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:48
-- Luau version 6, Types version 3
-- Time taken: 0.002298 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local setmetatable_result1 = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local Shake_2_upvr = require(ReplicatedStorage.Packages.Shake)
local CurrentCamera_upvr = workspace.CurrentCamera
function setmetatable_result1.Shake(arg1, arg2) -- Line 19
	--[[ Upvalues[2]:
		[1]: Shake_2_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
	]]
	local any_new_result1 = Shake_2_upvr.new()
	any_new_result1.FadeInTime = 0
	any_new_result1.Frequency = 0.1
	any_new_result1.Amplitude = 5
	for i, v in arg2 do
		any_new_result1[i] = v
	end
	any_new_result1:Start()
	local os_clock_result1_upvw = os.clock()
	any_new_result1:BindToRenderStep(Shake_2_upvr.NextRenderName(), Enum.RenderPriority.Last.Value, function(arg1_2, arg2_2, arg3) -- Line 35
		--[[ Upvalues[2]:
			[1]: os_clock_result1_upvw (read and write)
			[2]: CurrentCamera_upvr (copied, readonly)
		]]
		local var13 = (os.clock() - os_clock_result1_upvw) * 60
		os_clock_result1_upvw = os.clock()
		local var14 = CurrentCamera_upvr
		var14.CFrame *= CFrame.new(arg1_2) * CFrame.Angles(arg2_2.X * var13, arg2_2.Y * var13, arg2_2.Z)
	end)
	return any_new_result1
end
function setmetatable_result1.Init(arg1) -- Line 46
end
function setmetatable_result1.Start(arg1) -- Line 50
end
return setmetatable_result1