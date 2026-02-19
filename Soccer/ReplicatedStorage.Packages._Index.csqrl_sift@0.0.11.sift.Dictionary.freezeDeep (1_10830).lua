-- Name: freezeDeep
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Dictionary.freezeDeep
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0326900000000023 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:42
-- Luau version 6, Types version 3
-- Time taken: 0.001156 seconds

local function freezeDeep_upvr(arg1) -- Line 22, Named "freezeDeep"
	--[[ Upvalues[1]:
		[1]: freezeDeep_upvr (readonly)
	]]
	local module = {}
	for i, v in pairs(arg1) do
		if type(v) == "table" then
			module[i] = freezeDeep_upvr(v)
		else
			module[i] = v
		end
	end
	table.freeze(module)
	return module
end
return freezeDeep_upvr