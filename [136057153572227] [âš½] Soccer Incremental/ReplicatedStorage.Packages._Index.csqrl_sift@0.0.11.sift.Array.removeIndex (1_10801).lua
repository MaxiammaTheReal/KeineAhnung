-- Name: removeIndex
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.removeIndex
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6379062999985763 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:05
-- Luau version 6, Types version 3
-- Time taken: 0.000939 seconds

return function(arg1, arg2) -- Line 19, Named "removeIndex"
	local var5
	if var5 < 1 then
		var5 += #arg1
	end
	for i, v in ipairs(arg1) do
		if i ~= var5 then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end