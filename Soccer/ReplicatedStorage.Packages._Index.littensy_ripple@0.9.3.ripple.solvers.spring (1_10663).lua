-- Name: spring
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.spring
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.603214199996728 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:16
-- Luau version 6, Types version 3
-- Time taken: 0.007368 seconds

local config_upvr = require(script.Parent.Parent.config)
local function configure_upvr(arg1) -- Line 8, Named "configure"
	--[[ Upvalues[1]:
		[1]: config_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2 = arg1.mass or 1
	local var3
	if not var3 then
		var3 = config_upvr.spring.default.tension
	end
	if not arg1.friction then
	end
	if arg1.frequency or arg1.damping then
		local var4 = arg1.frequency or 0.5
		var3 = ((-math.pi*2) / var4) ^ 2 * var2
	end
	return {
		mass = var2;
		tension = var3;
		friction = 12.566370614359172 * (arg1.damping or 1) * var2 / var4;
		position = arg1.position;
		velocity = arg1.velocity;
		impulse = arg1.impulse;
		restingVelocity = arg1.restingVelocity or 0.001;
		restingPosition = arg1.restingPosition or 0.0001;
	}
end
local intermediate_upvr = require(script.Parent.Parent.utils.intermediate)
return function(arg1, arg2) -- Line 32, Named "spring"
	--[[ Upvalues[2]:
		[1]: configure_upvr (readonly)
		[2]: intermediate_upvr (readonly)
	]]
	local var7 = arg2
	if not var7 then
		var7 = {}
	end
	local any_to_result1_upvr = intermediate_upvr.to(arg1)
	local var10_upvw = true
	local configure_upvr_result1_upvr = configure_upvr(var7)
	return function(arg1_2, arg2_2, arg3) -- Line 37
		--[[ Upvalues[4]:
			[1]: intermediate_upvr (copied, readonly)
			[2]: any_to_result1_upvr (readonly)
			[3]: var10_upvw (read and write)
			[4]: configure_upvr_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_index_result1_2 = intermediate_upvr.index(any_to_result1_upvr, arg1_2)
		if not any_index_result1_2 then
			return false
		end
		local var26
		if var26 then
			var26 = false
			var10_upvw = var26
			var26 = configure_upvr_result1_upvr.position
			if not var26 then
				var26 = arg2_2.value
				if not var26 then
					var26 = 0
				end
			end
			arg2_2.value = var26
			if not configure_upvr_result1_upvr.velocity and not arg2_2.velocity then
			end
			var26 = 0 + (configure_upvr_result1_upvr.impulse or 0)
			arg2_2.velocity = var26
		end
		local var27 = arg2_2.velocity or 0
		for _ = 1, math.min(math.ceil(arg3 * 1000 / 1), 100) do
			local var28 = var27 + (-configure_upvr_result1_upvr.tension * 0.000001 * (arg2_2.value - any_index_result1_2) + -configure_upvr_result1_upvr.friction * 0.001 * var27) / configure_upvr_result1_upvr.mass * 1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local var29
		end
		if math.abs(var28) < configure_upvr_result1_upvr.restingVelocity then
			if math.abs(var29 - any_index_result1_2) < configure_upvr_result1_upvr.restingPosition then
				arg2_2.complete = true
				arg2_2.value = any_index_result1_2
				arg2_2.velocity = 0
				return
			end
		end
		arg2_2.value = var29
		arg2_2.velocity = var28
	end
end