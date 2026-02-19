-- Name: testSelector.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.testSelector.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6209527000028174 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:38
-- Luau version 6, Types version 3
-- Time taken: 0.001899 seconds

return function() -- Line 1
	local testSelector_upvr = require(script.Parent.testSelector)
	it("should return false if the selector is not memoized", function() -- Line 4
		--[[ Upvalues[1]:
			[1]: testSelector_upvr (readonly)
		]]
		local tbl = {}
		expect(testSelector_upvr(function(arg1) -- Line 6, Named "badSelector"
			return {}
		end, tbl, {
			value = tbl;
		})).to.equal(false)
	end)
	it("should return true if the selector is memoized", function() -- Line 12
		--[[ Upvalues[1]:
			[1]: testSelector_upvr (readonly)
		]]
		local tbl_2 = {}
		expect(testSelector_upvr(function(arg1) -- Line 14, Named "goodSelector"
			return arg1.value
		end, tbl_2, {
			value = tbl_2;
		})).to.equal(true)
	end)
end