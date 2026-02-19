-- Name: Log
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Log
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6456529999995837 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:57
-- Luau version 6, Types version 3
-- Time taken: 0.002870 seconds

local tbl_upvr = {"fatal", "error", "warn", "info", "debug", "trace"}
local module_upvr = {
	level = "info";
}
function module_upvr.setLevel(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if table.find(tbl_upvr, arg1) == nil then
		error("Invalid log level")
	end
	module_upvr.level = arg1
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.log(arg1, arg2, arg3, arg4) -- Line 28
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if table.find(tbl_upvr, module_upvr.level) < table.find(tbl_upvr, arg2) then
	else
		if arg4 then
			for i_2, v_2 in arg4 do
				table.clone(arg1._context)[i_2] = v_2
				local var8_upvr
			end
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 40
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: var8_upvr (readonly)
			]]
			local tbl = {}
			tbl.level = arg2
			tbl.message = arg3
			tbl.context = var8_upvr
			arg1._logCallback(tbl)
		end)
		if not pcall_result1 then
			warn(`Error logging message: {pcall_result2}`)
		end
	end
end
function module_2_upvr.extend(arg1, arg2) -- Line 53
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local clone = table.clone(arg1._context)
	for i, v in arg2 do
		clone[i] = v
	end
	return setmetatable({
		_logCallback = arg1._logCallback;
		_context = clone;
	}, module_2_upvr)
end
function module_upvr.createLogger(arg1, arg2) -- Line 65
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module._logCallback = arg1
	local var20 = arg2
	if not var20 then
		var20 = {}
	end
	module._context = var20
	return setmetatable(module, module_2_upvr)
end
return module_upvr