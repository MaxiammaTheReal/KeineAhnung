-- Name: Document
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Document
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6632298999975319 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:44
-- Luau version 6, Types version 3
-- Time taken: 0.012134 seconds

local Error_upvr = require(script.Parent.Error)
local Promise_upvr = require(script.Parent.Parent.Promise)
local noYield_upvr = require(script.Parent.noYield)
local function runCallback_upvr(arg1, arg2, arg3) -- Line 6, Named "runCallback"
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: noYield_upvr (readonly)
		[3]: Error_upvr (readonly)
	]]
	if arg3 == nil then
		return Promise_upvr.resolve()
	end
	arg1.callingCallback = arg2
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 13
		--[[ Upvalues[5]:
			[1]: noYield_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: Error_upvr (copied, readonly)
			[5]: arg2 (readonly)
		]]
		local pcall_result1_3, pcall_result2_5 = pcall(noYield_upvr, arg3)
		arg1.callingCallback = nil
		if not pcall_result1_3 then
			arg2_2(Error_upvr.new("BeforeSaveCloseCallbackThrew", `{arg2} callback threw error: {pcall_result2_5}`))
		else
			arg1_2()
		end
	end)
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 32
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module.collection = arg1
	module.key = arg2
	module.validate = arg3
	module.lockId = arg4
	module.data = arg5
	module.userIds = arg6:GetUserIds()
	module.lastKeyInfo = arg6
	module.closed = false
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.read(arg1) -- Line 50
	return arg1.data
end
local freezeDeep_upvr = require(script.Parent.freezeDeep)
function module_2_upvr.write(arg1, arg2) -- Line 71
	--[[ Upvalues[1]:
		[1]: freezeDeep_upvr (readonly)
	]]
	assert(not arg1.closed, "Cannot write to a closed document")
	if arg1.validate ~= nil then
		assert(arg1.validate(arg2))
	end
	if arg1.collection.options.freezeData then
		freezeDeep_upvr(arg2)
	end
	arg1.data = arg2
end
function module_2_upvr.addUserId(arg1, arg2) -- Line 93
	assert(not arg1.closed, "Cannot add user id to a closed document")
	if table.find(arg1.userIds, arg2) == nil then
		table.insert(arg1.userIds, arg2)
	end
end
function module_2_upvr.removeUserId(arg1, arg2) -- Line 109
	assert(not arg1.closed, "Cannot remove user id from a closed document")
	local table_find_result1 = table.find(arg1.userIds, arg2)
	if table_find_result1 ~= nil then
		table.remove(arg1.userIds, table_find_result1)
	end
end
function module_2_upvr.keyInfo(arg1) -- Line 124
	return arg1.lastKeyInfo
end
function module_2_upvr.save(arg1) -- Line 145
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: noYield_upvr (readonly)
		[3]: Error_upvr (readonly)
	]]
	local var11 = not arg1.closed
	assert(var11, "Cannot save a closed document")
	local var12
	if arg1.callingCallback ~= nil then
		var11 = false
	else
		var11 = true
	end
	var12 = assert
	var12(var11, `Cannot save in {arg1.callingCallback} callback`)
	local beforeSaveCallback_upvr = arg1.beforeSaveCallback
	if beforeSaveCallback_upvr == nil then
		var12 = Promise_upvr.resolve()
	else
		arg1.callingCallback = "beforeSave"
		local const_string_upvr = "beforeSave"
		var12 = Promise_upvr.new(function(arg1_3, arg2) -- Line 13
			--[[ Upvalues[5]:
				[1]: noYield_upvr (copied, readonly)
				[2]: beforeSaveCallback_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: Error_upvr (copied, readonly)
				[5]: const_string_upvr (readonly)
			]]
			local pcall_result1_2, pcall_result2_3 = pcall(noYield_upvr, beforeSaveCallback_upvr)
			arg1.callingCallback = nil
			if not pcall_result1_2 then
				arg2(Error_upvr.new("BeforeSaveCloseCallbackThrew", `{const_string_upvr} callback threw error: {pcall_result2_3}`))
			else
				arg1_3()
			end
		end)
	end
	var12 = var12:andThen(function() -- Line 150
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Error_upvr (copied, readonly)
		]]
		return arg1.collection.data:save(arg1.collection.dataStore, arg1.key, function(arg1_4, arg2) -- Line 152
			--[[ Upvalues[2]:
				[1]: Error_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			if arg1_4 == nil then
				return "fail", Error_upvr.new("DocumentRemoved", "The document was removed")
			end
			if arg1_4.lockId ~= arg1.lockId then
				return "fail", Error_upvr.new("SessionLockStolen", "The session lock was stolen")
			end
			if not arg1.collection.options.freezeData and arg1.validate ~= nil then
				local pcall_result1_4, pcall_result2_4, pcall_result3 = pcall(arg1.validate, arg1.data)
				if not pcall_result1_4 then
					return "fail", Error_upvr.new("ValidateThrew", `'validate' threw an error: {pcall_result2_4}`)
				end
				if not pcall_result2_4 then
					return "fail", Error_upvr.new("ValidateFailed", `Invalid data: {pcall_result3}`)
				end
			end
			arg1_4.data = arg1.data
			return "succeed", arg1_4, arg1.userIds, arg2:GetMetadata()
		end):andThen(function(arg1_5, arg2) -- Line 174
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.lastKeyInfo = arg2
		end)
	end)
	var12 = var12:catch(function(arg1_6) -- Line 178
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(`DataStoreFailure({arg1_6.message})`)
	end)
	return var12
end
function module_2_upvr.close(arg1) -- Line 195
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: noYield_upvr (readonly)
		[3]: Error_upvr (readonly)
		[4]: runCallback_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25_upvr
	if arg1.callingCallback ~= nil then
		var25_upvr = false
	else
		var25_upvr = true
	end
	assert(var25_upvr, `Cannot close in {arg1.callingCallback} callback`)
	if arg1.closePromise == nil then
		var25_upvr = arg1.beforeSaveCallback
		if var25_upvr == nil then
		else
			arg1.callingCallback = "beforeSave"
			local var27_upvr = "beforeSave"
		end
		var27_upvr = "beforeClose"
		arg1.closePromise = Promise_upvr.new(function(arg1_7, arg2) -- Line 13
			--[[ Upvalues[5]:
				[1]: noYield_upvr (copied, readonly)
				[2]: var25_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: Error_upvr (copied, readonly)
				[5]: var27_upvr (readonly)
			]]
			local pcall_result1_5, pcall_result2 = pcall(noYield_upvr, var25_upvr)
			arg1.callingCallback = nil
			if not pcall_result1_5 then
				arg2(Error_upvr.new("BeforeSaveCloseCallbackThrew", `{var27_upvr} callback threw error: {pcall_result2}`))
			else
				arg1_7()
			end
		end):andThenCall(runCallback_upvr, arg1, var27_upvr, arg1.beforeCloseCallback):finally(function() -- Line 201
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.closed = true
			arg1.collection.autoSave:removeDocument(arg1)
		end):andThen(function() -- Line 206
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Error_upvr (copied, readonly)
			]]
			return arg1.collection.data:save(arg1.collection.dataStore, arg1.key, function(arg1_8, arg2) -- Line 207
				--[[ Upvalues[2]:
					[1]: Error_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				if arg1_8 == nil then
					return "fail", Error_upvr.new("DocumentRemoved", "The document was removed")
				end
				if arg1_8.lockId ~= arg1.lockId then
					return "fail", Error_upvr.new("SessionLockStolen", "The session lock was stolen")
				end
				if not arg1.collection.options.freezeData and arg1.validate ~= nil then
					local pcall_result1, pcall_result2_2, pcall_result3_2 = pcall(arg1.validate, arg1.data)
					if not pcall_result1 then
						return "fail", Error_upvr.new("ValidateThrew", `'validate' threw an error: {pcall_result2_2}`)
					end
					if not pcall_result2_2 then
						return "fail", Error_upvr.new("ValidateFailed", `Invalid data: {pcall_result3_2}`)
					end
				end
				arg1_8.data = arg1.data
				arg1_8.lockId = nil
				return "succeed", arg1_8, arg1.userIds, arg2:GetMetadata()
			end)
		end):andThen(function(arg1_9, arg2) -- Line 231
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.lastKeyInfo = arg2
		end):catch(function(arg1_10) -- Line 234
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			if arg1_10.kind == "BeforeSaveCloseCallbackThrew" or arg1_10.kind == "ValidateThrew" or arg1_10.kind == "ValidateFailed" then
				local autoSave = arg1.collection.autoSave
				autoSave.ongoingRemoveLocks += 1
				arg1.collection.data:removeLock(arg1.collection.dataStore, arg1.key, arg1.lockId):catch(function(arg1_11) -- Line 244
					warn(`RemoveLockFailure({arg1_11.message})`)
				end):finally(function() -- Line 247
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					local autoSave_2 = arg1.collection.autoSave
					autoSave_2.ongoingRemoveLocks -= 1
				end)
			end
			return Promise_upvr.reject(`DataStoreFailure({arg1_10.message})`)
		end)
	end
	return arg1.closePromise
end
function module_2_upvr.beforeSave(arg1, arg2) -- Line 271
	local var42
	if arg1.beforeSaveCallback ~= nil then
		var42 = false
	else
		var42 = true
	end
	assert(var42, "Document:beforeSave can only be called once")
	arg1.beforeSaveCallback = arg2
end
function module_2_upvr.beforeClose(arg1, arg2) -- Line 287
	local var43
	if arg1.beforeCloseCallback ~= nil then
		var43 = false
	else
		var43 = true
	end
	assert(var43, "Document:beforeClose can only be called once")
	arg1.beforeCloseCallback = arg2
end
return module_2_upvr