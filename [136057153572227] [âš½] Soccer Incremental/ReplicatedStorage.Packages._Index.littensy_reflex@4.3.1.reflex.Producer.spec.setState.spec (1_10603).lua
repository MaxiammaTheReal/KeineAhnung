-- Name: setState.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.setState.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5421056999985012 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:30
-- Luau version 6, Types version 3
-- Time taken: 0.002208 seconds

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
	it("should set the state", function() -- Line 18
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local tbl = {
			count = 1;
		}
		var2_upvw:setState(tbl)
		expect(var2_upvw:getState()).to.equal(tbl)
	end)
	it("should schedule a flush", function() -- Line 24
		--[[ Upvalues[1]:
			[1]: var2_upvw (read and write)
		]]
		local current_thread_upvw = coroutine.running()
		var2_upvw:subscribe(function(arg1) -- Line 27
			--[[ Upvalues[1]:
				[1]: current_thread_upvw (read and write)
			]]
			coroutine.resume(current_thread_upvw)
		end)
		var2_upvw:setState({
			count = 1;
		})
		task.delay(1, function() -- Line 33
			--[[ Upvalues[1]:
				[1]: current_thread_upvw (read and write)
			]]
			if current_thread_upvw then
				coroutine.resume(current_thread_upvw, "flush took too long")
			end
		end)
		expect(coroutine.yield()).to.equal(nil)
		current_thread_upvw = nil
	end)
end