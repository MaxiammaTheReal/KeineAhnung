-- Name: immediate.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.immediate.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7256427999964217 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:14
-- Luau version 6, Types version 3
-- Time taken: 0.004224 seconds

return function() -- Line 1
	local createMotion_upvr = require(script.Parent.Parent.createMotion)
	local immediate_upvr = require(script.Parent.immediate)
	it("should set a value", function() -- Line 5
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: immediate_upvr (readonly)
		]]
		local createMotion_upvr_result1_3 = createMotion_upvr({
			x = 0;
			y = 0;
		})
		createMotion_upvr_result1_3:to(immediate_upvr({
			x = 1;
			y = 1;
		}))
		createMotion_upvr_result1_3:step(1)
		expect(createMotion_upvr_result1_3:get()).to.be.ok()
		expect(createMotion_upvr_result1_3:get().x).to.equal(1)
		expect(createMotion_upvr_result1_3:get().y).to.equal(1)
		expect(createMotion_upvr_result1_3:isComplete()).to.equal(true)
	end)
	it("should set multiple values", function() -- Line 17
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: immediate_upvr (readonly)
		]]
		local createMotion_upvr_result1 = createMotion_upvr({
			x = 0;
			y = 0;
		})
		createMotion_upvr_result1:to({
			x = immediate_upvr(1);
			y = immediate_upvr(1);
		})
		createMotion_upvr_result1:step(1)
		expect(createMotion_upvr_result1:get()).to.be.ok()
		expect(createMotion_upvr_result1:get().x).to.equal(1)
		expect(createMotion_upvr_result1:get().y).to.equal(1)
		expect(createMotion_upvr_result1:isComplete()).to.equal(true)
		createMotion_upvr_result1:to({
			x = immediate_upvr(2);
			y = immediate_upvr(2);
		})
		createMotion_upvr_result1:step(1)
		expect(createMotion_upvr_result1:get()).to.be.ok()
		expect(createMotion_upvr_result1:get().x).to.equal(2)
		expect(createMotion_upvr_result1:get().y).to.equal(2)
		expect(createMotion_upvr_result1:isComplete()).to.equal(true)
	end)
	it("should wake spring after last completion", function() -- Line 37
		--[[ Upvalues[1]:
			[1]: createMotion_upvr (readonly)
		]]
		local createMotion_upvr_result1_4 = createMotion_upvr(0)
		createMotion_upvr_result1_4:linear(1, {
			speed = 1;
		})
		createMotion_upvr_result1_4:step(1)
		expect(createMotion_upvr_result1_4:isComplete()).to.equal(true)
		local var16_upvw = 0
		local var17_upvw = 0
		createMotion_upvr_result1_4:onStep(function() -- Line 48
			--[[ Upvalues[1]:
				[1]: var16_upvw (read and write)
			]]
			var16_upvw += 1
		end)
		createMotion_upvr_result1_4:onComplete(function() -- Line 52
			--[[ Upvalues[1]:
				[1]: var17_upvw (read and write)
			]]
			var17_upvw += 1
		end)
		createMotion_upvr_result1_4:immediate(0)
		createMotion_upvr_result1_4:step(1)
		expect(createMotion_upvr_result1_4:isComplete()).to.equal(true)
		expect(var16_upvw).to.equal(1)
		expect(var17_upvw).to.equal(1)
		createMotion_upvr_result1_4:step(1)
		expect(var16_upvw).to.equal(1)
		expect(var17_upvw).to.equal(1)
	end)
	it("should trigger events", function() -- Line 69
		--[[ Upvalues[1]:
			[1]: createMotion_upvr (readonly)
		]]
		local createMotion_upvr_result1_2 = createMotion_upvr(0)
		local var22_upvw = 0
		local var23_upvw = 0
		createMotion_upvr_result1_2:onStep(function() -- Line 74
			--[[ Upvalues[1]:
				[1]: var22_upvw (read and write)
			]]
			var22_upvw += 1
		end)
		createMotion_upvr_result1_2:onComplete(function() -- Line 78
			--[[ Upvalues[1]:
				[1]: var23_upvw (read and write)
			]]
			var23_upvw += 1
		end)
		createMotion_upvr_result1_2:immediate(0)
		createMotion_upvr_result1_2:step(1)
		expect(createMotion_upvr_result1_2:isComplete()).to.equal(true)
		expect(var22_upvw).to.equal(1)
		expect(var23_upvw).to.equal(1)
		createMotion_upvr_result1_2:step(1)
		expect(var22_upvw).to.equal(1)
		expect(var23_upvw).to.equal(1)
	end)
end