-- Name: tween.spec
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.tween.spec
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6878423999951337 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:18
-- Luau version 6, Types version 3
-- Time taken: 0.003137 seconds

return function() -- Line 1
	local createMotion_upvr = require(script.Parent.Parent.createMotion)
	local tween_upvr = require(script.Parent.tween)
	it("should animate a value", function() -- Line 7
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: tween_upvr (readonly)
		]]
		local createMotion_upvr_result1 = createMotion_upvr(0)
		createMotion_upvr_result1:to(tween_upvr(1, {
			time = 0.01;
		}))
		createMotion_upvr_result1:step(0)
		expect(createMotion_upvr_result1:get()).to.equal(0)
		task.wait(0.05)
		createMotion_upvr_result1:step(0)
		expect(createMotion_upvr_result1:get()).to.equal(1)
	end)
	it("should animate multiple values", function() -- Line 21
		--[[ Upvalues[2]:
			[1]: createMotion_upvr (readonly)
			[2]: tween_upvr (readonly)
		]]
		local createMotion_upvr_result1_2 = createMotion_upvr({
			x = 0;
			y = 0;
		})
		createMotion_upvr_result1_2:to(tween_upvr({
			x = 1;
			y = 2;
		}, {
			time = 0.01;
		}))
		createMotion_upvr_result1_2:step(0)
		expect(createMotion_upvr_result1_2:get()).to.be.ok()
		expect(createMotion_upvr_result1_2:get().x).to.equal(0)
		expect(createMotion_upvr_result1_2:get().y).to.equal(0)
		task.wait(0.05)
		createMotion_upvr_result1_2:step(0)
		expect(createMotion_upvr_result1_2:get()).to.be.ok()
		expect(createMotion_upvr_result1_2:get().x).to.equal(1)
		expect(createMotion_upvr_result1_2:get().y).to.equal(2)
		createMotion_upvr_result1_2:to({
			x = tween_upvr(2, {
				time = 0.01;
			});
			y = tween_upvr(3, {
				time = 0.1;
			});
		})
		createMotion_upvr_result1_2:step(0)
		expect(createMotion_upvr_result1_2:get()).to.be.ok()
		expect(createMotion_upvr_result1_2:get().x).to.equal(1)
		expect(createMotion_upvr_result1_2:get().y).to.equal(2)
		task.wait(0.05)
		createMotion_upvr_result1_2:step(0)
		expect(createMotion_upvr_result1_2:get()).to.be.ok()
		expect(createMotion_upvr_result1_2:get().x).to.equal(2)
		expect(createMotion_upvr_result1_2:get().y).to.never.equal(3)
		task.wait(0.05)
		createMotion_upvr_result1_2:step(0)
		expect(createMotion_upvr_result1_2:get()).to.be.ok()
		expect(createMotion_upvr_result1_2:get().x).to.equal(2)
		expect(createMotion_upvr_result1_2:get().y).to.equal(3)
	end)
end