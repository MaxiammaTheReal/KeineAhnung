-- Name: Data
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Data
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6418182999987039 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:42
-- Luau version 6, Types version 3
-- Time taken: 0.005738 seconds

local Promise_upvr = require(script.Parent.Parent.Promise)
local module_upvr = {}
module_upvr.__index = module_upvr
local Throttle_upvr = require(script.Throttle)
function module_upvr.new(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: Throttle_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = Throttle_upvr.new(arg1)
	any_new_result1:start()
	local module_2 = {}
	module_2.config = arg1
	module_2.throttle = any_new_result1
	module_2.ongoingSaves = {}
	return setmetatable(module_2, module_upvr)
end
function module_upvr.waitForOngoingSave(arg1, arg2, arg3) -- Line 20
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local var6
	if arg1.ongoingSaves[arg2] == nil or arg1.ongoingSaves[arg2][arg3] == nil then
		return Promise_upvr.resolve()
	end
	local var7 = arg1.ongoingSaves[arg2][arg3]
	local module_4 = {}
	if var7.pendingSave ~= nil then
		var6 = var7.pendingSave.promise
	else
		var6 = nil
	end
	module_4[1] = var7.promise
	module_4[2] = var6
	return Promise_upvr.allSettled(module_4)
end
function module_upvr.waitForOngoingSaves(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local module = {}
	for _, v in arg1.ongoingSaves do
		for _, v_2 in v do
			if v_2.pendingSave ~= nil then
				table.insert(module, v_2.pendingSave.promise)
			end
			table.insert(module, v_2.promise)
		end
	end
	return Promise_upvr.allSettled(module)
end
function module_upvr.read(arg1, arg2, arg3) -- Line 49
	return arg1.throttle:getAsync(arg2, arg3)
end
function module_upvr.load(arg1, arg2, arg3, arg4) -- Line 53
	return arg1:waitForOngoingSave(arg2, arg3):andThen(function() -- Line 54
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
		]]
		return arg1.throttle:updateAsync(arg2, arg3, arg4, true, arg1.config:get("loadAttempts"), arg1.config:get("loadRetryDelay"))
	end)
end
local function save(arg1, arg2, arg3, arg4) -- Line 62
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	if arg1.ongoingSaves[arg2] == nil then
		arg1.ongoingSaves[arg2] = {}
	end
	local var15 = arg1.ongoingSaves[arg2][arg3]
	if var15 == nil then
		local any_finally_result1 = arg1.throttle:updateAsync(arg2, arg3, arg4, false, arg1.config:get("saveAttempts")):finally(function() -- Line 71
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			arg1.ongoingSaves[arg2][arg3] = nil
			if next(arg1.ongoingSaves[arg2]) == nil then
				arg1.ongoingSaves[arg2] = nil
			end
		end)
		if any_finally_result1:getStatus() == Promise_upvr.Status.Started then
			arg1.ongoingSaves[arg2][arg3] = {
				promise = any_finally_result1;
			}
		end
		return any_finally_result1
	end
	if var15.pendingSave == nil then
		local module_3_upvr = {}
		module_3_upvr.transform = arg4
		local function save() -- Line 87
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: module_3_upvr (readonly)
			]]
			return arg1:save(arg2, arg3, module_3_upvr.transform)
		end
		module_3_upvr.promise = var15.promise:andThen(save, save)
		var15.pendingSave = module_3_upvr
		return module_3_upvr.promise
	end
	module_3_upvr = var15.pendingSave
	module_3_upvr.transform = arg4
	module_3_upvr = var15.pendingSave.promise
	return module_3_upvr
end
module_upvr.save = save
local Error_upvr = require(script.Parent.Error)
function module_upvr.removeLock(arg1, arg2, arg3, arg4) -- Line 104
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	return arg1.throttle:updateAsync(arg2, arg3, function(arg1_2, arg2_2) -- Line 105, Named "transform"
		--[[ Upvalues[2]:
			[1]: Error_upvr (copied, readonly)
			[2]: arg4 (readonly)
		]]
		if arg1_2 == nil then
			return "fail", Error_upvr.new("DocumentRemoved", "The document was removed")
		end
		if arg1_2.lockId ~= arg4 then
			return "fail", Error_upvr.new("SessionLockStolen", "The session lock was stolen")
		end
		arg1_2.lockId = nil
		return "succeed", arg1_2, arg2_2:GetUserIds(), arg2_2:GetMetadata()
	end, false, arg1.config:get("saveAttempts"))
end
function module_upvr.remove(arg1, arg2, arg3) -- Line 124
	return arg1.throttle:removeAsync(arg2, arg3)
end
return module_upvr