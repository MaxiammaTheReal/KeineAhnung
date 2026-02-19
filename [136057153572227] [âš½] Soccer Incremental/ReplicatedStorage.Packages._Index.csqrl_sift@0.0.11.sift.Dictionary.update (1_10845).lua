-- Name: update
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Dictionary.update
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6909977000032086 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:42
-- Luau version 6, Types version 3
-- Time taken: 0.001255 seconds

local copy_upvr = require(script.Parent.copy)
return function(arg1, arg2, arg3, arg4) -- Line 30, Named "update"
	--[[ Upvalues[1]:
		[1]: copy_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local copy_upvr_result1 = copy_upvr(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 3 start (CF ANALYSIS FAILED)
	copy_upvr_result1[arg2] = arg3(copy_upvr_result1[arg2], arg2)
	do
		return copy_upvr_result1
	end
	-- KONSTANTERROR: [6] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 13. Error Block 7 start (CF ANALYSIS FAILED)
	if typeof(arg4) == "function" then
		copy_upvr_result1[arg2] = arg4(arg2)
	end
	-- KONSTANTERROR: [12] 13. Error Block 7 end (CF ANALYSIS FAILED)
end