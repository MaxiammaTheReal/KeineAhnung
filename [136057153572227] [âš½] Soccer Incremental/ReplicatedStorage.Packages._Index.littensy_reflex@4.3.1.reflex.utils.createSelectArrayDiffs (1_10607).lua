-- Name: createSelectArrayDiffs
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.createSelectArrayDiffs
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6139619999958086 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:33
-- Luau version 6, Types version 3
-- Time taken: 0.002762 seconds

local createSelector_upvr = require(script.Parent.Parent.createSelector)
return function(arg1, arg2) -- Line 29, Named "createSelectArrayDiffs"
	--[[ Upvalues[1]:
		[1]: createSelector_upvr (readonly)
	]]
	local tbl_3_upvw = {}
	return createSelector_upvr(arg1, function(arg1_2) -- Line 35
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: tbl_3_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_2 = {}
		for i, v in arg1_2 do
			local var21
			if arg2 then
				var21 = arg2(v, i)
			else
				var21 = v
			end
			local tbl = {
				key = i;
				value = v;
				id = var21;
			}
			if var21 == nil then
			else
			end
			assert(true, "Discriminator returned a nil value")
			if not tbl_3_upvw[var21] then
				table.insert({}, tbl)
			end
			tbl_2[var21] = tbl
		end
		for i_2, _ in tbl_3_upvw do
			var21 = tbl_2[i_2]
			if not var21 then
				var21 = tbl_3_upvw[i_2]
				table.insert({}, var21)
			end
		end
		tbl_3_upvw = tbl_2
		local module = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.additions = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.deletions = {}
		return module
	end)
end