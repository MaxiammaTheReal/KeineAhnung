-- Name: zipAll
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.zipAll
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.779255400004331 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:41
-- Luau version 6, Types version 3
-- Time taken: 0.002177 seconds

local reduce_upvr = require(script.Parent.reduce)
local None_upvr = require(script.Parent.Parent.None)
return function(...) -- Line 24, Named "zipAll"
	--[[ Upvalues[2]:
		[1]: reduce_upvr (readonly)
		[2]: None_upvr (readonly)
	]]
	local args_list = {...}
	local module = {}
	if select('#', ...) == 0 then
		return module
	end
	local function var11(arg1, arg2) -- Line 33
		return math.max(arg1, #arg2)
	end
	for i = 1, reduce_upvr(args_list, var11, #args_list[1]) do
		local tbl = {}
		for _, v in ipairs(args_list) do
			local var16 = v[i]
			local var17
			if var16 == nil then
				var17 = None_upvr
			else
				var17 = var16
			end
			table.insert(tbl, var17)
		end
		table.insert(module, tbl)
	end
	return module
end