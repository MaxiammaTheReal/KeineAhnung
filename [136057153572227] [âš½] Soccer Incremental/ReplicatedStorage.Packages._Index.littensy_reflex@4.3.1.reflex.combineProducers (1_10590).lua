-- Name: combineProducers
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.combineProducers
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5755000999997719 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:19
-- Luau version 6, Types version 3
-- Time taken: 0.002520 seconds

local function combineInitialState_upvr(arg1) -- Line 4, Named "combineInitialState"
	local module = {}
	for i, v in arg1 do
		module[i] = v:getState()
	end
	return module
end
local function combineActions_upvr(arg1) -- Line 14, Named "combineActions"
	local module_2 = {}
	local tbl = {}
	local tbl_2_upvr = {}
	for i_2, v_2 in arg1 do
		for i_3, v_3 in v_2:getActions() do
			if tbl[i_3] then
				table.insert(tbl[i_3], v_3)
			else
				tbl[i_3] = {v_3}
			end
			tbl_2_upvr[v_3] = i_2
		end
	end
	for i_4, v_4_upvr in tbl do
		module_2[i_4] = function(arg1_2, ...) -- Line 32
			--[[ Upvalues[2]:
				[1]: v_4_upvr (readonly)
				[2]: tbl_2_upvr (readonly)
			]]
			local clone = table.clone(arg1_2)
			for _, v_5 in v_4_upvr do
				local var31 = tbl_2_upvr[v_5]
				clone[var31] = v_5(clone[var31], ...)
			end
			return clone
		end
	end
	return module_2
end
local createProducer_upvr = require(script.Parent.createProducer)
return function(arg1) -- Line 59, Named "combineProducers"
	--[[ Upvalues[3]:
		[1]: createProducer_upvr (readonly)
		[2]: combineInitialState_upvr (readonly)
		[3]: combineActions_upvr (readonly)
	]]
	return createProducer_upvr(combineInitialState_upvr(arg1), combineActions_upvr(arg1))
end