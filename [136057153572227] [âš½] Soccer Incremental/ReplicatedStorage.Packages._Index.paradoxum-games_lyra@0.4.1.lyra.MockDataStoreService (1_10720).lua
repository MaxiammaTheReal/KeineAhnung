-- Name: MockDataStoreService
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.MockDataStoreService
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7828145999956178 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:59
-- Luau version 6, Types version 3
-- Time taken: 0.032325 seconds

local HttpService_upvr = game:GetService("HttpService")
local tbl_upvr = {
	GetAsync = {
		Base = 60;
		PlayerMultiplier = 10;
	};
	SetAsync = {
		Base = 60;
		PlayerMultiplier = 10;
	};
	UpdateAsync = {
		Base = 60;
		PlayerMultiplier = 10;
	};
	RemoveAsync = {
		Base = 60;
		PlayerMultiplier = 10;
	};
	GetVersion = {
		Base = 5;
		PlayerMultiplier = 2;
	};
}
local function _(arg1, arg2) -- Line 20, Named "getLatencyForRequest"
	if arg1._latencyByRequestType[arg2] then
		return arg1._latencyByRequestType[arg2]
	end
	if arg1._randomLatencyRange then
		local min_2 = arg1._randomLatencyRange.min
		return min_2 + math.random() * (arg1._randomLatencyRange.max - min_2)
	end
	return arg1._globalLatency or 0.1
end
local function shouldSimulateError_upvr(arg1, arg2) -- Line 34, Named "shouldSimulateError"
	if 0 < #arg1.queuedErrors[arg2] then
		return true, table.remove(arg1.queuedErrors[arg2], 1)
	end
	if arg1._errorRates[arg2] and math.random() < arg1._errorRates[arg2] then
		return true, "DataStore request failed due to random error simulation"
	end
	if arg1._simulateThrottling then
		return true, "DataStore request was throttled, try again later"
	end
	if arg1._simulateTimeout then
		return true, "DataStore request timed out"
	end
	return false, nil
end
local function _(arg1, arg2) -- Line 54, Named "doLatency"
	local var9
	if arg1._latencyByRequestType[arg2] then
		var9 = arg1._latencyByRequestType[arg2]
	elseif arg1._randomLatencyRange then
		local min = arg1._randomLatencyRange.min
		var9 = min + math.random() * (arg1._randomLatencyRange.max - min)
	else
		var9 = arg1._globalLatency or 0.1
	end
	if 0 < var9 then
		task.wait(var9)
	end
end
local function _() -- Line 61, Named "getNow"
	return DateTime.now().UnixTimestampMillis
end
local function _(arg1) -- Line 65, Named "msToHours"
	return math.floor(arg1 / 3600000)
end
local function _() -- Line 69, Named "getUtcHour"
	return math.floor(DateTime.now().UnixTimestampMillis / 3600000)
end
local function createVersion_upvr(arg1, arg2, arg3) -- Line 73, Named "createVersion"
	local module_4 = {}
	module_4.Value = arg1
	local var12 = arg2
	if not var12 then
		var12 = {}
	end
	module_4.UserIds = var12
	var12 = arg3
	local var13 = var12
	if not var13 then
		var13 = {}
	end
	module_4.Metadata = var13
	module_4.CreatedTime = DateTime.now().UnixTimestampMillis
	module_4.Version = tostring(DateTime.now().UnixTimestampMillis)
	return module_4
end
local function createMockKeyInfo_upvr(arg1, arg2) -- Line 83, Named "createMockKeyInfo"
	local module = {
		CreatedTime = DateTime.now().UnixTimestampMillis;
		UpdatedTime = DateTime.now().UnixTimestampMillis;
		Version = tostring(DateTime.now().UnixTimestampMillis);
	}
	local var15 = arg1
	if not var15 then
		var15 = {}
	end
	module.userIds = var15
	var15 = arg2
	local var16 = var15
	if not var16 then
		var16 = {}
	end
	module.metadata = var16
	function module.GetUserIds(arg1_2) -- Line 90
		return arg1_2.userIds
	end
	function module.GetMetadata(arg1_3) -- Line 93
		return arg1_3.metadata
	end
	return module
end
local function validateMetadata_upvr(arg1) -- Line 100, Named "validateMetadata"
	if arg1 == nil then
	else
		if typeof(arg1) ~= "table" then
			error("DataStoreService: Metadata must be a table", 0)
		end
		if 300 < #game:GetService("HttpService"):JSONEncode(arg1) then
			error(`DataStoreService: Metadata size exceeds {300} limit`, 0)
		end
	end
end
local function getScopedData_upvr(arg1) -- Line 115, Named "getScopedData"
	local var17 = arg1._service.mockData[arg1.datastoreName]
	if not var17 then
		var17 = {}
		arg1._service.mockData[arg1.datastoreName] = var17
	end
	local var18 = var17[arg1.scope]
	if not var18 then
		var18 = {}
		var17[arg1.scope] = var18
	end
	return var18
end
local function _(arg1, arg2) -- Line 131, Named "getVersionsForKey"
	local formatted_2 = `{arg1.datastoreName}|{arg1.scope}|{arg2}`
	if not arg1._service.mockVersions[formatted_2] then
		arg1._service.mockVersions[formatted_2] = {}
	end
	return arg1._service.mockVersions[formatted_2]
end
local function _(arg1, arg2) -- Line 139, Named "getCacheKey"
	return `{arg1.datastoreName}|{arg1.scope}|{arg2}`
end
local function _(arg1, arg2) -- Line 143, Named "getCachedValue"
	local var20 = arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`]
	if var20 and os.time() - var20.timestamp < 4 then
		return var20.value, var20.keyInfo
	end
	return nil, nil
end
local function _(arg1, arg2, arg3, arg4) -- Line 152, Named "setCachedValue"
	local tbl = {}
	tbl.value = arg3
	tbl.keyInfo = arg4
	tbl.timestamp = os.time()
	arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`] = tbl
end
local function enforceKeyLimits_upvr(arg1) -- Line 161, Named "enforceKeyLimits"
	if typeof(arg1) ~= "string" then
		error("DataStoreService: Key must be a string", 0)
	end
	if #arg1 == 0 then
		error("DataStoreService: Key name can't be empty", 0)
	end
	if 50 < #arg1 then
		error(`DataStoreService: Key name exceeds the {50} character limit`, 0)
	end
end
local function enforceDataLimits_upvr(arg1) -- Line 175, Named "enforceDataLimits"
	if arg1 == nil then
	else
		local pcall_result1, pcall_result2 = pcall(function() -- Line 180
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return game:GetService("HttpService"):JSONEncode(arg1)
		end)
		if not pcall_result1 then
			error(`DataStoreService: Cannot store {typeof(arg1)} in DataStore`, 0)
		end
		if 4194304 < #pcall_result2 then
			error(`DataStoreService: Serialized value exceeds {4194304} limit`, 0)
		end
	end
end
local function doRateLimitAndQueue_upvr(arg1, arg2) -- Line 192, Named "doRateLimitAndQueue"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: shouldSimulateError_upvr (readonly)
	]]
	local var25 = arg1._service.requestQueues[arg2]
	local var26
	if not var26 then
		var26 = tbl_upvr.GetAsync
	end
	local var27 = arg1._service._customBudgets[arg2]
	if not var27 then
		var27 = var26.Base + 15 * var26.PlayerMultiplier
	end
	if var27 <= #var25 then
		return false
	end
	if 30 <= #var25 then
		error(`DataStoreService:{arg2}() request dropped. Request was throttled, but throttled request queue was full`, 0)
	end
	if arg1._service._forcedThrottles[arg2] then
		if os.time() < arg1._service._forcedThrottles[arg2].endTime then
			error("DataStoreService: Request is currently throttled", 0)
		else
			arg1._service._forcedThrottles[arg2] = nil
		end
	end
	local var28 = var25
	table.insert(var28, true)
	local _service = arg1._service
	if _service._latencyByRequestType[arg2] then
		var28 = _service._latencyByRequestType[arg2]
	elseif _service._randomLatencyRange then
		local min_3 = _service._randomLatencyRange.min
		var28 = min_3 + math.random() * (_service._randomLatencyRange.max - min_3)
	else
		var28 = _service._globalLatency or 0.1
	end
	if 0 < var28 then
		task.wait(var28)
	end
	local popped = table.remove(var25, 1)
	local shouldSimulateError_upvr_result1, shouldSimulateError_upvr_result2 = shouldSimulateError_upvr(arg1._service, arg2)
	if shouldSimulateError_upvr_result1 then
		error(shouldSimulateError_upvr_result2, 0)
	end
	if typeof(popped) == "function" then
		popped()
	end
	return true
end
local tbl_upvr_2 = {
	SetAsync = function(arg1, arg2, arg3, arg4, arg5) -- Line 243, Named "SetAsync"
		--[[ Upvalues[7]:
			[1]: enforceKeyLimits_upvr (readonly)
			[2]: enforceDataLimits_upvr (readonly)
			[3]: validateMetadata_upvr (readonly)
			[4]: doRateLimitAndQueue_upvr (readonly)
			[5]: getScopedData_upvr (readonly)
			[6]: createVersion_upvr (readonly)
			[7]: createMockKeyInfo_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		enforceKeyLimits_upvr(arg2)
		enforceDataLimits_upvr(arg3)
		if arg5 then
			validateMetadata_upvr(arg5:GetMetadata())
		end
		doRateLimitAndQueue_upvr(arg1, "SetAsync")
		local formatted_5 = `{arg1.datastoreName}|{arg1.scope}|{arg2}`
		if not arg1._service.mockVersions[formatted_5] then
			arg1._service.mockVersions[formatted_5] = {}
		end
		local var36 = arg1._service.mockVersions[formatted_5]
		if #var36 == 0 or math.floor(var36[#var36].CreatedTime / 3600000) ~= math.floor(DateTime.now().UnixTimestampMillis / 3600000) then
			local var37 = arg5
			if var37 then
				var37 = arg5:GetMetadata()
			end
			table.insert(var36, createVersion_upvr(arg3, arg4, var37))
			-- KONSTANTWARNING: GOTO [105] #80
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [89] 69. Error Block 35 start (CF ANALYSIS FAILED)
		local var38 = var36[#var36]
		var38.Value = arg3
		if arg4 then
			var38.UserIds = arg4
		end
		if arg5 then
			local any_GetMetadata_result1 = arg5:GetMetadata()
			if not any_GetMetadata_result1 then
				any_GetMetadata_result1 = {}
			end
			var38.Metadata = any_GetMetadata_result1
		end
		getScopedData_upvr(arg1)[arg2] = arg3
		local var40 = arg5
		if var40 then
			var40 = arg5:GetMetadata()
		end
		local createMockKeyInfo_result1 = createMockKeyInfo_upvr(arg4, var40)
		arg1._service.mockKeyInfo[`{arg1.datastoreName}|{arg1.scope}|{arg2}`] = createMockKeyInfo_result1
		local tbl_2 = {}
		tbl_2.value = arg3
		tbl_2.keyInfo = createMockKeyInfo_result1
		tbl_2.timestamp = os.time()
		arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`] = tbl_2
		do
			return var36[#var36].Version
		end
		-- KONSTANTERROR: [89] 69. Error Block 35 end (CF ANALYSIS FAILED)
	end;
	GetAsync = function(arg1, arg2) -- Line 279, Named "GetAsync"
		--[[ Upvalues[3]:
			[1]: enforceKeyLimits_upvr (readonly)
			[2]: doRateLimitAndQueue_upvr (readonly)
			[3]: getScopedData_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		enforceKeyLimits_upvr(arg2)
		local var43 = arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`]
		local var44
		if var43 and os.time() - var43.timestamp < 4 then
			var44 = var43.value
		else
			var44 = nil
		end
		if var44 ~= nil then
			return var44, nil
		end
		doRateLimitAndQueue_upvr(arg1, "GetAsync")
		local var45 = getScopedData_upvr(arg1)[arg2]
		local var46 = arg1._service.mockKeyInfo[`{arg1.datastoreName}|{arg1.scope}|{arg2}`]
		if var45 ~= nil then
			arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`] = {
				value = var45;
				keyInfo = var46;
				timestamp = os.time();
			}
		end
		return var45, var46
	end;
}
local Tables_upvr = require(script.Parent.Tables)
function tbl_upvr_2.UpdateAsync(arg1, arg2, arg3) -- Line 300
	--[[ Upvalues[8]:
		[1]: enforceKeyLimits_upvr (readonly)
		[2]: doRateLimitAndQueue_upvr (readonly)
		[3]: getScopedData_upvr (readonly)
		[4]: createMockKeyInfo_upvr (readonly)
		[5]: Tables_upvr (readonly)
		[6]: enforceDataLimits_upvr (readonly)
		[7]: validateMetadata_upvr (readonly)
		[8]: createVersion_upvr (readonly)
	]]
	enforceKeyLimits_upvr(arg2)
	doRateLimitAndQueue_upvr(arg1, "UpdateAsync")
	while true do
		local getScopedData_result1_2 = getScopedData_upvr(arg1)
		local var50 = arg1._service.mockKeyInfo[`{arg1.datastoreName}|{arg1.scope}|{arg2}`]
		if not var50 then
			var50 = createMockKeyInfo_upvr()
		end
		local var51 = getScopedData_result1_2[arg2]
		local var52 = false
		if var51 ~= nil then
			var52 = Tables_upvr.copyDeep(var51)
		end
		local arg3_result1, arg3_result2, arg3_result3 = arg3(var52, var50)
		if arg3_result1 == nil then
			return var51, var50
		end
		enforceDataLimits_upvr(arg3_result1)
		validateMetadata_upvr(arg3_result3)
		if Tables_upvr.equalsDeep(var51, getScopedData_result1_2[arg2]) then
			local formatted_4 = `{arg1.datastoreName}|{arg1.scope}|{arg2}`
			if not arg1._service.mockVersions[formatted_4] then
				arg1._service.mockVersions[formatted_4] = {}
			end
			local var57 = arg1._service.mockVersions[formatted_4]
			if #var57 == 0 or var57[#var57].CreatedTime ~= math.floor(DateTime.now().UnixTimestampMillis / 3600000) then
				local var58 = arg3_result2
				if not var58 then
					var58 = var50:GetUserIds()
				end
				local var59 = arg3_result3
				if not var59 then
					var59 = var50:GetMetadata()
				end
				table.insert(var57, createVersion_upvr(arg3_result1, var58, var59))
			else
				local var60 = var57[#var57]
				var60.Value = arg3_result1
				if arg3_result2 then
					var60.UserIds = arg3_result2
				end
				if arg3_result3 then
					var60.Metadata = arg3_result3
				end
			end
			getScopedData_result1_2[arg2] = arg3_result1
			if arg3_result2 ~= nil then
				var50.userIds = arg3_result2
			end
			if arg3_result3 ~= nil then
				var50.metadata = arg3_result3
			end
			var50.UpdatedTime = DateTime.now().UnixTimestampMillis
			var50.Version = tostring(DateTime.now().UnixTimestampMillis)
			arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`] = {
				value = arg3_result1;
				keyInfo = var50;
				timestamp = os.time();
			}
			return arg3_result1, var50
		end
	end
end
function tbl_upvr_2.RemoveAsync(arg1, arg2) -- Line 357
	--[[ Upvalues[4]:
		[1]: enforceKeyLimits_upvr (readonly)
		[2]: doRateLimitAndQueue_upvr (readonly)
		[3]: getScopedData_upvr (readonly)
		[4]: createVersion_upvr (readonly)
	]]
	enforceKeyLimits_upvr(arg2)
	doRateLimitAndQueue_upvr(arg1, "RemoveAsync")
	local getScopedData_result1 = getScopedData_upvr(arg1)
	local var63 = getScopedData_result1[arg2]
	if var63 ~= nil then
		local formatted = `{arg1.datastoreName}|{arg1.scope}|{arg2}`
		if not arg1._service.mockVersions[formatted] then
			arg1._service.mockVersions[formatted] = {}
		end
		table.insert(arg1._service.mockVersions[formatted], createVersion_upvr(nil, nil, nil))
	end
	getScopedData_result1[arg2] = nil
	arg1._service.mockCache[`{arg1.datastoreName}|{arg1.scope}|{arg2}`] = nil
	return var63, arg1._service.mockKeyInfo[`{arg1.datastoreName}|{arg1.scope}|{arg2}`]
end
function tbl_upvr_2.GetVersionAsync(arg1, arg2, arg3) -- Line 379
	--[[ Upvalues[3]:
		[1]: enforceKeyLimits_upvr (readonly)
		[2]: doRateLimitAndQueue_upvr (readonly)
		[3]: createMockKeyInfo_upvr (readonly)
	]]
	enforceKeyLimits_upvr(arg2)
	doRateLimitAndQueue_upvr(arg1, "GetVersion")
	local formatted_6 = `{arg1.datastoreName}|{arg1.scope}|{arg2}`
	if not arg1._service.mockVersions[formatted_6] then
		arg1._service.mockVersions[formatted_6] = {}
	end
	for _, v in arg1._service.mockVersions[formatted_6] do
		if v.Version == arg3 then
			return v.Value, createMockKeyInfo_upvr(v.UserIds, v.Metadata)
		end
	end
	return nil, nil
end
function tbl_upvr_2.ListVersionsAsync(arg1, arg2, arg3, arg4, arg5) -- Line 393
	--[[ Upvalues[2]:
		[1]: enforceKeyLimits_upvr (readonly)
		[2]: doRateLimitAndQueue_upvr (readonly)
	]]
	enforceKeyLimits_upvr(arg2)
	doRateLimitAndQueue_upvr(arg1, "GetVersion")
	local formatted_3 = `{arg1.datastoreName}|{arg1.scope}|{arg2}`
	if not arg1._service.mockVersions[formatted_3] then
		arg1._service.mockVersions[formatted_3] = {}
	end
	local module_3_upvr = {}
	for _, v_2 in arg1._service.mockVersions[formatted_3] do
		if not arg4 or arg4 <= v_2.CreatedTime or not arg5 or v_2.CreatedTime <= arg5 then
			table.insert(module_3_upvr, {
				Version = v_2.Version;
				CreatedTime = v_2.CreatedTime;
			})
		end
	end
	if arg3 == Enum.SortDirection.Descending then
		table.sort(module_3_upvr, function(arg1_4, arg2_2) -- Line 411
			local var74
			if arg2_2.CreatedTime >= arg1_4.CreatedTime then
				var74 = false
			else
				var74 = true
			end
			return var74
		end)
	else
		table.sort(module_3_upvr, function(arg1_5, arg2_3) -- Line 415
			local var76
			if arg1_5.CreatedTime >= arg2_3.CreatedTime then
				var76 = false
			else
				var76 = true
			end
			return var76
		end)
	end
	return {
		IsFinished = true;
		GetCurrentPage = function() -- Line 422, Named "GetCurrentPage"
			--[[ Upvalues[1]:
				[1]: module_3_upvr (readonly)
			]]
			return module_3_upvr
		end;
	}
end
local function _(arg1, arg2, arg3) -- Line 428, Named "createMockStore"
	local module_2 = {}
	module_2.datastoreName = arg2
	module_2.scope = arg3 or "global"
	module_2._service = arg1
	return setmetatable(module_2, arg1.mockStoreMeta)
end
return {
	new = function() -- Line 436, Named "new"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		local clone = table.clone(tbl_upvr_2)
		clone.__index = clone
		return {
			dataStores = {};
			mockData = {};
			mockKeyInfo = {};
			mockVersions = {};
			mockCache = {};
			requestQueues = {
				GetAsync = {};
				SetAsync = {};
				UpdateAsync = {};
				RemoveAsync = {};
				GetVersion = {};
			};
			queuedErrors = {
				GetAsync = {};
				SetAsync = {};
				UpdateAsync = {};
				RemoveAsync = {};
				GetVersion = {};
			};
			mockStoreMeta = clone;
			_globalLatency = nil;
			_latencyByRequestType = {};
			_randomLatencyRange = nil;
			_errorRates = {};
			_simulateThrottling = false;
			_simulateTimeout = false;
			_customBudgets = {};
			_forcedThrottles = {};
			GetDataStore = function(arg1, arg2, arg3) -- Line 472
				local var84 = arg1.dataStores[`{arg2}{arg3 or ""}`]
				if not var84 then
					local tbl_4 = {}
					tbl_4.datastoreName = arg2
					tbl_4.scope = arg3 or "global"
					tbl_4._service = arg1
					var84 = setmetatable(tbl_4, arg1.mockStoreMeta)
					arg1.dataStores[`{arg2}{arg3 or ""}`] = var84
				end
				return var84
			end;
			GetRequestBudgetForRequestType = function(arg1, arg2) -- Line 481
				--[[ Upvalues[1]:
					[1]: tbl_upvr (copied, readonly)
				]]
				local Name = arg2.Name
				local var88
				if Name == "GetVersionAsync" then
					var88 = "GetVersion"
				end
				if Name == "GetIncrementAsync" then
					var88 = "GetAsync"
				end
				if Name == "SetIncrementAsync" then
					var88 = "SetAsync"
				end
				if arg1._customBudgets[var88] then
					return arg1._customBudgets[var88]
				end
				local var89 = tbl_upvr[var88]
				if not var89 then
					var89 = tbl_upvr.GetAsync
				end
				return math.max(0, var89.Base + 15 * var89.PlayerMultiplier - #arg1.requestQueues[var88])
			end;
		}
	end;
	mockStoreMethod = function(arg1, arg2, arg3) -- Line 517, Named "mockStoreMethod"
		local var91 = arg1.mockStoreMeta[arg2]
		local any_fn_result1, any_fn_result2 = arg3.fn(var91)
		arg1.mockStoreMeta[arg2] = any_fn_result2
		return any_fn_result1, var91
	end;
	setGlobalLatency = function(arg1, arg2) -- Line 524, Named "setGlobalLatency"
		arg1._globalLatency = arg2
	end;
	setLatencyForRequestType = function(arg1, arg2, arg3) -- Line 527, Named "setLatencyForRequestType"
		arg1._latencyByRequestType[arg2] = arg3
	end;
	setRandomLatency = function(arg1, arg2, arg3) -- Line 530, Named "setRandomLatency"
		local tbl_3 = {}
		tbl_3.min = arg2
		tbl_3.max = arg3
		arg1._randomLatencyRange = tbl_3
	end;
	queueError = function(arg1, arg2, arg3, arg4) -- Line 533, Named "queueError"
		for _ = 1, arg4 or 1 do
			table.insert(arg1.queuedErrors[arg2], arg3)
		end
	end;
	setErrorRate = function(arg1, arg2, arg3) -- Line 538, Named "setErrorRate"
		arg1._errorRates[arg2] = arg3
	end;
	simulateThrottling = function(arg1, arg2) -- Line 541, Named "simulateThrottling"
		arg1._simulateThrottling = arg2
	end;
	simulateTimeout = function(arg1, arg2) -- Line 544, Named "simulateTimeout"
		arg1._simulateTimeout = arg2
	end;
	setRequestBudget = function(arg1, arg2, arg3) -- Line 547, Named "setRequestBudget"
		arg1._customBudgets[arg2] = arg3
	end;
	forceThrottle = function(arg1, arg2, arg3) -- Line 550, Named "forceThrottle"
		arg1._forcedThrottles[arg2] = {
			endTime = os.time() + arg3;
		}
	end;
	snapshot = function(arg1) -- Line 555, Named "snapshot"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		return HttpService_upvr:JSONEncode({
			mockData = arg1.mockData;
			mockKeyInfo = arg1.mockKeyInfo;
			mockVersions = arg1.mockVersions;
			mockCache = arg1.mockCache;
		})
	end;
	restore = function(arg1, arg2) -- Line 563, Named "restore"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg2)
		arg1.mockData = any_JSONDecode_result1.mockData
		arg1.mockKeyInfo = any_JSONDecode_result1.mockKeyInfo
		arg1.mockVersions = any_JSONDecode_result1.mockVersions
		arg1.mockCache = any_JSONDecode_result1.mockCache
	end;
}