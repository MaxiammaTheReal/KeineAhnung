-- Name: compose
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.utils.compose
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6095924000037485 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:44
-- Luau version 6, Types version 3
-- Time taken: 0.001475 seconds

return function(arg1) -- Line 3, Named "compose"
	local len_upvr = #arg1
	if len_upvr == 0 then
		return function(arg1_2) -- Line 7
			return arg1_2
		end
	end
	if len_upvr == 1 then
		return arg1[1]
	end
	return function(arg1_3, ...) -- Line 14
		--[[ Upvalues[2]:
			[1]: len_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		local var6
		for i = len_upvr, 1, -1 do
			var6 = arg1[i](var6, ...)
		end
		return var6
	end
end