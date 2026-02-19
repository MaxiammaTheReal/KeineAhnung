-- Name: Upgrades
-- Path: game:GetService("ReplicatedStorage").Client.Core.Upgrades
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7214298999970197 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:32
-- Luau version 6, Types version 3
-- Time taken: 0.008394 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local setmetatable_result1 = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local var4_upvw
local Upgrades_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Upgrades)
local Charm_upvr = require(ReplicatedStorage_upvr.Packages.Charm)
function setmetatable_result1.GetUpgradeValue(arg1, arg2, arg3, arg4) -- Line 27
	--[[ Upvalues[3]:
		[1]: var4_upvw (read and write)
		[2]: Upgrades_upvr (readonly)
		[3]: Charm_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 28. Error Block 46 start (CF ANALYSIS FAILED)
	local any_match_result1 = arg3:lower():match("multiplier")
	local var12 = any_match_result1 and true
	if var12 then
		any_match_result1 = 1
	else
		any_match_result1 = 0
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [48.5]
	if nil then
		for i, v in nil do
			local any_Get_result1_2 = Upgrades_upvr:Get(i)
			if any_Get_result1_2 and any_Get_result1_2.properties.tag == arg3 then
				if var12 then
					any_match_result1 *= Upgrades_upvr:GetValue(v, i)
				else
					any_match_result1 += Upgrades_upvr:GetValue(v, i)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	do
		return any_match_result1
	end
	do
		return
	end
	-- KONSTANTERROR: [36] 28. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [85] 68. Error Block 35 start (CF ANALYSIS FAILED)
	local any_GetAsync_result1_upvr = var4_upvw:GetAsync()
	local any_computed_result1_upvr_2 = Charm_upvr.computed(function() -- Line 57
		--[[ Upvalues[1]:
			[1]: any_GetAsync_result1_upvr (readonly)
		]]
		local var15_result1 = any_GetAsync_result1_upvr()
		local var17 = var15_result1
		if var17 then
			var17 = var15_result1.inventory.Upgrades
		end
		return var17
	end)
	if arg2:lower() == "id" then
		local any_computed_result1_upvr = Charm_upvr.computed(function() -- Line 63
			--[[ Upvalues[2]:
				[1]: any_computed_result1_upvr_2 (readonly)
				[2]: arg3 (readonly)
			]]
			local var18_result1_2 = any_computed_result1_upvr_2()
			local var21
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var21 = var18_result1_2[arg3]
				return var21
			end
			if not var18_result1_2 or not INLINED() then
				var21 = 0
			end
			return var21
		end)
		return Charm_upvr.computed(function() -- Line 68
			--[[ Upvalues[3]:
				[1]: Upgrades_upvr (copied, readonly)
				[2]: any_computed_result1_upvr (readonly)
				[3]: arg3 (readonly)
			]]
			return Upgrades_upvr:GetValue(any_computed_result1_upvr(), arg3)
		end)
	end
	any_computed_result1_upvr = arg2:lower()
	if any_computed_result1_upvr == "tag" then
		any_computed_result1_upvr = Charm_upvr.computed
		any_computed_result1_upvr = any_computed_result1_upvr(function() -- Line 73
			--[[ Upvalues[3]:
				[1]: any_computed_result1_upvr_2 (readonly)
				[2]: arg3 (readonly)
				[3]: Upgrades_upvr (copied, readonly)
			]]
			local var18_result1 = any_computed_result1_upvr_2()
			local var30 = arg3:lower():match("multiplier") and true
			local var31
			if var30 then
				var31 = 1
			else
				var31 = 0
			end
			if not var18_result1 then
				return var31
			end
			for i_2, v_2 in var18_result1 do
				local any_Get_result1_3 = Upgrades_upvr:Get(i_2)
				if any_Get_result1_3 and any_Get_result1_3.properties.tag == arg3 then
					if var30 then
						var31 *= Upgrades_upvr:GetValue(v_2, i_2)
					else
						var31 += Upgrades_upvr:GetValue(v_2, i_2)
					end
				end
			end
			return var31
		end)
		return any_computed_result1_upvr
	end
	-- KONSTANTERROR: [85] 68. Error Block 35 end (CF ANALYSIS FAILED)
end
function setmetatable_result1.HasTreeBranch(arg1, arg2) -- Line 98
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	local unpack_result1, unpack_result2 = unpack(string.split(arg2, '/'))
	local any_Get_result1 = var4_upvw:Get(true)
	local var36
	if not any_Get_result1 then
		var36 = false
		return var36
	end
	local var37 = any_Get_result1.inventory.Tree[tonumber(unpack_result1)]
	if not var37 then
		var37 = {}
	end
	if table.find(var37, tonumber(unpack_result2)) == nil then
		var36 = false
	else
		var36 = true
	end
	return var36
end
function setmetatable_result1.Init(arg1) -- Line 107
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	var4_upvw = require(ReplicatedStorage_upvr.Client.Core.Data)
end
function setmetatable_result1.Start(arg1) -- Line 111
end
return setmetatable_result1