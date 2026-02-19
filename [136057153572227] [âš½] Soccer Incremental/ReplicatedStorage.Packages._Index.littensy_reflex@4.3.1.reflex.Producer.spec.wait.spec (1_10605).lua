-- Name: wait.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.wait.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6669062999935704 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:32
-- Luau version 6, Types version 3
-- Time taken: 0.003515 seconds

return function() -- Line 1
	local Promise_upvr = require(script.Parent.Parent.Promise)
	local var3_upvw
	local function selectCount_upvr(arg1) -- Line 7, Named "selectCount"
		return arg1.count
	end
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 11
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: createProducer_upvr (readonly)
		]]
		var3_upvw = createProducer_upvr({
			count = 0;
		}, {
			increment = function(arg1, arg2) -- Line 13, Named "increment"
				return {
					count = arg1.count + arg2;
				}
			end;
			decrement = function(arg1, arg2) -- Line 16, Named "decrement"
				return {
					count = arg1.count - arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 22
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw:destroy()
	end)
	it("should unsubscribe on promise cancel", function() -- Line 26
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: Promise_upvr (readonly)
		]]
		local var12_upvw = 0
		local any_wait_result1 = var3_upvw:wait(function(arg1) -- Line 29, Named "selectorSpy"
			--[[ Upvalues[1]:
				[1]: var12_upvw (read and write)
			]]
			var12_upvw += 1
			return arg1.count
		end)
		any_wait_result1:cancel()
		var3_upvw.increment(1)
		var3_upvw:flush()
		expect(var12_upvw).to.equal(var12_upvw)
		expect(any_wait_result1:getStatus()).to.equal(Promise_upvr.Status.Cancelled)
	end)
	it("should resolve with the new state", function() -- Line 45
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: selectCount_upvr (readonly)
			[3]: Promise_upvr (readonly)
		]]
		var3_upvw.increment(1)
		var3_upvw:flush()
		local any_awaitStatus_result1_2, any_awaitStatus_result2_2 = var3_upvw:wait(selectCount_upvr):timeout(1):awaitStatus()
		expect(any_awaitStatus_result1_2).to.equal(Promise_upvr.Status.Resolved)
		expect(any_awaitStatus_result2_2).to.equal(1)
	end)
	it("should receive a predicate", function() -- Line 54
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: selectCount_upvr (readonly)
			[3]: Promise_upvr (readonly)
		]]
		local any_wait_result1_2 = var3_upvw:wait(selectCount_upvr, function(arg1, arg2) -- Line 55, Named "isGreaterThan"
			if arg2 >= arg1 then
			else
			end
			return true
		end)
		var3_upvw.decrement(1)
		var3_upvw:flush()
		expect(any_wait_result1_2:getStatus()).to.equal(Promise_upvr.Status.Started)
		var3_upvw.increment(2)
		var3_upvw:flush()
		local any_awaitStatus_result1, any_awaitStatus_result2 = any_wait_result1_2:timeout(1):awaitStatus()
		expect(any_awaitStatus_result1).to.equal(Promise_upvr.Status.Resolved)
		expect(any_awaitStatus_result2).to.equal(1)
	end)
end