-- Name: set
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.set
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6517396999988705 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:09
-- Luau version 6, Types version 3
-- Time taken: 0.001034 seconds

return function(arg1, arg2, arg3) -- Line 20, Named "set"
	local var5
	if var5 < 1 then
		var5 += #arg1
	end
	for i, v in ipairs(arg1) do
		if i == var5 then
			table.insert({}, arg3)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end