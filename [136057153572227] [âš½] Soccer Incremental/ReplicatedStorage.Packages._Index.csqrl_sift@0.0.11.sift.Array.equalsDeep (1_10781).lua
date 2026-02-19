-- Name: equalsDeep
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.equalsDeep
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6382131999998819 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:49
-- Luau version 6, Types version 3
-- Time taken: 0.002304 seconds

local function compareDeep_upvr(arg1, arg2) -- Line 6, Named "compareDeep"
	--[[ Upvalues[1]:
		[1]: compareDeep_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = type(arg2)
		return var5 ~= "table"
	end
	if var5 ~= "table" or INLINED() then
		if arg1 ~= arg2 then
			var5 = false
		else
			var5 = true
		end
		return var5
	end
	var5 = #arg1
	local var6 = var5
	if #arg2 ~= var6 then
		return false
	end
	for i = 1, var6 do
		if not compareDeep_upvr(arg1[i], arg2[i]) then
			return false
		end
	end
	return true
end
local Util_upvr = require(script.Parent.Parent.Util)
return function(...) -- Line 44, Named "equalsDeep"
	--[[ Upvalues[2]:
		[1]: Util_upvr (readonly)
		[2]: compareDeep_upvr (readonly)
	]]
	if Util_upvr.equalObjects(...) then
		return true
	end
	for i_2 = 2, select('#', ...) do
		if not compareDeep_upvr(select(1, ...), select(i_2, ...)) then
			return false
		end
	end
	return true
end