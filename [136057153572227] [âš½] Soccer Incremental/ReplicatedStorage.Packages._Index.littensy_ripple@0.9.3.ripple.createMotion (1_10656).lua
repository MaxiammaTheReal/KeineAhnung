-- Name: createMotion
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.createMotion
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.2709806999991997 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:10
-- Luau version 6, Types version 3
-- Time taken: 0.011064 seconds

local tbl_upvr_3 = {
	heartbeat = game:GetService("RunService").Heartbeat;
	start = false;
}
local merge_upvr = require(script.Parent.utils.merge)
local intermediate_upvr = require(script.Parent.utils.intermediate)
local assign_upvr = require(script.Parent.utils.assign)
local immediate_upvr = require(script.Parent.solvers.immediate)
local linear_upvr = require(script.Parent.solvers.linear)
local spring_upvr = require(script.Parent.solvers.spring)
local tween_upvr = require(script.Parent.solvers.tween)
return function(arg1, arg2) -- Line 17, Named "createMotion"
	--[[ Upvalues[8]:
		[1]: merge_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: intermediate_upvr (readonly)
		[4]: assign_upvr (readonly)
		[5]: immediate_upvr (readonly)
		[6]: linear_upvr (readonly)
		[7]: spring_upvr (readonly)
		[8]: tween_upvr (readonly)
	]]
	local var13 = arg2
	if not var13 then
		var13 = {}
	end
	local var2_result1_upvr = merge_upvr(tbl_upvr_3, var13)
	local typeof_result1_upvr = typeof(arg1)
	local tbl_upvr_4 = {}
	local tbl_upvr = {}
	local tbl_upvr_2 = {}
	local var20_upvw = 1
	local var21_upvw
	local var22_upvw = false
	for i, v in intermediate_upvr.to(arg1) do
		({})[i] = {
			value = v;
			complete = true;
		}
		local var27_upvr
	end
	local function stop_upvr() -- Line 39, Named "stop"
		--[[ Upvalues[1]:
			[1]: var21_upvw (read and write)
		]]
		if var21_upvw then
			var21_upvw:Disconnect()
			var21_upvw = nil
		end
	end
	local var58_upvw
	local module_2 = {
		state = var27_upvr;
		start = function(arg1_2) -- Line 46, Named "start"
			--[[ Upvalues[3]:
				[1]: var21_upvw (read and write)
				[2]: stop_upvr (readonly)
				[3]: var2_result1_upvr (readonly)
			]]
			if var21_upvw then
				return stop_upvr
			end
			var21_upvw = var2_result1_upvr.heartbeat:Connect(function(arg1_3) -- Line 51
				--[[ Upvalues[1]:
					[1]: arg1_2 (readonly)
				]]
				arg1_2:step(arg1_3)
			end)
			return stop_upvr
		end;
		stop = stop_upvr;
		get = function() -- Line 58, Named "get"
			--[[ Upvalues[3]:
				[1]: var27_upvr (readonly)
				[2]: intermediate_upvr (copied, readonly)
				[3]: typeof_result1_upvr (readonly)
			]]
			local module_3 = {}
			for i_2, v_2 in var27_upvr do
				module_3[i_2] = v_2.value
			end
			return intermediate_upvr.from(module_3, typeof_result1_upvr)
		end;
		set = function(arg1_4, arg2_2) -- Line 78, Named "set"
			--[[ Upvalues[2]:
				[1]: intermediate_upvr (copied, readonly)
				[2]: var27_upvr (readonly)
			]]
			for i_4, v_4 in var27_upvr do
				local var41 = intermediate_upvr.to(arg2_2)[i_4]
				if var41 then
					v_4.value = var41
					v_4.complete = false
				end
			end
		end;
		getVelocity = function() -- Line 68, Named "getVelocity"
			--[[ Upvalues[3]:
				[1]: var27_upvr (readonly)
				[2]: intermediate_upvr (copied, readonly)
				[3]: typeof_result1_upvr (readonly)
			]]
			local module = {}
			for i_3, v_3 in var27_upvr do
				module[i_3] = v_3.velocity or 0
			end
			return intermediate_upvr.from(module, typeof_result1_upvr)
		end;
		setVelocity = function(arg1_7, arg2_5) -- Line 130, Named "setVelocity"
			--[[ Upvalues[2]:
				[1]: intermediate_upvr (copied, readonly)
				[2]: var27_upvr (readonly)
			]]
			for i_7, v_7 in intermediate_upvr.to(arg2_5), nil do
				local var52 = var27_upvr[i_7]
				if var52 and var52.velocity then
					var52.complete = false
					var52.velocity = v_7
				end
			end
		end;
		impulse = function(arg1_6, arg2_4) -- Line 102, Named "impulse"
			--[[ Upvalues[2]:
				[1]: var27_upvr (readonly)
				[2]: intermediate_upvr (copied, readonly)
			]]
			if type(arg2_4) == "number" then
				for _, v_6 in var27_upvr do
					if v_6.velocity then
						v_6.complete = false
						v_6.velocity += arg2_4
					end
				end
			else
				for var47, var48 in intermediate_upvr.to(arg2_4), nil do
					local var49 = var27_upvr[var47]
					if var49 and var49.velocity then
						var49.complete = false
						var49.velocity += var48
					end
				end
			end
		end;
		patch = function(arg1_5, arg2_3) -- Line 91, Named "patch"
			--[[ Upvalues[2]:
				[1]: var27_upvr (readonly)
				[2]: assign_upvr (copied, readonly)
			]]
			for i_5, v_5 in var27_upvr do
				local var44 = arg2_3[i_5]
				if var44 then
					v_5.complete = false
					assign_upvr(v_5, var44)
				end
			end
		end;
		to = function(arg1_8, arg2_6) -- Line 145, Named "to"
			--[[ Upvalues[2]:
				[1]: var27_upvr (readonly)
				[2]: tbl_upvr_4 (readonly)
			]]
			if type(arg2_6) == "function" then
				for i_8, v_8 in var27_upvr do
					if v_8.destructor then
						v_8.destructor()
						v_8.destructor = nil
					end
					v_8.complete = false
					if arg2_6(i_8, v_8, 0) ~= false then
						tbl_upvr_4[i_8] = arg2_6
					end
				end
			else
				for var55, var56 in arg2_6 do
					local var57 = var27_upvr[var55]
					if var57 then
						if var57.destructor then
							var57.destructor()
							var57.destructor = nil
						end
						var57.complete = false
						if var56(var55, var57, 0) ~= false then
							tbl_upvr_4[var55] = var56
						end
					end
				end
			end
		end;
		immediate = function(arg1_9, arg2_7) -- Line 185, Named "immediate"
			--[[ Upvalues[1]:
				[1]: immediate_upvr (copied, readonly)
			]]
			arg1_9:to(immediate_upvr(arg2_7))
		end;
		linear = function(arg1_10, arg2_8, arg3) -- Line 189, Named "linear"
			--[[ Upvalues[1]:
				[1]: linear_upvr (copied, readonly)
			]]
			arg1_10:to(linear_upvr(arg2_8, arg3))
		end;
		spring = function(arg1_11, arg2_9, arg3) -- Line 193, Named "spring"
			--[[ Upvalues[1]:
				[1]: spring_upvr (copied, readonly)
			]]
			arg1_11:to(spring_upvr(arg2_9, arg3))
		end;
		tween = function(arg1_12, arg2_10, arg3) -- Line 197, Named "tween"
			--[[ Upvalues[1]:
				[1]: tween_upvr (copied, readonly)
			]]
			arg1_12:to(tween_upvr(arg2_10, arg3))
		end;
		step = function(arg1_13, arg2_11) -- Line 201, Named "step"
			--[[ Upvalues[6]:
				[1]: tbl_upvr_4 (readonly)
				[2]: var27_upvr (readonly)
				[3]: var22_upvw (read and write)
				[4]: var58_upvw (read and write)
				[5]: tbl_upvr (readonly)
				[6]: tbl_upvr_2 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			for i_9, v_9 in tbl_upvr_4 do
				local var83 = var27_upvr[i_9]
				if var83 and not var83.complete then
					v_9(i_9, var83, arg2_11)
				end
			end
			local any_get_result1 = arg1_13:get()
			local any_isComplete_result1 = arg1_13:isComplete()
			if not any_isComplete_result1 or not var22_upvw or var58_upvw ~= any_get_result1 then
				i_9 = nil
				v_9 = nil
				for _, v_10 in tbl_upvr, i_9, v_9 do
					task.spawn(v_10, any_get_result1, arg2_11)
					local var86
				end
			end
			if any_isComplete_result1 and (not var22_upvw or var58_upvw ~= var86) then
				i_9 = nil
				v_9 = nil
				for _, v_11 in tbl_upvr_2, i_9, v_9 do
					task.spawn(v_11, var86)
					local var87
				end
			end
			var22_upvw = any_isComplete_result1
			var58_upvw = var87
			return var87
		end;
		isComplete = function() -- Line 231, Named "isComplete"
			--[[ Upvalues[1]:
				[1]: var27_upvr (readonly)
			]]
			for _, v_12 in var27_upvr do
				if not v_12.complete then
					return false
				end
			end
			return true
		end;
		onComplete = function(arg1_14, arg2_12) -- Line 241, Named "onComplete"
			--[[ Upvalues[2]:
				[1]: var20_upvw (read and write)
				[2]: tbl_upvr_2 (readonly)
			]]
			local var90_upvr = var20_upvw
			var20_upvw += 1
			tbl_upvr_2[var90_upvr] = arg2_12
			return function() -- Line 246
				--[[ Upvalues[2]:
					[1]: tbl_upvr_2 (copied, readonly)
					[2]: var90_upvr (readonly)
				]]
				tbl_upvr_2[var90_upvr] = nil
			end
		end;
		onStep = function(arg1_15, arg2_13) -- Line 251, Named "onStep"
			--[[ Upvalues[2]:
				[1]: var20_upvw (read and write)
				[2]: tbl_upvr (readonly)
			]]
			local var92_upvr = var20_upvw
			var20_upvw += 1
			tbl_upvr[var92_upvr] = arg2_13
			return function() -- Line 256
				--[[ Upvalues[2]:
					[1]: tbl_upvr (copied, readonly)
					[2]: var92_upvr (readonly)
				]]
				tbl_upvr[var92_upvr] = nil
			end
		end;
		destroy = function() -- Line 261, Named "destroy"
			--[[ Upvalues[7]:
				[1]: var22_upvw (read and write)
				[2]: var20_upvw (read and write)
				[3]: var21_upvw (read and write)
				[4]: tbl_upvr (readonly)
				[5]: tbl_upvr_2 (readonly)
				[6]: tbl_upvr_4 (readonly)
				[7]: var27_upvr (readonly)
			]]
			var22_upvw = false
			var20_upvw = 1
			if var21_upvw then
				var21_upvw:Disconnect()
				var21_upvw = nil
			end
			table.clear(tbl_upvr)
			table.clear(tbl_upvr_2)
			table.clear(tbl_upvr_4)
			for _, v_13 in var27_upvr do
				if v_13.destructor then
					v_13.destructor()
					v_13.destructor = nil
				end
			end
		end;
	}
	if var2_result1_upvr.start then
		module_2:start()
	end
	return module_2
end