-- Name: src
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_vide-charm@0'].3.0['vide-charm'].src
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.730759099998977 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:25
-- Luau version 6, Types version 3
-- Time taken: 0.001884 seconds

local charm_upvr = script.Parent.Parent.charm
if script.Parent.Parent:FindFirstChild("Vide") then
	charm_upvr = require(script.Parent.Parent.Vide)
else
	charm_upvr = require(script.Parent.Parent.vide.src)
end
local charm_upvr_2_upvr = require(charm_upvr)
return {
	useAtom = function(arg1) -- Line 12, Named "useAtom"
		--[[ Upvalues[2]:
			[1]: charm_upvr (readonly)
			[2]: charm_upvr_2_upvr (readonly)
		]]
		local any_source_result1_upvr = charm_upvr.source(arg1())
		charm_upvr.cleanup(charm_upvr_2_upvr.subscribe(arg1, function(arg1_2) -- Line 14
			--[[ Upvalues[1]:
				[1]: any_source_result1_upvr (readonly)
			]]
			task.spawn(any_source_result1_upvr, arg1_2)
		end))
		return any_source_result1_upvr
	end;
}