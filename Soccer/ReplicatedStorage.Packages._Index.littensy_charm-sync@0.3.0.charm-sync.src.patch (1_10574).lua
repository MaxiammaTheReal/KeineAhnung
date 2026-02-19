-- Name: patch
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_charm-sync@0'].3.0['charm-sync'].src.patch
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7081385999990744 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:07
-- Luau version 6, Types version 3
-- Time taken: 0.004993 seconds

local tbl_upvr = {
	__none = "__none";
}
local function stringifySparseArray_upvr(arg1) -- Line 25, Named "stringifySparseArray"
	local highest_value = table.maxn(arg1)
	if highest_value == 0 or highest_value == #arg1 then
		return arg1
	end
	for i, v in next, arg1 do
		({})[tostring(i)] = v
		local var9
	end
	return var9
end
local __DEV___upvr = _G.__DEV__
local validate_upvr = require(script.Parent.validate)
local function diff_upvr(arg1, arg2, arg3) -- Line 51, Named "diff"
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: diff_upvr (readonly)
		[3]: stringifySparseArray_upvr (readonly)
		[4]: __DEV___upvr (readonly)
		[5]: validate_upvr (readonly)
	]]
	if arg3 == false then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	for i_2, v_2 in next, arg1 do
		local var21 = arg2[i_2]
		if v_2 == var21 then
			table.clone(arg2)[i_2] = nil
		elseif var21 == nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.clone(arg2)[i_2] = tbl_upvr
		elseif type(v_2) == "table" and type(var21) == "table" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.clone(arg2)[i_2] = diff_upvr(v_2, var21, true)
		end
		local var22
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true and (arg1[1] ~= nil or arg2[1] ~= nil) then
		var22 = stringifySparseArray_upvr(var22)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true and __DEV___upvr then
		for i_3, v_3 in next, var22 do
			validate_upvr(v_3, i_3)
		end
	end
	return var22
end
local function apply_upvr(arg1, arg2) -- Line 89, Named "apply"
	--[[ Upvalues[1]:
		[1]: apply_upvr (readonly)
	]]
	local var27
	if type(arg2) == "table" and arg2.__none == "__none" then
		return nil
	end
	var27 = arg1
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var27 = arg2
		return type(var27) ~= "table"
	end
	if type(var27) ~= "table" or INLINED() then
		return arg2
	end
	var27 = arg1
	local clone = table.clone(var27)
	if arg1[1] == nil then
		var27 = false
	else
		var27 = true
	end
	for i_4, v_4 in next, arg2 do
		if var27 and type(i_4) == "string" then
			i_4 = tonumber(i_4) or i_4
		end
		clone[i_4] = apply_upvr(clone[i_4], v_4)
	end
	return clone
end
return {
	isNone = function(arg1) -- Line 11, Named "isNone"
		local var2 = false
		if type(arg1) == "table" then
			if arg1.__none ~= "__none" then
				var2 = false
			else
				var2 = true
			end
		end
		return var2
	end;
	diff = diff_upvr;
	apply = apply_upvr;
}