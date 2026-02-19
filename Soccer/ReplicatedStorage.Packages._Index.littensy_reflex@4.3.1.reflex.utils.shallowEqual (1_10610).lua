-- Name: shallowEqual
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.shallowEqual
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7116813000029651 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:36
-- Luau version 6, Types version 3
-- Time taken: 0.001069 seconds

return function(arg1, arg2) -- Line 8, Named "shallowEqual"
	if arg1 == arg2 then
		return true
	end
	if type(arg1) ~= "table" or type(arg2) ~= "table" then
		return false
	end
	for i, v in arg1 do
		if arg2[i] ~= v then
			return false
		end
	end
	for i_2, v_2 in arg2 do
		if arg1[i_2] ~= v_2 then
			return false
		end
	end
	return true
end