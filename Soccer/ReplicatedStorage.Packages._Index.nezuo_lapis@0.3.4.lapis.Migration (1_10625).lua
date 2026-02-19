-- Name: Migration
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Migration
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.729647299995122 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:47
-- Luau version 6, Types version 3
-- Time taken: 0.002739 seconds

local module_upvr = {
	getLastCompatibleVersion = function(arg1) -- Line 3, Named "getLastCompatibleVersion"
		for i = #arg1, 1, -1 do
			if arg1[i].backwardsCompatible ~= true then
				return i
			end
		end
		return 0
	end;
}
function module_upvr.migrate(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local len = #arg1
	local migrationVersion = arg2.migrationVersion
	local data = arg2.data
	local lastCompatibleVersion = arg2.lastCompatibleVersion
	if migrationVersion < len then
		for i_2 = migrationVersion + 1, #arg1 do
			local pcall_result1, pcall_result2 = pcall(arg1[i_2].migrate, data, arg3)
			if not pcall_result1 then
				return false, `Migration {i_2} threw an error: {pcall_result2}`
			end
			if pcall_result2 == nil then
				return false, `Migration {i_2} returned 'nil'`
			end
			data = pcall_result2
		end
		lastCompatibleVersion = module_upvr.getLastCompatibleVersion(arg1)
	elseif len < migrationVersion and (lastCompatibleVersion == nil or len < lastCompatibleVersion) then
		i_2 = `Saved migration version {migrationVersion} is not backwards compatible with version {len}`
		return false, i_2
	end
	return true, data, lastCompatibleVersion
end
return module_upvr