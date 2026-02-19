-- Name: spy
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.utils.spy
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6944355000014184 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:22
-- Luau version 6, Types version 3
-- Time taken: 0.001011 seconds

return function() -- Line 7, Named "spy"
	local var1_upvw
	var1_upvw = {
		calls = 0;
		arguments = {};
		handle = function(...) -- Line 10, Named "handle"
			--[[ Upvalues[1]:
				[1]: var1_upvw (read and write)
			]]
			local var2 = var1_upvw
			var2.calls += 1
			var1_upvw.arguments[var1_upvw.calls] = {...}
		end;
	}
	return var1_upvw
end