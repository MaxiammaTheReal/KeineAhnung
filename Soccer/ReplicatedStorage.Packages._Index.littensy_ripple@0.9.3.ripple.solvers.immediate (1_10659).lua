-- Name: immediate
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.immediate
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7618486999999732 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:13
-- Luau version 6, Types version 3
-- Time taken: 0.001412 seconds

local intermediate_upvr = require(script.Parent.Parent.utils.intermediate)
return function(arg1) -- Line 4, Named "immediate"
	--[[ Upvalues[1]:
		[1]: intermediate_upvr (readonly)
	]]
	local any_to_result1_upvr = intermediate_upvr.to(arg1)
	return function(arg1_2, arg2) -- Line 7
		--[[ Upvalues[2]:
			[1]: intermediate_upvr (copied, readonly)
			[2]: any_to_result1_upvr (readonly)
		]]
		local any_index_result1 = intermediate_upvr.index(any_to_result1_upvr, arg1_2)
		if not any_index_result1 then
			return false
		end
		arg2.value = any_index_result1
		arg2.complete = true
	end
end