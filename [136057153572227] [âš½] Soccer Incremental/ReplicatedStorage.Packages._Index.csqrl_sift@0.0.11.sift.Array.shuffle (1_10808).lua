-- Name: shuffle
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.shuffle
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5706595000010566 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:10
-- Luau version 6, Types version 3
-- Time taken: 0.001223 seconds

local copy_upvr = require(script.Parent.copy)
return function(arg1) -- Line 19, Named "shuffle"
	--[[ Upvalues[1]:
		[1]: copy_upvr (readonly)
	]]
	local random_state = Random.new(os.time() * #arg1)
	local copy_upvr_result1 = copy_upvr(arg1)
	for i = #copy_upvr_result1, 1, -1 do
		local any_NextInteger_result1 = random_state:NextInteger(1, i)
		copy_upvr_result1[i] = copy_upvr_result1[any_NextInteger_result1]
		copy_upvr_result1[any_NextInteger_result1] = copy_upvr_result1[i]
	end
	return copy_upvr_result1
end