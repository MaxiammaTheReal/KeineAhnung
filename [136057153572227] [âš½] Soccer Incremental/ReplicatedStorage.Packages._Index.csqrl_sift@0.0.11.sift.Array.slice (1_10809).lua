-- Name: slice
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.slice
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7299468999990495 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:20:11
-- Luau version 6, Types version 3
-- Time taken: 0.002408 seconds

return function(arg1, arg2, arg3) -- Line 21, Named "slice"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local len = #arg1
	local module = {}
	local var7
	if type(arg2) == "number" then
	else
		var7 = 1
	end
	if type(arg3) == "number" then
	else
		local var8 = len
	end
	if var7 < 1 then
		var7 += len
	end
	if var8 < 1 then
	end
	for i = var7, var8 + len do
		table.insert(module, arg1[i])
	end
	return module
end