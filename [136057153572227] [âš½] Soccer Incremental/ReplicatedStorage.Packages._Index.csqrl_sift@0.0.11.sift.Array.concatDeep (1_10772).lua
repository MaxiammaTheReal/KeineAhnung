-- Name: concatDeep
-- Path: game:GetService("ReplicatedStorage").Packages._Index.csqrl_sift@0.0.11.sift.Array.concatDeep
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5760607999982312 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:42
-- Luau version 6, Types version 3
-- Time taken: 0.001763 seconds

local None_upvr = require(script.Parent.Parent.None)
local copyDeep_upvr = require(script.Parent.copyDeep)
return function(...) -- Line 28, Named "concatDeep"
	--[[ Upvalues[2]:
		[1]: None_upvr (readonly)
		[2]: copyDeep_upvr (readonly)
	]]
	for i = 1, select('#', ...) do
		local selected_arg = select(i, ...)
		if type(selected_arg) == "table" then
			for _, v in ipairs(selected_arg) do
				if v ~= None_upvr then
					if type(v) == "table" then
						table.insert({}, copyDeep_upvr(v))
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						table.insert({}, v)
					end
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end