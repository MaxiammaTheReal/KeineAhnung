-- Name: pop
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.pop
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6213619999980438 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:02
-- Luau version 6, Types version 3
-- Time taken: 0.000927 seconds

return function(arg1, arg2) -- Line 20, Named "pop"
	local module = {}
	local var4
	if type(arg2) == "number" then
	else
		var4 = 1
	end
	for i = 1, #arg1 - var4 do
		table.insert(module, arg1[i])
	end
	return module
end