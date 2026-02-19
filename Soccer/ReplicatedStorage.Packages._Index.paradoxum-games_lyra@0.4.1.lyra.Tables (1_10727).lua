-- Name: Tables
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Tables
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6682186000034562 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:05
-- Luau version 6, Types version 3
-- Time taken: 0.005461 seconds

local function copyDeep_upvr(arg1) -- Line 3, Named "copyDeep"
	--[[ Upvalues[1]:
		[1]: copyDeep_upvr (readonly)
	]]
	if typeof(arg1) ~= "table" then
		return arg1
	end
	for i, v in arg1 do
		if typeof(v) == "table" then
			table.clone(arg1)[i] = copyDeep_upvr(v)
		elseif typeof(v) == "buffer" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.clone(arg1)[i] = buffer.copy(v, 0, buffer.create(buffer.len(v)))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return table.clone(arg1)
end
local function mergeDeep_upvr(...) -- Line 22, Named "mergeDeep"
	--[[ Upvalues[2]:
		[1]: copyDeep_upvr (readonly)
		[2]: mergeDeep_upvr (readonly)
	]]
	local module = {}
	for i_2 = 1, select('#', ...) do
		local selected_arg_2 = select(i_2, ...)
		if typeof(selected_arg_2) == "table" then
			for i_3, v_2 in selected_arg_2 do
				if typeof(v_2) == "table" then
					if module[i_3] == nil or typeof(module[i_3]) ~= "table" then
						module[i_3] = copyDeep_upvr(v_2)
					else
						module[i_3] = mergeDeep_upvr(module[i_3], v_2)
					end
				elseif typeof(v_2) == "buffer" then
					module[i_3] = buffer.copy(v_2, 0, buffer.create(buffer.len(v_2)))
				else
					module[i_3] = v_2
				end
			end
		end
	end
	return module
end
local function equalsDeep_upvr(arg1, arg2) -- Line 83, Named "equalsDeep"
	--[[ Upvalues[1]:
		[1]: equalsDeep_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var35
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var35 = typeof(arg2)
		return var35 ~= "table"
	end
	if var35 ~= "table" or INLINED() then
		if arg1 ~= arg2 then
			var35 = false
		else
			var35 = true
		end
		return var35
	end
	var35 = arg1
	for i_7, v_5 in var35 do
		if not equalsDeep_upvr(v_5, arg2[i_7]) then
			return false
		end
	end
	var35 = arg2
	for i_8, v_6 in var35 do
		if not equalsDeep_upvr(v_6, arg1[i_8]) then
			return false
		end
	end
	var35 = true
	return var35
end
local function freezeDeep_upvr(arg1) -- Line 103, Named "freezeDeep"
	--[[ Upvalues[1]:
		[1]: freezeDeep_upvr (readonly)
	]]
	local module_3 = {}
	for i_9, v_7 in arg1 do
		if typeof(v_7) == "table" then
			module_3[i_9] = freezeDeep_upvr(v_7)
		else
			module_3[i_9] = v_7
		end
	end
	table.freeze(module_3)
	return module_3
end
return {
	copyDeep = copyDeep_upvr;
	mergeDeep = mergeDeep_upvr;
	mergeShallow = function(...) -- Line 51, Named "mergeShallow"
		local module_2 = {}
		for i_4 = 1, select('#', ...) do
			local selected_arg = select(i_4, ...)
			if typeof(selected_arg) == "table" then
				for i_5, v_3 in selected_arg do
					module_2[i_5] = v_3
				end
			end
		end
		return module_2
	end;
	equalsDeep = equalsDeep_upvr;
	freezeDeep = freezeDeep_upvr;
	map = function(arg1, arg2) -- Line 69, Named "map"
		for i_6, v_4 in arg1 do
			local arg2_result1 = arg2(v_4, i_6, arg1)
			if arg2_result1 ~= nil then
				table.insert({}, arg2_result1)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
}