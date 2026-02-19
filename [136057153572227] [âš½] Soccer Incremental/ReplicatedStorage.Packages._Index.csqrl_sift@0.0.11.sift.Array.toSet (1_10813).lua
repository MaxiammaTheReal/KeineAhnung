-- Name: toSet
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.toSet
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5998829000018304 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:14
-- Luau version 6, Types version 3
-- Time taken: 0.000699 seconds

return function(arg1) -- Line 20, Named "toSet"
	local module = {}
	for _, v in ipairs(arg1) do
		module[v] = true
	end
	return module
end