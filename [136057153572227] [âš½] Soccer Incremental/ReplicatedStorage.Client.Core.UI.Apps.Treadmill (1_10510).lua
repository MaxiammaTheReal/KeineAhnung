-- Name: Treadmill
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Treadmill
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6676379999989877 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:16
-- Luau version 6, Types version 3
-- Time taken: 0.004531 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local source_upvr = Vide.source
local useMotion_upvr = require(ReplicatedStorage.Shared.Util).ui.useMotion
local effect_upvr = Vide.effect
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
return function(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[5]:
		[1]: source_upvr (readonly)
		[2]: useMotion_upvr (readonly)
		[3]: effect_upvr (readonly)
		[4]: apply_upvr (readonly)
		[5]: derive_upvr (readonly)
	]]
	local source_upvr_result1_upvr = source_upvr(false)
	local Position_upvr = arg3.Container.Position
	local var11_upvr = Position_upvr + UDim2.fromOffset(0, 100)
	local var5_result1_4_upvr, var5_result2_upvr_3 = useMotion_upvr(0)
	local var5_result1_3_upvr, var5_result2_upvr_2 = useMotion_upvr(0)
	local var5_result1, var5_result2_upvr = useMotion_upvr(0)
	local var5_result1_2_upvr, useMotion_upvr_result2_upvr = useMotion_upvr(UDim2.fromScale(0.5, 0.5))
	function arg1.setEnabled(arg1_2, arg2_2) -- Line 36
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: source_upvr_result1_upvr (readonly)
		]]
		arg2.Treadmill(arg2_2)
		source_upvr_result1_upvr(arg2_2)
	end
	var5_result2_upvr_2:spring(0, {
		tension = 300;
		friction = 10;
	})
	var5_result2_upvr:spring(0, {
		tension = 300;
		friction = 10;
	})
	function arg1.setValue(arg1_3, arg2_3, arg3_2, arg4) -- Line 44
		--[[ Upvalues[2]:
			[1]: var5_result2_upvr_3 (readonly)
			[2]: arg3 (readonly)
		]]
		var5_result2_upvr_3:spring((arg2_3 - arg3_2) / (arg4 - arg3_2), {
			tension = 1500;
			friction = 30;
		})
		arg3.Container.Content.Min.Text = `{arg3_2}x`
		arg3.Container.Content.Max.Text = `{arg4}x`
	end
	local var23_upvw = 1
	function arg1.bounce(arg1_4, arg2_4) -- Line 51
		--[[ Upvalues[3]:
			[1]: var23_upvw (read and write)
			[2]: var5_result2_upvr_2 (readonly)
			[3]: var5_result2_upvr (readonly)
		]]
		local var24 = var23_upvw * -1
		var23_upvw = var24
		var5_result2_upvr_2:impulse(arg2_4)
		var5_result2_upvr:impulse(arg2_4 * 3 * var24)
	end
	effect_upvr(function() -- Line 59
		--[[ Upvalues[4]:
			[1]: useMotion_upvr_result2_upvr (readonly)
			[2]: source_upvr_result1_upvr (readonly)
			[3]: Position_upvr (readonly)
			[4]: var11_upvr (readonly)
		]]
		local var26
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var26 = Position_upvr
			return var26
		end
		if not source_upvr_result1_upvr() or not INLINED() then
			var26 = var11_upvr
		end
		useMotion_upvr_result2_upvr:spring(var26, {
			tension = 500;
			friction = 18;
		})
	end)
	effect_upvr(function() -- Line 63
		--[[ Upvalues[2]:
			[1]: var5_result1_4_upvr (readonly)
			[2]: arg3 (readonly)
		]]
		local var12_result1 = var5_result1_4_upvr()
		local Color3_fromHSV_result1 = Color3.fromHSV(0.3333333333333333 * var12_result1, 1, 1)
		arg3.Container.Content.Bar.Fill.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3_fromHSV_result1), ColorSequenceKeypoint.new(1, Color3_fromHSV_result1)})
		arg3.Container.Content.Bar.Fill.UIGradient.Offset = Vector2.new(var12_result1, 0)
	end)
	arg3.Container.Content.TextLabel.Text = "Click fast to speed up!"
	local tbl = {
		Position = var5_result1_2_upvr;
	}
	local AnchorPoint_upvr = arg3.Container.AnchorPoint
	tbl.AnchorPoint = derive_upvr(function() -- Line 80
		--[[ Upvalues[2]:
			[1]: AnchorPoint_upvr (readonly)
			[2]: var5_result1_3_upvr (readonly)
		]]
		return AnchorPoint_upvr + Vector2.new(0, var5_result1_3_upvr())
	end)
	tbl.Rotation = var5_result1
	apply_upvr(arg3.Container)(tbl)
	apply_upvr(arg3.Container)
	apply_upvr(arg3)({
		Enabled = derive_upvr(function() -- Line 87
			--[[ Upvalues[2]:
				[1]: var5_result1_2_upvr (readonly)
				[2]: var11_upvr (readonly)
			]]
			local var37
			if 1 >= math.abs(var5_result1_2_upvr().Y.Offset - var11_upvr.Y.Offset) then
				var37 = false
			else
				var37 = true
			end
			return var37
		end);
	})
end