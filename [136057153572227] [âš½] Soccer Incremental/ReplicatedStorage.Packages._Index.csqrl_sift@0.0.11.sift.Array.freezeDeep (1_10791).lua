-- Name: freezeDeep
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.freezeDeep
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6581058999945526 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:57
-- Luau version 6, Types version 3
-- Time taken: 0.001171 seconds

local function freezeDeep_upvr(arg1) -- Line 21, Named "freezeDeep"
	--[[ Upvalues[1]:
		[1]: freezeDeep_upvr (readonly)
	]]
	local module = {}
	for i = 1, #arg1 do
		local var3 = arg1[i]
		if type(var3) == "table" then
			table.insert(module, freezeDeep_upvr(var3))
		else
			table.insert(module, var3)
		end
	end
	table.freeze(module)
	return module
end
return freezeDeep_upvr