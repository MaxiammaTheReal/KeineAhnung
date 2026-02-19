-- Name: resetState.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.Producer.spec.resetState.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.1904427000044961 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:29
-- Luau version 6, Types version 3
-- Time taken: 0.002790 seconds

return function() -- Line 1
	local tbl_upvr = {
		count = 0;
	}
	local var3_upvw
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 7
		--[[ Upvalues[3]:
			[1]: var3_upvw (read and write)
			[2]: createProducer_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		var3_upvw = createProducer_upvr(tbl_upvr, {
			increment = function(arg1, arg2) -- Line 9, Named "increment"
				return {
					count = arg1.count + arg2;
				}
			end;
		})
	end)
	afterEach(function() -- Line 15
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw:destroy()
	end)
	it("should reset the state to the initial state", function() -- Line 19
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: tbl_upvr (readonly)
		]]
		var3_upvw.increment(1)
		var3_upvw:resetState()
		expect(var3_upvw:getState()).to.equal(tbl_upvr)
	end)
	it("should trigger a state update if state changed", function() -- Line 25
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		local var11_upvw = false
		var3_upvw.increment(1)
		var3_upvw:flush()
		var3_upvw:subscribe(function() -- Line 29
			--[[ Upvalues[1]:
				[1]: var11_upvw (read and write)
			]]
			var11_upvw = true
		end)
		var3_upvw:resetState()
		var3_upvw:flush()
		expect(var11_upvw).to.equal(true)
	end)
end