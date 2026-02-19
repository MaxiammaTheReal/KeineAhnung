-- Name: init.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.init.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7219425000002957 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:36
-- Luau version 6, Types version 3
-- Time taken: 0.001056 seconds

return function() -- Line 1
	local constants_upvr = require(script.Parent.constants)
	beforeAll(function() -- Line 7
		--[[ Upvalues[1]:
			[1]: constants_upvr (readonly)
		]]
		constants_upvr.IS_EDIT = true
		constants_upvr.IS_TEST = true
	end)
	local IS_EDIT_upvr = constants_upvr.IS_EDIT
	afterAll(function() -- Line 13
		--[[ Upvalues[2]:
			[1]: constants_upvr (readonly)
			[2]: IS_EDIT_upvr (readonly)
		]]
		constants_upvr.IS_EDIT = IS_EDIT_upvr
		constants_upvr.IS_TEST = false
	end)
	local mockRemotes_upvr = require(script.Parent.utils.mockRemotes)
	afterEach(function() -- Line 18
		--[[ Upvalues[1]:
			[1]: mockRemotes_upvr (readonly)
		]]
		mockRemotes_upvr.destroyAll()
	end)
end