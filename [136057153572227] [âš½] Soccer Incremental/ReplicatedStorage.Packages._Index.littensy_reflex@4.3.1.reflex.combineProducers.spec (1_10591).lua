-- Name: combineProducers.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.combineProducers.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7337062000005972 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:20
-- Luau version 6, Types version 3
-- Time taken: 0.005022 seconds

return function() -- Line 1
	local var2_upvw
	local var3_upvw
	local createProducer_upvr = require(script.Parent.createProducer)
	local combineProducers_upvr = require(script.Parent.combineProducers)
	beforeEach(function() -- Line 7
		--[[ Upvalues[4]:
			[1]: var2_upvw (read and write)
			[2]: createProducer_upvr (readonly)
			[3]: var3_upvw (read and write)
			[4]: combineProducers_upvr (readonly)
		]]
		local tbl = {}
		local tbl_2 = {
			incrementFoo = function(arg1, arg2) -- Line 10, Named "incrementFoo"
				return {
					count = arg1.count + arg2;
				}
			end;
		}
		local function shared(arg1, arg2) -- Line 13
			return {
				count = arg1.count + arg2;
			}
		end
		tbl_2.shared = shared
		tbl.foo = createProducer_upvr({
			count = 0;
		}, tbl_2)
		tbl.bar = createProducer_upvr({
			count = 0;
		}, {
			incrementBar = function(arg1, arg2) -- Line 18, Named "incrementBar"
				return {
					count = arg1.count + arg2;
				}
			end;
			shared = function(arg1, arg2) -- Line 21, Named "shared"
				return {
					count = arg1.count + arg2;
				}
			end;
		})
		var2_upvw = tbl
		var3_upvw = combineProducers_upvr(var2_upvw)
	end)
	afterEach(function() -- Line 30
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: var2_upvw (read and write)
		]]
		var3_upvw:destroy()
		for _, v in var2_upvw do
			v:destroy()
		end
	end)
	it("should combine the initial state of each producer", function() -- Line 37
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		local any_getState_result1 = var3_upvw:getState()
		expect(any_getState_result1).to.be.a("table")
		expect(any_getState_result1.foo).to.be.a("table")
		expect(any_getState_result1.foo.count).to.equal(0)
		expect(any_getState_result1.bar).to.be.a("table")
		expect(any_getState_result1.bar.count).to.equal(0)
	end)
	it("should include every dispatcher function", function() -- Line 46
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		expect(var3_upvw.incrementFoo).to.be.a("function")
		expect(var3_upvw.incrementBar).to.be.a("function")
		expect(var3_upvw.shared).to.be.a("function")
	end)
	it("should dispatch to the correct producer", function() -- Line 52
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw.incrementFoo(1)
		expect(var3_upvw:getState().foo.count).to.equal(1)
		expect(var3_upvw:getState().bar.count).to.equal(0)
		var3_upvw.incrementBar(1)
		expect(var3_upvw:getState().foo.count).to.equal(1)
		expect(var3_upvw:getState().bar.count).to.equal(1)
	end)
	it("should combine dispatchers with the same name", function() -- Line 62
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		var3_upvw.shared(1)
		expect(var3_upvw:getState().foo.count).to.equal(1)
		expect(var3_upvw:getState().bar.count).to.equal(1)
	end)
end