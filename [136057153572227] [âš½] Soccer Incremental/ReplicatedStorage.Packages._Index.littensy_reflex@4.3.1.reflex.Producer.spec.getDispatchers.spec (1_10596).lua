-- Name: getDispatchers.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.getDispatchers.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.744078100004117 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:24
-- Luau version 6, Types version 3
-- Time taken: 0.002212 seconds

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
			decrement = function(arg1, arg2) -- Line 11, Named "decrement"
				return {
					count = arg1.count - arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 17
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:destroy()
	end)
	it("should return a table of dispatchers", function() -- Line 21
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local any_getDispatchers_result1 = var2_upvw:getDispatchers()
		expect(any_getDispatchers_result1).to.be.a("table")
		expect(any_getDispatchers_result1.increment).to.be.a("function")
		expect(any_getDispatchers_result1.decrement).to.be.a("function")
	end)
	it("should return dispatchers that update the state", function() -- Line 28
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local any_getDispatchers_result1_2 = var2_upvw:getDispatchers()
		any_getDispatchers_result1_2.increment(1)
		expect(var2_upvw:getState().count).to.equal(1)
		any_getDispatchers_result1_2.decrement(1)
		expect(var2_upvw:getState().count).to.equal(0)
	end)
end