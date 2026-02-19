-- Name: freezeDeep
-- Path: game:GetService("ReplicatedStorage").Packages._Index.nezuo_lapis@0.3.4.lapis.freezeDeep
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6076068000038504 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:50
-- Luau version 6, Types version 3
-- Time taken: 0.001183 seconds

local function freezeDeep_upvr(arg1) -- Line 1, Named "freezeDeep"
	--[[ Upvalues[1]:
		[1]: freezeDeep_upvr (readonly)
	]]
	if typeof(arg1) ~= "table" then
	else
		if not table.isfrozen(arg1) then
			table.freeze(arg1)
		end
		for _, v in arg1 do
			freezeDeep_upvr(v)
		end
	end
end
return freezeDeep_upvr