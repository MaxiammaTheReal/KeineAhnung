-- Name: sort
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.sort
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6667433000038727 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:13
-- Luau version 6, Types version 3
-- Time taken: 0.000553 seconds

local copy_upvr = require(script.Parent.copy)
return function(arg1, arg2) -- Line 22, Named "sort"
	--[[ Upvalues[1]:
		[1]: copy_upvr (readonly)
	]]
	local copy_upvr_result1 = copy_upvr(arg1)
	table.sort(copy_upvr_result1, arg2)
	return copy_upvr_result1
end