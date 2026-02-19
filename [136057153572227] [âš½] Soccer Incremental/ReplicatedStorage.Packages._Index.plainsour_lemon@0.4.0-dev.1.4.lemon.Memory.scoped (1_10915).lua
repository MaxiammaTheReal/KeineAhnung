-- Name: scoped
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon.Memory.scoped
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.975399799994193 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.000884 seconds

local Parent = script.Parent.Parent
local merge_upvr = require(Parent.Utility.merge)
local ExternalDebug_upvr = require(Parent.ExternalDebug)
return function(...) -- Line 15, Named "scoped"
	--[[ Upvalues[2]:
		[1]: merge_upvr (readonly)
		[2]: ExternalDebug_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, {
		__index = merge_upvr(false, {}, ...);
	})
	ExternalDebug_upvr.trackScope(setmetatable_result1)
	return setmetatable_result1
end