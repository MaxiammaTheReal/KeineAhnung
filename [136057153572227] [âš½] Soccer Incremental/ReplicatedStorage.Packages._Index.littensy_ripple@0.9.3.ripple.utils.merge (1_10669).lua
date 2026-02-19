-- Name: merge
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.utils.merge
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.582684100001643 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:21
-- Luau version 6, Types version 3
-- Time taken: 0.000709 seconds

return function(arg1, arg2) -- Line 1, Named "merge"
	local clone = table.clone(arg1)
	for i, v in pairs(arg2) do
		clone[i] = v
	end
	return clone
end