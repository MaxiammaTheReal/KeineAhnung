-- Name: Config
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.Config
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6796393999975407 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:41
-- Luau version 6, Types version 3
-- Time taken: 0.001495 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local DataStoreService_upvr = game:GetService("DataStoreService")
function module_upvr.new() -- Line 6
	--[[ Upvalues[2]:
		[1]: DataStoreService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		config = {
			saveAttempts = 5;
			loadAttempts = 20;
			loadRetryDelay = 1;
			showRetryWarnings = true;
			dataStoreService = DataStoreService_upvr;
		};
	}, module_upvr)
end
function module_upvr.get(arg1, arg2) -- Line 18
	return arg1.config[arg2]
end
function module_upvr.set(arg1, arg2) -- Line 22
	for i, v in arg2 do
		if arg1.config[i] == nil then
			error(`Invalid config key "{tostring(i)}"`)
		end
		arg1.config[i] = v
	end
end
return module_upvr