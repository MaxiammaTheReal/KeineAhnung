-- Name: splice
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.splice
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.635830100000021 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:13
-- Luau version 6, Types version 3
-- Time taken: 0.002604 seconds

return function(arg1, arg2, arg3, ...) -- Line 22, Named "splice"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local len = #arg1
	local module = {}
	local var19
	if type(arg2) == "number" then
	else
		var19 = 1
	end
	if type(arg3) == "number" then
	else
		local var20 = len
	end
	if var19 < 1 then
		var19 += len
	end
	if var20 < 1 then
	end
	for i = 1, var19 - 1 do
		table.insert(module, arg1[i])
	end
	for i_2, v in ipairs({...}) do
		table.insert(module, v)
	end
	for i_3 = var20 + len + 1, len do
		v = module
		i_2 = table.insert
		i_2(v, arg1[i_3])
	end
	return module
end