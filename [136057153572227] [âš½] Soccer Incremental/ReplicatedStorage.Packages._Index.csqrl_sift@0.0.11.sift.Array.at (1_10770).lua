-- Name: at
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.at
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.666142399997625 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:41
-- Luau version 6, Types version 3
-- Time taken: 0.000724 seconds

return function(arg1, arg2) -- Line 19, Named "at"
	local var1
	if var1 < 1 then
		var1 += #arg1
	end
	return arg1[var1]
end