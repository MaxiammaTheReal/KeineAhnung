-- Name: createBroadcaster.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.broadcast.createBroadcaster.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6483006999987992 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:18
-- Luau version 6, Types version 3
-- Time taken: 0.014980 seconds

return function() -- Line 1
	local createBroadcaster_upvr = require(script.Parent.createBroadcaster)
	local tbl_upvr = {}
	local var4_upvw
	local var5_upvw
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	local combineProducers_upvr = require(script.Parent.Parent.combineProducers)
	beforeEach(function() -- Line 9
		--[[ Upvalues[4]:
			[1]: var4_upvw (read and write)
			[2]: createProducer_upvr (readonly)
			[3]: var5_upvw (read and write)
			[4]: combineProducers_upvr (readonly)
		]]
		var4_upvw = {
			foo = createProducer_upvr({
				count = 0;
			}, {
				incrementFoo = function(arg1, arg2) -- Line 12, Named "incrementFoo"
					return {
						count = arg1.count + arg2;
					}
				end;
			});
			bar = createProducer_upvr({
				count = 0;
			}, {
				incrementBar = function(arg1, arg2) -- Line 17, Named "incrementBar"
					return {
						count = arg1.count + arg2;
					}
				end;
			});
		}
		var5_upvw = combineProducers_upvr(var4_upvw)
	end)
	afterEach(function() -- Line 26
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		var5_upvw:destroy()
	end)
	it("should return a broadcaster", function() -- Line 30
		--[[ Upvalues[2]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
		]]
		local tbl = {
			producers = var4_upvw;
		}
		local function dispatch() -- Line 33
		end
		tbl.dispatch = dispatch
		local var2_result1_3 = createBroadcaster_upvr(tbl)
		expect(var2_result1_3).to.be.a("table")
		expect(var2_result1_3.start).to.be.a("function")
		expect(var2_result1_3.middleware).to.be.a("function")
	end)
	it("should apply a safe middleware", function() -- Line 41
		--[[ Upvalues[3]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
		]]
		local tbl_2 = {
			producers = var4_upvw;
		}
		local function dispatch() -- Line 44
		end
		tbl_2.dispatch = dispatch
		var5_upvw:applyMiddleware(createBroadcaster_upvr(tbl_2).middleware)
		var5_upvw.incrementFoo(1)
		expect(var5_upvw:getState().foo.count).to.equal(1)
		expect(var5_upvw:getState().bar.count).to.equal(0)
	end)
	it("should hydrate the player on start", function() -- Line 54
		--[[ Upvalues[4]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		local var23_upvw
		local var24_upvw
		local tbl_4 = {
			producers = var4_upvw;
		}
		local function dispatch(...) -- Line 59
			--[[ Upvalues[2]:
				[1]: var23_upvw (read and write)
				[2]: var24_upvw (read and write)
			]]
			local var26, var27 = ...
			var23_upvw = var26
			var24_upvw = var27
		end
		tbl_4.dispatch = dispatch
		local var2_result1_4 = createBroadcaster_upvr(tbl_4)
		var5_upvw:applyMiddleware(var2_result1_4.middleware)
		var2_result1_4:start(tbl_upvr)
		expect(var23_upvw).to.equal(tbl_upvr)
		expect(var24_upvw).to.be.a("table")
		expect(#var24_upvw).to.equal(1)
		expect(var24_upvw[1].name).to.equal("__hydrate__")
		expect(var24_upvw[1].arguments[1]).to.be.a("table")
		expect(var24_upvw[1].arguments[1].foo).to.be.a("table")
		expect(var24_upvw[1].arguments[1].foo.count).to.equal(0)
		expect(var24_upvw[1].arguments[1].bar).to.be.a("table")
		expect(var24_upvw[1].arguments[1].bar.count).to.equal(0)
	end)
	it("should call dispatch function", function() -- Line 79
		--[[ Upvalues[4]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		local var30_upvw
		local var31_upvw
		local tbl_7 = {
			producers = var4_upvw;
		}
		local function dispatch(...) -- Line 84
			--[[ Upvalues[2]:
				[1]: var30_upvw (read and write)
				[2]: var31_upvw (read and write)
			]]
			local var33, var34 = ...
			var30_upvw = var33
			var31_upvw = var34
		end
		tbl_7.dispatch = dispatch
		local var2_result1_2 = createBroadcaster_upvr(tbl_7)
		var5_upvw:applyMiddleware(var2_result1_2.middleware)
		var2_result1_2:start(tbl_upvr)
		var5_upvw.incrementFoo(1)
		var5_upvw.incrementBar(2)
		var2_result1_2:flush()
		expect(var30_upvw).to.equal(tbl_upvr)
		expect(var31_upvw).to.be.a("table")
		expect(#var31_upvw).to.equal(2)
		expect(var31_upvw[1].name).to.equal("incrementFoo")
		expect(var31_upvw[1].arguments[1]).to.equal(1)
		expect(var31_upvw[2].name).to.equal("incrementBar")
		expect(var31_upvw[2].arguments[1]).to.equal(2)
	end)
	it("should exclude state and actions that are not provided", function() -- Line 106
		--[[ Upvalues[4]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		local var37_upvw
		local var38_upvw
		local tbl_6 = {
			producers = {
				foo = var4_upvw.foo;
			};
		}
		local function dispatch(arg1, arg2) -- Line 113
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: var38_upvw (read and write)
			]]
			var37_upvw = arg2
			local var41 = var38_upvw
			if not var41 then
				var41 = var37_upvw[1].arguments[1]
			end
			var38_upvw = var41
		end
		tbl_6.dispatch = dispatch
		local var2_result1_7 = createBroadcaster_upvr(tbl_6)
		var5_upvw:applyMiddleware(var2_result1_7.middleware)
		var2_result1_7:start(tbl_upvr)
		var5_upvw.incrementFoo(1)
		var5_upvw.incrementBar(2)
		var2_result1_7:flush()
		expect(var38_upvw).to.be.a("table")
		expect(var38_upvw.foo).to.be.a("table")
		expect(var38_upvw.foo.count).to.equal(0)
		expect(var38_upvw.bar).to.equal(nil)
		expect(#var37_upvw).to.equal(1)
		expect(var37_upvw[1].name).to.equal("incrementFoo")
		expect(var37_upvw[1].arguments[1]).to.equal(1)
	end)
	it("should receive a beforeHydrate option", function() -- Line 137
		--[[ Upvalues[4]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		local var44_upvw
		local var45_upvw
		local tbl_3 = {
			producers = var4_upvw;
		}
		local function dispatch(arg1, arg2) -- Line 142
			--[[ Upvalues[1]:
				[1]: var44_upvw (read and write)
			]]
			var44_upvw = arg2[1].arguments[1]
		end
		tbl_3.dispatch = dispatch
		function tbl_3.beforeHydrate(arg1, arg2) -- Line 145
			--[[ Upvalues[1]:
				[1]: var45_upvw (read and write)
			]]
			var45_upvw = arg1
			return {
				foo = arg2.foo;
				bar = nil;
			}
		end
		local var2_result1_5 = createBroadcaster_upvr(tbl_3)
		var5_upvw:applyMiddleware(var2_result1_5.middleware)
		var2_result1_5:start(tbl_upvr)
		expect(var45_upvw).to.equal(tbl_upvr)
		expect(var44_upvw).to.be.ok()
		expect(var44_upvw.foo).to.be.ok()
		expect(var44_upvw.foo.count).to.equal(0)
		expect(var44_upvw.bar).to.never.be.ok()
	end)
	it("should receive a beforeDispatch function", function() -- Line 164
		--[[ Upvalues[4]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		local var50_upvw
		local var51_upvw
		local tbl_5 = {
			producers = var4_upvw;
		}
		local function dispatch(arg1, arg2) -- Line 169
			--[[ Upvalues[1]:
				[1]: var50_upvw (read and write)
			]]
			var50_upvw = arg2
		end
		tbl_5.dispatch = dispatch
		function tbl_5.beforeDispatch(arg1, arg2) -- Line 172
			--[[ Upvalues[1]:
				[1]: var51_upvw (read and write)
			]]
			var51_upvw = arg1
			if arg2.name == "incrementFoo" then
				return arg2
			end
			return nil
		end
		local var2_result1_6 = createBroadcaster_upvr(tbl_5)
		var5_upvw:applyMiddleware(var2_result1_6.middleware)
		var2_result1_6:start(tbl_upvr)
		var5_upvw.incrementFoo(1)
		var5_upvw.incrementBar(2)
		var2_result1_6:flush()
		expect(var51_upvw).to.equal(tbl_upvr)
		expect(var50_upvw).to.be.a("table")
		expect(#var50_upvw).to.equal(1)
		expect(var50_upvw[1].name).to.equal("incrementFoo")
		expect(var50_upvw[1].arguments[1]).to.equal(1)
	end)
	it("should accept a hydrate function", function() -- Line 191
		--[[ Upvalues[4]:
			[1]: createBroadcaster_upvr (readonly)
			[2]: var4_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		local var55_upvw
		local var56_upvw
		local var57_upvw
		local var2_result1 = createBroadcaster_upvr({
			producers = var4_upvw;
			dispatch = function(...) -- Line 196, Named "dispatch"
				--[[ Upvalues[2]:
					[1]: var57_upvw (read and write)
					[2]: var55_upvw (read and write)
				]]
				local var59, var60 = ...
				var57_upvw = var59
				var55_upvw = var60
			end;
			hydrate = function(...) -- Line 199, Named "hydrate"
				--[[ Upvalues[2]:
					[1]: var57_upvw (read and write)
					[2]: var56_upvw (read and write)
				]]
				local var61, var62 = ...
				var57_upvw = var61
				var56_upvw = var62
			end;
		})
		var5_upvw:applyMiddleware(var2_result1.middleware)
		var2_result1:start(tbl_upvr)
		expect(var57_upvw).to.equal(tbl_upvr)
		expect(var56_upvw).to.be.a("table")
		expect(var56_upvw.foo.count).to.equal(0)
		expect(var56_upvw.bar.count).to.equal(0)
		expect(var55_upvw).to.never.be.ok()
		var5_upvw.incrementFoo(1)
		var5_upvw.incrementBar(2)
		var2_result1:flush()
		expect(var55_upvw).to.be.a("table")
		expect(var55_upvw[1].name).to.equal("incrementFoo")
		expect(var55_upvw[2].name).to.equal("incrementBar")
	end)
end