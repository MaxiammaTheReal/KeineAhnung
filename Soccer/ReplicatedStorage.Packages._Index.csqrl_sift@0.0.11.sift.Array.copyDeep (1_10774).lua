-- Name: copyDeep
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.copyDeep
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6962034999960451 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:44
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

local function copyDeep_upvr(arg1) -- Line 20, Named "copyDeep"
	--[[ Upvalues[1]:
		[1]: copyDeep_upvr (readonly)
	]]
	for i, v in arg1 do
		if type(v) == "table" then
			table.clone(arg1)[i] = copyDeep_upvr(v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return table.clone(arg1)
end
return copyDeep_upvr