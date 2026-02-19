-- Name: once.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.once.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5988911000022199 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:28
-- Luau version 6, Types version 3
-- Time taken: 0.005866 seconds

return function() -- Line 1
	local var2_upvw
	local function selectCount_upvr(arg1) -- Line 6, Named "selectCount"
		return arg1.count
	end
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var2_upvw = createProducer_upvr({
			count = 0;
		}, {
			increment = function(arg1, arg2) -- Line 12, Named "increment"
				return {
					count = arg1.count + arg2;
				}
			end;
			decrement = function(arg1, arg2) -- Line 15, Named "decrement"
				return {
					count = arg1.count - arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 21
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:destroy()
	end)
	it("should return a function to unsubscribe", function() -- Line 25
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var11_upvw = 0
		local any_once_result1 = var2_upvw:once(selectCount_upvr, function() -- Line 27
			--[[ Upvalues[1]:
				[1]: var11_upvw (read and write)
			]]
			var11_upvw += 1
		end)
		expect(any_once_result1).to.be.a("function")
		any_once_result1()
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var11_upvw).to.equal(0)
	end)
	it("should call the listener once", function() -- Line 37
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var15_upvw = 0
		var2_upvw:once(selectCount_upvr, function() -- Line 40
			--[[ Upvalues[1]:
				[1]: var15_upvw (read and write)
			]]
			var15_upvw += 1
		end)
		var2_upvw:flush()
		expect(var15_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var15_upvw).to.equal(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var15_upvw).to.equal(1)
	end)
	it("should pass the current and previous state to the listener", function() -- Line 56
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var18_upvw
		local var19_upvw
		var2_upvw:once(selectCount_upvr, function(arg1, arg2) -- Line 61
			--[[ Upvalues[2]:
				[1]: var18_upvw (read and write)
				[2]: var19_upvw (read and write)
			]]
			var18_upvw = arg2
			var19_upvw = arg1
		end)
		var2_upvw:flush()
		expect(var18_upvw).to.equal(nil)
		expect(var19_upvw).to.equal(nil)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var18_upvw).to.equal(var2_upvw:getState(selectCount_upvr))
		expect(var19_upvw).to.equal(var2_upvw:getState(selectCount_upvr))
	end)
	it("should receive a predicate", function() -- Line 76
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var22_upvw = 0
		var2_upvw:once(selectCount_upvr, function(arg1, arg2) -- Line 79, Named "isGreaterThan"
			if arg2 >= arg1 then
			else
			end
			return true
		end, function(arg1, arg2) -- Line 83
			--[[ Upvalues[1]:
				[1]: var22_upvw (read and write)
			]]
			var22_upvw += 1
		end)
		var2_upvw:flush()
		expect(var22_upvw).to.equal(0)
		var2_upvw.increment(-1)
		var2_upvw:flush()
		expect(var22_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var22_upvw).to.equal(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var22_upvw).to.equal(1)
	end)
end