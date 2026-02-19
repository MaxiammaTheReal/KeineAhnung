-- Name: some
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.some
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6924350999979652 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:12
-- Luau version 6, Types version 3
-- Time taken: 0.000765 seconds

return function(arg1, arg2) -- Line 24, Named "some"
	for i, v in ipairs(arg1) do
		if arg2(v, i, arg1) then
			return true
		end
	end
	return false
end