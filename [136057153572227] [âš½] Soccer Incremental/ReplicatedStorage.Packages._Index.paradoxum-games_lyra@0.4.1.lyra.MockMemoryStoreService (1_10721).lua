-- Name: MockMemoryStoreService
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.MockMemoryStoreService
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7677423999994062 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:00
-- Luau version 6, Types version 3
-- Time taken: 0.018419 seconds

local HttpService_upvr = game:GetService("HttpService")
local tbl_3_upvr = {
	GetAsync = {
		Base = 100;
		PlayerMultiplier = 10;
	};
	SetAsync = {
		Base = 100;
		PlayerMultiplier = 10;
	};
	UpdateAsync = {
		Base = 100;
		PlayerMultiplier = 10;
	};
	RemoveAsync = {
		Base = 100;
		PlayerMultiplier = 10;
	};
}
local function _() -- Line 20, Named "getNow"
	return DateTime.now().UnixTimestampMillis
end
local function _(arg1, arg2) -- Line 24, Named "getLatencyForRequest"
	if arg1._latencyByRequestType[arg2] then
		return arg1._latencyByRequestType[arg2]
	end
	if arg1._randomLatencyRange then
		local min_3 = arg1._randomLatencyRange.min
		return min_3 + math.random() * (arg1._randomLatencyRange.max - min_3)
	end
	return arg1._globalLatency or 0.1
end
local function shouldSimulateError_upvr(arg1, arg2) -- Line 38, Named "shouldSimulateError"
	if 0 < #arg1.queuedErrors[arg2] then
		return true, table.remove(arg1.queuedErrors[arg2], 1)
	end
	if arg1._errorRates[arg2] and math.random() < arg1._errorRates[arg2] then
		return true, "InternalError: random error simulation"
	end
	if arg1._simulateThrottling then
		return true, "Throttled: MemoryStore request was throttled, try again later"
	end
	if arg1._simulateTimeout then
		return true, "Timeout: MemoryStore request timed out"
	end
	return false, nil
end
local function _(arg1, arg2) -- Line 58, Named "doLatency"
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	local var8
	if arg1._latencyByRequestType[arg2] then
		var8 = arg1._latencyByRequestType[arg2]
		-- KONSTANTWARNING: GOTO [29] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 17 start (CF ANALYSIS FAILED)
	if arg1._randomLatencyRange then
		local min_2 = arg1._randomLatencyRange.min
		var8 = min_2 + math.random() * (arg1._randomLatencyRange.max - min_2)
	else
		var8 = arg1._globalLatency or 0.1
	end
	if 0 < var8 then
		task.wait(var8)
	end
	-- KONSTANTERROR: [8] 7. Error Block 17 end (CF ANALYSIS FAILED)
end
local function doRateLimitAndQueue_upvr(arg1, arg2) -- Line 65, Named "doRateLimitAndQueue"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: shouldSimulateError_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10 = arg1.requestQueues[arg2]
	local var11 = tbl_3_upvr[arg2]
	local var12 = arg1._customBudgets[arg2]
	if not var12 then
		var12 = var11.Base + 15 * var11.PlayerMultiplier
	end
	if var12 <= #var10 then
		error("TotalRequestsOverLimit", 0)
	end
	if 30 <= #var10 then
		error("RequestThrottled", 0)
	end
	if arg1._forcedThrottles[arg2] then
		if os.time() < arg1._forcedThrottles[arg2].endTime then
			error("MemoryStore request is currently throttled", 0)
		else
			arg1._forcedThrottles[arg2] = nil
		end
	end
	table.insert(var10, true)
	if arg1._latencyByRequestType[arg2] then
		-- KONSTANTWARNING: GOTO [93] #68
	end
	if arg1._randomLatencyRange then
		local min = arg1._randomLatencyRange.min
		local _ = min + math.random() * (arg1._randomLatencyRange.max - min)
	else
	end
	if 0 < (arg1._globalLatency or 0.1) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		task.wait(arg1._globalLatency or 0.1)
	end
	local popped = table.remove(var10, 1)
	local shouldSimulateError_upvr_result1, shouldSimulateError_upvr_result2 = shouldSimulateError_upvr(arg1, arg2)
	if shouldSimulateError_upvr_result1 then
		error(shouldSimulateError_upvr_result2, 0)
	end
	if typeof(popped) == "function" then
		popped()
	end
end
local function enforceKeyLimits_upvr(arg1) -- Line 105, Named "enforceKeyLimits"
	if typeof(arg1) ~= "string" then
		error("InvalidRequest: key must be a string", 0)
	end
	if #arg1 == 0 then
		error("InvalidRequest: key cannot be empty", 0)
	end
	if 128 < #arg1 then
		error("InvalidRequest: key length exceeds limit", 0)
	end
end
local function enforceValueLimits_upvr(arg1) -- Line 117, Named "enforceValueLimits"
	if arg1 == nil then
	else
		local pcall_result1, pcall_result2 = pcall(function() -- Line 122
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return game:GetService("HttpService"):JSONEncode(arg1)
		end)
		if not pcall_result1 then
			error("InvalidRequest: value cannot be encoded to JSON", 0)
		end
		if 32768 < #pcall_result2 then
			error("ItemValueSizeTooLarge", 0)
		end
	end
end
local function _(arg1) -- Line 135, Named "enforceExpirationLimits"
	if typeof(arg1) ~= "number" then
		error("InvalidRequest: expiration must be a number", 0)
	end
	if arg1 < 0 then
		error("InvalidRequest: expiration must be >= 0", 0)
	end
	if 3888000 < arg1 then
		error("InvalidRequest: expiration exceeds maximum", 0)
	end
end
local function _(arg1) -- Line 147, Named "getScopedData"
	local var21 = arg1.service.mockData[arg1.name]
	if not var21 then
		var21 = {}
		arg1.service.mockData[arg1.name] = var21
	end
	return var21
end
local function _(arg1) -- Line 156, Named "isExpired"
	if not arg1 or not arg1.expiration then
		return true
	end
	if arg1.expiration >= DateTime.now().UnixTimestampMillis then
	else
	end
	return true
end
local tbl_upvr = {
	GetAsync = function(arg1, arg2) -- Line 165, Named "GetAsync"
		--[[ Upvalues[2]:
			[1]: enforceKeyLimits_upvr (readonly)
			[2]: doRateLimitAndQueue_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		enforceKeyLimits_upvr(arg2)
		doRateLimitAndQueue_upvr(arg1.service, "GetAsync")
		local var23 = arg1.service.mockData[arg1.name]
		if not var23 then
			var23 = {}
			arg1.service.mockData[arg1.name] = var23
		end
		local var24 = var23
		local var25 = var24[arg2]
		if not var25 or not var25.expiration then
		elseif var25.expiration >= DateTime.now().UnixTimestampMillis then
		else
		end
		if true then
			var24[arg2] = nil
			return nil
		end
		return var25.value
	end;
	SetAsync = function(arg1, arg2, arg3, arg4) -- Line 181, Named "SetAsync"
		--[[ Upvalues[4]:
			[1]: enforceKeyLimits_upvr (readonly)
			[2]: enforceValueLimits_upvr (readonly)
			[3]: doRateLimitAndQueue_upvr (readonly)
			[4]: HttpService_upvr (readonly)
		]]
		enforceKeyLimits_upvr(arg2)
		enforceValueLimits_upvr(arg3)
		if typeof(arg4) ~= "number" then
			error("InvalidRequest: expiration must be a number", 0)
		end
		if arg4 < 0 then
			error("InvalidRequest: expiration must be >= 0", 0)
		end
		if 3888000 < arg4 then
			error("InvalidRequest: expiration exceeds maximum", 0)
		end
		doRateLimitAndQueue_upvr(arg1.service, "SetAsync")
		local var26 = arg1.service.mockData[arg1.name]
		if not var26 then
			var26 = {}
			arg1.service.mockData[arg1.name] = var26
		end
		if HttpService_upvr:JSONEncode(arg3) == nil then
			return false
		end
		local tbl_2 = {}
		tbl_2.value = arg3
		tbl_2.expiration = DateTime.now().UnixTimestampMillis + arg4 * 1000
		var26[arg2] = tbl_2
		return true
	end;
}
local Tables_upvr = require(script.Parent.Tables)
function tbl_upvr.UpdateAsync(arg1, arg2, arg3, arg4) -- Line 202
	--[[ Upvalues[4]:
		[1]: enforceKeyLimits_upvr (readonly)
		[2]: doRateLimitAndQueue_upvr (readonly)
		[3]: Tables_upvr (readonly)
		[4]: enforceValueLimits_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	enforceKeyLimits_upvr(arg2)
	if typeof(arg4) ~= "number" then
		error("InvalidRequest: expiration must be a number", 0)
	end
	if arg4 < 0 then
		error("InvalidRequest: expiration must be >= 0", 0)
	end
	if 3888000 < arg4 then
		error("InvalidRequest: expiration exceeds maximum", 0)
	end
	doRateLimitAndQueue_upvr(arg1.service, "UpdateAsync")
	local var29 = arg1.service.mockData[arg1.name]
	if not var29 then
		var29 = {}
		arg1.service.mockData[arg1.name] = var29
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 116. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [154] 116. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 41. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [154.263844]
	-- KONSTANTERROR: [55] 41. Error Block 10 end (CF ANALYSIS FAILED)
end
function tbl_upvr.RemoveAsync(arg1, arg2) -- Line 249
	--[[ Upvalues[2]:
		[1]: enforceKeyLimits_upvr (readonly)
		[2]: doRateLimitAndQueue_upvr (readonly)
	]]
	enforceKeyLimits_upvr(arg2)
	doRateLimitAndQueue_upvr(arg1.service, "RemoveAsync")
	local var30 = arg1.service.mockData[arg1.name]
	if not var30 then
		var30 = {}
		arg1.service.mockData[arg1.name] = var30
	end
	var30[arg2] = nil
end
local function _(arg1, arg2) -- Line 258, Named "createMockHashMap"
	local module = {}
	module.service = arg1
	module.name = arg2
	return setmetatable(module, {
		__index = arg1.mockHashMapMeta;
	})
end
return {
	new = function() -- Line 265, Named "new"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local clone = table.clone(tbl_upvr)
		clone.__index = clone
		return {
			mockData = {};
			hashMaps = {};
			mockHashMapMeta = clone;
			requestQueues = {
				GetAsync = {};
				SetAsync = {};
				UpdateAsync = {};
				RemoveAsync = {};
			};
			queuedErrors = {
				GetAsync = {};
				SetAsync = {};
				UpdateAsync = {};
				RemoveAsync = {};
			};
			_globalLatency = nil;
			_latencyByRequestType = {};
			_randomLatencyRange = nil;
			_errorRates = {};
			_simulateThrottling = false;
			_simulateTimeout = false;
			_customBudgets = {};
			_forcedThrottles = {};
			GetHashMap = function(arg1, arg2) -- Line 296
				if not arg1.hashMaps[arg2] then
					local tbl = {}
					tbl.service = arg1
					tbl.name = arg2
					arg1.hashMaps[arg2] = setmetatable(tbl, {
						__index = arg1.mockHashMapMeta;
					})
				end
				return arg1.hashMaps[arg2]
			end;
		}
	end;
	mockHashMapMethod = function(arg1, arg2, arg3) -- Line 309, Named "mockHashMapMethod"
		local var41 = arg1.mockHashMapMeta[arg2]
		local any_fn_result1, any_fn_result2 = arg3.fn(var41)
		arg1.mockHashMapMeta[arg2] = any_fn_result2
		return any_fn_result1, var41
	end;
	setGlobalLatency = function(arg1, arg2) -- Line 316, Named "setGlobalLatency"
		arg1._globalLatency = arg2
	end;
	setLatencyForRequestType = function(arg1, arg2, arg3) -- Line 319, Named "setLatencyForRequestType"
		arg1._latencyByRequestType[arg2] = arg3
	end;
	setRandomLatency = function(arg1, arg2, arg3) -- Line 322, Named "setRandomLatency"
		local tbl_4 = {}
		tbl_4.min = arg2
		tbl_4.max = arg3
		arg1._randomLatencyRange = tbl_4
	end;
	queueError = function(arg1, arg2, arg3, arg4) -- Line 325, Named "queueError"
		for _ = 1, arg4 or 1 do
			table.insert(arg1.queuedErrors[arg2], arg3)
		end
	end;
	setErrorRate = function(arg1, arg2, arg3) -- Line 330, Named "setErrorRate"
		arg1._errorRates[arg2] = arg3
	end;
	simulateThrottling = function(arg1, arg2) -- Line 333, Named "simulateThrottling"
		arg1._simulateThrottling = arg2
	end;
	simulateTimeout = function(arg1, arg2) -- Line 336, Named "simulateTimeout"
		arg1._simulateTimeout = arg2
	end;
	setRequestBudget = function(arg1, arg2, arg3) -- Line 339, Named "setRequestBudget"
		arg1._customBudgets[arg2] = arg3
	end;
	forceThrottle = function(arg1, arg2, arg3) -- Line 342, Named "forceThrottle"
		arg1._forcedThrottles[arg2] = {
			endTime = os.time() + arg3;
		}
	end;
	snapshot = function(arg1) -- Line 348, Named "snapshot"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		return HttpService_upvr:JSONEncode({
			mockData = arg1.mockData;
		})
	end;
	restore = function(arg1, arg2) -- Line 353, Named "restore"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		arg1.mockData = HttpService_upvr:JSONDecode(arg2).mockData
	end;
}