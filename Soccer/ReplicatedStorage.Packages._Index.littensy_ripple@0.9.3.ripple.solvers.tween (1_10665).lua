-- Name: tween
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.solvers.tween
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7249960999979521 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:18
-- Luau version 6, Types version 3
-- Time taken: 0.002899 seconds

local TweenService_upvr = game:GetService("TweenService")
local function createTween_upvr(arg1, arg2, arg3) -- Line 14, Named "createTween"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local NumberValue = Instance.new("NumberValue")
	local tbl = {}
	tbl.Value = arg2
	NumberValue.Value = arg1
	return {
		value = NumberValue;
		tween = TweenService_upvr:Create(NumberValue, TweenInfo.new(arg3.time, arg3.style, arg3.direction, arg3.repeatCount, arg3.reverses, arg3.delayTime), tbl);
		complete = false;
	}
end
local merge_upvr = require(script.Parent.Parent.utils.merge)
local config_upvr = require(script.Parent.Parent.config)
local intermediate_upvr = require(script.Parent.Parent.utils.intermediate)
return function(arg1, arg2) -- Line 36, Named "tween"
	--[[ Upvalues[4]:
		[1]: merge_upvr (readonly)
		[2]: config_upvr (readonly)
		[3]: intermediate_upvr (readonly)
		[4]: createTween_upvr (readonly)
	]]
	local var8 = arg2
	if not var8 then
		var8 = {}
	end
	local any_to_result1_upvr = intermediate_upvr.to(arg1)
	local merge_upvr_result1_upvr = merge_upvr(config_upvr.tween.default, var8)
	local tbl_2_upvr = {}
	return function(arg1_2, arg2_2) -- Line 41
		--[[ Upvalues[5]:
			[1]: intermediate_upvr (copied, readonly)
			[2]: any_to_result1_upvr (readonly)
			[3]: createTween_upvr (copied, readonly)
			[4]: merge_upvr_result1_upvr (readonly)
			[5]: tbl_2_upvr (readonly)
		]]
		local any_index_result1 = intermediate_upvr.index(any_to_result1_upvr, arg1_2)
		if not any_index_result1 then
			return false
		end
		if not arg2_2.destructor then
			local createTween_result1_upvr = createTween_upvr(arg2_2.value, any_index_result1, merge_upvr_result1_upvr)
			tbl_2_upvr[arg1_2] = createTween_result1_upvr
			createTween_result1_upvr.tween.Completed:Connect(function() -- Line 53
				--[[ Upvalues[1]:
					[1]: createTween_result1_upvr (readonly)
				]]
				createTween_result1_upvr.complete = true
				createTween_result1_upvr.value:Destroy()
				createTween_result1_upvr.tween:Destroy()
			end)
			createTween_result1_upvr.tween:Play()
			function arg2_2.destructor() -- Line 61
				--[[ Upvalues[3]:
					[1]: createTween_result1_upvr (readonly)
					[2]: tbl_2_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
				]]
				createTween_result1_upvr.tween:Destroy()
				createTween_result1_upvr.value:Destroy()
				tbl_2_upvr[arg1_2] = nil
			end
		end
		createTween_result1_upvr = tbl_2_upvr[arg1_2]
		local var16 = createTween_result1_upvr
		if not var16 then
			arg2_2.complete = true
		else
			if var16.complete then
				arg2_2.complete = true
				arg2_2.value = any_index_result1
				return
			end
			arg2_2.value = var16.value.Value
		end
	end
end