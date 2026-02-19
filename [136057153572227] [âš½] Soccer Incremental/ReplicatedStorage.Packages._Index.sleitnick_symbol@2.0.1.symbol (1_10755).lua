-- Name: symbol
-- Path: game:GetService("ReplicatedStorage").Packages._Index.sleitnick_symbol@2.0.1.symbol
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6835557000013068 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:28
-- Luau version 6, Types version 3
-- Time taken: 0.001000 seconds

return function(arg1) -- Line 45, Named "Symbol"
	local newproxy_result1 = newproxy(true)
	local var2_upvw
	if not var2_upvw then
		var2_upvw = ""
	end
	getmetatable(newproxy_result1).__tostring = function() -- Line 50
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		return "Symbol("..var2_upvw..')'
	end
	return newproxy_result1
end