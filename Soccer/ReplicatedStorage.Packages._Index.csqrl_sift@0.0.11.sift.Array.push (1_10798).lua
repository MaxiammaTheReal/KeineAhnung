-- Name: push
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.push
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.566771300000255 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:02
-- Luau version 6, Types version 3
-- Time taken: 0.001094 seconds

return function(arg1, ...) -- Line 22, Named "push"
	local module = {}
	for _, v in ipairs(arg1) do
		table.insert(module, v)
	end
	for _, v_2 in ipairs({...}) do
		table.insert(module, v_2)
	end
	return module
end