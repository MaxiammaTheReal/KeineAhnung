-- Name: dedupe
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.dedupe
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5848025999948732 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:46
-- Luau version 6, Types version 3
-- Time taken: 0.000582 seconds

local toArray_upvr = require(script.Parent.Parent.Set.toArray)
local fromArray_upvr = require(script.Parent.Parent.Set.fromArray)
return function(arg1) -- Line 4, Named "dedupe"
	--[[ Upvalues[2]:
		[1]: toArray_upvr (readonly)
		[2]: fromArray_upvr (readonly)
	]]
	return toArray_upvr(fromArray_upvr(arg1))
end