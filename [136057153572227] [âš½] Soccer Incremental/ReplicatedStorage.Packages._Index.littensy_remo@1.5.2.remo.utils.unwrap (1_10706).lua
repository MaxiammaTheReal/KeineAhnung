-- Name: unwrap
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.unwrap
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6382859000004828 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:49
-- Luau version 6, Types version 3
-- Time taken: 0.000604 seconds

local Promise_upvr = require(script.Parent.Parent.Promise)
return function(...) -- Line 5, Named "unwrap"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	if Promise_upvr.is(...) then
		return ...:expect()
	end
	return ...
end