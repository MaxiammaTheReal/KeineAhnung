-- Name: is
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.is
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7374283999961335 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:59
-- Luau version 6, Types version 3
-- Time taken: 0.001275 seconds

return function(arg1) -- Line 21, Named "is"
	local var2 = false
	if typeof(arg1) == "table" then
		var2 = false
		if 0 < #arg1 then
			if next(arg1, #arg1) ~= nil then
				var2 = false
			else
				var2 = true
			end
		end
	end
	return var2
end