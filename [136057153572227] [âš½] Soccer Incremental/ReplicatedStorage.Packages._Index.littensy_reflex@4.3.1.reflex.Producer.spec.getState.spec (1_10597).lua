-- Name: getState.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.getState.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7171986999965156 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:25
-- Luau version 6, Types version 3
-- Time taken: 0.002251 seconds

return function() -- Line 1
	local var2_upvw
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 6
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var2_upvw = createProducer_upvr({
			count = 0;
		}, {
			increment = function(arg1, arg2) -- Line 8, Named "increment"
				return {
					count = arg1.count + arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 14
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:destroy()
	end)
	it("should return the initial state", function() -- Line 18
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		expect(var2_upvw:getState()).to.be.a("table")
		expect(var2_upvw:getState().count).to.equal(0)
	end)
	it("should return the updated state", function() -- Line 23
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw.increment(1)
		expect(var2_upvw:getState().count).to.equal(1)
	end)
	it("should receive a selector function", function() -- Line 28
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local function selector(arg1) -- Line 29
			return arg1.count
		end
		expect(var2_upvw:getState(selector)).to.equal(0)
		var2_upvw.increment(1)
		expect(var2_upvw:getState(selector)).to.equal(1)
	end)
end