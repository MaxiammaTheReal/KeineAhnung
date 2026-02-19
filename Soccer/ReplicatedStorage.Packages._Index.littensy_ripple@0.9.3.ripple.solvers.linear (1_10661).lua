-- Name: linear
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.linear
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6877055000004475 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:14
-- Luau version 6, Types version 3
-- Time taken: 0.002290 seconds

local config_upvr = require(script.Parent.Parent.config)
local function _(arg1) -- Line 5, Named "configure"
	--[[ Upvalues[1]:
		[1]: config_upvr (readonly)
	]]
	local var2
	if type(arg1) == "table" then
		var2 = arg1.speed
	else
		var2 = arg1
	end
	local module = {}
	local var4 = var2
	if not var4 then
		var4 = config_upvr.linear.default.speed
	end
	module.speed = var4
	return module
end
local intermediate_upvr = require(script.Parent.Parent.utils.intermediate)
return function(arg1, arg2) -- Line 13, Named "linear"
	--[[ Upvalues[2]:
		[1]: config_upvr (readonly)
		[2]: intermediate_upvr (readonly)
	]]
	local var6_upvr
	if type(arg2) == "table" then
		var6_upvr = arg2.speed
	else
		var6_upvr = arg2
	end
	local tbl_upvr = {}
	local var8 = var6_upvr
	if not var8 then
		var8 = config_upvr.linear.default.speed
	end
	tbl_upvr.speed = var8
	var6_upvr = intermediate_upvr.to(arg1)
	return function(arg1_2, arg2_2, arg3) -- Line 17
		--[[ Upvalues[3]:
			[1]: intermediate_upvr (copied, readonly)
			[2]: var6_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		local any_index_result1 = intermediate_upvr.index(var6_upvr, arg1_2)
		if not any_index_result1 then
			return false
		end
		local var11 = tbl_upvr.speed * arg3 * math.sign(any_index_result1 - arg2_2.value)
		if math.abs(any_index_result1 - arg2_2.value) <= math.abs(var11) then
			arg2_2.complete = true
			arg2_2.value = any_index_result1
			arg2_2.velocity = 0
		else
			arg2_2.value += var11
			arg2_2.velocity = var11
		end
	end
end