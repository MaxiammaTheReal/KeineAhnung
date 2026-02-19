-- Name: init.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.init.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6795677999980398 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:26
-- Luau version 6, Types version 3
-- Time taken: 0.005369 seconds

return function() -- Line 1
	local var2_upvw
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 7
		--[[ Upvalues[2]:
			[1]: var2_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var2_upvw = createProducer_upvr({
			count = 0;
		}, {
			increment = function(arg1, arg2) -- Line 9, Named "increment"
				return {
					count = arg1.count + arg2;
				}
			end;
			decrement = function(arg1, arg2) -- Line 12, Named "decrement"
				return {
					count = arg1.count - arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 18
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		var2_upvw:destroy()
	end)
	it("should return a producer", function() -- Line 22
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		expect(var2_upvw).to.be.a("table")
		expect(var2_upvw.getState).to.be.a("function")
		expect(var2_upvw.setState).to.be.a("function")
		expect(var2_upvw.getDispatchers).to.be.a("function")
		expect(var2_upvw.getActions).to.be.a("function")
		expect(var2_upvw.clone).to.be.a("function")
		expect(var2_upvw.flush).to.be.a("function")
		expect(var2_upvw.subscribe).to.be.a("function")
		expect(var2_upvw.once).to.be.a("function")
		expect(var2_upvw.wait).to.be.a("function")
		expect(var2_upvw.observe).to.be.a("function")
		expect(var2_upvw.destroy).to.be.a("function")
		expect(var2_upvw.enhance).to.be.a("function")
		expect(var2_upvw.applyMiddleware).to.be.a("function")
		expect(var2_upvw.Connect).to.be.a("function")
		expect(var2_upvw.Once).to.be.a("function")
		expect(var2_upvw.Wait).to.be.a("function")
	end)
	it("should expose the dispatcher functions", function() -- Line 42
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		expect(var2_upvw.increment).to.be.a("function")
		expect(var2_upvw.decrement).to.be.a("function")
		var2_upvw.increment(1)
		expect(var2_upvw:getState().count).to.equal(1)
		var2_upvw.decrement(1)
		expect(var2_upvw:getState().count).to.equal(0)
	end)
	local Promise_upvr = require(script.Parent.Parent.Promise)
	it("should support Promise.fromEvent", function() -- Line 51
		--[[ Upvalues[2]:
			[1]: Promise_upvr (readonly)
			[2]: var2_upvw (read and write)
		]]
		local any_fromEvent_result1 = Promise_upvr.fromEvent(var2_upvw, function(arg1, arg2) -- Line 52
			local var15
			if arg2.count >= arg1.count then
				var15 = false
			else
				var15 = true
			end
			return var15
		end)
		var2_upvw.decrement(1)
		var2_upvw:flush()
		expect(any_fromEvent_result1:getStatus()).to.equal(Promise_upvr.Status.Started)
		var2_upvw.increment(1)
		var2_upvw:flush()
		local any_awaitStatus_result1, any_awaitStatus_result2 = any_fromEvent_result1:timeout(1):awaitStatus()
		expect(any_awaitStatus_result1).to.equal(Promise_upvr.Status.Resolved)
		expect(any_awaitStatus_result2.count).to.equal(0)
	end)
end