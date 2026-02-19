-- Name: reduceRight
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.reduceRight
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.673745100000815 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:04
-- Luau version 6, Types version 3
-- Time taken: 0.001083 seconds

return function(arg1, arg2, arg3) -- Line 28, Named "reduceRight"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local len = #arg1
	if arg3 == nil then
		len -= 1
	end
	for i = len, 1, -1 do
	end
	return arg2(arg1[len], arg1[i], i, arg1)
end