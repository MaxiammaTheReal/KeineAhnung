-- Name: removeValues
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.removeValues
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7356148999970173 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:07
-- Luau version 6, Types version 3
-- Time taken: 0.000848 seconds

local toSet_upvr = require(script.Parent.toSet)
return function(arg1, ...) -- Line 20, Named "removeValues"
	--[[ Upvalues[1]:
		[1]: toSet_upvr (readonly)
	]]
	for _, v in ipairs(arg1) do
		if not toSet_upvr({...})[v] then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end