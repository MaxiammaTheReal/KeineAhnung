-- Name: removeIndices
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.removeIndices
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6181122999987565 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:05
-- Luau version 6, Types version 3
-- Time taken: 0.001269 seconds

return function(arg1, ...) -- Line 19, Named "removeIndices"
	local tbl = {}
	for _, v in ipairs({...}) do
		if v < 1 then
			v += #arg1
		end
		tbl[v] = true
	end
	for i_2, v_2 in ipairs(arg1) do
		if not tbl[i_2] then
			table.insert({}, v_2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end