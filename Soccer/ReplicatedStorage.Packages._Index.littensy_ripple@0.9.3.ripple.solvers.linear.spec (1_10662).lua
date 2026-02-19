-- Name: linear.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.linear.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6382980999987922 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:15
-- Luau version 6, Types version 3
-- Time taken: 0.004110 seconds

return function() -- Line 1
	local createMotion_upvr = require(script.Parent.Parent.createMotion)
	local linear_upvr = require(script.Parent.linear)
	it("should animate a value", function() -- Line 5
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		local createMotion_upvr_result1 = createMotion_upvr(0)
		createMotion_upvr_result1:to(linear_upvr(1, {
			speed = 1;
		}))
		createMotion_upvr_result1:step(0.5)
		expect(createMotion_upvr_result1:get()).to.equal(0.5)
		expect(createMotion_upvr_result1:isComplete()).to.equal(false)
		createMotion_upvr_result1:step(0.5)
		expect(createMotion_upvr_result1:get()).to.equal(1)
		expect(createMotion_upvr_result1:isComplete()).to.equal(true)
	end)
	it("should animate multiple values", function() -- Line 20
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		local createMotion_upvr_result1_3 = createMotion_upvr({
			x = 0;
			y = 0;
		})
		createMotion_upvr_result1_3:to(linear_upvr({
			x = 1;
			y = 1;
		}, {
			speed = 1;
		}))
		createMotion_upvr_result1_3:step(0.5)
		expect(createMotion_upvr_result1_3:get()).to.be.ok()
		expect(createMotion_upvr_result1_3:get().x).to.equal(0.5)
		expect(createMotion_upvr_result1_3:get().y).to.equal(0.5)
		expect(createMotion_upvr_result1_3:isComplete()).to.equal(false)
		createMotion_upvr_result1_3:step(0.5)
		expect(createMotion_upvr_result1_3:get()).to.be.ok()
		expect(createMotion_upvr_result1_3:get().x).to.equal(1)
		expect(createMotion_upvr_result1_3:get().y).to.equal(1)
		expect(createMotion_upvr_result1_3:isComplete()).to.equal(true)
		createMotion_upvr_result1_3:to({
			x = linear_upvr(2, {
				speed = 1;
			});
			y = linear_upvr(2, {
				speed = 0.5;
			});
		})
		createMotion_upvr_result1_3:step(0.5)
		expect(createMotion_upvr_result1_3:get()).to.be.ok()
		expect(createMotion_upvr_result1_3:get().x).to.equal(1.5)
		expect(createMotion_upvr_result1_3:get().y).to.equal(1.25)
		expect(createMotion_upvr_result1_3:isComplete()).to.equal(false)
		createMotion_upvr_result1_3:step(0.5)
		expect(createMotion_upvr_result1_3:get()).to.be.ok()
		expect(createMotion_upvr_result1_3:get().x).to.equal(2)
		expect(createMotion_upvr_result1_3:get().y).to.equal(1.5)
		expect(createMotion_upvr_result1_3:isComplete()).to.equal(false)
		createMotion_upvr_result1_3:step(1)
		expect(createMotion_upvr_result1_3:get()).to.be.ok()
		expect(createMotion_upvr_result1_3:get().x).to.equal(2)
		expect(createMotion_upvr_result1_3:get().y).to.equal(2)
		expect(createMotion_upvr_result1_3:isComplete()).to.equal(true)
	end)
	it("should complete if overshooting", function() -- Line 65
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: linear_upvr (readonly)
		]]
		local createMotion_upvr_result1_2 = createMotion_upvr(0)
		createMotion_upvr_result1_2:to(linear_upvr(1, {
			speed = 1;
		}))
		createMotion_upvr_result1_2:step(1000)
		expect(createMotion_upvr_result1_2:get()).to.equal(1)
		expect(createMotion_upvr_result1_2:isComplete()).to.equal(true)
	end)
end