-- Name: add
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Set.add
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9419106999994256 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:43
-- Luau version 6, Types version 3
-- Time taken: 0.001157 seconds

return function(arg1, ...) -- Line 18, Named "add"
	local module = {}
	for i, _ in pairs(arg1) do
		module[i] = true
	end
	for _, v_2 in ipairs({...}) do
		module[v_2] = true
	end
	return module
end