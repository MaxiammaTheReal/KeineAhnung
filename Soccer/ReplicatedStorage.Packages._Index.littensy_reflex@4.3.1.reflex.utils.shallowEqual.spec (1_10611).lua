-- Name: shallowEqual.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.shallowEqual.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6848855999996886 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:36
-- Luau version 6, Types version 3
-- Time taken: 0.002779 seconds

return function() -- Line 1
	local shallowEqual_upvr = require(script.Parent.shallowEqual)
	it("should return true when tables are equal", function() -- Line 4
		--[[ Upvalues[1]:
			[1]: shallowEqual_upvr (readonly)
		]]
		local tbl = {}
		expect(shallowEqual_upvr(tbl, tbl)).to.equal(true)
	end)
	it("should return true when both tables are empty", function() -- Line 9
		--[[ Upvalues[1]:
			[1]: shallowEqual_upvr (readonly)
		]]
		expect(shallowEqual_upvr({}, {})).to.equal(true)
	end)
	it("should return true when tables have the same key-value pairs", function() -- Line 13
		--[[ Upvalues[1]:
			[1]: shallowEqual_upvr (readonly)
		]]
		expect(shallowEqual_upvr({
			foo = 1;
		}, {
			foo = 1;
		})).to.equal(true)
		expect(shallowEqual_upvr({
			bar = 1;
			baz = 2;
		}, {
			bar = 1;
			baz = 2;
		})).to.equal(true)
	end)
	it("should return false when tables have different key-value pairs", function() -- Line 18
		--[[ Upvalues[1]:
			[1]: shallowEqual_upvr (readonly)
		]]
		expect(shallowEqual_upvr({
			foo = 1;
		}, {
			foo = 2;
		})).to.equal(false)
	end)
	it("should return false when tables have different keys", function() -- Line 22
		--[[ Upvalues[1]:
			[1]: shallowEqual_upvr (readonly)
		]]
		expect(shallowEqual_upvr({
			foo = 1;
		}, {
			bar = 1;
		})).to.equal(false)
		expect(shallowEqual_upvr({
			foo = 1;
		}, {
			foo = 1;
			bar = 1;
		})).to.equal(false)
		expect(shallowEqual_upvr({
			foo = 1;
			bar = 1;
		}, {
			foo = 1;
		})).to.equal(false)
	end)
end