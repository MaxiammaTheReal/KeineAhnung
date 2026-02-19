-- Name: Store
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Store
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9078429000001051 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:04
-- Luau version 6, Types version 3
-- Time taken: 0.032596 seconds

local Files_upvr = require(script.Parent.Files)
local Transactions_upvr = require(script.Parent.Transactions)
local Promise_upvr = require(script.Parent.Promise)
local t_upvr = require(game:GetService("ReplicatedStorage").Packages.t)
local dataStoreRetry_upvr = require(script.Parent.dataStoreRetry)
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
local any_strictInterface_result1_upvr = t_upvr.strictInterface({
	name = t_upvr.string;
	template = t_upvr.any;
	schema = t_upvr.callback;
	migrationSteps = t_upvr.optional(t_upvr.array(t_upvr.strictInterface({
		name = t_upvr.string;
		apply = t_upvr.callback;
	})));
	importLegacyData = t_upvr.optional(t_upvr.callback);
	dataStoreService = t_upvr.optional(t_upvr.any);
	memoryStoreService = t_upvr.optional(t_upvr.any);
	changedCallbacks = t_upvr.optional(t_upvr.array(t_upvr.callback));
	logCallback = t_upvr.optional(t_upvr.callback);
	onLockLost = t_upvr.optional(t_upvr.callback);
	useMock = t_upvr.optional(t_upvr.boolean);
	disableReferenceProtection = t_upvr.optional(t_upvr.boolean);
})
local Log_upvr = require(script.Parent.Log)
local RunService_upvr = game:GetService("RunService")
local MockDataStoreService_upvr = require(script.Parent.MockDataStoreService)
local DataStoreService_upvr = game:GetService("DataStoreService")
local MockMemoryStoreService_upvr = require(script.Parent.MockMemoryStoreService)
local MemoryStoreService_upvr = game:GetService("MemoryStoreService")
local Constants_upvr = require(script.Parent.Constants)
local Session_upvr = require(script.Parent.Session)
function tbl_2_upvr.load(arg1, arg2, arg3) -- Line 311
	--[[ Upvalues[3]:
		[1]: t_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Session_upvr (readonly)
	]]
	assert(t_upvr.string(arg2))
	assert(t_upvr.optional(t_upvr.array(t_upvr.number))(arg3))
	local tbl_7 = {
		method = "load";
	}
	tbl_7.key = arg2
	local any_extend_result1_upvr_2 = arg1._ctx.logger:extend(tbl_7)
	any_extend_result1_upvr_2:log("trace", "attempting to load key")
	if arg1._closed then
		any_extend_result1_upvr_2:log("warn", "attempted to load key while store is closed")
		return Promise_upvr.reject("Store is closed")
	end
	if arg1._sessions[arg2] and not arg1._unloadPromises[arg2] then
		any_extend_result1_upvr_2:log("trace", "key is already loaded")
		return Promise_upvr.resolve()
	end
	if arg1._loadPromises[arg2] then
		any_extend_result1_upvr_2:log("trace", "key is currently being loaded")
		return Promise_upvr.reject("Load already in progress")
	end
	local tbl_3 = {
		storeContext = arg1._ctx;
	}
	tbl_3.key = arg2
	tbl_3.userIds = arg3
	local any_andThen_result1 = Promise_upvr.try(function() -- Line 333
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: any_extend_result1_upvr_2 (readonly)
		]]
		local var33 = arg1._unloadPromises[arg2]
		if var33 then
			any_extend_result1_upvr_2:log("trace", "waiting for unload to complete")
			var33:await()
		end
	end):andThenCall(Session_upvr.load, tbl_3):andThen(function(arg1_2) -- Line 346
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_extend_result1_upvr_2 (readonly)
			[3]: arg2 (readonly)
			[4]: Promise_upvr (copied, readonly)
		]]
		if arg1._closed then
			any_extend_result1_upvr_2:log("warn", "store closed before key loaded")
			arg1._unloadPromises[arg2] = arg1_2:unload():finally(function() -- Line 350
				--[[ Upvalues[3]:
					[1]: any_extend_result1_upvr_2 (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg2 (copied, readonly)
				]]
				any_extend_result1_upvr_2:log("trace", "key unloaded")
				arg1._unloadPromises[arg2] = nil
			end)
			return Promise_upvr.reject("Store closed before key loaded")
		end
		arg1._sessions[arg2] = arg1_2
		arg1_2:startAutosaving()
		arg1_2.lockHandle.onLockLost(function() -- Line 361
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (copied, readonly)
			]]
			if arg1._ctx.onLockLost then
				arg1._ctx.onLockLost(arg2)
			end
			arg1._sessions[arg2] = nil
		end)
	end)
	arg1._loadPromises[arg2] = any_andThen_result1
	any_andThen_result1:finally(function() -- Line 371
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1._loadPromises[arg2] = nil
	end):catch(function() -- Line 374
	end)
	return any_andThen_result1:finally(function(arg1_3) -- Line 376
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: any_extend_result1_upvr_2 (readonly)
		]]
		if arg1_3 == Promise_upvr.Status.Cancelled then
			any_extend_result1_upvr_2:log("trace", "load was cancelled")
			return Promise_upvr.reject("Load was cancelled")
		end
	end)
end
function tbl_2_upvr.loadAsync(arg1, arg2, arg3) -- Line 389
	arg1:load(arg2, arg3):expect()
end
function tbl_2_upvr.unload(arg1, arg2) -- Line 406
	--[[ Upvalues[2]:
		[1]: t_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	assert(t_upvr.string(arg2))
	local tbl_5 = {
		method = "unload";
	}
	tbl_5.key = arg2
	local any_extend_result1_upvr_4 = arg1._ctx.logger:extend(tbl_5)
	any_extend_result1_upvr_4:log("trace", "attempting to unload key")
	if arg1._closed then
		any_extend_result1_upvr_4:log("warn", "attempted to unload key while store is closed")
		return Promise_upvr.reject("Store is closed")
	end
	if arg1._loadPromises[arg2] then
		any_extend_result1_upvr_4:log("trace", "key is being loaded, cancelling load")
		arg1._loadPromises[arg2]:cancel()
		return Promise_upvr.resolve()
	end
	if arg1._unloadPromises[arg2] then
		any_extend_result1_upvr_4:log("trace", "key is being unloaded")
		return arg1._unloadPromises[arg2]
	end
	if not arg1._sessions[arg2] then
		any_extend_result1_upvr_4:log("warn", "key not loaded")
		return Promise_upvr.resolve()
	end
	any_extend_result1_upvr_4:log("trace", "unloading key")
	arg1._unloadPromises[arg2] = arg1._sessions[arg2]:unload():finally(function() -- Line 434
		--[[ Upvalues[3]:
			[1]: any_extend_result1_upvr_4 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		any_extend_result1_upvr_4:log("trace", "key unloaded")
		arg1._sessions[arg2] = nil
		arg1._unloadPromises[arg2] = nil
	end)
	local var45 = arg1._unloadPromises[arg2]
	if not var45 then
		var45 = Promise_upvr.resolve()
	end
	return var45
end
function tbl_2_upvr.unloadAsync(arg1, arg2) -- Line 448
	arg1:unload(arg2):expect()
end
function tbl_2_upvr._withSession(arg1, arg2, arg3) -- Line 459
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local tbl = {
		method = "_withSession";
	}
	tbl.key = arg2
	local any_extend_result1_upvr = arg1._ctx.logger:extend(tbl)
	return Promise_upvr.new(function(arg1_4, arg2_2) -- Line 462
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_extend_result1_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: arg3 (readonly)
		]]
		if arg1._closed then
			any_extend_result1_upvr:log("warn", "attempted to use key while store is closed")
			return arg2_2("Store is closed")
		end
		local var52 = arg1._loadPromises[arg2]
		if var52 then
			any_extend_result1_upvr:log("trace", "key being loaded, waiting")
			if not var52:await() then
				return var52:finally(function(arg1_6) -- Line 473
					--[[ Upvalues[3]:
						[1]: Promise_upvr (copied, readonly)
						[2]: any_extend_result1_upvr (copied, readonly)
						[3]: arg2_2 (readonly)
					]]
					if arg1_6 == Promise_upvr.Status.Cancelled then
						any_extend_result1_upvr:log("trace", "load cancelled")
						return arg2_2("Load was cancelled")
					end
				end)
			end
		end
		if arg1._unloadPromises[arg2] then
			any_extend_result1_upvr:log("warn", "key is being unloaded")
		end
		local var54 = arg1._sessions[arg2]
		if not var54 then
			any_extend_result1_upvr:log("warn", "key not loaded")
			return arg2_2("Key not loaded")
		end
		arg1_4(arg3(var54))
	end)
end
function tbl_2_upvr._getKeyInfo(arg1, arg2) -- Line 503
	return arg1:_withSession(arg2, function(arg1_7) -- Line 504
		return arg1_7.keyInfo
	end)
end
function tbl_2_upvr.get(arg1, arg2) -- Line 525
	--[[ Upvalues[1]:
		[1]: t_upvr (readonly)
	]]
	assert(t_upvr.string(arg2))
	return arg1:_withSession(arg2, function(arg1_8) -- Line 528
		return arg1_8:get()
	end)
end
function tbl_2_upvr.getAsync(arg1, arg2) -- Line 538
	return arg1:get(arg2):expect()
end
function tbl_2_upvr.update(arg1, arg2, arg3) -- Line 567
	--[[ Upvalues[1]:
		[1]: t_upvr (readonly)
	]]
	assert(t_upvr.string(arg2))
	assert(t_upvr.callback(arg3))
	return arg1:_withSession(arg2, function(arg1_9) -- Line 571
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		return arg1_9:update(arg3)
	end)
end
function tbl_2_upvr.updateAsync(arg1, arg2, arg3) -- Line 581
	return arg1:update(arg2, arg3):expect()
end
local HttpService_upvr = game:GetService("HttpService")
local Tables_upvr = require(script.Parent.Tables)
local PromiseQueue_upvr = require(script.Parent.PromiseQueue)
local noYield_upvr = require(script.Parent.noYield)
local JsonPatch_upvr = require(script.Parent.JsonPatch)
function tbl_2_upvr.tx(arg1, arg2, arg3) -- Line 612
	--[[ Upvalues[8]:
		[1]: t_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Tables_upvr (readonly)
		[5]: PromiseQueue_upvr (readonly)
		[6]: noYield_upvr (readonly)
		[7]: JsonPatch_upvr (readonly)
		[8]: dataStoreRetry_upvr (readonly)
	]]
	assert(t_upvr.array(t_upvr.string)(arg2))
	assert(t_upvr.callback(arg3))
	local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
	local tbl_4 = {
		method = "tx";
	}
	tbl_4.keys = arg2
	tbl_4.txId = any_GenerateGUID_result1_upvr
	local any_extend_result1_upvr_5 = arg1._ctx.logger:extend(tbl_4)
	any_extend_result1_upvr_5:log("trace", "starting transaction")
	if arg1._closed then
		any_extend_result1_upvr_5:log("warn", "attempted to start transaction while store is closed")
		return Promise_upvr.reject("Store is closed")
	end
	for _, v in arg2 do
		local var68 = arg1._sessions[v]
		if not var68 then
			return Promise_upvr.reject(`Key not loaded: {v}`)
		end
		if var68.txLockPromise then
			return Promise_upvr.reject(`Key is already locked by another transaction: {v}`)
		end
		if var68.closed then
			return Promise_upvr.reject(`Key is closed: {v}`)
		end
	end
	local var69_upvw
	local any_new_result1_upvr = Promise_upvr.new(function(arg1_10) -- Line 639
		--[[ Upvalues[1]:
			[1]: var69_upvw (read and write)
		]]
		var69_upvw = arg1_10
	end)
	local function withTxLock_upvr(arg1_12) -- Line 650, Named "withTxLock"
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: any_extend_result1_upvr_5 (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: var69_upvw (read and write)
		]]
		for _, v_2 in arg2 do
			arg1._sessions[v_2].txLockPromise = any_new_result1_upvr
		end
		any_extend_result1_upvr_5:log("trace", "set txLockPromise on Sessions")
		return Promise_upvr.try(arg1_12):finally(function() -- Line 657
			--[[ Upvalues[5]:
				[1]: arg2 (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: any_new_result1_upvr (copied, readonly)
				[4]: any_extend_result1_upvr_5 (copied, readonly)
				[5]: var69_upvw (copied, read and write)
			]]
			for _, v_3 in arg2 do
				local var78 = arg1._sessions[v_3]
				if var78.txLockPromise == any_new_result1_upvr then
					var78.txLockPromise = nil
				end
			end
			any_extend_result1_upvr_5:log("trace", "cleared txLockPromise on Sessions")
			var69_upvw()
		end)
	end
	any_extend_result1_upvr_5:log("trace", "acquiring PromiseQueue lock on keys")
	return PromiseQueue_upvr.multiQueueAdd(Tables_upvr.map(arg2, function(arg1_11) -- Line 643
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1._sessions[arg1_11].queue
	end), function() -- Line 670
		--[[ Upvalues[11]:
			[1]: any_extend_result1_upvr_5 (readonly)
			[2]: withTxLock_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
			[5]: Tables_upvr (copied, readonly)
			[6]: noYield_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: Promise_upvr (copied, readonly)
			[9]: JsonPatch_upvr (copied, readonly)
			[10]: dataStoreRetry_upvr (copied, readonly)
			[11]: any_GenerateGUID_result1_upvr (readonly)
		]]
		any_extend_result1_upvr_5:log("trace", "acquired PromiseQueue lock on keys")
		return withTxLock_upvr(function() -- Line 673
			--[[ Upvalues[10]:
				[1]: arg2 (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Tables_upvr (copied, readonly)
				[4]: noYield_upvr (copied, readonly)
				[5]: arg3 (copied, readonly)
				[6]: any_extend_result1_upvr_5 (copied, readonly)
				[7]: Promise_upvr (copied, readonly)
				[8]: JsonPatch_upvr (copied, readonly)
				[9]: dataStoreRetry_upvr (copied, readonly)
				[10]: any_GenerateGUID_result1_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 69 start (CF ANALYSIS FAILED)
			local tbl_8 = {}
			local _
			for _, v_4 in arg2 do
				tbl_8[v_4] = arg1._sessions[v_4].data
			end
			local any_copyDeep_result1 = Tables_upvr.copyDeep(tbl_8)
			local pcall_result1, pcall_result2 = pcall(noYield_upvr, arg3, any_copyDeep_result1)
			if not pcall_result1 then
				any_extend_result1_upvr_5:log("error", "tx transformFunction failed", {
					error = pcall_result2;
				})
				return Promise_upvr.reject(`Store:tx transformFunction failed: {pcall_result2}`)
			end
			if typeof(pcall_result2) ~= "boolean" then
			else
			end
			assert(true, "Transaction transform function must return a boolean")
			if pcall_result2 == false then
				any_extend_result1_upvr_5:log("trace", "tx transformFunction returned false, skipping update")
				return Promise_upvr.reject("Transaction transform function returned false")
			end
			if arg1._ctx.disableReferenceProtection == false then
			end
			for _, v_5 in arg2 do
				local any_schema_result1_2, any_schema_result2 = arg1._ctx.schema(Tables_upvr.copyDeep(any_copyDeep_result1)[v_5])
				if not any_schema_result1_2 then
					any_extend_result1_upvr_5:log("error", `schema validation for key {v_5} failed: {any_schema_result2}`)
					return Promise_upvr.reject(`Store:tx schema validation failed: {any_schema_result2}`)
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 69 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [139] 111. Error Block 20 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [139] 111. Error Block 20 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [134] 107. Error Block 65 start (CF ANALYSIS FAILED)
			if any_schema_result2 == nil then
				-- KONSTANTWARNING: GOTO [145] #116
			end
			-- KONSTANTERROR: [134] 107. Error Block 65 end (CF ANALYSIS FAILED)
		end)
	end)
end
function tbl_2_upvr.txAsync(arg1, arg2, arg3) -- Line 829
	arg1:tx(arg2, arg3):expect()
end
function tbl_2_upvr.save(arg1, arg2) -- Line 845
	--[[ Upvalues[1]:
		[1]: t_upvr (readonly)
	]]
	assert(t_upvr.string(arg2))
	return arg1:_withSession(arg2, function(arg1_13) -- Line 848
		return arg1_13:save()
	end)
end
function tbl_2_upvr.saveAsync(arg1, arg2) -- Line 858
	arg1:save(arg2):expect()
end
function tbl_2_upvr.close(arg1) -- Line 869
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local any_extend_result1_upvr_3 = arg1._ctx.logger:extend({
		method = "close";
	})
	any_extend_result1_upvr_3:log("trace", "closing store")
	for _, v_6 in arg1._loadPromises do
		v_6:cancel()
	end
	for i_7 in arg1._sessions do
		if arg1._unloadPromises[i_7] then
			any_extend_result1_upvr_3:log("trace", "key already being unloaded", {
				key = i_7;
			})
			table.insert({}, arg1._unloadPromises[i_7])
		else
			any_extend_result1_upvr_3:log("trace", "unloading key", {
				key = i_7;
			})
			local module_upvr = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, arg1:unload(i_7):catch(function(arg1_14) -- Line 888
				--[[ Upvalues[1]:
					[1]: module_upvr (readonly)
				]]
				table.insert(module_upvr, arg1_14)
			end))
		end
	end
	arg1._closed = true
	any_extend_result1_upvr_3:log("trace", "store marked as closed")
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Promise_upvr.allSettled({}):andThen(function() -- Line 898
		--[[ Upvalues[3]:
			[1]: any_extend_result1_upvr_3 (readonly)
			[2]: module_upvr (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		any_extend_result1_upvr_3:log("debug", "store closed")
		if 0 < #module_upvr then
			return Promise_upvr.reject(module_upvr)
		end
	end)
end
function tbl_2_upvr.closeAsync(arg1) -- Line 911
	arg1:close():expect()
end
function tbl_2_upvr.peek(arg1, arg2) -- Line 929
	--[[ Upvalues[3]:
		[1]: dataStoreRetry_upvr (readonly)
		[2]: Files_upvr (readonly)
		[3]: Transactions_upvr (readonly)
	]]
	return dataStoreRetry_upvr(function() -- Line 930
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1._ctx.recordStore:GetAsync(arg2)
	end):andThen(function(arg1_15) -- Line 933
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Files_upvr (copied, readonly)
		]]
		if arg1_15 == nil then
			return nil
		end
		assert(arg1_15, "luau")
		local file = arg1_15.file
		if file then
			return Files_upvr.read({
				store = arg1._ctx.shardStore;
				file = file;
			})
		end
		return nil
	end):andThen(function(arg1_16) -- Line 950
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Transactions_upvr (copied, readonly)
		]]
		if arg1_16 == nil then
			return nil
		end
		assert(arg1_16, "luau")
		local module = {
			store = arg1._ctx.txStore;
		}
		module.txInfo = arg1_16
		return Transactions_upvr.readTx(module)
	end)
end
function tbl_2_upvr.peekAsync(arg1, arg2) -- Line 969
	return arg1:peek(arg2):expect()
end
local Locks_upvr = require(script.Parent.Locks)
function tbl_2_upvr.probeLockActive(arg1, arg2) -- Line 979
	--[[ Upvalues[1]:
		[1]: Locks_upvr (readonly)
	]]
	local module_2 = {
		storeContext = arg1._ctx;
	}
	module_2.key = arg2
	return Locks_upvr.probeLockActive(module_2)
end
function tbl_2_upvr.probeLockActiveAsync(arg1, arg2) -- Line 991
	return arg1:probeLockActive(arg2):expect()
end
function tbl_2_upvr.listVersions(arg1, arg2) -- Line 1001
	--[[ Upvalues[1]:
		[1]: dataStoreRetry_upvr (readonly)
	]]
	return dataStoreRetry_upvr(function() -- Line 1002
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1._ctx.recordStore:ListVersionsAsync(arg2.key, arg2.sortDirection, arg2.minDate, arg2.maxDate, arg2.pageSize)
	end)
end
function tbl_2_upvr.listVersionsAsync(arg1, arg2) -- Line 1018
	return arg1:listVersions(arg2):expect()
end
function tbl_2_upvr.readVersion(arg1, arg2, arg3) -- Line 1028
	--[[ Upvalues[4]:
		[1]: dataStoreRetry_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Files_upvr (readonly)
		[4]: Transactions_upvr (readonly)
	]]
	return dataStoreRetry_upvr(function() -- Line 1029
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		return arg1._ctx.recordStore:GetVersionAsync(arg2, arg3)
	end):andThen(function(arg1_17, arg2_3) -- Line 1032
		--[[ Upvalues[3]:
			[1]: Promise_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Files_upvr (copied, readonly)
		]]
		if not arg1_17 or not arg2_3 then
			return Promise_upvr.reject("Record not found")
		end
		return Files_upvr.read({
			store = arg1._ctx.recordStore;
			file = arg1_17.file;
		})
	end):andThen(function(arg1_18) -- Line 1043
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Transactions_upvr (copied, readonly)
		]]
		local module_3 = {
			store = arg1._ctx.txStore;
		}
		module_3.txInfo = arg1_18
		return Transactions_upvr.readTx(module_3)
	end)
end
function tbl_2_upvr.readVersionAsync(arg1, arg2, arg3) -- Line 1058
	return arg1:readVersion(arg2, arg3):expect()
end
return {
	createStore = function(arg1) -- Line 216, Named "createStore"
		--[[ Upvalues[9]:
			[1]: any_strictInterface_result1_upvr (readonly)
			[2]: Log_upvr (readonly)
			[3]: RunService_upvr (readonly)
			[4]: MockDataStoreService_upvr (readonly)
			[5]: DataStoreService_upvr (readonly)
			[6]: MockMemoryStoreService_upvr (readonly)
			[7]: MemoryStoreService_upvr (readonly)
			[8]: Constants_upvr (readonly)
			[9]: tbl_2_upvr (readonly)
		]]
		assert(any_strictInterface_result1_upvr(arg1))
		local logCallback = arg1.logCallback
		if not logCallback then
			function logCallback() -- Line 219
			end
		end
		local any_createLogger_result1 = Log_upvr.createLogger(logCallback, {
			lib = "lyra";
			store = arg1.name;
		})
		any_createLogger_result1:log("debug", "creating store")
		local dataStoreService = arg1.dataStoreService
		if dataStoreService == nil then
			if arg1.useMock then
				assert(RunService_upvr:IsStudio(), "useMock can only be true in Studio")
				any_createLogger_result1:log("info", "using mock DataStoreService")
				dataStoreService = MockDataStoreService_upvr.new()
			else
				any_createLogger_result1:log("trace", "using real DataStoreService")
				dataStoreService = DataStoreService_upvr
			end
		end
		assert(dataStoreService, "luau")
		local memoryStoreService = arg1.memoryStoreService
		if memoryStoreService == nil then
			if arg1.useMock then
				assert(RunService_upvr:IsStudio(), "useMock can only be true in Studio")
				any_createLogger_result1:log("info", "using mock MemoryStoreService")
				memoryStoreService = MockMemoryStoreService_upvr.new()
			else
				any_createLogger_result1:log("trace", "using real MemoryStoreService")
				memoryStoreService = MemoryStoreService_upvr
			end
		end
		assert(memoryStoreService, "luau")
		local migrationSteps = arg1.migrationSteps
		if not migrationSteps then
			migrationSteps = {}
		end
		local tbl_6 = {
			name = arg1.name;
			template = arg1.template;
			schema = arg1.schema;
			migrationSteps = migrationSteps;
			importLegacyData = arg1.importLegacyData;
			dataStoreService = dataStoreService;
			memoryStoreService = memoryStoreService;
		}
		local changedCallbacks = arg1.changedCallbacks
		if not changedCallbacks then
			changedCallbacks = {}
		end
		tbl_6.changedCallbacks = changedCallbacks
		tbl_6.logger = any_createLogger_result1
		tbl_6.onLockLost = arg1.onLockLost
		tbl_6.recordStore = dataStoreService:GetDataStore(`{Constants_upvr.RECORD_SCOPE}/{arg1.name}`)
		tbl_6.shardStore = dataStoreService:GetDataStore(`{Constants_upvr.SHARD_SCOPE}/{arg1.name}`)
		tbl_6.txStore = dataStoreService:GetDataStore(`{Constants_upvr.TX_SCOPE}/{arg1.name}`)
		tbl_6.lockHashMap = memoryStoreService:GetHashMap(`{Constants_upvr.LOCK_SCOPE}/{arg1.name}`)
		tbl_6.disableReferenceProtection = arg1.disableReferenceProtection or false
		local any_schema_result1, any_schema_result2_2 = tbl_6.schema(tbl_6.template)
		if not any_schema_result1 then
			error(`Failed to validate template: {any_schema_result2_2}`)
		end
		any_createLogger_result1:log("trace", "created store")
		return setmetatable({
			_ctx = tbl_6;
			_closed = false;
			_sessions = {};
			_lastTxId = nil;
			_loadPromises = {};
			_unloadPromises = {};
		}, tbl_2_upvr)
	end;
}