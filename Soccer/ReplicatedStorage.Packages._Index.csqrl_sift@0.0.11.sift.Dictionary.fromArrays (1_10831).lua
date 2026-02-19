-- Name: fromArrays
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Dictionary.fromArrays
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.037642199997208 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:42
-- Luau version 6, Types version 3
-- Time taken: 0.000989 seconds

return function(arg1, arg2) -- Line 20, Named "fromArrays"
	local module = {}
	for i = 1, #arg1 do
		module[arg1[i]] = arg2[i]
	end
	return module
end