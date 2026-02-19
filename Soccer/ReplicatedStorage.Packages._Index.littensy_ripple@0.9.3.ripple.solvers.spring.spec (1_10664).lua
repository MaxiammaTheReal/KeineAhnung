-- Name: spring.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.spring.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7748438000053284 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:17
-- Luau version 6, Types version 3
-- Time taken: 0.006481 seconds

return function() -- Line 1
	local snapshot_upvr = require(script.Parent.Parent.utils.snapshot)
	local spring_upvr = require(script.Parent.spring)
	local tbl_upvr = {
		default = "[0.37,0.73,0.9,0.96,0.98,0.99,0.99,0.99,0.99,1]";
		underdamped = "[0.41,0.84,1.01,1.03,1.02,1.01,0.99,0.99,0.99,1]";
		critical = "[0.36,0.71,0.89,0.95,0.98,0.99,0.99,0.99,0.99,1]";
		overdamped = "[0.31,0.6,0.78,0.87,0.93,0.96,0.97,0.98,0.99,0.99,0.99,0.99,0.99,0.99,0.99,0.99]";
		tension_200 = "[0.43,0.81,0.95,0.99,0.99,1.01,1.01,1]";
		tension_300 = "[0.61,0.98,1.03,1.01,0.99,0.99,1]";
		mass_half = "[0.44,0.74,0.87,0.94,0.97,0.98,0.99,0.99,0.99,0.99,0.99,0.99,1]";
		mass_2 = "[0.27,0.67,0.92,1.03,1.05,1.03,1.02,1.01,0.99,0.99,0.99,0.99,1]";
		friction_20 = "[0.43,0.85,1.01,1.03,1.01,1.01,0.99,0.99,0.99,1]";
		friction_30 = "[0.35,0.67,0.84,0.92,0.96,0.98,0.99,0.99,0.99,0.99,0.99,0.99,1]";
	}
	it("should animate a value", function() -- Line 19
		--[[ Upvalues[3]:
			[1]: snapshot_upvr (readonly)
			[2]: spring_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		local any_testSnapshot_result1 = snapshot_upvr.testSnapshot(spring_upvr(1), tbl_upvr.default)
		expect(any_testSnapshot_result1:get()).to.equal(1)
		expect(any_testSnapshot_result1:isComplete()).to.equal(true)
	end)
	it("should accept damping ratio", function() -- Line 25
		--[[ Upvalues[3]:
			[1]: snapshot_upvr (readonly)
			[2]: spring_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			damping = 0.75;
		}), tbl_upvr.underdamped):isComplete()).to.equal(true)
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			damping = 1;
		}), tbl_upvr.critical):isComplete()).to.equal(true)
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			damping = 1.3;
		}), tbl_upvr.overdamped):isComplete()).to.equal(false)
	end)
	it("should accept tension", function() -- Line 38
		--[[ Upvalues[3]:
			[1]: snapshot_upvr (readonly)
			[2]: spring_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			tension = 200;
		}), tbl_upvr.tension_200):isComplete()).to.equal(true)
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			tension = 300;
		}), tbl_upvr.tension_300):isComplete()).to.equal(true)
	end)
	it("should accept mass", function() -- Line 48
		--[[ Upvalues[3]:
			[1]: snapshot_upvr (readonly)
			[2]: spring_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			mass = 0.5;
		}), tbl_upvr.mass_half):isComplete()).to.equal(true)
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			mass = 2;
		}), tbl_upvr.mass_2):isComplete()).to.equal(true)
	end)
	it("should accept friction", function() -- Line 58
		--[[ Upvalues[3]:
			[1]: snapshot_upvr (readonly)
			[2]: spring_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			friction = 20;
		}), tbl_upvr.friction_20):isComplete()).to.equal(true)
		expect(snapshot_upvr.testSnapshot(spring_upvr(1, {
			friction = 30;
		}), tbl_upvr.friction_30):isComplete()).to.equal(true)
	end)
	local createMotion_upvr = require(script.Parent.Parent.createMotion)
	describe("when passed initial values", function() -- Line 68
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: spring_upvr (readonly)
		]]
		it("should accept position", function() -- Line 69
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spring_upvr (copied, readonly)
			]]
			local createMotion_upvr_result1 = createMotion_upvr(0)
			createMotion_upvr_result1:to(spring_upvr(1, {
				position = 0.5;
			}))
			expect(createMotion_upvr_result1:get()).to.equal(0.5)
		end)
		it("should accept velocity", function() -- Line 75
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spring_upvr (copied, readonly)
			]]
			local var21_result1_2 = createMotion_upvr(0)
			var21_result1_2:to(spring_upvr(1, {
				velocity = 1000;
			}))
			local velocity = var21_result1_2.state[1].velocity
			expect(velocity).to.equal(1000)
			var21_result1_2:step(0.1)
			if 1 >= var21_result1_2:get() then
				velocity = false
			else
				velocity = true
			end
			expect(velocity).to.equal(true)
		end)
		it("should apply impulse", function() -- Line 85
			--[[ Upvalues[2]:
				[1]: createMotion_upvr (copied, readonly)
				[2]: spring_upvr (copied, readonly)
			]]
			local var21_result1 = createMotion_upvr(0)
			var21_result1:to(spring_upvr(1, {
				impulse = 1;
			}))
			var21_result1:to(spring_upvr(1, {
				impulse = 1;
			}))
			expect(var21_result1.state[1].velocity).to.equal(2)
		end)
	end)
end