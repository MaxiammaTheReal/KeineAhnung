-- Name: mount
-- Path: game:GetService("ReplicatedStorage").Packages._Index.centau_vide@0.3.1.vide.mount
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0044284000032349 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:49
-- Luau version 6, Types version 3
-- Time taken: 0.000980 seconds

if not game then
	script = require("test/relative-string") -- Setting global
end
local root_upvr = require(script.Parent.root)
local apply_upvr = require(script.Parent.apply)
return function(arg1, arg2) -- Line 6, Named "mount"
	--[[ Upvalues[2]:
		[1]: root_upvr (readonly)
		[2]: apply_upvr (readonly)
	]]
	return root_upvr(function() -- Line 7
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: apply_upvr (copied, readonly)
		]]
		if arg2 then
			apply_upvr(arg2, {arg1()})
		end
	end)
end