-- Name: validate
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_charm-sync@0'].3.0['charm-sync'].src.validate
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6155570999981137 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:09
-- Luau version 6, Types version 3
-- Time taken: 0.004416 seconds

local tbl_upvr_2 = {
	string = true;
	number = true;
}
local tbl_upvr = {
	["function"] = true;
	thread = true;
}
local function isTableUnsafe_upvr(arg1) -- Line 4, Named "isTableUnsafe"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	local var15
	for i in next, arg1 do
		local type_result1_2 = type(i)
		if not var14 and tbl_upvr_2[type_result1_2] then
		elseif type_result1_2 ~= type_result1_2 then
			return true
		end
		var15 += 1
	end
	if #arg1 < var15 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if type_result1_2 == "number" then
			return true
		end
	end
	return false
end
return function(arg1, arg2) -- Line 37, Named "validate"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: isTableUnsafe_upvr (readonly)
	]]
	local type_result1_4 = type(arg2)
	local type_result1 = type(arg1)
	if not tbl_upvr_2[type_result1_4] then
		error(`Invalid key type '{type_result1_4}' at key '{arg2}'`)
	elseif tbl_upvr[type_result1] then
		error(`Invalid value type '{type_result1}' at key '{arg2}'`)
	elseif type_result1 == "table" then
		if getmetatable(arg1) ~= nil then
			error(`Cannot sync tables with metatables! Got {arg1} at key '{arg2}'`)
		elseif isTableUnsafe_upvr(arg1) then
			error(`Cannot sync tables unsupported by remote events! The value has the key '{arg2}'.\n\n`.."This can be for the following reasons:\n".."1. The object is an array with non-sequential keys\n".."2. The object is a dictionary with mixed key types (e.g. string and number)\n\n".."Read more: https://create.roblox.com/docs/scripting/events/remote#argument-limitations")
		end
	end
	if type_result1_4 == "number" then
		if arg2 == math.huge or arg2 == (-math.huge) then
			error("Cannot sync infinity as key")
			return
		end
		if arg2 ~= math.floor(arg2) then
			error("Cannot sync non-integer number as key")
		end
	end
end