-- Name: flatten
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_charm-sync@0'].3.0['charm-sync'].src.flatten
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5744157999943127 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:05
-- Luau version 6, Types version 3
-- Time taken: 0.001330 seconds

return function(arg1) -- Line 8, Named "flatten"
	local module_upvr = {}
	local function visit_upvr(arg1_2, arg2) -- Line 11, Named "visit"
		--[[ Upvalues[2]:
			[1]: visit_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		local var6
		for i, v in arg1_2 do
			if arg2 == "" then
				var6 = i
			else
				var6 = arg2..'/'..i
			end
			if type(v) == "table" then
				visit_upvr(v, var6)
			else
				module_upvr[var6] = v
			end
		end
	end
	visit_upvr(arg1, "")
	return module_upvr
end