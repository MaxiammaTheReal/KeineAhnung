-- Name: getTweenRatio
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon.Animation.getTweenRatio
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9792952999996487 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:45
-- Luau version 6, Types version 3
-- Time taken: 0.001533 seconds

local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2) -- Line 13, Named "getTweenRatio"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local DelayTime = arg1.DelayTime
	local Time = arg1.Time
	local var4
	if arg1.Reverses then
		var4 += Time
	end
	if arg2 == math.huge then
		return 1
	end
	if var4 * (1 + arg1.RepeatCount) <= arg2 and -1 < arg1.RepeatCount then
		return 1
	end
	local var5 = arg2 % var4
	if var5 <= DelayTime then
		return 0
	end
	local var6 = (var5 - DelayTime) / Time
	if 1 < var6 then
		var6 = 2 - var6
	end
	return TweenService_upvr:GetValue(var6, arg1.EasingStyle, arg1.EasingDirection)
end