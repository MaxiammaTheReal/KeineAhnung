-- Name: PromiseQueue
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.PromiseQueue
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5509152000013273 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:02
-- Luau version 6, Types version 3
-- Time taken: 0.006809 seconds

local Promise_upvr = require(script.Parent.Promise)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		_queue = {};
		_logger = arg1.logger;
		_totalItemCount = 0;
	}, module_upvr)
end
function module_upvr.add(arg1, arg2) -- Line 51
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local call_stack_upvr = debug.traceback(nil, 2)
	return Promise_upvr.new(function(arg1_2, arg2_2, arg3) -- Line 53
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: call_stack_upvr (readonly)
		]]
		local var6 = arg1
		var6._totalItemCount += 1
		local tbl_upvr = {
			id = arg1._totalItemCount;
		}
		tbl_upvr.fn = arg2
		tbl_upvr.resolve = arg1_2
		tbl_upvr.reject = arg2_2
		tbl_upvr.trace = call_stack_upvr
		table.insert(arg1._queue, tbl_upvr)
		arg1._logger:log("trace", "added item to queue", arg1:_getLogContext())
		arg3(function() -- Line 67
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			local table_find_result1 = table.find(arg1._queue, tbl_upvr)
			if table_find_result1 then
				table.remove(arg1._queue, table_find_result1)
			end
		end)
		if #arg1._queue == 1 then
			task.spawn(function() -- Line 75
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:_processQueue()
			end)
		end
	end)
end
function module_upvr._processQueue(arg1) -- Line 82
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	arg1._logger:log("trace", "processing queue", arg1:_getLogContext())
	while 0 < #arg1._queue do
		local _1_upvr = arg1._queue[1]
		arg1._logger:log("trace", "processing queue item", arg1:_getLogContext(_1_upvr))
		local task_delay_result1_upvr = task.delay(60, function() -- Line 87
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: _1_upvr (readonly)
			]]
			local any__getLogContext_result1_2 = arg1:_getLogContext(_1_upvr)
			any__getLogContext_result1_2.trace = _1_upvr.trace
			arg1._logger:log("warn", "queue item taking > 60s", any__getLogContext_result1_2)
		end)
		Promise_upvr.try(_1_upvr.fn):timeout(60):andThen(_1_upvr.resolve, function(arg1_3) -- Line 96
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: _1_upvr (readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			local any__getLogContext_result1 = arg1:_getLogContext(_1_upvr)
			any__getLogContext_result1.error = arg1_3
			any__getLogContext_result1.trace = _1_upvr.trace
			local var16
			if Promise_upvr.Error.isKind(arg1_3, Promise_upvr.Error.Kind.TimedOut) then
				var16 = "queue item timed out"
			else
				var16 = "queue item failed"
			end
			arg1._logger:log("debug", var16, any__getLogContext_result1)
			_1_upvr.reject(`Queue item failed: {arg1_3}\nCreated at:\n{_1_upvr.trace}`)
		end):finally(function() -- Line 111
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: _1_upvr (readonly)
				[3]: task_delay_result1_upvr (readonly)
			]]
			arg1._logger:log("trace", "finished processing queue item", arg1:_getLogContext(_1_upvr))
			if arg1._queue[1] == _1_upvr then
				table.remove(arg1._queue, 1)
			end
			task.cancel(task_delay_result1_upvr)
		end):await()
	end
end
local function addResumableBlock_upvr(arg1) -- Line 126, Named "addResumableBlock"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_4) -- Line 127
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		arg1:add(function() -- Line 128
			--[[ Upvalues[2]:
				[1]: Promise_upvr (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			return Promise_upvr.new(function(arg1_5) -- Line 129
				--[[ Upvalues[1]:
					[1]: arg1_4 (copied, readonly)
				]]
				arg1_4(arg1_5)
			end)
		end)
	end)
end
module_upvr._addResumableBlock = addResumableBlock_upvr
local Tables_upvr = require(script.Parent.Tables)
function module_upvr.multiQueueAdd(arg1, arg2) -- Line 137
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: Tables_upvr (readonly)
		[3]: addResumableBlock_upvr (readonly)
	]]
	local call_stack_upvr_2 = debug.traceback(nil, 2)
	return Promise_upvr.new(function(arg1_6, arg2_3) -- Line 139
		--[[ Upvalues[6]:
			[1]: Tables_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: addResumableBlock_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: call_stack_upvr_2 (readonly)
		]]
		Promise_upvr.all(Tables_upvr.map(arg1, addResumableBlock_upvr)):andThen(function(arg1_7) -- Line 142
			--[[ Upvalues[5]:
				[1]: Promise_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1_6 (readonly)
				[4]: arg2_3 (readonly)
				[5]: call_stack_upvr_2 (copied, readonly)
			]]
			Promise_upvr.try(arg2):andThen(arg1_6, function(arg1_8) -- Line 144
				--[[ Upvalues[2]:
					[1]: arg2_3 (copied, readonly)
					[2]: call_stack_upvr_2 (copied, readonly)
				]]
				arg2_3(`multiQueueAdd callback failed: {arg1_8}\nCreated at:\n{call_stack_upvr_2}`)
			end):finally(function() -- Line 147
				--[[ Upvalues[1]:
					[1]: arg1_7 (readonly)
				]]
				for _, v in arg1_7 do
					v()
				end
			end)
		end)
	end)
end
function module_upvr._getLogContext(arg1, arg2) -- Line 156
	local module = {
		queueLength = #arg1._queue;
		totalItems = arg1._totalItemCount;
	}
	local var31 = arg2
	if var31 then
		var31 = arg2.id
	end
	module.itemId = var31
	return module
end
return module_upvr