-- Name: reduce
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.reduce
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7204664000018965 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:03
-- Luau version 6, Types version 3
-- Time taken: 0.001045 seconds

return function(arg1, arg2, arg3) -- Line 27, Named "reduce"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5 = 1
	if arg3 == nil then
		var5 = 2
	end
	for i = var5, #arg1 do
	end
	return arg2(arg1[1], arg1[i], i, arg1)
end