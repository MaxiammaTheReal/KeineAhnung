-- Name: createBroadcastReceiver.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.broadcast.createBroadcastReceiver.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7079501999978675 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:16
-- Luau version 6, Types version 3
-- Time taken: 0.008938 seconds

return function() -- Line 1
	local combineProducers_upvr = require(script.Parent.Parent.combineProducers)
	local createBroadcastReceiver_upvr = require(script.Parent.createBroadcastReceiver)
	local var4_upvw
	local var5_upvw
	local createProducer_upvr = require(script.Parent.Parent.createProducer)
	beforeEach(function() -- Line 11
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
				incrementFoo = function(arg1, arg2) -- Line 14, Named "incrementFoo"
					return {
						count = arg1.count + arg2;
					}
				end;
			});
			bar = createProducer_upvr({
				count = 0;
			}, {
				incrementBar = function(arg1, arg2) -- Line 19, Named "incrementBar"
					return {
						count = arg1.count + arg2;
					}
				end;
			});
		}
		var5_upvw = combineProducers_upvr(var4_upvw)
	end)
	afterEach(function() -- Line 28
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		var5_upvw:destroy()
	end)
	it("should return a broadcast receiver", function() -- Line 32
		--[[ Upvalues[1]:
			[1]: createBroadcastReceiver_upvr (readonly)
		]]
		local tbl_3 = {}
		local function start() -- Line 34
		end
		tbl_3.start = start
		local createBroadcastReceiver_upvr_result1 = createBroadcastReceiver_upvr(tbl_3)
		expect(createBroadcastReceiver_upvr_result1).to.be.a("table")
		expect(createBroadcastReceiver_upvr_result1.middleware).to.be.a("function")
		expect(createBroadcastReceiver_upvr_result1.dispatch).to.be.a("function")
	end)
	it("should apply a safe middleware", function() -- Line 42
		--[[ Upvalues[2]:
			[1]: createBroadcastReceiver_upvr (readonly)
			[2]: var5_upvw (read and write)
		]]
		local tbl_5 = {}
		local function start() -- Line 44
		end
		tbl_5.start = start
		var5_upvw:applyMiddleware(createBroadcastReceiver_upvr(tbl_5).middleware)
		var5_upvw.incrementFoo(1)
		expect(var5_upvw:getState().foo.count).to.equal(1)
		expect(var5_upvw:getState().bar.count).to.equal(0)
	end)
	local hydrate_upvr = require(script.Parent.hydrate)
	it("should hydrate the producer with the server state", function() -- Line 54
		--[[ Upvalues[3]:
			[1]: createBroadcastReceiver_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: hydrate_upvr (readonly)
		]]
		local tbl_2 = {}
		local function start() -- Line 56
		end
		tbl_2.start = start
		local createBroadcastReceiver_upvr_result1_3 = createBroadcastReceiver_upvr(tbl_2)
		var5_upvw:applyMiddleware(createBroadcastReceiver_upvr_result1_3.middleware)
		createBroadcastReceiver_upvr_result1_3:dispatch({hydrate_upvr.createHydrateAction({
			foo = {
				count = 1;
			};
		})})
		local any_getState_result1_2 = var5_upvw:getState()
		expect(any_getState_result1_2.foo.count).to.equal(1)
		expect(any_getState_result1_2.bar.count).to.equal(0)
		local any_incrementFoo_result1 = var5_upvw.incrementFoo(1)
		expect(any_incrementFoo_result1.foo.count).to.equal(2)
		expect(any_incrementFoo_result1.bar.count).to.equal(0)
	end)
	it("should dispatch actions from the server", function() -- Line 73
		--[[ Upvalues[2]:
			[1]: createBroadcastReceiver_upvr (readonly)
			[2]: var5_upvw (read and write)
		]]
		local tbl = {}
		local function start() -- Line 75
		end
		tbl.start = start
		local createBroadcastReceiver_upvr_result1_4 = createBroadcastReceiver_upvr(tbl)
		var5_upvw:applyMiddleware(createBroadcastReceiver_upvr_result1_4.middleware)
		createBroadcastReceiver_upvr_result1_4:dispatch({{
			name = "incrementFoo";
			arguments = {1};
		}, {
			name = "incrementBar";
			arguments = {2};
		}, {
			name = "incrementBaz";
			arguments = {3};
		}})
		local any_getState_result1_3 = var5_upvw:getState()
		expect(any_getState_result1_3.foo.count).to.equal(1)
		expect(any_getState_result1_3.bar.count).to.equal(2)
	end)
	local createBroadcaster_upvr = require(script.Parent.createBroadcaster)
	local tbl_4_upvr = {}
	it("should receive updates from a broadcaster", function() -- Line 91
		--[[ Upvalues[6]:
			[1]: var5_upvw (read and write)
			[2]: combineProducers_upvr (readonly)
			[3]: var4_upvw (read and write)
			[4]: createBroadcaster_upvr (readonly)
			[5]: createBroadcastReceiver_upvr (readonly)
			[6]: tbl_4_upvr (readonly)
		]]
		local var44 = var5_upvw
		local combineProducers_upvr_result1 = combineProducers_upvr(var4_upvw)
		local var46_upvw
		local var47_upvw
		local var42_result1_upvr = createBroadcaster_upvr({
			producers = var4_upvw;
			dispatch = function(...) -- Line 98, Named "dispatch"
				--[[ Upvalues[2]:
					[1]: var46_upvw (read and write)
					[2]: var47_upvw (read and write)
				]]
				local var49, var50 = ...
				var46_upvw = var49
				var47_upvw = var50
			end;
		})
		local createBroadcastReceiver_upvr_result1_2 = createBroadcastReceiver_upvr({
			start = function() -- Line 104, Named "start"
				--[[ Upvalues[2]:
					[1]: var42_result1_upvr (readonly)
					[2]: tbl_4_upvr (copied, readonly)
				]]
				var42_result1_upvr:start(tbl_4_upvr)
			end;
		})
		var44:setState({
			foo = {
				count = -1;
			};
			bar = {
				count = -1;
			};
		})
		combineProducers_upvr_result1:applyMiddleware(var42_result1_upvr.middleware)
		var44:applyMiddleware(createBroadcastReceiver_upvr_result1_2.middleware)
		createBroadcastReceiver_upvr_result1_2:dispatch(var47_upvw)
		local any_getState_result1_4 = var44:getState()
		expect(any_getState_result1_4.foo.count).to.equal(0)
		expect(any_getState_result1_4.bar.count).to.equal(0)
		combineProducers_upvr_result1.incrementFoo(1)
		combineProducers_upvr_result1.incrementBar(2)
		var42_result1_upvr:flush()
		expect(var46_upvw).to.equal(tbl_4_upvr)
		expect(#var47_upvw).to.equal(2)
		local unpacked_value_1, unpacked_value_2 = table.unpack(var47_upvw)
		expect(unpacked_value_1.name).to.equal("incrementFoo")
		expect(unpacked_value_1.arguments[1]).to.equal(1)
		expect(unpacked_value_2.name).to.equal("incrementBar")
		expect(unpacked_value_2.arguments[1]).to.equal(2)
		local any_getState_result1 = var44:getState()
		expect(any_getState_result1.foo.count).to.equal(0)
		expect(any_getState_result1.bar.count).to.equal(0)
		createBroadcastReceiver_upvr_result1_2:dispatch(var47_upvw)
		local any_getState_result1_5 = var44:getState()
		expect(any_getState_result1_5.foo.count).to.equal(1)
		expect(any_getState_result1_5.bar.count).to.equal(2)
	end)
end