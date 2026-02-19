-- Name: every
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.every
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5883035000006203 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:50
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

return function(arg1, arg2) -- Line 24, Named "every"
	for i, v in ipairs(arg1) do
		if not arg2(v, i, arg1) then
			return false
		end
	end
	return true
end