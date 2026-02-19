-- Name: testSelector
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.testSelector
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6468022999979439 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:37
-- Luau version 6, Types version 3
-- Time taken: 0.001209 seconds

local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
return function(arg1, arg2, ...) -- Line 24, Named "testSelector"
	--[[ Upvalues[1]:
		[1]: any_IsStudio_result1_upvr (readonly)
	]]
	if arg1(...) == arg2 then
		return true
	end
	if any_IsStudio_result1_upvr then
		warn(string.format("Reflex detected a selector function that returns conflicting values for the same input!\nThis is likely caused by one of the following:\n\n- The selector function is not memoized and should use 'createSelector'\n- The selector function is memoized but is not idempotent\n\nLearn more about writing selectors here:\nhttps://littensy.github.io/reflex/docs/guides/using-selectors\n\n%s", debug.traceback("Function traceback", 2)))
	end
	return false
end