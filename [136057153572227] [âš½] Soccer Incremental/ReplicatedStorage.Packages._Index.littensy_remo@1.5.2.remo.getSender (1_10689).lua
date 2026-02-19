-- Name: getSender
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.getSender
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7669066000016755 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:36
-- Luau version 6, Types version 3
-- Time taken: 0.000799 seconds

local constants_upvr = require(script.Parent.constants)
return function(arg1) -- Line 3, Named "getSender"
	--[[ Upvalues[1]:
		[1]: constants_upvr (readonly)
	]]
	if constants_upvr.IS_SERVER and (type(arg1) == "table" or typeof(arg1) == "Instance") then
		if arg1.ClassName == "Player" then
			return arg1
		end
	end
	return nil
end