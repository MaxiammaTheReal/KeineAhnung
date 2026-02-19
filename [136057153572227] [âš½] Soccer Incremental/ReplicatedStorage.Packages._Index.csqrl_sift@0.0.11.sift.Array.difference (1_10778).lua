-- Name: difference
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.difference
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7450537999975495 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:47
-- Luau version 6, Types version 3
-- Time taken: 0.001185 seconds

local toSet_upvr = require(script.Parent.toSet)
local difference_upvr = require(script.Parent.Parent.Set.difference)
local toArray_upvr = require(script.Parent.Parent.Set.toArray)
return function(arg1, ...) -- Line 25, Named "difference"
	--[[ Upvalues[3]:
		[1]: toSet_upvr (readonly)
		[2]: difference_upvr (readonly)
		[3]: toArray_upvr (readonly)
	]]
	for _, v in {...} do
		if typeof(v) == "table" then
			table.insert({}, toSet_upvr(v))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return toArray_upvr(difference_upvr(toSet_upvr(arg1), unpack({})))
end