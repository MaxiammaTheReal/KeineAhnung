-- Name: insert
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.insert
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5753840999968816 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:58
-- Luau version 6, Types version 3
-- Time taken: 0.002156 seconds

return function(arg1, arg2, ...) -- Line 21, Named "insert"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local len = #arg1
	local var14
	if var14 < 1 then
		var14 += len + 1
	end
	if len < var14 then
		if len + 1 < var14 then
			return arg1
		end
		var14 = len + 1
	end
	for i = 1, len + 1 do
		if i == var14 then
			for _, v in ipairs({...}) do
				table.insert({}, v)
				local var20
			end
		end
		table.insert(var20, arg1[i])
	end
	return var20
end