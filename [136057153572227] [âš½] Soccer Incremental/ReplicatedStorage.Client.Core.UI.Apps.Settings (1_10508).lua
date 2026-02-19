-- Name: Settings
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5823707999952603 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:14
-- Luau version 6, Types version 3
-- Time taken: 0.007217 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local tbl_upvr_2 = {
	tension = 330;
	friction = 18;
}
local tbl_upvr = {
	tension = 330;
	friction = 40;
}
local source_upvr = Vide.source
local derive_upvr = Vide.derive
local useMotion_upvr = require(ReplicatedStorage_upvr.Shared.Util).ui.useMotion
local apply_upvr = Vide.apply
local effect_upvr = Vide.effect
local Settings_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Settings)
local indexes_upvr = Vide.indexes
local Trove_upvr = require(ReplicatedStorage_upvr.Packages.Trove)
local Sift_upvr = require(ReplicatedStorage_upvr.Packages.Sift)
local cleanup_upvr = Vide.cleanup
return function(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[13]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: useMotion_upvr (readonly)
		[5]: apply_upvr (readonly)
		[6]: effect_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: tbl_upvr (readonly)
		[9]: Settings_upvr (readonly)
		[10]: indexes_upvr (readonly)
		[11]: Trove_upvr (readonly)
		[12]: Sift_upvr (readonly)
		[13]: cleanup_upvr (readonly)
	]]
	local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
	local source_upvr_result1_upvr = source_upvr({})
	local Position_upvr = arg3.Container.Position
	local var21_upvr = Position_upvr + UDim2.fromScale(0, -1)
	local var8_result1_upvr_2, var8_result2_upvr_2 = useMotion_upvr(UDim2.fromScale(0.5, 0.5))
	local var8_result1, useMotion_upvr_result2_upvr = useMotion_upvr(1)
	function arg1.getOptionEnabled(arg1_2, arg2_2) -- Line 44
		--[[ Upvalues[1]:
			[1]: source_upvr_result1_upvr (readonly)
		]]
		return source_upvr_result1_upvr()[arg2_2]()
	end
	apply_upvr(arg3)({
		Enabled = derive_upvr(function() -- Line 48
			--[[ Upvalues[2]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: var21_upvr (readonly)
			]]
			local var28
			if 0.1 >= math.abs(var8_result1_upvr_2().Y.Scale - var21_upvr.Y.Scale) then
				var28 = false
			else
				var28 = true
			end
			return var28
		end);
	})
	apply_upvr(arg3.Container)({
		Position = var8_result1_upvr_2;
	})
	apply_upvr(arg3.Container.UIScale)({
		Scale = var8_result1;
	})
	local tbl = {}
	local function MouseButton1Click() -- Line 51
		--[[ Upvalues[1]:
			[1]: UI_upvr (readonly)
		]]
		UI_upvr.Globals.Current(nil)
	end
	tbl.MouseButton1Click = MouseButton1Click
	apply_upvr(arg3.Container.Content.Topbar.Close)(tbl)
	local var7_result1_upvr = derive_upvr(function() -- Line 35
		--[[ Upvalues[1]:
			[1]: UI_upvr (readonly)
		]]
		local var19
		if UI_upvr.Globals.Current() ~= script.Name then
			var19 = false
		else
			var19 = true
		end
		return var19
	end)
	effect_upvr(function() -- Line 53
		--[[ Upvalues[7]:
			[1]: var8_result2_upvr_2 (readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: Position_upvr (readonly)
			[4]: var21_upvr (readonly)
			[5]: tbl_upvr_2 (copied, readonly)
			[6]: useMotion_upvr_result2_upvr (readonly)
			[7]: tbl_upvr (copied, readonly)
		]]
		local var34
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var34 = Position_upvr
			return var34
		end
		if not var7_result1_upvr() or not INLINED() then
			var34 = var21_upvr
		end
		var8_result2_upvr_2:spring(var34, tbl_upvr_2)
		if var7_result1_upvr() then
			var34 = 1
		else
			var34 = 0
		end
		useMotion_upvr_result2_upvr:spring(var34, tbl_upvr)
	end)
	local Placeholder_upvr = arg3.Container.Content.List.Placeholder
	Placeholder_upvr.Visible = false
	apply_upvr(arg3.Container.Content.List)({indexes_upvr(source_upvr(Settings_upvr), function(arg1_3, arg2_3) -- Line 63
		--[[ Upvalues[10]:
			[1]: source_upvr (copied, readonly)
			[2]: Trove_upvr (copied, readonly)
			[3]: Placeholder_upvr (readonly)
			[4]: useMotion_upvr (copied, readonly)
			[5]: effect_upvr (copied, readonly)
			[6]: apply_upvr (copied, readonly)
			[7]: derive_upvr (copied, readonly)
			[8]: source_upvr_result1_upvr (readonly)
			[9]: Sift_upvr (copied, readonly)
			[10]: cleanup_upvr (copied, readonly)
		]]
		local arg1_3_result1_upvr = arg1_3()
		local source_upvr_result1_upvr_2 = source_upvr(arg1_3_result1_upvr.properties.default)
		local any_new_result1_upvr = Trove_upvr.new()
		local clone = Placeholder_upvr:Clone()
		clone.Name = arg2_3
		clone.Visible = true
		local name = arg1_3_result1_upvr.name
		clone.Content.TextLabel.Text = name
		if source_upvr_result1_upvr_2() then
			name = 1
		else
			name = 0
		end
		local var8_result1_upvr, var8_result2_upvr = useMotion_upvr(name)
		effect_upvr(function() -- Line 75
			--[[ Upvalues[2]:
				[1]: var8_result2_upvr (readonly)
				[2]: source_upvr_result1_upvr_2 (readonly)
			]]
			local var46
			if source_upvr_result1_upvr_2() then
				var46 = 1
			else
				var46 = 0
			end
			var8_result2_upvr:spring(var46, {
				tension = 500;
				friction = 30;
			})
		end)
		if source_upvr_result1_upvr_2() then
			arg1_3_result1_upvr.properties.action(any_new_result1_upvr)
		end
		apply_upvr(clone.Content.Button.Fill)({
			AnchorPoint = derive_upvr(function() -- Line 84
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (readonly)
				]]
				return Vector2.new(var8_result1_upvr(), 0.5)
			end);
			Position = derive_upvr(function() -- Line 85
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (readonly)
				]]
				return UDim2.fromScale(var8_result1_upvr(), 0.5)
			end);
		})
		apply_upvr(clone.Content.Button)({
			MouseButton1Click = function() -- Line 89, Named "MouseButton1Click"
				--[[ Upvalues[3]:
					[1]: source_upvr_result1_upvr_2 (readonly)
					[2]: arg1_3_result1_upvr (readonly)
					[3]: any_new_result1_upvr (readonly)
				]]
				local var52 = not source_upvr_result1_upvr_2()
				if var52 then
					arg1_3_result1_upvr.properties.action(any_new_result1_upvr)
				else
					any_new_result1_upvr:Destroy()
				end
				source_upvr_result1_upvr_2(var52)
			end;
		})
		source_upvr_result1_upvr(Sift_upvr.Dictionary.set(source_upvr_result1_upvr(), arg2_3, source_upvr_result1_upvr_2))
		cleanup_upvr(function() -- Line 103
			--[[ Upvalues[3]:
				[1]: source_upvr_result1_upvr (copied, readonly)
				[2]: Sift_upvr (copied, readonly)
				[3]: arg2_3 (readonly)
			]]
			source_upvr_result1_upvr(Sift_upvr.Dictionary.removeKey(source_upvr_result1_upvr(), arg2_3))
		end)
		return clone
	end)})
end