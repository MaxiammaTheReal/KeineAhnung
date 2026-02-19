-- Name: count
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.count
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6591687999971327 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:44
-- Luau version 6, Types version 3
-- Time taken: 0.001761 seconds

local Util_upvr = require(script.Parent.Parent.Util)
return function(arg1, arg2) -- Line 25, Named "count"
	--[[ Upvalues[1]:
		[1]: Util_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10
	if type(arg2) == "function" then
	else
		var10 = Util_upvr.func.truthy
	end
	for i, v in ipairs(arg1) do
		if var10(v, i, arg1) then
		end
	end
	return 0 + 1
end