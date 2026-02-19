-- Name: Session
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Session
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9383413999967161 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:03
-- Luau version 6, Types version 3
-- Time taken: 0.031689 seconds

local HttpService_upvr = game:GetService("HttpService")
local Constants_upvr = require(script.Parent.Constants)
local Files_upvr = require(script.Parent.Files)
local Promise_upvr = require(script.Parent.Promise)
local Tables_upvr = require(script.Parent.Tables)
local t_upvr = require(game:GetService("ReplicatedStorage").Packages.t)
local dataStoreRetry_upvr = require(script.Parent.dataStoreRetry)
local Migrations_upvr = require(script.Parent.Migrations)
local Transactions_upvr = require(script.Parent.Transactions)
local function load(arg1) -- Line 96
	--[[ Upvalues[7]:
		[1]: Migrations_upvr (readonly)
		[2]: dataStoreRetry_upvr (readonly)
		[3]: Files_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: Transactions_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: Tables_upvr (readonly)
	]]
	local storeContext_upvr_2 = arg1.storeContext
	local key_upvr = arg1.key
	local any_extend_result1_7_upvr = storeContext_upvr_2.logger:extend({
		method = "load";
		key = arg1.key;
	})
	any_extend_result1_7_upvr:log("trace", "loading key")
	local any_getStepNames_result1_upvw = Migrations_upvr.getStepNames(storeContext_upvr_2.migrationSteps)
	local tbl_4_upvw = {}
	local var17_upvw
	local var18_upvw
	return dataStoreRetry_upvr(function() -- Line 108
		--[[ Upvalues[2]:
			[1]: storeContext_upvr_2 (readonly)
			[2]: key_upvr (readonly)
		]]
		return storeContext_upvr_2.recordStore:GetAsync(key_upvr)
	end):andThen(function(arg1_2, arg2) -- Line 111
		--[[ Upvalues[8]:
			[1]: any_extend_result1_7_upvr (readonly)
			[2]: var18_upvw (read and write)
			[3]: any_getStepNames_result1_upvw (read and write)
			[4]: tbl_4_upvw (read and write)
			[5]: Files_upvr (copied, readonly)
			[6]: var17_upvw (read and write)
			[7]: HttpService_upvr (copied, readonly)
			[8]: storeContext_upvr_2 (readonly)
		]]
		any_extend_result1_7_upvr:log("trace", "got record")
		local var21
		if var21 == nil then
			var21 = {}
		end
		assert(var21, "luau")
		var18_upvw = arg2
		if var21.appliedMigrations then
			any_getStepNames_result1_upvw = var21.appliedMigrations
		end
		if var21.orphanedFiles then
			tbl_4_upvw = var21.orphanedFiles
		end
		local file = var21.file
		if file then
			if Files_upvr.isLargeFile(file) then
				var17_upvw = file
			end
			any_extend_result1_7_upvr:log("trace", "reading file", {
				file = HttpService_upvr:JSONEncode(file);
			})
			return Files_upvr.read({
				store = storeContext_upvr_2.shardStore;
				file = file;
			})
		end
		any_extend_result1_7_upvr:log("trace", "no file")
		return nil
	end):andThen(function(arg1_3) -- Line 145
		--[[ Upvalues[3]:
			[1]: any_extend_result1_7_upvr (readonly)
			[2]: storeContext_upvr_2 (readonly)
			[3]: Transactions_upvr (copied, readonly)
		]]
		if arg1_3 then
			local tbl_3 = {}
			tbl_3.txInfo = arg1_3
			any_extend_result1_7_upvr:log("trace", "got txInfo", tbl_3)
			local module_6 = {
				store = storeContext_upvr_2.txStore;
			}
			module_6.txInfo = arg1_3
			return Transactions_upvr.readTx(module_6)
		end
		any_extend_result1_7_upvr:log("trace", "no txInfo")
		return nil
	end):andThen(function(arg1_4) -- Line 160
		--[[ Upvalues[5]:
			[1]: any_extend_result1_7_upvr (readonly)
			[2]: storeContext_upvr_2 (readonly)
			[3]: key_upvr (readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: any_getStepNames_result1_upvw (read and write)
		]]
		if arg1_4 ~= nil then
			any_extend_result1_7_upvr:log("trace", "got data")
			return arg1_4
		end
		local importLegacyData = storeContext_upvr_2.importLegacyData
		if importLegacyData == nil then
			any_extend_result1_7_upvr:log("trace", "no data, no importLegacyData")
			return nil
		end
		any_extend_result1_7_upvr:log("trace", "no data, importing legacy data")
		local pcall_result1_2, pcall_result2 = pcall(importLegacyData, key_upvr)
		if not pcall_result1_2 then
			any_extend_result1_7_upvr:log("error", "failed to import legacy data", {
				error = pcall_result2;
			})
			return Promise_upvr.reject(`Failed to import legacy data for key {key_upvr}: {pcall_result2}`)
		end
		if pcall_result2 == nil then
			return nil
		end
		any_getStepNames_result1_upvw = {}
		any_extend_result1_7_upvr:log("trace", "imported legacy data", {
			oldData = pcall_result2;
		})
		return pcall_result2
	end):andThen(function(arg1_5) -- Line 188
		--[[ Upvalues[5]:
			[1]: any_extend_result1_7_upvr (readonly)
			[2]: Tables_upvr (copied, readonly)
			[3]: storeContext_upvr_2 (readonly)
			[4]: any_getStepNames_result1_upvw (read and write)
			[5]: Migrations_upvr (copied, readonly)
		]]
		if arg1_5 == nil then
			any_extend_result1_7_upvr:log("trace", "no data, using template")
			local any_copyDeep_result1_upvw = Tables_upvr.copyDeep(storeContext_upvr_2.template)
		end
		assert(any_copyDeep_result1_upvw, "luau")
		if 0 < #storeContext_upvr_2.migrationSteps then
			any_extend_result1_7_upvr:log("debug", "applying migrations")
			return Migrations_upvr.apply({
				logger = any_extend_result1_7_upvr:extend({
					component = "Migrations";
				});
				data = any_copyDeep_result1_upvw;
				steps = storeContext_upvr_2.migrationSteps;
				appliedMigrations = any_getStepNames_result1_upvw;
			}):andThen(function(arg1_6) -- Line 204
				--[[ Upvalues[3]:
					[1]: any_getStepNames_result1_upvw (copied, read and write)
					[2]: any_extend_result1_7_upvr (copied, readonly)
					[3]: any_copyDeep_result1_upvw (read and write)
				]]
				any_getStepNames_result1_upvw = arg1_6.appliedMigrations
				any_extend_result1_7_upvr:log("trace", "migrations applied", {
					data = any_copyDeep_result1_upvw;
					appliedMigrations = any_getStepNames_result1_upvw;
				})
				return arg1_6.data
			end)
		end
		any_extend_result1_7_upvr:log("trace", "data loaded")
		return any_copyDeep_result1_upvw
	end):andThen(function(arg1_7) -- Line 214
		--[[ Upvalues[5]:
			[1]: any_extend_result1_7_upvr (readonly)
			[2]: any_getStepNames_result1_upvw (read and write)
			[3]: tbl_4_upvw (read and write)
			[4]: var17_upvw (read and write)
			[5]: var18_upvw (read and write)
		]]
		any_extend_result1_7_upvr:log("trace", "load done")
		local module_2 = {}
		module_2.data = arg1_7
		module_2.appliedMigrations = any_getStepNames_result1_upvw
		module_2.orphanedFiles = tbl_4_upvw
		module_2.currentFile = var17_upvw
		module_2.keyInfo = var18_upvw
		return module_2
	end)
end
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
local PromiseQueue_upvr = require(script.Parent.PromiseQueue)
local function createSession_upvr(arg1) -- Line 241, Named "createSession"
	--[[ Upvalues[2]:
		[1]: PromiseQueue_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local any_extend_result1 = arg1.storeContext.logger:extend({
		key = arg1.key;
	})
	return setmetatable({
		key = arg1.key;
		ctx = arg1.storeContext;
		lockHandle = arg1.lockHandle;
		userIds = arg1.userIds;
		data = nil;
		frozenData = nil;
		appliedMigrations = arg1.appliedMigrations;
		changeSet = {};
		orphanedFiles = arg1.orphanedFiles;
		currentFile = arg1.currentFile;
		queue = PromiseQueue_upvr.new({
			logger = any_extend_result1:extend({
				component = "PromiseQueue";
			});
		});
		txLockPromise = nil;
		closed = false;
		unloadPromise = nil;
		keyInfo = arg1.keyInfo;
		logger = any_extend_result1;
	}, module_3_upvr)
end
local any_strictInterface_result1_upvr = t_upvr.strictInterface({
	key = t_upvr.string;
	storeContext = t_upvr.any;
	userIds = t_upvr.optional(t_upvr.array(t_upvr.number));
})
local Locks_upvr = require(script.Parent.Locks)
function module_3_upvr.load(arg1) -- Line 277
	--[[ Upvalues[6]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Locks_upvr (readonly)
		[4]: load (readonly)
		[5]: Promise_upvr (readonly)
		[6]: createSession_upvr (readonly)
	]]
	assert(any_strictInterface_result1_upvr(arg1))
	local storeContext_upvr = arg1.storeContext
	local any_extend_result1_4_upvr = storeContext_upvr.logger:extend({
		method = "load";
		key = arg1.key;
	})
	return Locks_upvr.acquireLock({
		storeContext = storeContext_upvr;
		key = arg1.key;
		acquireAttempts = Constants_upvr.LOCK_ACQUIRE_ATTEMPTS;
		duration = Constants_upvr.LOCK_DURATION_SECONDS;
		refreshInterval = Constants_upvr.LOCK_REFRESH_INTERVAL_SECONDS;
	}):andThen(function(arg1_8) -- Line 291
		--[[ Upvalues[6]:
			[1]: storeContext_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: load (copied, readonly)
			[4]: any_extend_result1_4_upvr (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: createSession_upvr (copied, readonly)
		]]
		return load({
			storeContext = storeContext_upvr;
			key = arg1.key;
		}):andThen(function(arg1_9) -- Line 297
			--[[ Upvalues[6]:
				[1]: arg1_8 (readonly)
				[2]: any_extend_result1_4_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
				[4]: storeContext_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: createSession_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if not arg1_8.isLocked() then
				any_extend_result1_4_upvr:log("error", "lock was lost while loading key")
				return Promise_upvr.reject("Lock was lost while loading key")
			end
			local tbl_6 = {
				storeContext = storeContext_upvr;
				key = arg1.key;
			}
			tbl_6.lockHandle = arg1_8
			tbl_6.userIds = arg1.userIds
			tbl_6.appliedMigrations = arg1_9.appliedMigrations
			tbl_6.orphanedFiles = arg1_9.orphanedFiles
			tbl_6.currentFile = arg1_9.currentFile
			tbl_6.keyInfo = arg1_9.keyInfo
			local createSession_result1_upvr = createSession_upvr(tbl_6)
			arg1_8.onLockLost(function() -- Line 316
				--[[ Upvalues[3]:
					[1]: any_extend_result1_4_upvr (copied, readonly)
					[2]: createSession_result1_upvr (readonly)
					[3]: Promise_upvr (copied, readonly)
				]]
				any_extend_result1_4_upvr:log("warn", "lock was lost, stopping autosave")
				createSession_result1_upvr.closed = true
				createSession_result1_upvr:stopAutosaving()
				createSession_result1_upvr.unloadPromise = Promise_upvr.resolve()
			end)
			for _, v in arg1_9.orphanedFiles do
				createSession_result1_upvr:orphanFile(v)
				local var69
			end
			any_extend_result1_4_upvr:log("trace", "loaded key", {
				data = arg1_9.data;
			})
			var69:mutateKey(arg1_9.data)
			return var69
		end):finally(function(arg1_10) -- Line 331
			--[[ Upvalues[3]:
				[1]: Promise_upvr (copied, readonly)
				[2]: any_extend_result1_4_upvr (copied, readonly)
				[3]: arg1_8 (readonly)
			]]
			if arg1_10 ~= Promise_upvr.Status.Resolved then
				any_extend_result1_4_upvr:log("trace", "failed to load key, releasing lock")
				arg1_8.release():catch(function(arg1_11) -- Line 334
					--[[ Upvalues[1]:
						[1]: any_extend_result1_4_upvr (copied, readonly)
					]]
					local tbl_2 = {}
					tbl_2.error = arg1_11
					any_extend_result1_4_upvr:log("warn", "failed to release lock", tbl_2)
				end)
			end
		end)
	end)
end
function module_3_upvr.updateRecord(arg1) -- Line 342
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local any_extend_result1_9 = arg1.logger:extend({
		method = "updateRecord";
	})
	any_extend_result1_9:log("trace", "updateRecord called")
	if arg1:isSaved() then
		any_extend_result1_9:log("trace", "no changes, returning")
		return Promise_upvr.resolve()
	end
	local module = {
		committedData = arg1.data;
	}
	any_extend_result1_9:log("trace", "writing record", {
		txInfo = module;
	})
	return arg1:writeRecord(module)
end
function module_3_upvr.orphanFile(arg1, arg2) -- Line 357
	--[[ Upvalues[4]:
		[1]: Files_upvr (readonly)
		[2]: dataStoreRetry_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Tables_upvr (readonly)
	]]
	if Files_upvr.isLargeFile(arg2) == false then
	else
		local any_extend_result1_5_upvr = arg1.ctx.logger:extend({
			method = "orphanFile";
			key = arg1.key;
			shard = arg2.shard;
		})
		local tbl_5 = {}
		tbl_5.file = arg2
		any_extend_result1_5_upvr:log("trace", "orphaning file", tbl_5)
		table.insert(arg1.orphanedFiles, arg2)
		task.spawn(function() -- Line 366
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: any_extend_result1_5_upvr (readonly)
				[3]: arg2 (readonly)
				[4]: dataStoreRetry_upvr (copied, readonly)
				[5]: Promise_upvr (copied, readonly)
				[6]: Tables_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [30] 22. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [30] 22. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.0]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.4292870216]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.1]
			if nil < nil then
				-- KONSTANTWARNING: GOTO [0] #1
			end
			-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [32] 24. Error Block 13 start (CF ANALYSIS FAILED)
			any_extend_result1_5_upvr:log("debug", "processing orphaned file")
			for i_3_upvr = 1, arg2.count do
				any_extend_result1_5_upvr:log("trace", `Removing shard {i_3_upvr} of {arg2.count}`)
				table.insert({}, dataStoreRetry_upvr(function() -- Line 389
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: arg2 (copied, readonly)
						[3]: i_3_upvr (readonly)
					]]
					return arg1.ctx.shardStore:RemoveAsync(`{arg2.shard}-{i_3_upvr}`)
				end))
				local var88
			end
			Promise_upvr.all(var88):andThen(function() -- Line 396
				--[[ Upvalues[4]:
					[1]: any_extend_result1_5_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: Tables_upvr (copied, readonly)
					[4]: arg2 (copied, readonly)
				]]
				any_extend_result1_5_upvr:log("trace", "successfully removed shards")
				for i_4, v_3 in arg1.orphanedFiles do
					if Tables_upvr.equalsDeep(arg2, v_3) then
						table.remove(arg1.orphanedFiles, i_4)
						return
					end
				end
			end):catch(function(arg1_12) -- Line 405
				--[[ Upvalues[1]:
					[1]: any_extend_result1_5_upvr (copied, readonly)
				]]
				any_extend_result1_5_upvr:log("error", `failed to remove shards: {arg1_12}`)
			end):finally(function() -- Line 408
				--[[ Upvalues[1]:
					[1]: any_extend_result1_5_upvr (copied, readonly)
				]]
				any_extend_result1_5_upvr:log("trace", "finished processing orphaned file")
			end)
			-- KONSTANTERROR: [32] 24. Error Block 13 end (CF ANALYSIS FAILED)
		end)
	end
end
function module_3_upvr.writeRecord(arg1, arg2) -- Line 414
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: Files_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: dataStoreRetry_upvr (readonly)
	]]
	local any_extend_result1_upvr = arg1.logger:extend({
		method = "writeRecord";
	})
	any_extend_result1_upvr:log("trace", "writeRecord called")
	local module_5 = {
		store = arg1.ctx.shardStore;
	}
	module_5.data = arg2
	module_5.maxShardSize = Constants_upvr.MAX_CHUNK_SIZE
	module_5.key = arg1.key
	module_5.userIds = arg1.userIds
	any_extend_result1_upvr:log("trace", "writing file", {
		writeParams = module_5;
	})
	return Files_upvr.write(module_5):catch(function(arg1_13) -- Line 429
		--[[ Upvalues[3]:
			[1]: any_extend_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		any_extend_result1_upvr:log("error", "failed to write shards", {
			error = arg1_13.error;
		})
		arg1:orphanFile(arg1_13.file)
		return Promise_upvr.reject(arg1_13.error)
	end):andThen(function(arg1_14) -- Line 436
		--[[ Upvalues[5]:
			[1]: any_extend_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: dataStoreRetry_upvr (copied, readonly)
			[5]: Files_upvr (copied, readonly)
		]]
		local tbl_8 = {}
		tbl_8.file = arg1_14
		any_extend_result1_upvr:log("trace", "file written", tbl_8)
		if not arg1.lockHandle.isLocked() then
			any_extend_result1_upvr:log("error", "lock was lost while writing file")
			arg1:orphanFile(arg1_14)
			return Promise_upvr.reject("lock was lost while writing file")
		end
		local clone = table.clone(arg1.orphanedFiles)
		table.insert(clone, arg1.currentFile)
		local module_4_upvr = {
			appliedMigrations = arg1.appliedMigrations;
		}
		module_4_upvr.file = arg1_14
		module_4_upvr.orphanedFiles = clone
		any_extend_result1_upvr:log("trace", "writing record", {
			record = module_4_upvr;
		})
		return dataStoreRetry_upvr(function() -- Line 455
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_4_upvr (readonly)
			]]
			return arg1.ctx.recordStore:SetAsync(arg1.key, module_4_upvr, arg1.userIds)
		end):andThen(function() -- Line 458
			--[[ Upvalues[5]:
				[1]: any_extend_result1_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Files_upvr (copied, readonly)
				[4]: arg1_14 (readonly)
				[5]: module_4_upvr (readonly)
			]]
			any_extend_result1_upvr:log("trace", "record written")
			local var107
			if arg1.currentFile then
				arg1:orphanFile(arg1.currentFile)
			end
			if Files_upvr.isLargeFile(arg1_14) then
				var107 = arg1_14
			else
				var107 = nil
			end
			arg1.currentFile = var107
			return module_4_upvr
		end):catch(function(arg1_15) -- Line 468
			--[[ Upvalues[4]:
				[1]: any_extend_result1_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_14 (readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			local tbl_7 = {}
			tbl_7.error = arg1_15
			any_extend_result1_upvr:log("error", "failed to write record", tbl_7)
			arg1:orphanFile(arg1_14)
			return Promise_upvr.reject(arg1_15)
		end)
	end)
end
function module_3_upvr.isSaved(arg1) -- Line 478
	local var110
	if next(arg1.changeSet) ~= nil then
		var110 = false
	else
		var110 = true
	end
	return var110
end
function module_3_upvr.setData(arg1, arg2) -- Line 482
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Tables_upvr (readonly)
	]]
	arg1.changeSet[HttpService_upvr:GenerateGUID(false)] = true
	arg1.data = arg2
	arg1.frozenData = Tables_upvr.freezeDeep(arg2)
end
function module_3_upvr.mutateKey(arg1, arg2) -- Line 489
	local frozenData = arg1.frozenData
	arg1:setData(arg2)
	for _, v_2 in arg1.ctx.changedCallbacks do
		task.spawn(v_2, arg1.key, arg1.frozenData, frozenData)
	end
end
function module_3_upvr.startAutosaving(arg1) -- Line 499
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local any_extend_result1_8_upvr = arg1.logger:extend({
		method = "startAutosaving";
	})
	if arg1._cleanupAutosave then
		any_extend_result1_8_upvr:log("warn", "autosave already started")
	else
		if arg1.closed then
			any_extend_result1_8_upvr:log("warn", "Session is closed, not starting autosave")
			return
		end
		local var118_upvw = false
		task.spawn(function() -- Line 513
			--[[ Upvalues[4]:
				[1]: Constants_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: var118_upvw (read and write)
				[4]: any_extend_result1_8_upvr (readonly)
			]]
			while true do
				task.wait(Constants_upvr.AUTOSAVE_INTERVAL_SECONDS)
				if arg1.closed then break end
				if var118_upvw then break end
				local any_await_result1, any_await_result2 = arg1:save():await()
				if not any_await_result1 then
					any_extend_result1_8_upvr:log("warn", "failed to autosave key", {
						error = any_await_result2;
					})
				end
			end
		end)
		function arg1._cleanupAutosave() -- Line 527
			--[[ Upvalues[3]:
				[1]: any_extend_result1_8_upvr (readonly)
				[2]: var118_upvw (read and write)
				[3]: arg1 (readonly)
			]]
			any_extend_result1_8_upvr:log("trace", "cleaning up autosave")
			var118_upvw = true
			arg1._cleanupAutosave = nil
		end
	end
end
function module_3_upvr.stopAutosaving(arg1) -- Line 534
	if arg1._cleanupAutosave then
		arg1._cleanupAutosave()
	end
end
function module_3_upvr.unload(arg1) -- Line 540
	local any_extend_result1_3_upvr = arg1.logger:extend({
		method = "unload";
	})
	any_extend_result1_3_upvr:log("trace", "unload called")
	if arg1.unloadPromise then
		any_extend_result1_3_upvr:log("trace", "unload already in progress")
		return arg1.unloadPromise
	end
	arg1.closed = true
	arg1:stopAutosaving()
	any_extend_result1_3_upvr:log("trace", "queueing unload")
	arg1.unloadPromise = arg1.queue:add(function() -- Line 554
		--[[ Upvalues[2]:
			[1]: any_extend_result1_3_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_extend_result1_3_upvr:log("trace", "updating record before unloading")
		return arg1:updateRecord()
	end):andThenReturn(nil):finally(function() -- Line 559
		--[[ Upvalues[2]:
			[1]: any_extend_result1_3_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_extend_result1_3_upvr:log("trace", "releasing lock")
		return arg1.lockHandle.release():catch(function(arg1_16) -- Line 561
			--[[ Upvalues[1]:
				[1]: any_extend_result1_3_upvr (copied, readonly)
			]]
			local tbl = {}
			tbl.error = arg1_16
			any_extend_result1_3_upvr:log("warn", "failed to release lock", tbl)
		end)
	end)
	return arg1.unloadPromise
end
function module_3_upvr.get(arg1) -- Line 569
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve(arg1.frozenData)
end
local noYield_upvr = require(script.Parent.noYield)
function module_3_upvr.update(arg1, arg2) -- Line 573
	--[[ Upvalues[4]:
		[1]: t_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Tables_upvr (readonly)
		[4]: noYield_upvr (readonly)
	]]
	assert(t_upvr.callback(arg2))
	local any_extend_result1_6_upvr = arg1.logger:extend({
		method = "update";
	})
	any_extend_result1_6_upvr:log("trace", "update called")
	if arg1.closed then
		any_extend_result1_6_upvr:log("warn", "Session is closed, skipping update")
		return Promise_upvr.reject("Session is closed")
	end
	return Promise_upvr.new(function(arg1_17, arg2_2) -- Line 584
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_extend_result1_6_upvr (readonly)
			[3]: Tables_upvr (copied, readonly)
			[4]: noYield_upvr (copied, readonly)
			[5]: arg2 (readonly)
		]]
		while true do
			local var134
			if var134.txLockPromise == nil then break end
			var134 = arg1
			var134.txLockPromise:await()
		end
		any_extend_result1_6_upvr:log("trace", "updating key")
		var134 = arg1
		local data = var134.data
		var134 = Tables_upvr.copyDeep(data)
		local pcall_result1, pcall_result2_2 = pcall(noYield_upvr, arg2, var134)
		if not pcall_result1 then
			any_extend_result1_6_upvr:log("error", "transformFunction failed", {
				error = pcall_result2_2;
			})
			return arg2_2(`transformFunction failed: {pcall_result2_2}`)
		end
		if typeof(pcall_result2_2) ~= "boolean" then
			any_extend_result1_6_upvr:log("error", "transformFunction must return a boolean")
			return arg2_2("transformFunction must return a boolean")
		end
		if pcall_result2_2 == false then
			any_extend_result1_6_upvr:log("trace", "transformFunction returned false, skipping update")
			return arg1_17(false)
		end
		if arg1.ctx.disableReferenceProtection == false then
			var134 = Tables_upvr.copyDeep(var134)
		end
		local any_schema_result1, any_schema_result2 = arg1.ctx.schema(var134)
		if not any_schema_result1 then
			any_extend_result1_6_upvr:log("error", "schema validation failed", {
				error = any_schema_result2;
			})
			return arg2_2(`Store:update schema validation failed: {any_schema_result2}`)
		end
		if Tables_upvr.equalsDeep(var134, data) then
			return arg1_17(true)
		end
		arg1:mutateKey(var134)
		any_extend_result1_6_upvr:log("trace", "update succeeded")
		return arg1_17(true)
	end)
end
function module_3_upvr.save(arg1) -- Line 634
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local any_extend_result1_2_upvr = arg1.logger:extend({
		method = "save";
	})
	any_extend_result1_2_upvr:log("trace", "save called")
	if arg1.closed then
		any_extend_result1_2_upvr:log("warn", "Session is closed, skipping save")
		return Promise_upvr.reject("Session is closed")
	end
	if arg1:isSaved() then
		any_extend_result1_2_upvr:log("trace", "no changes, returning")
		return Promise_upvr.resolve()
	end
	any_extend_result1_2_upvr:log("trace", "queueing save")
	local clone_upvw = table.clone(arg1.changeSet)
	return arg1.queue:add(function() -- Line 650
		--[[ Upvalues[4]:
			[1]: any_extend_result1_2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: clone_upvw (read and write)
			[4]: Promise_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		any_extend_result1_2_upvr:log("trace", "save task running")
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 17. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 17. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 12. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.6]
		-- KONSTANTERROR: [13] 12. Error Block 2 end (CF ANALYSIS FAILED)
	end)
end
return module_3_upvr