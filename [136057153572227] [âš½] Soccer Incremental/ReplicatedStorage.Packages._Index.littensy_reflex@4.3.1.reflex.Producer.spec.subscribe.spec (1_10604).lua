-- Name: subscribe.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.subscribe.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.712552400000277 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:31
-- Luau version 6, Types version 3
-- Time taken: 0.010432 seconds

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
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var11_upvw = 0
		local any_subscribe_result1 = var2_upvw:subscribe(function() -- Line 27
			--[[ Upvalues[1]:
				[1]: var11_upvw (read and write)
			]]
			var11_upvw += 1
		end)
		expect(any_subscribe_result1).to.be.a("function")
		any_subscribe_result1()
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var11_upvw).to.equal(0)
	end)
	it("should call the listener when the state changes", function() -- Line 37
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var15_upvw = 0
		var2_upvw:subscribe(function() -- Line 40
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
		expect(var15_upvw).to.equal(2)
	end)
	it("should pass the current and previous state to the listener", function() -- Line 56
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var18_upvw
		local var19_upvw
		var2_upvw:subscribe(function(arg1, arg2) -- Line 61
			--[[ Upvalues[2]:
				[1]: var18_upvw (read and write)
				[2]: var19_upvw (read and write)
			]]
			var18_upvw = arg2
			var19_upvw = arg1
		end)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var18_upvw).to.equal(var2_upvw:getState())
		expect(var19_upvw).to.equal(var2_upvw:getState())
		expect(var19_upvw).to.never.equal(var18_upvw)
	end)
	it("should call the listener once for bulk updates", function() -- Line 74
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var22_upvw = 0
		var2_upvw:subscribe(function() -- Line 77
			--[[ Upvalues[1]:
				[1]: var22_upvw (read and write)
			]]
			var22_upvw += 1
		end)
		var2_upvw:flush()
		expect(var22_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw.increment(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var22_upvw).to.equal(1)
	end)
	it("should call the listener once for nested updates", function() -- Line 91
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var25_upvw = 0
		var2_upvw:subscribe(function() -- Line 94
			--[[ Upvalues[1]:
				[1]: var25_upvw (read and write)
			]]
			var25_upvw += 1
		end)
		var2_upvw:flush()
		expect(var25_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw.increment(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var25_upvw).to.equal(1)
	end)
	it("should allow updates during a flush", function() -- Line 108
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local any_getState_result1_upvr = var2_upvw:getState()
		local var29_upvw
		local var30_upvw
		var2_upvw:subscribe(function(arg1, arg2) -- Line 112
			--[[ Upvalues[4]:
				[1]: var2_upvw (copied, read and write)
				[2]: var30_upvw (read and write)
				[3]: var29_upvw (read and write)
				[4]: any_getState_result1_upvr (readonly)
			]]
			var2_upvw.increment(1)
			var30_upvw = var2_upvw:getState()
			expect(arg1).to.equal(var29_upvw)
			expect(arg1).to.never.equal(var30_upvw)
			expect(arg2).to.equal(any_getState_result1_upvr)
		end)
		var2_upvw:subscribe(function(arg1, arg2) -- Line 121
			--[[ Upvalues[3]:
				[1]: var29_upvw (read and write)
				[2]: var30_upvw (read and write)
				[3]: any_getState_result1_upvr (readonly)
			]]
			expect(arg1).to.equal(var29_upvw)
			expect(arg1).to.never.equal(var30_upvw)
			expect(arg2).to.equal(any_getState_result1_upvr)
		end)
		var2_upvw.increment(1)
		var29_upvw = var2_upvw:getState()
		var2_upvw:flush()
		expect(var30_upvw).to.equal(var2_upvw:getState())
		expect(var30_upvw).to.never.equal(var29_upvw)
	end)
	it("should defer subscriptions from within a listener", function() -- Line 135
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local var34_upvw = 0
		var2_upvw:subscribe(function() -- Line 138
			--[[ Upvalues[2]:
				[1]: var34_upvw (read and write)
				[2]: var2_upvw (copied, read and write)
			]]
			var34_upvw += 1
			if var34_upvw == 1 then
				var2_upvw:subscribe(function() -- Line 141
					--[[ Upvalues[1]:
						[1]: var34_upvw (copied, read and write)
					]]
					var34_upvw += 1
				end)
			end
		end)
		var2_upvw:flush()
		expect(var34_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var34_upvw).to.equal(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var34_upvw).to.equal(3)
	end)
	it("should receive a selector function", function() -- Line 159
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var38_upvw
		var2_upvw:subscribe(selectCount_upvr, function(arg1) -- Line 162
			--[[ Upvalues[1]:
				[1]: var38_upvw (read and write)
			]]
			var38_upvw = arg1
		end)
		var2_upvw:flush()
		expect(var38_upvw).to.equal(nil)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var38_upvw).to.equal(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var38_upvw).to.equal(2)
	end)
	it("should not call the listener if the selector returns the same value", function() -- Line 178
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var41_upvw = 0
		var2_upvw:subscribe(selectCount_upvr, function() -- Line 181
			--[[ Upvalues[1]:
				[1]: var41_upvw (read and write)
			]]
			var41_upvw += 1
		end)
		var2_upvw:flush()
		expect(var41_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var41_upvw).to.equal(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var41_upvw).to.equal(2)
		var2_upvw.increment(0)
		var2_upvw:flush()
		expect(var41_upvw).to.equal(2)
	end)
	it("should receive a predicate", function() -- Line 201
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: selectCount_upvr (readonly)
		]]
		local var44_upvw = 0
		var2_upvw:subscribe(selectCount_upvr, function(arg1, arg2) -- Line 204, Named "isGreaterThan"
			if arg2 >= arg1 then
			else
			end
			return true
		end, function(arg1, arg2) -- Line 208
			--[[ Upvalues[1]:
				[1]: var44_upvw (read and write)
			]]
			var44_upvw += 1
		end)
		var2_upvw:flush()
		expect(var44_upvw).to.equal(0)
		var2_upvw.decrement(1)
		var2_upvw:flush()
		expect(var44_upvw).to.equal(0)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var44_upvw).to.equal(1)
		var2_upvw.increment(1)
		var2_upvw:flush()
		expect(var44_upvw).to.equal(2)
		var2_upvw.decrement(1)
		var2_upvw:flush()
		expect(var44_upvw).to.equal(2)
	end)
end