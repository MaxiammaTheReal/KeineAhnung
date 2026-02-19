-- Name: applyMiddleware
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.applyMiddleware
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6497900000031223 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:13
-- Luau version 6, Types version 3
-- Time taken: 0.001390 seconds

return function(...) -- Line 29, Named "applyMiddleware"
	local args_list_upvr = {...}
	return function(arg1) -- Line 32
		--[[ Upvalues[1]:
			[1]: args_list_upvr (readonly)
		]]
		local clone = table.clone(args_list_upvr)
		local any_getDispatchers_result1 = arg1:getDispatchers()
		for i, v in clone do
			clone[i] = v(arg1)
		end
		for i_2, v_2 in any_getDispatchers_result1 do
			for i_3 = #clone, 1, -1 do
				v_2 = clone[i_3](v_2, i_2)
			end
			any_getDispatchers_result1[i_2] = v_2
			arg1[i_2] = v_2
		end
		return arg1
	end
end