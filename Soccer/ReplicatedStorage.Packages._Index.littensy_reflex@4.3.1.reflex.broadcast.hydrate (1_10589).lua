-- Name: hydrate
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.broadcast.hydrate
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6081666000027326 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:19
-- Luau version 6, Types version 3
-- Time taken: 0.001134 seconds

return {
	createHydrateAction = function(arg1) -- Line 5, Named "createHydrateAction"
		local module = {
			name = "__hydrate__";
		}
		local tbl = {}
		tbl[1] = arg1
		module.arguments = tbl
		return module
	end;
	isHydrate = function(arg1) -- Line 12, Named "isHydrate"
		local var3
		if arg1.name ~= "__hydrate__" then
			var3 = false
		else
			var3 = true
		end
		return var3
	end;
}