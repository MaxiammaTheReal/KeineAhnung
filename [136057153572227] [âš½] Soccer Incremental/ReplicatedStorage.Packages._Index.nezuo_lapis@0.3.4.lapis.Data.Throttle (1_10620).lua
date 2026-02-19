-- Name: Throttle
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Data.Throttle
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.698905500001274 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:43
-- Luau version 6, Types version 3
-- Time taken: 0.017584 seconds

local Error_upvr = require(script.Parent.Parent.Error)
local Promise_upvr = require(script.Parent.Parent.Parent.Promise)
local DataStoreGetOptions_upvr = Instance.new("DataStoreGetOptions")
DataStoreGetOptions_upvr.UseCache = false
local function updateAsync(arg1, arg2) -- Line 15
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Error_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2) -- Line 16
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: Error_upvr (copied, readonly)
		]]
		local var5_upvw
		local var6_upvw
		local var7_upvw
		local pcall_result1_4, pcall_result2_7 = pcall(function() -- Line 18
			--[[ Upvalues[5]:
				[1]: var7_upvw (read and write)
				[2]: arg2 (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: var5_upvw (read and write)
				[5]: var6_upvw (read and write)
			]]
			local any_UpdateAsync_result1_3, any_UpdateAsync_result2_3 = arg2.dataStore:UpdateAsync(arg2.key, function(...) -- Line 19
				--[[ Upvalues[4]:
					[1]: arg2 (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: var5_upvw (copied, read and write)
					[4]: var6_upvw (copied, read and write)
				]]
				if arg2.cancelOnGameClose and arg1.gameClosed then
					var5_upvw = "cancelled"
					return nil
				end
				local any_transform_result1, any_transform_result2, any_transform_result3_3, any_transform_result4_2 = arg2.transform(...)
				var5_upvw = any_transform_result1
				var6_upvw = any_transform_result2
				if any_transform_result1 == "succeed" then
					return any_transform_result2, any_transform_result3_3, any_transform_result4_2
				end
				return nil
			end)
			_ = any_UpdateAsync_result1_3 -- Setting global
			var7_upvw = any_UpdateAsync_result2_3
		end)
		if var5_upvw == "cancelled" then
			arg1_2("cancelled")
		elseif not pcall_result1_4 then
			arg1_2("retry", Error_upvr.new("RobloxApiError", pcall_result2_7))
		else
			arg1_2(var5_upvw, var6_upvw, var7_upvw)
		end
	end)
end
local function getAsync(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: DataStoreGetOptions_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_3) -- Line 49
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: DataStoreGetOptions_upvr (copied, readonly)
		]]
		local pcall_result1_7, pcall_result2_3, pcall_result3_2 = pcall(function() -- Line 50
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: DataStoreGetOptions_upvr (copied, readonly)
			]]
			return arg1.dataStore:GetAsync(arg1.key, DataStoreGetOptions_upvr)
		end)
		arg1_3(pcall_result1_7, pcall_result2_3, pcall_result3_2)
	end)
end
local function removeAsync(arg1) -- Line 58
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_4) -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local pcall_result1_6, pcall_result2_6 = pcall(function() -- Line 60
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.dataStore:RemoveAsync(arg1.key)
		end)
		arg1_4(pcall_result1_6, pcall_result2_6)
	end)
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module.config = arg1
	module.updateAsyncQueue = {}
	module.getAsyncQueue = {}
	module.removeAsyncQueue = {}
	module.gameClosed = false
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.getUpdateAsyncBudget(arg1) -- Line 81
	return arg1.config:get("dataStoreService"):GetRequestBudgetForRequestType(Enum.DataStoreRequestType.UpdateAsync)
end
function module_2_upvr.getGetAsyncBudget(arg1) -- Line 85
	return arg1.config:get("dataStoreService"):GetRequestBudgetForRequestType(Enum.DataStoreRequestType.GetAsync)
end
function module_2_upvr.getRemoveAsyncBudget(arg1) -- Line 89
	return arg1.config:get("dataStoreService"):GetRequestBudgetForRequestType(Enum.DataStoreRequestType.SetIncrementAsync)
end
local RunService_upvr = game:GetService("RunService")
function module_2_upvr.start(arg1) -- Line 95
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: Error_upvr (readonly)
		[3]: DataStoreGetOptions_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local function retryRequest_upvr(arg1_5, arg2) -- Line 96, Named "retryRequest"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1_5.attempts -= 1
		if arg1_5.attempts == 0 then
			arg1_5.reject(arg2)
		else
			if arg1.config:get("showRetryWarnings") then
				warn(`DataStore operation failed. Retrying...\nError: {arg2.message}`)
			end
			task.wait(arg1_5.retryDelay)
		end
	end
	local function updateUpdateAsync_upvr() -- Line 110, Named "updateUpdateAsync"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: Error_upvr (copied, readonly)
			[4]: retryRequest_upvr (readonly)
		]]
		for i = #arg1.updateAsyncQueue, 1, -1 do
			local var53 = arg1.updateAsyncQueue[i]
			if var53.attempts == 0 then
				table.remove(arg1.updateAsyncQueue, i)
			elseif var53.promise == nil and var53.cancelOnGameClose and arg1.gameClosed then
				var53.resolve("cancelled")
				table.remove(arg1.updateAsyncQueue, i)
			end
		end
		for _, v_upvr in arg1.updateAsyncQueue do
			if arg1:getUpdateAsyncBudget() == 0 then break end
			if v_upvr.promise == nil then
				local any_andThen_result1_5 = Promise_upvr.new(function(arg1_8) -- Line 16
					--[[ Upvalues[3]:
						[1]: v_upvr (readonly)
						[2]: arg1 (readonly)
						[3]: Error_upvr (copied, readonly)
					]]
					local var55_upvw
					local var56_upvw
					local var57_upvw
					local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 18
						--[[ Upvalues[5]:
							[1]: var57_upvw (read and write)
							[2]: v_upvr (copied, readonly)
							[3]: arg1 (copied, readonly)
							[4]: var55_upvw (read and write)
							[5]: var56_upvw (read and write)
						]]
						local any_UpdateAsync_result1, any_UpdateAsync_result2 = v_upvr.dataStore:UpdateAsync(v_upvr.key, function(...) -- Line 19
							--[[ Upvalues[4]:
								[1]: v_upvr (copied, readonly)
								[2]: arg1 (copied, readonly)
								[3]: var55_upvw (copied, read and write)
								[4]: var56_upvw (copied, read and write)
							]]
							if v_upvr.cancelOnGameClose and arg1.gameClosed then
								var55_upvw = "cancelled"
								return nil
							end
							local any_transform_result1_2, any_transform_result2_2, any_transform_result3, any_transform_result4 = v_upvr.transform(...)
							var55_upvw = any_transform_result1_2
							var56_upvw = any_transform_result2_2
							if any_transform_result1_2 == "succeed" then
								return any_transform_result2_2, any_transform_result3, any_transform_result4
							end
							return nil
						end)
						_ = any_UpdateAsync_result1 -- Setting global
						var57_upvw = any_UpdateAsync_result2
					end)
					if var55_upvw == "cancelled" then
						arg1_8("cancelled")
					elseif not pcall_result1_3 then
						arg1_8("retry", Error_upvr.new("RobloxApiError", pcall_result2_4))
					else
						arg1_8(var55_upvw, var56_upvw, var57_upvw)
					end
				end):andThen(function(arg1_9, arg2, arg3) -- Line 131
					--[[ Upvalues[2]:
						[1]: v_upvr (readonly)
						[2]: retryRequest_upvr (copied, readonly)
					]]
					if arg1_9 == "cancelled" then
						v_upvr.attempts = 0
						v_upvr.resolve("cancelled")
					elseif arg1_9 == "succeed" then
						v_upvr.attempts = 0
						v_upvr.resolve(arg2, arg3)
					elseif arg1_9 == "fail" then
						v_upvr.attempts = 0
						v_upvr.reject(arg2)
					elseif arg1_9 == "retry" then
						retryRequest_upvr(v_upvr, arg2)
					else
						error("unreachable")
					end
					v_upvr.promise = nil
				end)
				if any_andThen_result1_5:getStatus() == Promise_upvr.Status.Started then
					v_upvr.promise = any_andThen_result1_5
				end
			end
		end
	end
	local function updateGetAsync_upvr() -- Line 156, Named "updateGetAsync"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: DataStoreGetOptions_upvr (copied, readonly)
			[4]: retryRequest_upvr (readonly)
		]]
		for i_3 = #arg1.getAsyncQueue, 1, -1 do
			if arg1.getAsyncQueue[i_3].attempts == 0 then
				table.remove(arg1.getAsyncQueue, i_3)
			end
		end
		for _, v_2_upvr in arg1.getAsyncQueue do
			if arg1:getGetAsyncBudget() == 0 then break end
			if v_2_upvr.promise == nil then
				local any_andThen_result1_3 = Promise_upvr.new(function(arg1_12) -- Line 49
					--[[ Upvalues[2]:
						[1]: v_2_upvr (readonly)
						[2]: DataStoreGetOptions_upvr (copied, readonly)
					]]
					local pcall_result1_5, pcall_result2, pcall_result3_3 = pcall(function() -- Line 50
						--[[ Upvalues[2]:
							[1]: v_2_upvr (copied, readonly)
							[2]: DataStoreGetOptions_upvr (copied, readonly)
						]]
						return v_2_upvr.dataStore:GetAsync(v_2_upvr.key, DataStoreGetOptions_upvr)
					end)
					arg1_12(pcall_result1_5, pcall_result2, pcall_result3_3)
				end):andThen(function(arg1_13, arg2, arg3) -- Line 174
					--[[ Upvalues[2]:
						[1]: v_2_upvr (readonly)
						[2]: retryRequest_upvr (copied, readonly)
					]]
					if arg1_13 then
						v_2_upvr.attempts = 0
						v_2_upvr.resolve(arg2, arg3)
					else
						retryRequest_upvr(v_2_upvr, arg2)
					end
					v_2_upvr.promise = nil
				end)
				if any_andThen_result1_3:getStatus() == Promise_upvr.Status.Started then
					v_2_upvr.promise = any_andThen_result1_3
				end
			end
		end
	end
	local function updateRemoveAsync_upvr() -- Line 191, Named "updateRemoveAsync"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: retryRequest_upvr (readonly)
		]]
		for i_5 = #arg1.removeAsyncQueue, 1, -1 do
			if arg1.removeAsyncQueue[i_5].attempts == 0 then
				table.remove(arg1.removeAsyncQueue, i_5)
			end
		end
		for _, v_3_upvr in arg1.removeAsyncQueue do
			if arg1:getRemoveAsyncBudget() == 0 then break end
			if v_3_upvr.promise == nil then
				local any_andThen_result1 = Promise_upvr.new(function(arg1_14) -- Line 59
					--[[ Upvalues[1]:
						[1]: v_3_upvr (readonly)
					]]
					local pcall_result1_2, pcall_result2_8 = pcall(function() -- Line 60
						--[[ Upvalues[1]:
							[1]: v_3_upvr (copied, readonly)
						]]
						v_3_upvr.dataStore:RemoveAsync(v_3_upvr.key)
					end)
					arg1_14(pcall_result1_2, pcall_result2_8)
				end):andThen(function(arg1_15, arg2) -- Line 209
					--[[ Upvalues[2]:
						[1]: v_3_upvr (readonly)
						[2]: retryRequest_upvr (copied, readonly)
					]]
					if arg1_15 then
						v_3_upvr.attempts = 0
						v_3_upvr.resolve()
					else
						retryRequest_upvr(v_3_upvr, arg2)
					end
					v_3_upvr.promise = nil
				end)
				if any_andThen_result1:getStatus() == Promise_upvr.Status.Started then
					v_3_upvr.promise = any_andThen_result1
				end
			end
		end
	end
	RunService_upvr.PostSimulation:Connect(function() -- Line 226
		--[[ Upvalues[3]:
			[1]: updateUpdateAsync_upvr (readonly)
			[2]: updateGetAsync_upvr (readonly)
			[3]: updateRemoveAsync_upvr (readonly)
		]]
		updateUpdateAsync_upvr()
		updateGetAsync_upvr()
		updateRemoveAsync_upvr()
	end)
end
function module_2_upvr.updateAsync(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 233
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_16, arg2_2) -- Line 234
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg6 (readonly)
			[6]: arg7 (readonly)
			[7]: arg5 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.dataStore = arg2
		tbl_3.key = arg3
		tbl_3.transform = arg4
		tbl_3.attempts = arg6
		tbl_3.retryDelay = arg7
		tbl_3.cancelOnGameClose = arg5
		tbl_3.resolve = arg1_16
		tbl_3.reject = arg2_2
		table.insert(arg1.updateAsyncQueue, tbl_3)
	end)
end
function module_2_upvr.getAsync(arg1, arg2, arg3) -- Line 248
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_17, arg2_3) -- Line 249
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.dataStore = arg2
		tbl_2.key = arg3
		tbl_2.attempts = 5
		tbl_2.retryDelay = 1
		tbl_2.resolve = arg1_17
		tbl_2.reject = arg2_3
		table.insert(arg1.getAsyncQueue, tbl_2)
	end)
end
function module_2_upvr.removeAsync(arg1, arg2, arg3) -- Line 261
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_18, arg2_4) -- Line 262
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		local tbl = {}
		tbl.dataStore = arg2
		tbl.key = arg3
		tbl.attempts = 5
		tbl.retryDelay = 1
		tbl.resolve = arg1_18
		tbl.reject = arg2_4
		table.insert(arg1.removeAsyncQueue, tbl)
	end)
end
return module_2_upvr