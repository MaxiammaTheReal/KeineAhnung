-- Name: createBroadcaster
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.broadcast.createBroadcaster
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6671892999947886 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:17
-- Luau version 6, Types version 3
-- Time taken: 0.005665 seconds

local hydrate_upvr = require(script.Parent.hydrate)
local setInterval_upvr = require(script.Parent.Parent.utils.setInterval)
local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 14, Named "createBroadcaster"
	--[[ Upvalues[3]:
		[1]: hydrate_upvr (readonly)
		[2]: setInterval_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	local module_2_upvr = {}
	local var11_upvw
	local var12_upvw = false
	local tbl_3_upvr = {}
	local tbl_2_upvr = {}
	for _, v in arg1.producers do
		for i_2 in v:getDispatchers() do
			tbl_2_upvr[i_2] = true
		end
	end
	local function _() -- Line 28, Named "getSharedState"
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		assert(var11_upvw, "Cannot use broadcaster before the middleware is applied.")
		local module = {}
		local any_getState_result1_2 = var11_upvw.getState()
		for i_3 in arg1.producers do
			module[i_3] = any_getState_result1_2[i_3]
		end
		return module
	end
	local function hydratePlayer_upvr(arg1_2) -- Line 41, Named "hydratePlayer"
		--[[ Upvalues[3]:
			[1]: var11_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: hydrate_upvr (copied, readonly)
		]]
		assert(var11_upvw, "Cannot use broadcaster before the middleware is applied.")
		local tbl_4 = {}
		local any_getState_result1 = var11_upvw.getState()
		local var26
		for i_4 in arg1.producers do
			tbl_4[i_4] = any_getState_result1[i_4]
		end
		var26 = tbl_4
		if arg1.beforeHydrate then
			var26 = arg1.beforeHydrate(arg1_2, var26)
		end
		if arg1.hydrate then
			arg1.hydrate(arg1_2, var26)
		else
			arg1.dispatch(arg1_2, {hydrate_upvr.createHydrateAction(var26)})
		end
	end
	local setInterval_upvr_result1_upvr = setInterval_upvr(function() -- Line 55
		--[[ Upvalues[2]:
			[1]: tbl_3_upvr (readonly)
			[2]: hydratePlayer_upvr (readonly)
		]]
		for i_5 in tbl_3_upvr do
			hydratePlayer_upvr(i_5)
		end
	end, arg1.hydrateRate or 60)
	local var2_result1_upvr = setInterval_upvr(function() -- Line 61
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr:flush()
	end, arg1.dispatchRate or 0)
	local any_Connect_result1_upvr = Players_upvr.PlayerRemoving:Connect(function(arg1_3) -- Line 65
		--[[ Upvalues[1]:
			[1]: tbl_3_upvr (readonly)
		]]
		tbl_3_upvr[arg1_3] = nil
	end)
	function module_2_upvr.destroy(arg1_4) -- Line 69
		--[[ Upvalues[3]:
			[1]: setInterval_upvr_result1_upvr (readonly)
			[2]: var2_result1_upvr (readonly)
			[3]: any_Connect_result1_upvr (readonly)
		]]
		setInterval_upvr_result1_upvr()
		var2_result1_upvr()
		any_Connect_result1_upvr:Disconnect()
	end
	function module_2_upvr.flush(arg1_5) -- Line 75
		--[[ Upvalues[3]:
			[1]: var12_upvw (read and write)
			[2]: tbl_3_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if not var12_upvw then
		else
			var12_upvw = false
			for i_7, v_3 in tbl_3_upvr do
				arg1.dispatch(i_7, v_3)
				tbl_3_upvr[i_7] = {}
			end
		end
	end
	function module_2_upvr.start(arg1_6, arg2) -- Line 88
		--[[ Upvalues[2]:
			[1]: tbl_3_upvr (readonly)
			[2]: hydratePlayer_upvr (readonly)
		]]
		if not tbl_3_upvr[arg2] then
			tbl_3_upvr[arg2] = {}
			hydratePlayer_upvr(arg2)
		end
	end
	function module_2_upvr.middleware(arg1_7) -- Line 95
		--[[ Upvalues[5]:
			[1]: var11_upvw (read and write)
			[2]: tbl_2_upvr (readonly)
			[3]: tbl_3_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: var12_upvw (read and write)
		]]
		var11_upvw = arg1_7
		return function(arg1_8, arg2) -- Line 98
			--[[ Upvalues[4]:
				[1]: tbl_2_upvr (copied, readonly)
				[2]: tbl_3_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: var12_upvw (copied, read and write)
			]]
			if not tbl_2_upvr[arg2] then
				return arg1_8
			end
			return function(...) -- Line 103
				--[[ Upvalues[5]:
					[1]: tbl_3_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: arg1 (copied, readonly)
					[4]: var12_upvw (copied, read and write)
					[5]: arg1_8 (readonly)
				]]
				for i_6, v_2 in tbl_3_upvr do
					local tbl = {}
					tbl.name = arg2
					tbl.arguments = {...}
					if arg1.beforeDispatch then
						tbl = arg1.beforeDispatch(i_6, tbl)
					end
					table.insert(v_2, tbl)
				end
				var12_upvw = true
				return arg1_8(...)
			end
		end
	end
	return module_2_upvr
end