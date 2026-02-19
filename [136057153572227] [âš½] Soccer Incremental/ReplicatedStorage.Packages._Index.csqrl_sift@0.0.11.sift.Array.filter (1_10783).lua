-- Name: filter
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.filter
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7513581000021077 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:51
-- Luau version 6, Types version 3
-- Time taken: 0.001445 seconds

local Util_upvr = require(script.Parent.Parent.Util)
return function(arg1, arg2) -- Line 26, Named "filter"
	--[[ Upvalues[1]:
		[1]: Util_upvr (readonly)
	]]
	local var6
	if type(arg2) == "function" then
	else
		var6 = Util_upvr.func.truthy
	end
	for i, v in ipairs(arg1) do
		if var6(v, i, arg1) then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end