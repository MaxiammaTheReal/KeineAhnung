-- Name: withKeys
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Dictionary.withKeys
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0254817999957595 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:43
-- Luau version 6, Types version 3
-- Time taken: 0.001029 seconds

return function(arg1, ...) -- Line 19, Named "withKeys"
	local module = {}
	for _, v in ipairs({...}) do
		module[v] = arg1[v]
	end
	return module
end