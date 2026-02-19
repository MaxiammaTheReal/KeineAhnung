-- Name: createSelector
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.createSelector
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.562944500001322 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:22
-- Luau version 6, Types version 3
-- Time taken: 0.002070 seconds

local function _(arg1, arg2, arg3) -- Line 83, Named "memoize"
	local var2_upvw
	local var3_upvw = -1
	local tbl_upvw = {}
	local var5_upvw = true
	return function(...) -- Line 93
		--[[ Upvalues[7]:
			[1]: var2_upvw (read and write)
			[2]: var3_upvw (read and write)
			[3]: arg1 (readonly)
			[4]: tbl_upvw (read and write)
			[5]: arg2 (readonly)
			[6]: arg3 (readonly)
			[7]: var5_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
		local arg_count = select('#', ...)
		if arg_count ~= var3_upvw then
			var3_upvw = arg_count
			tbl_upvw = {...}
			-- KONSTANTWARNING: GOTO [56] #49
		end
		-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 20. Error Block 23 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 20. Error Block 23 end (CF ANALYSIS FAILED)
	end
end
return function(...) -- Line 126, Named "createSelectorImpl"
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local packed = table.pack(...)
	if type(...) == "table" then
		local _, _, _ = ...
		-- KONSTANTWARNING: GOTO [74] #58
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 18. Error Block 23 start (CF ANALYSIS FAILED)
	if type(packed[packed.n]) == "table" then
		table.move(packed, 1, packed.n - 2, 1, table.create(packed.n - 2))
		-- KONSTANTWARNING: GOTO [74] #58
	end
	-- KONSTANTERROR: [20] 18. Error Block 23 end (CF ANALYSIS FAILED)
end