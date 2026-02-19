-- Name: PlayerStore
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.PlayerStore
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7381352000011248 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:01
-- Luau version 6, Types version 3
-- Time taken: 0.008751 seconds

local function _(arg1) -- Line 112, Named "getUserIdKey"
	return tostring(arg1.UserId)
end
local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
local Store_upvr = require(script.Parent.Store)
local Players_upvr = game:GetService("Players")
function tbl_3_upvr._kickPlayer(arg1, arg2, arg3) -- Line 179
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if typeof(arg2) ~= "string" then
		arg2:Kick(arg3)
	else
		local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(tonumber(arg2))
		if any_GetPlayerByUserId_result1 ~= nil then
			any_GetPlayerByUserId_result1:Kick(arg3)
		end
	end
end
function tbl_3_upvr.get(arg1, arg2) -- Line 204
	return arg1._store:get(tostring(arg2.UserId))
end
function tbl_3_upvr.getAsync(arg1, arg2) -- Line 214
	return arg1:get(arg2):expect()
end
local Promise_upvr = require(script.Parent.Promise)
function tbl_3_upvr.load(arg1, arg2) -- Line 236
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return arg1._store:load(tostring(arg2.UserId), {arg2.UserId}):catch(function(arg1_3) -- Line 238
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		arg1:_kickPlayer(arg2, "DataStore load failed, please rejoin the game.")
		return Promise_upvr.reject(arg1_3)
	end)
end
function tbl_3_upvr.loadAsync(arg1, arg2) -- Line 249
	return arg1:load(arg2):expect()
end
function tbl_3_upvr.unload(arg1, arg2) -- Line 266
	return arg1._store:unload(tostring(arg2.UserId))
end
function tbl_3_upvr.unloadAsync(arg1, arg2) -- Line 276
	return arg1:unload(arg2):expect()
end
function tbl_3_upvr.update(arg1, arg2, arg3) -- Line 300
	return arg1._store:update(tostring(arg2.UserId), arg3)
end
function tbl_3_upvr.updateAsync(arg1, arg2, arg3) -- Line 310
	return arg1:update(arg2, arg3):expect()
end
function tbl_3_upvr.tx(arg1, arg2, arg3) -- Line 336
	local table_create_result1 = table.create(#arg2)
	local tbl_upvr = {}
	for i, v in arg2 do
		local tostring_result1 = tostring(v.UserId)
		table_create_result1[i] = tostring_result1
		tbl_upvr[tostring_result1] = v
	end
	return arg1._store:tx(table_create_result1, function(arg1_4) -- Line 345, Named "wrapped"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: arg3 (readonly)
		]]
		local tbl_2 = {}
		for i_2, v_2 in arg1_4 do
			tbl_2[tbl_upvr[i_2]] = v_2
		end
		local arg3_result1 = arg3(tbl_2)
		if arg3_result1 == false then
			return false
		end
		for i_3 in arg1_4 do
			arg1_4[i_3] = nil
		end
		for i_4, v_3 in tbl_2 do
			arg1_4[tostring(i_4.UserId)] = v_3
		end
		return arg3_result1
	end)
end
function tbl_3_upvr.txAsync(arg1, arg2, arg3) -- Line 377
	return arg1:tx(arg2, arg3):expect()
end
function tbl_3_upvr.save(arg1, arg2) -- Line 393
	return arg1._store:save(tostring(arg2.UserId))
end
function tbl_3_upvr.saveAsync(arg1, arg2) -- Line 403
	return arg1:save(arg2):expect()
end
function tbl_3_upvr.close(arg1) -- Line 414
	return arg1._store:close()
end
function tbl_3_upvr.closeAsync(arg1) -- Line 423
	return arg1:close():expect()
end
function tbl_3_upvr.peek(arg1, arg2) -- Line 439
	return arg1._store:peek(tostring(arg2))
end
function tbl_3_upvr.peekAsync(arg1, arg2) -- Line 449
	return arg1:peek(arg2):expect()
end
return {
	createPlayerStore = function(arg1) -- Line 149, Named "createPlayerStore"
		--[[ Upvalues[2]:
			[1]: Store_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		local tbl = {
			name = arg1.name;
			template = arg1.template;
			schema = arg1.schema;
			migrationSteps = arg1.migrationSteps;
			importLegacyData = arg1.importLegacyData;
			changedCallbacks = arg1.changedCallbacks;
			logCallback = arg1.logCallback;
		}
		local var4_upvw
		function tbl.onLockLost(arg1_2) -- Line 160
			--[[ Upvalues[1]:
				[1]: var4_upvw (read and write)
			]]
			var4_upvw:_kickPlayer(arg1_2, "DataStore lock lost, please rejoin the game.")
		end
		tbl.memoryStoreService = arg1.memoryStoreService
		tbl.dataStoreService = arg1.dataStoreService
		tbl.disableReferenceProtection = arg1.disableReferenceProtection
		var4_upvw = setmetatable({
			_store = Store_upvr.createStore(tbl);
		}, tbl_3_upvr)
		return var4_upvw
	end;
}