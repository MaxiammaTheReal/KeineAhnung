-- Name: JsonPatch
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.JsonPatch
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6456141999951797 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:56
-- Luau version 6, Types version 3
-- Time taken: 0.027604 seconds

local Tables_upvr = require(script.Parent.Tables)
local function isArray_upvr(arg1) -- Line 41, Named "isArray"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	if typeof(arg1) ~= "table" then
		return false
	end
	var6 = arg1
	if next(var6) == nil then
		return true
	end
	if #arg1 == 0 then
		var6 = false
		return var6
	end
	var6 = 0
	for i in arg1 do
		if typeof(i) ~= "number" then
			return false
		end
		if i % 1 ~= 0 or i < 1 then
			return false
		end
		var6 += 1
	end
	if 0 + i ~= var6 * (var6 + 1) / 2 then
	else
	end
	return true
end
local function _(arg1) -- Line 72, Named "unescapeSegment"
	return string.gsub(string.gsub(arg1, "~1", '/'), "~0", '~')
end
local function _(arg1) -- Line 80, Named "escapeSegment"
	return string.gsub(string.gsub(arg1, '~', "~0"), '/', "~1")
end
local function parsePointer_upvr(arg1) -- Line 88, Named "parsePointer"
	if arg1 == "" then
		return {}
	end
	if string.sub(arg1, 1, 1) ~= '/' then
		error("Invalid JSON pointer (must start with / or be empty)")
	end
	local string_split_result1 = string.split(string.sub(arg1, 2), '/')
	for i_2, v in string_split_result1 do
		string_split_result1[i_2] = string.gsub(string.gsub(v, "~1", '/'), "~0", '~')
		local var12
	end
	return var12
end
local function _(arg1, arg2, arg3) -- Line 106, Named "getArrayIndexOrError"
	local tonumber_result1 = tonumber(arg1)
	if tonumber_result1 == nil then
		error(`'{arg3}' path must be a valid numeric index; got '{arg1}'`)
	end
	local var14 = tonumber_result1 + 1
	if var14 < 1 or arg2 < var14 then
		error(`Array {arg3} index {var14 - 1} out of bounds for length {arg2}`)
	end
	return var14
end
local function _(arg1) -- Line 118, Named "isStringifiedNumberOk"
	if arg1 == '0' then
		return true
	end
	local tonumber_result1_3 = tonumber(arg1)
	if tonumber_result1_3 == nil then
		return false
	end
	local var16 = tonumber_result1_3
	if tostring(var16) ~= arg1 then
		var16 = false
	else
		var16 = true
	end
	return var16
end
local function applyOperation_upvr(arg1, arg2) -- Line 132, Named "applyOperation"
	--[[ Upvalues[3]:
		[1]: parsePointer_upvr (readonly)
		[2]: isArray_upvr (readonly)
		[3]: Tables_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 135 start (CF ANALYSIS FAILED)
	if typeof(arg2.op) ~= "string" then
		error("'op' must be a string")
	end
	local path = arg2.path
	if typeof(path) ~= "string" then
		error("missing valid 'path' string")
	end
	local var19 = arg1
	local const_number = 1
	local len = #parsePointer_upvr(path)
	-- KONSTANTERROR: [0] 1. Error Block 135 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 88. Error Block 136 start (CF ANALYSIS FAILED)
	if var19[len] == nil then
		error("add to a non-existent target")
	end
	if typeof(var19[len]) ~= "table" then
		error("cannot 'add' into non-table parent")
	end
	-- KONSTANTERROR: [110] 88. Error Block 136 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 28. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 28. Error Block 6 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 272, Named "keys"
	local module_2 = {}
	for i_3 in arg1 do
		table.insert(module_2, i_3)
	end
	return module_2
end
local function _(arg1, arg2) -- Line 280, Named "getZeroBasedKey"
	if not arg2 then
		return string.gsub(string.gsub(arg1, '~', "~0"), '/', "~1")
	end
	local tonumber_result1_2 = tonumber(arg1)
	if tonumber_result1_2 == nil then
		return string.gsub(string.gsub(arg1, '~', "~0"), '/', "~1")
	end
	return tostring(tonumber_result1_2 - 1)
end
local function generate_upvr(arg1, arg2, arg3, arg4) -- Line 291, Named "generate"
	--[[ Upvalues[3]:
		[1]: isArray_upvr (readonly)
		[2]: generate_upvr (readonly)
		[3]: Tables_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 88 start (CF ANALYSIS FAILED)
	if arg1 == arg2 then return end
	for i_4 in arg2 do
		table.insert({}, i_4)
		local _
	end
	for i_5 in arg1 do
		table.insert({}, i_5)
		local var48
	end
	local isArray_upvr_result1 = isArray_upvr(arg1)
	if not isArray_upvr_result1 or not #arg1 then
	end
	local _ = #var48
	-- KONSTANTERROR: [0] 1. Error Block 88 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [296] 242. Error Block 59 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [296] 242. Error Block 59 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 42. Error Block 136 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.16]
	if nil == nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.17]
	if nil == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if i_5 ~= nil then
		end
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.15]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.19]
			if nil == "table" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil ~= "table" then
				else
				end
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.20]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.329259]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.21]
			if nil ~= nil then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				if not isArray_upvr_result1 then
				else
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.29]
					if nil == nil then
					else
					end
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				if i_5 ~= nil then
					if not isArray_upvr_result1 then
					else
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.28]
						if nil == nil then
						else
						end
					end
					-- KONSTANTWARNING: GOTO [296] #242
				end
			end
			-- KONSTANTWARNING: GOTO [296] #242
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if isArray_upvr_result1 == isArray_upvr(arg2) then
		if not isArray_upvr_result1 then
		else
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [296.24]
			if nil == nil then
			else
			end
		end
	else
	end
	-- KONSTANTERROR: [50] 42. Error Block 136 end (CF ANALYSIS FAILED)
end
return {
	applyPatch = function(arg1, arg2) -- Line 377, Named "applyPatch"
		--[[ Upvalues[1]:
			[1]: applyOperation_upvr (readonly)
		]]
		local var57
		for _, v_2 in arg2 do
			var57 = applyOperation_upvr(var57, v_2)
		end
		return var57
	end;
	createPatch = function(arg1, arg2) -- Line 384, Named "createPatch"
		--[[ Upvalues[1]:
			[1]: generate_upvr (readonly)
		]]
		local module = {}
		generate_upvr(arg1, arg2, module, "")
		return module
	end;
}