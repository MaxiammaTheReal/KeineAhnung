-- Name: Files
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.Files
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6463772999995854 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:55
-- Luau version 6, Types version 3
-- Time taken: 0.004972 seconds

local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(script.Parent.Promise)
local dataStoreRetry_upvr = require(script.Parent.dataStoreRetry)
local splitUtf8String_upvr = require(script.Parent.splitUtf8String)
local Tables_upvr = require(script.Parent.Tables)
return {
	isLargeFile = function(arg1) -- Line 11, Named "isLargeFile"
		local var4
		if arg1.shard == nil then
			var4 = false
		else
			var4 = true
		end
		return var4
	end;
	write = function(arg1) -- Line 27, Named "write"
		--[[ Upvalues[5]:
			[1]: HttpService_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: splitUtf8String_upvr (readonly)
			[4]: Tables_upvr (readonly)
			[5]: dataStoreRetry_upvr (readonly)
		]]
		local any_JSONEncode_result1 = HttpService_upvr:JSONEncode(arg1.data)
		if #any_JSONEncode_result1 <= arg1.maxShardSize then
			return Promise_upvr.resolve({
				data = arg1.data;
			})
		end
		local splitUtf8String_upvr_result1 = splitUtf8String_upvr(HttpService_upvr:JSONEncode(buffer.fromstring(any_JSONEncode_result1)), arg1.maxShardSize)
		local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
		local module_upvr = {
			shard = any_GenerateGUID_result1_upvr;
			count = #splitUtf8String_upvr_result1;
		}
		return Promise_upvr.all(Tables_upvr.map(splitUtf8String_upvr_result1, function(arg1_2, arg2) -- Line 39
			--[[ Upvalues[3]:
				[1]: dataStoreRetry_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: any_GenerateGUID_result1_upvr (readonly)
			]]
			return dataStoreRetry_upvr(function() -- Line 40
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: any_GenerateGUID_result1_upvr (copied, readonly)
					[3]: arg2 (readonly)
					[4]: arg1_2 (readonly)
				]]
				return arg1.store:SetAsync(`{any_GenerateGUID_result1_upvr}-{arg2}`, arg1_2, arg1.userIds)
			end)
		end)):andThenReturn(module_upvr):catch(function(arg1_3) -- Line 45
			--[[ Upvalues[2]:
				[1]: Promise_upvr (copied, readonly)
				[2]: module_upvr (readonly)
			]]
			return Promise_upvr.reject({
				error = `Failed to write file: {arg1_3}`;
				file = module_upvr;
			})
		end)
	end;
	read = function(arg1) -- Line 58, Named "read"
		--[[ Upvalues[3]:
			[1]: Promise_upvr (readonly)
			[2]: dataStoreRetry_upvr (readonly)
			[3]: HttpService_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var20_upvr
		if arg1.file.shard == nil then
			var20_upvr = false
		else
			var20_upvr = true
		end
		if not var20_upvr then
			var20_upvr = Promise_upvr.resolve(arg1.file.data)
			return var20_upvr
		end
		var20_upvr = arg1.file.shard
		for i_upvr = 1, arg1.file.count do
			table.insert({}, dataStoreRetry_upvr(function() -- Line 70
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: var20_upvr (readonly)
					[3]: i_upvr (readonly)
				]]
				return arg1.store:GetAsync(`{var20_upvr}-{i_upvr}`)
			end))
			local var23
		end
		return Promise_upvr.all(var23):andThen(function(arg1_4) -- Line 77
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: var20_upvr (readonly)
				[4]: HttpService_upvr (copied, readonly)
			]]
			for i_2 = 1, arg1.file.count do
				if arg1_4[i_2] == nil then
					return Promise_upvr.reject(`Missing shard {i_2} for file {var20_upvr}`)
				end
			end
			local pcall_result1, pcall_result2 = pcall(function() -- Line 84
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg1_4 (readonly)
				]]
				return HttpService_upvr:JSONDecode(table.concat(arg1_4))
			end)
			if pcall_result1 then
				i_2 = pcall_result2
				return i_2
			end
			return Promise_upvr.reject(`Error decoding file: {pcall_result2}`)
		end):andThen(function(arg1_5) -- Line 89
			--[[ Upvalues[1]:
				[1]: HttpService_upvr (copied, readonly)
			]]
			return HttpService_upvr:JSONDecode(buffer.tostring(arg1_5))
		end)
	end;
}