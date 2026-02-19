-- Name: createProducer
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.createProducer
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8138227999952505 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:21
-- Luau version 6, Types version 3
-- Time taken: 0.016515 seconds

local RunService_upvr = game:GetService("RunService")
local testSelector_upvr = require(script.Parent.utils.testSelector)
local Promise_upvr = require(script.Parent.Promise)
local createSelectArrayDiffs_upvr = require(script.Parent.utils.createSelectArrayDiffs)
local applyMiddleware_2_upvr = require(script.Parent.applyMiddleware)
local function createProducer_upvr(arg1, arg2) -- Line 23, Named "createProducer"
	--[[ Upvalues[6]:
		[1]: RunService_upvr (readonly)
		[2]: createProducer_upvr (readonly)
		[3]: testSelector_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: createSelectArrayDiffs_upvr (readonly)
		[6]: applyMiddleware_2_upvr (readonly)
	]]
	local module_3_upvr = {}
	local tbl_upvr_2 = {}
	local tbl_upvw = {}
	local var11_upvw = tbl_upvw
	local var12_upvw = 1
	local var13_upvw = arg1
	local var14_upvw
	local function _() -- Line 38, Named "ensureCanMutateNextListeners"
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: tbl_upvw (read and write)
		]]
		if var11_upvw == tbl_upvw then
			var11_upvw = table.clone(tbl_upvw)
		end
	end
	local function _() -- Line 44, Named "scheduleFlush"
		--[[ Upvalues[3]:
			[1]: var14_upvw (read and write)
			[2]: RunService_upvr (copied, readonly)
			[3]: module_3_upvr (readonly)
		]]
		if not var14_upvw then
			var14_upvw = RunService_upvr.Heartbeat:Once(function() -- Line 46
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: module_3_upvr (copied, readonly)
				]]
				var14_upvw = nil
				module_3_upvr:flush()
			end)
		end
	end
	local function subscribe(arg1_2) -- Line 53
		--[[ Upvalues[3]:
			[1]: var12_upvw (read and write)
			[2]: var11_upvw (read and write)
			[3]: tbl_upvw (read and write)
		]]
		local var16_upvr = var12_upvw
		var12_upvw += 1
		if var11_upvw == tbl_upvw then
			var11_upvw = table.clone(tbl_upvw)
		end
		var11_upvw[var16_upvr] = arg1_2
		local var18_upvw = true
		return function() -- Line 62
			--[[ Upvalues[4]:
				[1]: var18_upvw (read and write)
				[2]: var11_upvw (copied, read and write)
				[3]: tbl_upvw (copied, read and write)
				[4]: var16_upvr (readonly)
			]]
			if var18_upvw then
				var18_upvw = false
				if var11_upvw == tbl_upvw then
					var11_upvw = table.clone(tbl_upvw)
				end
				var11_upvw[var16_upvr] = nil
				tbl_upvw = nil
			end
		end
	end
	function module_3_upvr.getState(arg1_3, arg2_2) -- Line 72
		--[[ Upvalues[1]:
			[1]: var13_upvw (read and write)
		]]
		if arg2_2 then
			return arg2_2(var13_upvw)
		end
		return var13_upvw
	end
	function module_3_upvr.setState(arg1_4, arg2_3) -- Line 76
		--[[ Upvalues[4]:
			[1]: var13_upvw (read and write)
			[2]: var14_upvw (read and write)
			[3]: RunService_upvr (copied, readonly)
			[4]: module_3_upvr (readonly)
		]]
		var13_upvw = arg2_3
		if not var14_upvw then
			var14_upvw = RunService_upvr.Heartbeat:Once(function() -- Line 46
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: module_3_upvr (copied, readonly)
				]]
				var14_upvw = nil
				module_3_upvr:flush()
			end)
		end
	end
	function module_3_upvr.resetState(arg1_5) -- Line 81
		--[[ Upvalues[5]:
			[1]: var13_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var14_upvw (read and write)
			[4]: RunService_upvr (copied, readonly)
			[5]: module_3_upvr (readonly)
		]]
		var13_upvw = arg1
		if not var14_upvw then
			var14_upvw = RunService_upvr.Heartbeat:Once(function() -- Line 46
				--[[ Upvalues[2]:
					[1]: var14_upvw (copied, read and write)
					[2]: module_3_upvr (copied, readonly)
				]]
				var14_upvw = nil
				module_3_upvr:flush()
			end)
		end
	end
	function module_3_upvr.getDispatchers(arg1_6) -- Line 86
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (readonly)
		]]
		return tbl_upvr_2
	end
	function module_3_upvr.getActions(arg1_7) -- Line 90
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2
	end
	function module_3_upvr.clone(arg1_8) -- Line 94
		--[[ Upvalues[3]:
			[1]: createProducer_upvr (copied, readonly)
			[2]: var13_upvw (read and write)
			[3]: arg2 (readonly)
		]]
		return createProducer_upvr(var13_upvw, arg2)
	end
	function module_3_upvr.flush(arg1_9) -- Line 98
		--[[ Upvalues[5]:
			[1]: var14_upvw (read and write)
			[2]: var13_upvw (read and write)
			[3]: arg1 (read and write)
			[4]: tbl_upvw (read and write)
			[5]: var11_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if var14_upvw then
			var14_upvw:Disconnect()
			var14_upvw = nil
		end
		if var13_upvw == arg1 then
		else
			arg1 = var13_upvw
			tbl_upvw = var11_upvw
			for _, v_3 in tbl_upvw do
				task.spawn(v_3, var13_upvw)
				local _
			end
		end
	end
	function module_3_upvr.subscribe(arg1_10, ...) -- Line 118
		--[[ Upvalues[5]:
			[1]: testSelector_upvr (copied, readonly)
			[2]: var13_upvw (read and write)
			[3]: var12_upvw (read and write)
			[4]: var11_upvw (read and write)
			[5]: tbl_upvw (read and write)
		]]
		local arg_count_2 = select('#', ...)
		local var31_upvw
		local var32_upvw
		local var33_upvw
		if 3 <= arg_count_2 then
			local var34, var35, var36 = ...
			var31_upvw = var34
			var32_upvw = var35
			var33_upvw = var36
		elseif arg_count_2 == 2 then
			local var37, var38 = ...
			var31_upvw = var37
			var33_upvw = var38
		else
			var33_upvw = ...
		end
		local any_getState_result1_2_upvw = arg1_10:getState(var31_upvw)
		if var31_upvw then
			testSelector_upvr(var31_upvw, any_getState_result1_2_upvw, var13_upvw)
		end
		local var42_upvr = var12_upvw
		var12_upvw += 1
		if var11_upvw == tbl_upvw then
			var11_upvw = table.clone(tbl_upvw)
		end
		var11_upvw[var42_upvr] = function(arg1_11) -- Line 136
			--[[ Upvalues[4]:
				[1]: var31_upvw (read and write)
				[2]: any_getState_result1_2_upvw (read and write)
				[3]: var32_upvw (read and write)
				[4]: var33_upvw (read and write)
			]]
			local var41
			if var31_upvw then
				var41 = var31_upvw(arg1_11)
			else
				var41 = arg1_11
			end
			if any_getState_result1_2_upvw == var41 then
			else
				any_getState_result1_2_upvw = var41
				if var32_upvw and not var32_upvw(var41, any_getState_result1_2_upvw) then return end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var33_upvw(var41, any_getState_result1_2_upvw)
			end
		end
		local var44_upvw = true
		return function() -- Line 62
			--[[ Upvalues[4]:
				[1]: var44_upvw (read and write)
				[2]: var11_upvw (copied, read and write)
				[3]: tbl_upvw (copied, read and write)
				[4]: var42_upvr (readonly)
			]]
			if var44_upvw then
				var44_upvw = false
				if var11_upvw == tbl_upvw then
					var11_upvw = table.clone(tbl_upvw)
				end
				var11_upvw[var42_upvr] = nil
				tbl_upvw = nil
			end
		end
	end
	function module_3_upvr.once(arg1_12, ...) -- Line 154
		local arg_count = select('#', ...)
		local var46
		local var47
		local var48_upvw
		if 3 <= arg_count then
			local var49, var50, var51 = ...
			var46 = var49
			var47 = var50
			var48_upvw = var51
		elseif arg_count == 2 then
			local var52, var53 = ...
			var46 = var52
			var48_upvw = var53
		else
			var48_upvw = ...
		end
		local var55_upvw
		var55_upvw = arg1_12:subscribe(var46, var47, function(arg1_13, arg2_4) -- Line 167
			--[[ Upvalues[2]:
				[1]: var55_upvw (read and write)
				[2]: var48_upvw (read and write)
			]]
			var55_upvw()
			var48_upvw(arg1_13, arg2_4)
		end)
		return var55_upvw
	end
	function module_3_upvr.wait(arg1_14, arg2_5, arg3) -- Line 175
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.new(function(arg1_15, arg2_6, arg3_2) -- Line 176
			--[[ Upvalues[3]:
				[1]: arg1_14 (readonly)
				[2]: arg2_5 (readonly)
				[3]: arg3 (readonly)
			]]
			arg3_2(arg1_14:once(arg2_5, arg3, function(arg1_16) -- Line 177
				--[[ Upvalues[1]:
					[1]: arg1_15 (readonly)
				]]
				arg1_15(arg1_16)
			end))
		end)
	end
	function module_3_upvr.observe(arg1_17, ...) -- Line 185
		--[[ Upvalues[1]:
			[1]: createSelectArrayDiffs_upvr (copied, readonly)
		]]
		local var58
		local var59
		local var60_upvw
		if 3 <= select('#', ...) then
			local var61, var62, var63 = ...
			var58 = var61
			var59 = var62
			var60_upvw = var63
		else
			local var64, var65 = ...
			var58 = var64
			var60_upvw = var65
		end
		local tbl_upvr = {}
		local createSelectArrayDiffs_upvr_result1 = createSelectArrayDiffs_upvr(var58, var59)
		local var68_upvw = true
		local function checkDiffs(arg1_18) -- Line 199
			--[[ Upvalues[3]:
				[1]: var68_upvw (read and write)
				[2]: tbl_upvr (readonly)
				[3]: var60_upvw (read and write)
			]]
			if not var68_upvw then
			else
				for _, v_4 in arg1_18.deletions do
					local var73 = tbl_upvr[v_4.id]
					if var73 then
						tbl_upvr[v_4.id] = nil
						var73()
					end
				end
				for _, v_5 in arg1_18.additions do
					if not tbl_upvr[v_5.id] then
						tbl_upvr[v_5.id] = var60_upvw(v_5.value, v_5.key)
					end
				end
			end
		end
		checkDiffs(arg1_17:getState(createSelectArrayDiffs_upvr_result1))
		local any_subscribe_result1_upvr_2 = arg1_17:subscribe(createSelectArrayDiffs_upvr_result1, checkDiffs)
		return function() -- Line 224
			--[[ Upvalues[3]:
				[1]: var68_upvw (read and write)
				[2]: any_subscribe_result1_upvr_2 (readonly)
				[3]: tbl_upvr (readonly)
			]]
			var68_upvw = false
			any_subscribe_result1_upvr_2()
			for _, v in tbl_upvr do
				v()
			end
			table.clear(tbl_upvr)
		end
	end
	function module_3_upvr.observeWhile(arg1_19, ...) -- Line 236
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
		local var78
		local var79_upvw
		local var80_upvw
		if 3 <= select('#', ...) then
			local var81, var82, var83 = ...
			var78 = var81
			var79_upvw = var82
			var80_upvw = var83
		else
			local var84, var85 = ...
			var78 = var84
			var80_upvw = var85
		end
		local any_getState_result1 = arg1_19:getState(var78)
		local var87_upvw = true
		local var88_upvw
		local function _(arg1_20, arg2_7) -- Line 250, Named "updateObserver"
			--[[ Upvalues[4]:
				[1]: var87_upvw (read and write)
				[2]: var79_upvw (read and write)
				[3]: var88_upvw (read and write)
				[4]: var80_upvw (read and write)
			]]
			local var89
			if not var89 then
			else
				if var79_upvw then
					var89 = var79_upvw(arg1_20, arg2_7)
				else
					var89 = arg1_20
				end
				if var89 and not var88_upvw then
					var88_upvw = var80_upvw(arg1_20)
					return
				end
				if not var89 and var88_upvw then
					task.spawn(var88_upvw)
					var88_upvw = nil
				end
			end
		end
		if not var87_upvw then
			-- KONSTANTWARNING: GOTO [60] #56
		end
		-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [39] 36. Error Block 24 start (CF ANALYSIS FAILED)
		if var79_upvw then
			local _ = var79_upvw(any_getState_result1, any_getState_result1)
		else
		end
		if any_getState_result1 and not var88_upvw then
			var88_upvw = var80_upvw(any_getState_result1)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not any_getState_result1 and var88_upvw then
				task.spawn(var88_upvw)
				var88_upvw = nil
			end
		end
		-- KONSTANTERROR: [39] 36. Error Block 24 end (CF ANALYSIS FAILED)
	end
	function module_3_upvr.destroy(arg1_21) -- Line 279
		--[[ Upvalues[3]:
			[1]: var14_upvw (read and write)
			[2]: tbl_upvw (read and write)
			[3]: var11_upvw (read and write)
		]]
		if var14_upvw then
			var14_upvw:Disconnect()
			var14_upvw = nil
		end
		if tbl_upvw then
			table.clear(tbl_upvw)
		end
		table.clear(var11_upvw)
	end
	function module_3_upvr.enhance(arg1_22, arg2_8) -- Line 292
		return arg2_8(arg1_22)
	end
	function module_3_upvr.applyMiddleware(arg1_23, ...) -- Line 296
		--[[ Upvalues[1]:
			[1]: applyMiddleware_2_upvr (copied, readonly)
		]]
		return arg1_23:enhance(applyMiddleware_2_upvr(...))
	end
	function module_3_upvr.Connect(arg1_24, arg2_9) -- Line 302
		local module = {
			Connected = true;
		}
		local any_subscribe_result1_upvr = arg1_24:subscribe(arg2_9)
		local function Disconnect(arg1_25) -- Line 306
			--[[ Upvalues[1]:
				[1]: any_subscribe_result1_upvr (readonly)
			]]
			arg1_25.Connected = false
			any_subscribe_result1_upvr()
		end
		module.Disconnect = Disconnect
		return module
	end
	function module_3_upvr.Once(arg1_26, arg2_10) -- Line 313
		local module_2 = {
			Connected = true;
		}
		local any_once_result1_upvr = arg1_26:once(arg2_10)
		function module_2.Disconnect(arg1_27) -- Line 317
			--[[ Upvalues[1]:
				[1]: any_once_result1_upvr (readonly)
			]]
			arg1_27.Connected = false
			any_once_result1_upvr()
		end
		return module_2
	end
	function module_3_upvr.Wait(arg1_28) -- Line 324
		return arg1_28:wait(function(arg1_29) -- Line 325
			return arg1_29
		end):expect()
	end
	for i_2, v_2_upvr in arg2 do
		local function dispatch(...) -- Line 331
			--[[ Upvalues[5]:
				[1]: var13_upvw (read and write)
				[2]: v_2_upvr (readonly)
				[3]: var14_upvw (read and write)
				[4]: RunService_upvr (copied, readonly)
				[5]: module_3_upvr (readonly)
			]]
			var13_upvw = v_2_upvr(var13_upvw, ...)
			if not var14_upvw then
				var14_upvw = RunService_upvr.Heartbeat:Once(function() -- Line 46
					--[[ Upvalues[2]:
						[1]: var14_upvw (copied, read and write)
						[2]: module_3_upvr (copied, readonly)
					]]
					var14_upvw = nil
					module_3_upvr:flush()
				end)
			end
			return var13_upvw
		end
		tbl_upvr_2[i_2] = dispatch
		if not module_3_upvr[i_2] then
			module_3_upvr[i_2] = dispatch
		else
			warn(`Producer already has a property named {i_2}`)
		end
	end
	return module_3_upvr
end
return createProducer_upvr