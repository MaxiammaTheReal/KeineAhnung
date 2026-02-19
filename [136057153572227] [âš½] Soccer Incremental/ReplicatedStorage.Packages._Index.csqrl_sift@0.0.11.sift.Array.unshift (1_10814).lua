-- Name: unshift
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.unshift
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7706149000005098 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:15
-- Luau version 6, Types version 3
-- Time taken: 0.000755 seconds

return function(arg1, ...) -- Line 22, Named "unshift"
	local args_list = {...}
	for _, v in ipairs(arg1) do
		table.insert(args_list, v)
	end
	return args_list
end