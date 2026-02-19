-- Name: assign
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.utils.assign
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6559706999978516 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:19
-- Luau version 6, Types version 3
-- Time taken: 0.001457 seconds

return function(arg1, ...) -- Line 1, Named "assign"
	local var7
	if type(arg1) ~= "table" then
		var7 = false
	else
		var7 = true
	end
	assert(var7, `Expected a table for first argument, got ${type(arg1)}`)
	var7 = 1
	for i = 1, select('#', ...), var7 do
		for i_2, v in select(i, ...), nil do
			arg1[i_2] = v
		end
	end
	return arg1
end