-- Name: reverse
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.reverse
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6952610000007553 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:08
-- Luau version 6, Types version 3
-- Time taken: 0.000667 seconds

return function(arg1) -- Line 17, Named "reverse"
	local module = {}
	for i = #arg1, 1, -1 do
		table.insert(module, arg1[i])
	end
	return module
end