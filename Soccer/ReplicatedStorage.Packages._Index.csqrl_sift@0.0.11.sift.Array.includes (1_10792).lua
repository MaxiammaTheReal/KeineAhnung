-- Name: includes
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.includes
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6100833000018611 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:58
-- Luau version 6, Types version 3
-- Time taken: 0.000714 seconds

local find_upvr = require(script.Parent.find)
return function(arg1, arg2, arg3) -- Line 28, Named "includes"
	--[[ Upvalues[1]:
		[1]: find_upvr (readonly)
	]]
	local var2
	if find_upvr(arg1, arg2, arg3) == nil then
		var2 = false
	else
		var2 = true
	end
	return var2
end