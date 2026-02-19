-- Name: update
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.update
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7213228999971761 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:16
-- Luau version 6, Types version 3
-- Time taken: 0.002376 seconds

local function _(arg1, arg2) -- Line 10, Named "call"
	if type(arg1) == "function" then
		return arg1(arg2)
	end
end
local copy_upvr = require(script.Parent.copy)
local Util_upvr = require(script.Parent.Parent.Util)
return function(arg1, arg2, arg3, arg4) -- Line 44, Named "update"
	--[[ Upvalues[2]:
		[1]: copy_upvr (readonly)
		[2]: Util_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var1_result1 = copy_upvr(arg1)
	local var4
	if var4 < 1 then
		var4 += #arg1
	end
	if type(arg3) == "function" then
	else
	end
	if var1_result1[var4] ~= nil then
		var1_result1[var4] = Util_upvr.func.returned(var1_result1[var4], var4)
		return var1_result1
	end
	if type(arg4) == "function" then
	else
	end
	var1_result1[var4] = nil
	return var1_result1
end