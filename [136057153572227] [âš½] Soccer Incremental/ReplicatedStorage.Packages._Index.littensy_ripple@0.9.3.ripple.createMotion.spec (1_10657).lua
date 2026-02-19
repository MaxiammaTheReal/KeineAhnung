-- Name: createMotion.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.createMotion.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.637797799994587 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:11
-- Luau version 6, Types version 3
-- Time taken: 0.018102 seconds

return function() -- Line 1
	local createMotion_upvr = require(script.Parent.createMotion)
	local linear_upvr = require(script.Parent.solvers.linear)
	local spy_upvr = require(script.Parent.utils.spy)
	it("should return a Motion", function() -- Line 7
		--[[ Upvalues[1]:
			[1]: createMotion_upvr (readonly)
		]]
		local var2_result1_9 = createMotion_upvr(0)
		expect(var2_result1_9).to.be.ok()
		expect(var2_result1_9.state).to.be.a("table")
		expect(var2_result1_9.start).to.be.a("function")
		expect(var2_result1_9.stop).to.be.a("function")
		expect(var2_result1_9.get).to.be.a("function")
		expect(var2_result1_9.set).to.be.a("function")
		expect(var2_result1_9.getVelocity).to.be.a("function")
		expect(var2_result1_9.setVelocity).to.be.a("function")
		expect(var2_result1_9.patch).to.be.a("function")
		expect(var2_result1_9.impulse).to.be.a("function")
		expect(var2_result1_9.to).to.be.a("function")
		expect(var2_result1_9.step).to.be.a("function")
		expect(var2_result1_9.isComplete).to.be.a("function")
		expect(var2_result1_9.onComplete).to.be.a("function")
		expect(var2_result1_9.onStep).to.be.a("function")
		expect(var2_result1_9.destroy).to.be.a("function")
	end)
	it("should animate a number", function() -- Line 27
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		local createMotion_upvr_result1_2 = createMotion_upvr(0)
		createMotion_upvr_result1_2:to(linear_upvr(1, {
			speed = 1;
		}))
		createMotion_upvr_result1_2:step(0.5)
		expect(createMotion_upvr_result1_2:get()).to.equal(0.5)
		expect(createMotion_upvr_result1_2:isComplete()).to.equal(false)
		createMotion_upvr_result1_2:step(0.5)
		expect(createMotion_upvr_result1_2:get()).to.equal(1)
		expect(createMotion_upvr_result1_2:isComplete()).to.equal(true)
	end)
	it("should animate a vector", function() -- Line 42
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		local var2_result1_6 = createMotion_upvr(Vector3.new())
		var2_result1_6:to(linear_upvr(Vector3.new(0.5, 0.75, 1), {
			speed = 1;
		}))
		var2_result1_6:step(0.5)
		expect(var2_result1_6:get()).to.equal(Vector3.new(0.5, 0.5, 0.5))
		expect(var2_result1_6:isComplete()).to.equal(false)
		var2_result1_6:step(0.5)
		expect(var2_result1_6:get()).to.equal(Vector3.new(0.5, 0.75, 1))
		expect(var2_result1_6:isComplete()).to.equal(true)
	end)
	it("should animate an array", function() -- Line 57
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		local var2_result1_11 = createMotion_upvr({0, 0, 0})
		var2_result1_11:to(linear_upvr({0.5, 0.75, 1}, {
			speed = 1;
		}))
		var2_result1_11:step(0.5)
		expect(var2_result1_11:get()[1]).to.equal(0.5)
		expect(var2_result1_11:get()[2]).to.equal(0.5)
		expect(var2_result1_11:get()[3]).to.equal(0.5)
		var2_result1_11:step(0.5)
		expect(var2_result1_11:get()[1]).to.equal(0.5)
		expect(var2_result1_11:get()[2]).to.equal(0.75)
		expect(var2_result1_11:get()[3]).to.equal(1)
	end)
	describe("when calling 'step'", function() -- Line 74
		--[[ Upvalues[3]:
			[1]: createMotion_upvr (readonly)
			[2]: spy_upvr (readonly)
			[3]: linear_upvr (readonly)
		]]
		it("should call onStep", function() -- Line 75
			--[[ Upvalues[3]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spy_upvr (copied, readonly)
				[3]: linear_upvr (copied, readonly)
			]]
			local createMotion_upvr_result1_3 = createMotion_upvr(0)
			local spy_upvr_result1 = spy_upvr()
			createMotion_upvr_result1_3:onStep(spy_upvr_result1.handle)
			createMotion_upvr_result1_3:to(linear_upvr(1, {
				speed = 1;
			}))
			createMotion_upvr_result1_3:step(0.5)
			expect(spy_upvr_result1.calls).to.equal(1)
			expect(spy_upvr_result1.arguments[1][1]).to.equal(0.5)
			expect(spy_upvr_result1.arguments[1][2]).to.equal(0.5)
			createMotion_upvr_result1_3:step(0.5)
			expect(spy_upvr_result1.calls).to.equal(2)
			expect(spy_upvr_result1.arguments[2][1]).to.equal(1)
			expect(spy_upvr_result1.arguments[2][2]).to.equal(0.5)
			createMotion_upvr_result1_3:step(0.5)
			expect(spy_upvr_result1.calls).to.equal(2)
			createMotion_upvr_result1_3:to(linear_upvr(0, {
				speed = 1;
			}))
			createMotion_upvr_result1_3:step(0.5)
			expect(spy_upvr_result1.calls).to.equal(3)
			expect(spy_upvr_result1.arguments[3][1]).to.equal(0.5)
			expect(spy_upvr_result1.arguments[3][2]).to.equal(0.5)
		end)
		it("should call onComplete", function() -- Line 105
			--[[ Upvalues[3]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spy_upvr (copied, readonly)
				[3]: linear_upvr (copied, readonly)
			]]
			local createMotion_upvr_result1 = createMotion_upvr(0)
			local spy_upvr_result1_2 = spy_upvr()
			createMotion_upvr_result1:onComplete(spy_upvr_result1_2.handle)
			createMotion_upvr_result1:to(linear_upvr(1, {
				speed = 1;
			}))
			createMotion_upvr_result1:step(0.5)
			expect(spy_upvr_result1_2.calls).to.equal(0)
			createMotion_upvr_result1:step(0.5)
			expect(spy_upvr_result1_2.calls).to.equal(1)
			expect(spy_upvr_result1_2.arguments[1][1]).to.equal(1)
			createMotion_upvr_result1:step(0.5)
			expect(spy_upvr_result1_2.calls).to.equal(1)
			createMotion_upvr_result1:to(linear_upvr(0, {
				speed = 1;
			}))
			createMotion_upvr_result1:step(1)
			expect(spy_upvr_result1_2.calls).to.equal(2)
			expect(spy_upvr_result1_2.arguments[2][1]).to.equal(0)
		end)
		it("should not run completed solvers", function() -- Line 131
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spy_upvr (copied, readonly)
			]]
			local var2_result1_2 = createMotion_upvr({
				a = 0;
				b = 0;
			})
			local spy_upvr_result1_5 = spy_upvr()
			local spy_upvr_result1_3_upvr = spy_upvr()
			var2_result1_2:to({
				a = spy_upvr_result1_5.handle;
				b = function(arg1, arg2, arg3) -- Line 138, Named "b"
					--[[ Upvalues[1]:
						[1]: spy_upvr_result1_3_upvr (readonly)
					]]
					spy_upvr_result1_3_upvr.handle(arg1, arg2, arg3)
					arg2.value = 1
					arg2.complete = true
				end;
			})
			expect(var2_result1_2.state.a.complete).to.equal(false)
			expect(var2_result1_2.state.b.complete).to.equal(true)
			expect(spy_upvr_result1_5.calls).to.equal(1)
			expect(spy_upvr_result1_3_upvr.calls).to.equal(1)
			var2_result1_2:step(1)
			expect(var2_result1_2.state.a.complete).to.equal(false)
			expect(var2_result1_2.state.b.complete).to.equal(true)
			expect(spy_upvr_result1_5.calls).to.equal(2)
			expect(spy_upvr_result1_3_upvr.calls).to.equal(1)
		end)
	end)
	describe("when calling 'to'", function() -- Line 159
		--[[ Upvalues[3]:
			[1]: createMotion_upvr (readonly)
			[2]: spy_upvr (readonly)
			[3]: linear_upvr (readonly)
		]]
		it("should destroy the old solver", function() -- Line 160
			--[[ Upvalues[3]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spy_upvr (copied, readonly)
				[3]: linear_upvr (copied, readonly)
			]]
			local var2_result1_10 = createMotion_upvr(0)
			local spy_upvr_result1_4_upvr = spy_upvr()
			var2_result1_10:to(function(arg1, arg2) -- Line 164
				--[[ Upvalues[1]:
					[1]: spy_upvr_result1_4_upvr (readonly)
				]]
				arg2.destructor = spy_upvr_result1_4_upvr.handle
			end)
			var2_result1_10:step(1)
			expect(spy_upvr_result1_4_upvr.calls).to.equal(0)
			var2_result1_10:to(linear_upvr(1))
			expect(spy_upvr_result1_4_upvr.calls).to.equal(1)
		end)
		it("should accept solvers per key", function() -- Line 175
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: linear_upvr (copied, readonly)
			]]
			local var2_result1_8 = createMotion_upvr({
				a = 0;
				b = 0;
			})
			var2_result1_8:to({
				a = linear_upvr(1, {
					speed = 1;
				});
				b = linear_upvr(1, {
					speed = 0.5;
				});
			})
			var2_result1_8:step(0.5)
			expect(var2_result1_8:get().a).to.equal(0.5)
			expect(var2_result1_8:get().b).to.equal(0.25)
			expect(var2_result1_8:isComplete()).to.equal(false)
			var2_result1_8:step(0.5)
			expect(var2_result1_8:get().a).to.equal(1)
			expect(var2_result1_8:get().b).to.equal(0.5)
			expect(var2_result1_8:isComplete()).to.equal(false)
			var2_result1_8:step(1)
			expect(var2_result1_8:get().a).to.equal(1)
			expect(var2_result1_8:get().b).to.equal(1)
			expect(var2_result1_8:isComplete()).to.equal(true)
		end)
		it("should mount the solver", function() -- Line 202
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spy_upvr (copied, readonly)
			]]
			local var4_result1 = spy_upvr()
			createMotion_upvr(0):to(var4_result1.handle)
			expect(var4_result1.calls).to.equal(1)
			expect(var4_result1.arguments[1][1]).to.equal(1)
			expect(var4_result1.arguments[1][2]).to.be.a("table")
			expect(var4_result1.arguments[1][3]).to.equal(0)
		end)
		it("should accept complex solvers", function() -- Line 214
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: linear_upvr (copied, readonly)
			]]
			local var2_result1_7 = createMotion_upvr({
				a = 0;
				b = 0;
			})
			var2_result1_7:to(linear_upvr({
				a = 1;
			}, {
				speed = 1;
			}))
			var2_result1_7:to(linear_upvr({
				b = 1;
			}, {
				speed = 1;
			}))
			var2_result1_7:step(0.5)
			expect(var2_result1_7:get().a).to.equal(0.5)
			expect(var2_result1_7:get().b).to.equal(0.5)
			expect(var2_result1_7:isComplete()).to.equal(false)
			var2_result1_7:step(0.5)
			expect(var2_result1_7:get().a).to.equal(1)
			expect(var2_result1_7:get().b).to.equal(1)
			expect(var2_result1_7:isComplete()).to.equal(true)
		end)
	end)
	describe("when passing options", function() -- Line 233
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		it("should accept heartbeat", function() -- Line 234
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: linear_upvr (copied, readonly)
			]]
			local tbl_upvr = {}
			local function _(arg1) -- Line 248, Named "step"
				--[[ Upvalues[1]:
					[1]: tbl_upvr (readonly)
				]]
				for _, v in tbl_upvr do
					v(arg1)
				end
			end
			local var2_result1_4 = createMotion_upvr(0, {
				heartbeat = {
					Connect = function(arg1, arg2) -- Line 238, Named "connect"
						--[[ Upvalues[1]:
							[1]: tbl_upvr (readonly)
						]]
						table.insert(tbl_upvr, arg2)
						return {
							Disconnect = function() -- Line 241, Named "disconnect"
								--[[ Upvalues[2]:
									[1]: tbl_upvr (copied, readonly)
									[2]: arg2 (readonly)
								]]
								table.remove(tbl_upvr, table.find(tbl_upvr, arg2) or -1)
							end;
						}
					end;
				};
				start = true;
			})
			var2_result1_4:to(linear_upvr(1, {
				speed = 1;
			}))
			for _, v_2 in tbl_upvr do
				v_2(0.5)
			end
			expect(var2_result1_4:get()).to.equal(0.5)
			expect(var2_result1_4:isComplete()).to.equal(false)
			for _, v_3 in tbl_upvr do
				v_3(0.5)
			end
			expect(var2_result1_4:get()).to.equal(1)
			expect(var2_result1_4:isComplete()).to.equal(true)
		end)
	end)
	describe("patching state", function() -- Line 276
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		it("should set a value", function() -- Line 277
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: linear_upvr (copied, readonly)
			]]
			local var2_result1_5 = createMotion_upvr({
				a = 0;
				b = 0;
			})
			var2_result1_5:to({
				a = linear_upvr(1, {
					speed = 1;
				});
				b = linear_upvr(1, {
					speed = 0.5;
				});
			})
			var2_result1_5:step(0.5)
			expect(var2_result1_5:get().a).to.equal(0.5)
			expect(var2_result1_5:get().b).to.equal(0.25)
			var2_result1_5:set({
				a = 2;
			})
			var2_result1_5:step(0.5)
			expect(var2_result1_5:get().a).to.equal(1.5)
			expect(var2_result1_5:get().b).to.equal(0.5)
		end)
		it("should flag as incomplete", function() -- Line 297
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: linear_upvr (copied, readonly)
			]]
			local var2_result1_3 = createMotion_upvr({
				a = 0;
				b = 0;
			})
			var2_result1_3:to({
				a = linear_upvr(1, {
					speed = 1;
				});
				b = linear_upvr(1, {
					speed = 1;
				});
			})
			var2_result1_3:step(1)
			expect(var2_result1_3:isComplete()).to.equal(true)
			var2_result1_3:set({
				a = 2;
			})
			expect(var2_result1_3:isComplete()).to.equal(false)
			var2_result1_3:step(1)
			expect(var2_result1_3:isComplete()).to.equal(true)
		end)
		it("should patch the state", function() -- Line 315
			--[[ Upvalues[1]:
				[1]: createMotion_upvr (copied, readonly)
			]]
			local var2_result1 = createMotion_upvr({
				a = 0;
				b = 0;
			})
			var2_result1:patch({
				a = {
					value = 1;
				};
			})
			expect(var2_result1:get().a).to.equal(1)
			expect(var2_result1:get().b).to.equal(0)
		end)
	end)
end