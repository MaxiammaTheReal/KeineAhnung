-- Name: equals
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Dictionary.equals
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7213885000019218 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:42
-- Luau version 6, Types version 3
-- Time taken: 0.003136 seconds

local function compare_upvr(arg1, arg2) -- Line 7, Named "compare"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var18
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var18 = type(arg2)
		return var18 ~= "table"
	end
	if var18 ~= "table" or INLINED() then
		if arg1 ~= arg2 then
			var18 = false
		else
			var18 = true
		end
		return var18
	end
	var18 = pairs(arg1)
	local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(arg1)
	for i, v in pairs_result1_2, pairs_result2_2, pairs_result3 do
		if arg2[i] ~= v then
			return false
		end
	end
	pairs_result1_2 = pairs(arg2)
	local pairs_result1, pairs_result2, pairs_result3_2 = pairs(arg2)
	for i_2, v_2 in pairs_result1, pairs_result2, pairs_result3_2 do
		if arg1[i_2] ~= v_2 then
			return false
		end
	end
	pairs_result1 = true
	return pairs_result1
end
local Util_upvr = require(script.Parent.Parent.Util)
return function(...) -- Line 45, Named "equals"
	--[[ Upvalues[2]:
		[1]: Util_upvr (readonly)
		[2]: compare_upvr (readonly)
	]]
	if Util_upvr.equalObjects(...) then
		return true
	end
	for i_3 = 2, select('#', ...) do
		if not compare_upvr(select(1, ...), select(i_3, ...)) then
			return false
		end
	end
	return true
end