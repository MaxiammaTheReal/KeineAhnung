-- Name: Collection
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Collection
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7241662000014912 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:41
-- Luau version 6, Types version 3
-- Time taken: 0.015195 seconds

local freezeDeep_upvr = require(script.Parent.freezeDeep)
local Migration_upvr = require(script.Parent.Migration)
local Promise_upvr = require(script.Parent.Parent.Promise)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 20
	--[[ Upvalues[2]:
		[1]: freezeDeep_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var9
	if typeof(arg2.defaultData) ~= "function" and arg2.validate ~= nil then
		var9 = arg2.validate(arg2.defaultData)
		assert(var9)
	end
	var9 = arg2.migrations
	if var9 ~= nil then
		var9 = arg2.migrations
		for _, v in var9 do
			if typeof(v) == "function" then
				table.insert({}, {
					migrate = v;
				})
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, v)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg2.migrations = {}
	if arg2.freezeData ~= nil then
		var9 = arg2.freezeData
	else
		var9 = true
	end
	arg2.freezeData = var9
	var9 = freezeDeep_upvr
	var9(arg2)
	local tbl = {
		dataStore = arg5:get("dataStoreService"):GetDataStore(arg1);
	}
	tbl.options = arg2
	tbl.data = arg3
	tbl.autoSave = arg4
	var9 = setmetatable(tbl, module_upvr)
	return var9
end
local HttpService_upvr = game:GetService("HttpService")
local Error_upvr = require(script.Parent.Error)
local copyDeep_upvr = require(script.Parent.copyDeep)
local Document_upvr = require(script.Parent.Document)
function module_upvr.load(arg1, arg2, arg3) -- Line 59
	--[[ Upvalues[7]:
		[1]: Promise_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Error_upvr (readonly)
		[4]: copyDeep_upvr (readonly)
		[5]: Migration_upvr (readonly)
		[6]: freezeDeep_upvr (readonly)
		[7]: Document_upvr (readonly)
	]]
	if arg1.autoSave.gameClosed then
		return Promise_upvr.new(function() -- Line 62
		end)
	end
	local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
	local autoSave_3 = arg1.autoSave
	autoSave_3.ongoingLoads += 1
	return arg1.data:load(arg1.dataStore, arg2, function(arg1_2, arg2_2) -- Line 70
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Error_upvr (copied, readonly)
			[4]: copyDeep_upvr (copied, readonly)
			[5]: Migration_upvr (copied, readonly)
			[6]: any_GenerateGUID_result1_upvr (readonly)
			[7]: arg3 (readonly)
		]]
		if arg1_2 == nil then
			local var20
			if typeof(arg1.options.defaultData) == "function" then
				local pcall_result1_3, pcall_result2 = pcall(arg1.options.defaultData, arg2)
				if not pcall_result1_3 then
					return "fail", Error_upvr.new("DefaultDataThrew", `'defaultData' threw an error: {pcall_result2}`)
				end
				if arg1.options.validate ~= nil then
					local pcall_result1_2, pcall_result2_2, pcall_result3_2 = pcall(arg1.options.validate, pcall_result2)
					if not pcall_result1_2 then
						return "fail", Error_upvr.new("ValidateThrew", `'validate' threw an error: {pcall_result2_2}`)
					end
					if not pcall_result2_2 then
						return "fail", Error_upvr.new("ValidateFailed", `Invalid data: {pcall_result3_2}`)
					end
				end
				var20 = copyDeep_upvr(pcall_result2)
			elseif arg1.options.freezeData then
				var20 = arg1.options.defaultData
			else
				var20 = copyDeep_upvr(arg1.options.defaultData)
			end
			return "succeed", {
				migrationVersion = #arg1.options.migrations;
				lastCompatibleVersion = Migration_upvr.getLastCompatibleVersion(arg1.options.migrations);
				lockId = any_GenerateGUID_result1_upvr;
				data = var20;
			}, arg3
		end
		if arg1_2.lockId ~= nil and (DateTime.now().UnixTimestampMillis - arg2_2.UpdatedTime) / 1000 < 1800 then
			return "retry", Error_upvr.new("SessionLocked", "Could not acquire lock")
		end
		local any_migrate_result1_2, any_migrate_result2, any_migrate_result3 = Migration_upvr.migrate(arg1.options.migrations, arg1_2, arg2)
		if not any_migrate_result1_2 then
			return "fail", Error_upvr.new("MigrationError", any_migrate_result2)
		end
		if arg1.options.validate ~= nil then
			local pcall_result1_4, pcall_result2_3, pcall_result3_3 = pcall(arg1.options.validate, any_migrate_result2)
			if not pcall_result1_4 then
				return "fail", Error_upvr.new("ValidateThrew", `'validate' threw an error: {pcall_result2_3}`)
			end
			if not pcall_result2_3 then
				return "fail", Error_upvr.new("ValidateFailed", `Invalid data: {pcall_result3_3}`)
			end
		end
		return "succeed", {
			migrationVersion = math.max(arg1_2.migrationVersion, #arg1.options.migrations);
			lastCompatibleVersion = any_migrate_result3;
			lockId = any_GenerateGUID_result1_upvr;
			data = any_migrate_result2;
		}, arg2_2:GetUserIds(), arg2_2:GetMetadata()
	end):andThen(function(arg1_3, arg2_3) -- Line 139
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: freezeDeep_upvr (copied, readonly)
			[4]: Document_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: any_GenerateGUID_result1_upvr (readonly)
		]]
		if arg1_3 == "cancelled" then
			local autoSave = arg1.autoSave
			autoSave.ongoingLoads -= 1
			return Promise_upvr.new(function() -- Line 144
			end)
		end
		local data = arg1_3.data
		if arg1.options.freezeData then
			freezeDeep_upvr(data)
		end
		local any_new_result1 = Document_upvr.new(arg1, arg2, arg1.options.validate, any_GenerateGUID_result1_upvr, data, arg2_3)
		arg1.autoSave:finishLoad(any_new_result1)
		if arg1.autoSave.gameClosed then
			return Promise_upvr.new(function() -- Line 159
			end)
		end
		arg1.autoSave:addDocument(any_new_result1)
		return any_new_result1
	end):catch(function(arg1_4) -- Line 166
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		local autoSave_2 = arg1.autoSave
		autoSave_2.ongoingLoads -= 1
		return Promise_upvr.reject(`DataStoreFailure({arg1_4.message})`)
	end)
end
function module_upvr.read(arg1, arg2) -- Line 184
	--[[ Upvalues[2]:
		[1]: Migration_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return arg1.data:read(arg1.dataStore, arg2):andThen(function(arg1_5, arg2_4) -- Line 185
		--[[ Upvalues[4]:
			[1]: Migration_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: Promise_upvr (copied, readonly)
		]]
		if arg1_5 == nil then
			return nil
		end
		local any_migrate_result1, any_migrate_result2_2 = Migration_upvr.migrate(arg1.options.migrations, arg1_5, arg2)
		if not any_migrate_result1 then
			return Promise_upvr.reject(any_migrate_result2_2)
		end
		if arg1.options.validate ~= nil then
			local pcall_result1, pcall_result2_4, pcall_result3 = pcall(arg1.options.validate, any_migrate_result2_2)
			if not pcall_result1 then
				return Promise_upvr.reject(`'validate' threw an error: {pcall_result2_4}`)
			end
			if not pcall_result2_4 then
				return Promise_upvr.reject(`Invalid data: {pcall_result3}`)
			end
		end
		return arg1_5.data, arg2_4
	end)
end
function module_upvr.remove(arg1, arg2) -- Line 216
	return arg1.data:remove(arg1.dataStore, arg2)
end
return module_upvr