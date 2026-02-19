-- Name: ClickerDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.ClickerDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7351886000033119 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:06
-- Luau version 6, Types version 3
-- Time taken: 0.018846 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local tbl_4_upvr = {
	tension = 600;
	friction = 10;
}
local tbl_6_upvr = {
	tension = 300;
	friction = 5;
}
;({})[1] = "redCardsMultipliedByTiers"
local derive_upvr = Vide.derive
local Clickers_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Clickers)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local useMotion_upvr = Util_upvr.ui.useMotion
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local root_upvr = Vide.root
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local Loop_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Loop")
local Values_upvr = require(ReplicatedStorage_upvr.Client.Core.Values)
return function(arg1, arg2, arg3) -- Line 47
	--[[ Upvalues[17]:
		[1]: derive_upvr (readonly)
		[2]: Clickers_upvr (readonly)
		[3]: Currencies_upvr (readonly)
		[4]: Util_upvr (readonly)
		[5]: useMotion_upvr (readonly)
		[6]: Requirements_upvr (readonly)
		[7]: apply_upvr (readonly)
		[8]: RichFormat_upvr (readonly)
		[9]: root_upvr (readonly)
		[10]: cleanup_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: Sounds_upvr (readonly)
		[13]: ReplicatedStorage_upvr (readonly)
		[14]: Loop_upvr (readonly)
		[15]: tbl_4_upvr (readonly)
		[16]: tbl_6_upvr (readonly)
		[17]: Values_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local ID_upvr = arg2:GetAttribute("ID")
	local var26_upvr = Clickers_upvr.Content[ID_upvr]
	local var27_upvr = Currencies_upvr[var26_upvr.currency]
	local function _() -- Line 61
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end
	local function _() -- Line 62
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Ascensions[1]
	end
	local var11_result1_4, useMotion_upvr_result2_3_upvr = useMotion_upvr(1)
	local var11_result1_2_upvr, var11_result2_5_upvr = useMotion_upvr(0)
	arg2.Content.Top.TextLabel.Text = var26_upvr.name
	arg2.Content.Click.Container.TextLabel.UIGradient.Color = var27_upvr.gradient
	arg2.Content.Click.Container.Icon.Image = var26_upvr.image
	arg2.Content.DescLabel.Text = var26_upvr.description
	local var8_result1_upvr_3 = derive_upvr(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end)
	local var8_result1_upvr_2 = derive_upvr(function() -- Line 50
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Tree
	end)
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 51
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Areas
	end)
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 73
		--[[ Upvalues[5]:
			[1]: var8_result1_upvr_3 (readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: derive_upvr_result1_upvr (readonly)
			[4]: Requirements_upvr (copied, readonly)
			[5]: var26_upvr (readonly)
		]]
		var8_result1_upvr_3()
		var8_result1_upvr_2()
		derive_upvr_result1_upvr()
		return Requirements_upvr.getRequirement({
			requirements = var26_upvr.requirements;
		})
	end)
	apply_upvr(arg2.Locked)({
		Visible = derive_upvr(function() -- Line 79
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_2 (readonly)
			]]
			local var43
			if derive_upvr_result1_upvr_2() == nil then
				var43 = false
			else
				var43 = true
			end
			return var43
		end);
	})
	apply_upvr(arg2.Locked.Content.TextLabel)({
		Text = derive_upvr(function() -- Line 85
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_2 (readonly)
			]]
			return derive_upvr_result1_upvr_2() or ""
		end);
	})
	local tbl_3 = {}
	local var8_result1_upvr = derive_upvr(function() -- Line 59
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var27_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var27_upvr.path)
	end)
	tbl_3.Text = derive_upvr(function() -- Line 91
		--[[ Upvalues[2]:
			[1]: RichFormat_upvr (copied, readonly)
			[2]: var8_result1_upvr (readonly)
		]]
		return `{RichFormat_upvr.number.Abbreviate(var8_result1_upvr())}`
	end)
	apply_upvr(arg2.Content.Click.Container.TextLabel)(tbl_3)
	local function _() -- Line 96, Named "echo"
		--[[ Upvalues[6]:
			[1]: root_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: cleanup_upvr (copied, readonly)
			[4]: useMotion_upvr (copied, readonly)
			[5]: apply_upvr (copied, readonly)
			[6]: derive_upvr (copied, readonly)
		]]
		return root_upvr(function(arg1_2) -- Line 97
			--[[ Upvalues[5]:
				[1]: arg2 (copied, readonly)
				[2]: cleanup_upvr (copied, readonly)
				[3]: useMotion_upvr (copied, readonly)
				[4]: apply_upvr (copied, readonly)
				[5]: derive_upvr (copied, readonly)
			]]
			local clone = arg2.Content.Click.Container.Echo:Clone()
			clone.Parent = arg2.Content.Click
			cleanup_upvr(clone)
			local var11_result1_upvr_2, useMotion_upvr_result2_2 = useMotion_upvr(clone.Size.X.Scale)
			local var11_result1, var11_result2 = useMotion_upvr(0)
			apply_upvr(clone)({
				Size = derive_upvr(function() -- Line 107
					--[[ Upvalues[1]:
						[1]: var11_result1_upvr_2 (readonly)
					]]
					return UDim2.fromScale(var11_result1_upvr_2(), var11_result1_upvr_2())
				end);
			})
			apply_upvr(clone.UIStroke)({
				Transparency = var11_result1;
			})
			useMotion_upvr_result2_2:spring(2, {
				tension = 100;
				friction = 30;
			})
			var11_result2:linear(1, {
				speed = 6;
			})
			var11_result2:onComplete(arg1_2)
		end)
	end
	local function _(arg1_3) -- Line 123, Named "increment"
		--[[ Upvalues[8]:
			[1]: root_upvr (copied, readonly)
			[2]: useMotion_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: RichFormat_upvr (copied, readonly)
			[5]: cleanup_upvr (copied, readonly)
			[6]: RunService_upvr (copied, readonly)
			[7]: apply_upvr (copied, readonly)
			[8]: derive_upvr (copied, readonly)
		]]
		root_upvr(function(arg1_4) -- Line 124
			--[[ Upvalues[8]:
				[1]: useMotion_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: RichFormat_upvr (copied, readonly)
				[4]: arg1_3 (readonly)
				[5]: cleanup_upvr (copied, readonly)
				[6]: RunService_upvr (copied, readonly)
				[7]: apply_upvr (copied, readonly)
				[8]: derive_upvr (copied, readonly)
			]]
			local useMotion_upvr_result1_upvr, var11_result2_2_upvr = useMotion_upvr(0)
			local AbsoluteSize_2 = arg2.Content.Click.AbsoluteSize
			local clone_upvr = arg2.Content.Click.Container.TextLabel:Clone()
			clone_upvr.Parent = arg2.Content.Click
			local var65 = RichFormat_upvr
			if 10000 < arg1_3 then
				var65 = "Abbreviate"
			else
				var65 = "Comma"
			end
			clone_upvr.Text = `+{var65.number[var65](arg1_3)}`
			clone_upvr.Size = UDim2.fromOffset(clone_upvr.AbsoluteSize.X, clone_upvr.AbsoluteSize.Y / 1.5)
			clone_upvr.Visible = true
			clone_upvr.AnchorPoint = Vector2.one / 2
			clone_upvr.Position = UDim2.new(0.5, math.random(-AbsoluteSize_2.X / 2, AbsoluteSize_2.X / 2), 0.5, math.random(-AbsoluteSize_2.Y / 2, AbsoluteSize_2.Y / 2))
			local var67_upvw = 0
			local Position_upvr_2 = clone_upvr.Position
			cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_5) -- Line 140
				--[[ Upvalues[3]:
					[1]: var67_upvw (read and write)
					[2]: clone_upvr (readonly)
					[3]: Position_upvr_2 (readonly)
				]]
				var67_upvw += arg1_5
				clone_upvr.Position = UDim2.new(Position_upvr_2.X.Scale, Position_upvr_2.X.Offset, Position_upvr_2.Y.Scale, Position_upvr_2.Y.Offset + -var67_upvw * 300)
			end))
			apply_upvr(clone_upvr)({
				TextTransparency = derive_upvr(function() -- Line 151
					--[[ Upvalues[1]:
						[1]: useMotion_upvr_result1_upvr (readonly)
					]]
					return useMotion_upvr_result1_upvr()
				end);
			})
			apply_upvr(clone_upvr.UIStroke)({
				Transparency = derive_upvr(function() -- Line 157
					--[[ Upvalues[1]:
						[1]: useMotion_upvr_result1_upvr (readonly)
					]]
					return useMotion_upvr_result1_upvr()
				end);
			})
			task.delay(0.2, function() -- Line 162
				--[[ Upvalues[2]:
					[1]: var11_result2_2_upvr (readonly)
					[2]: arg1_4 (readonly)
				]]
				var11_result2_2_upvr:tween(1, {
					time = 1.25;
					style = Enum.EasingStyle.Exponential;
					direction = Enum.EasingDirection.Out;
				})
				var11_result2_2_upvr:onComplete(function() -- Line 169
					--[[ Upvalues[1]:
						[1]: arg1_4 (copied, readonly)
					]]
					arg1_4()
				end)
			end)
			cleanup_upvr(clone_upvr)
			cleanup_upvr(function() -- Line 175
				--[[ Upvalues[1]:
					[1]: var11_result2_2_upvr (readonly)
				]]
				var11_result2_2_upvr:destroy()
			end)
		end)
	end
	local function click_upvr() -- Line 181, Named "click"
		--[[ Upvalues[10]:
			[1]: Sounds_upvr (copied, readonly)
			[2]: ReplicatedStorage_upvr (copied, readonly)
			[3]: useMotion_upvr_result2_3_upvr (readonly)
			[4]: var11_result2_5_upvr (readonly)
			[5]: root_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: cleanup_upvr (copied, readonly)
			[8]: useMotion_upvr (copied, readonly)
			[9]: apply_upvr (copied, readonly)
			[10]: derive_upvr (copied, readonly)
		]]
		Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Card).PlaybackSpeed = 1 + math.random(2) / 10
		useMotion_upvr_result2_3_upvr:impulse(-0.004)
		var11_result2_5_upvr:impulse(math.random(-3, 3) / 10)
		local function _(arg1_6) -- Line 97
			--[[ Upvalues[5]:
				[1]: arg2 (copied, readonly)
				[2]: cleanup_upvr (copied, readonly)
				[3]: useMotion_upvr (copied, readonly)
				[4]: apply_upvr (copied, readonly)
				[5]: derive_upvr (copied, readonly)
			]]
			local clone_3 = arg2.Content.Click.Container.Echo:Clone()
			clone_3.Parent = arg2.Content.Click
			cleanup_upvr(clone_3)
			local var11_result1_5_upvr, useMotion_upvr_result2 = useMotion_upvr(clone_3.Size.X.Scale)
			local useMotion_upvr_result1, var11_result2_4 = useMotion_upvr(0)
			apply_upvr(clone_3)({
				Size = derive_upvr(function() -- Line 107
					--[[ Upvalues[1]:
						[1]: var11_result1_5_upvr (readonly)
					]]
					return UDim2.fromScale(var11_result1_5_upvr(), var11_result1_5_upvr())
				end);
			})
			apply_upvr(clone_3.UIStroke)({
				Transparency = useMotion_upvr_result1;
			})
			useMotion_upvr_result2:spring(2, {
				tension = 100;
				friction = 30;
			})
			var11_result2_4:linear(1, {
				speed = 6;
			})
			var11_result2_4:onComplete(arg1_6)
		end
	end
	cleanup_upvr(Loop_upvr.Click:Connect(function(arg1_7, arg2_2) -- Line 191
		--[[ Upvalues[9]:
			[1]: ID_upvr (readonly)
			[2]: root_upvr (copied, readonly)
			[3]: useMotion_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: RichFormat_upvr (copied, readonly)
			[6]: cleanup_upvr (copied, readonly)
			[7]: RunService_upvr (copied, readonly)
			[8]: apply_upvr (copied, readonly)
			[9]: derive_upvr (copied, readonly)
		]]
		if arg1_7 ~= ID_upvr then
		else
			root_upvr(function(arg1_8) -- Line 124
				--[[ Upvalues[8]:
					[1]: useMotion_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: RichFormat_upvr (copied, readonly)
					[4]: arg2_2 (readonly)
					[5]: cleanup_upvr (copied, readonly)
					[6]: RunService_upvr (copied, readonly)
					[7]: apply_upvr (copied, readonly)
					[8]: derive_upvr (copied, readonly)
				]]
				local var11_result1_3_upvr, var11_result2_6_upvr = useMotion_upvr(0)
				local AbsoluteSize = arg2.Content.Click.AbsoluteSize
				local clone_upvr_2 = arg2.Content.Click.Container.TextLabel:Clone()
				clone_upvr_2.Parent = arg2.Content.Click
				local var94 = RichFormat_upvr
				if 10000 < arg2_2 then
					var94 = "Abbreviate"
				else
					var94 = "Comma"
				end
				clone_upvr_2.Text = `+{var94.number[var94](arg2_2)}`
				clone_upvr_2.Size = UDim2.fromOffset(clone_upvr_2.AbsoluteSize.X, clone_upvr_2.AbsoluteSize.Y / 1.5)
				clone_upvr_2.Visible = true
				clone_upvr_2.AnchorPoint = Vector2.one / 2
				clone_upvr_2.Position = UDim2.new(0.5, math.random(-AbsoluteSize.X / 2, AbsoluteSize.X / 2), 0.5, math.random(-AbsoluteSize.Y / 2, AbsoluteSize.Y / 2))
				local var96_upvw = 0
				local Position_upvr_3 = clone_upvr_2.Position
				cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_9) -- Line 140
					--[[ Upvalues[3]:
						[1]: var96_upvw (read and write)
						[2]: clone_upvr_2 (readonly)
						[3]: Position_upvr_3 (readonly)
					]]
					var96_upvw += arg1_9
					clone_upvr_2.Position = UDim2.new(Position_upvr_3.X.Scale, Position_upvr_3.X.Offset, Position_upvr_3.Y.Scale, Position_upvr_3.Y.Offset + -var96_upvw * 300)
				end))
				local tbl = {}
				tbl.TextTransparency = derive_upvr(function() -- Line 151
					--[[ Upvalues[1]:
						[1]: var11_result1_3_upvr (readonly)
					]]
					return var11_result1_3_upvr()
				end)
				apply_upvr(clone_upvr_2)(tbl)
				local tbl_2 = {}
				tbl_2.Transparency = derive_upvr(function() -- Line 157
					--[[ Upvalues[1]:
						[1]: var11_result1_3_upvr (readonly)
					]]
					return var11_result1_3_upvr()
				end)
				apply_upvr(clone_upvr_2.UIStroke)(tbl_2)
				task.delay(0.2, function() -- Line 162
					--[[ Upvalues[2]:
						[1]: var11_result2_6_upvr (readonly)
						[2]: arg1_8 (readonly)
					]]
					var11_result2_6_upvr:tween(1, {
						time = 1.25;
						style = Enum.EasingStyle.Exponential;
						direction = Enum.EasingDirection.Out;
					})
					var11_result2_6_upvr:onComplete(function() -- Line 169
						--[[ Upvalues[1]:
							[1]: arg1_8 (copied, readonly)
						]]
						arg1_8()
					end)
				end)
				cleanup_upvr(clone_upvr_2)
				cleanup_upvr(function() -- Line 175
					--[[ Upvalues[1]:
						[1]: var11_result2_6_upvr (readonly)
					]]
					var11_result2_6_upvr:destroy()
				end)
			end)
		end
	end))
	apply_upvr(arg2.Content.Click.Container.UIScale)({
		Scale = var11_result1_4;
	})
	apply_upvr(arg2.Content.Click.Container.Icon)({
		Rotation = derive_upvr(function() -- Line 199
			--[[ Upvalues[1]:
				[1]: var11_result1_2_upvr (readonly)
			]]
			return var11_result1_2_upvr()
		end);
	})
	useMotion_upvr_result2_3_upvr:spring(1, tbl_4_upvr)
	var11_result2_5_upvr:spring(0, tbl_6_upvr)
	local tbl_5 = {}
	local var110_upvw = 0
	local cooldown_upvr = var26_upvr.properties.cooldown
	local any_ReadValue_result1_upvr = Values_upvr:ReadValue(var26_upvr.properties.manualValueSource, false)
	function tbl_5.MouseButton1Click() -- Line 210
		--[[ Upvalues[14]:
			[1]: var110_upvw (read and write)
			[2]: cooldown_upvr (readonly)
			[3]: Loop_upvr (copied, readonly)
			[4]: ID_upvr (readonly)
			[5]: click_upvr (readonly)
			[6]: any_ReadValue_result1_upvr (readonly)
			[7]: root_upvr (copied, readonly)
			[8]: useMotion_upvr (copied, readonly)
			[9]: arg2 (readonly)
			[10]: RichFormat_upvr (copied, readonly)
			[11]: cleanup_upvr (copied, readonly)
			[12]: RunService_upvr (copied, readonly)
			[13]: apply_upvr (copied, readonly)
			[14]: derive_upvr (copied, readonly)
		]]
		if os.clock() - var110_upvw < cooldown_upvr then
		else
			var110_upvw = os.clock()
			Loop_upvr.Click:Fire(ID_upvr)
			click_upvr()
			local var112_result1_upvr = any_ReadValue_result1_upvr()
			root_upvr(function(arg1_10) -- Line 124
				--[[ Upvalues[8]:
					[1]: useMotion_upvr (copied, readonly)
					[2]: arg2 (copied, readonly)
					[3]: RichFormat_upvr (copied, readonly)
					[4]: var112_result1_upvr (readonly)
					[5]: cleanup_upvr (copied, readonly)
					[6]: RunService_upvr (copied, readonly)
					[7]: apply_upvr (copied, readonly)
					[8]: derive_upvr (copied, readonly)
				]]
				local var11_result1_upvr, var11_result2_3_upvr = useMotion_upvr(0)
				local AbsoluteSize_3 = arg2.Content.Click.AbsoluteSize
				local clone_2_upvr = arg2.Content.Click.Container.TextLabel:Clone()
				clone_2_upvr.Parent = arg2.Content.Click
				local var119 = RichFormat_upvr
				if 10000 < var112_result1_upvr then
					var119 = "Abbreviate"
				else
					var119 = "Comma"
				end
				clone_2_upvr.Text = `+{var119.number[var119](var112_result1_upvr)}`
				clone_2_upvr.Size = UDim2.fromOffset(clone_2_upvr.AbsoluteSize.X, clone_2_upvr.AbsoluteSize.Y / 1.5)
				clone_2_upvr.Visible = true
				clone_2_upvr.AnchorPoint = Vector2.one / 2
				clone_2_upvr.Position = UDim2.new(0.5, math.random(-AbsoluteSize_3.X / 2, AbsoluteSize_3.X / 2), 0.5, math.random(-AbsoluteSize_3.Y / 2, AbsoluteSize_3.Y / 2))
				local var121_upvw = 0
				local Position_upvr = clone_2_upvr.Position
				cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_11) -- Line 140
					--[[ Upvalues[3]:
						[1]: var121_upvw (read and write)
						[2]: clone_2_upvr (readonly)
						[3]: Position_upvr (readonly)
					]]
					var121_upvw += arg1_11
					clone_2_upvr.Position = UDim2.new(Position_upvr.X.Scale, Position_upvr.X.Offset, Position_upvr.Y.Scale, Position_upvr.Y.Offset + -var121_upvw * 300)
				end))
				apply_upvr(clone_2_upvr)({
					TextTransparency = derive_upvr(function() -- Line 151
						--[[ Upvalues[1]:
							[1]: var11_result1_upvr (readonly)
						]]
						return var11_result1_upvr()
					end);
				})
				apply_upvr(clone_2_upvr.UIStroke)({
					Transparency = derive_upvr(function() -- Line 157
						--[[ Upvalues[1]:
							[1]: var11_result1_upvr (readonly)
						]]
						return var11_result1_upvr()
					end);
				})
				task.delay(0.2, function() -- Line 162
					--[[ Upvalues[2]:
						[1]: var11_result2_3_upvr (readonly)
						[2]: arg1_10 (readonly)
					]]
					var11_result2_3_upvr:tween(1, {
						time = 1.25;
						style = Enum.EasingStyle.Exponential;
						direction = Enum.EasingDirection.Out;
					})
					var11_result2_3_upvr:onComplete(function() -- Line 169
						--[[ Upvalues[1]:
							[1]: arg1_10 (copied, readonly)
						]]
						arg1_10()
					end)
				end)
				cleanup_upvr(clone_2_upvr)
				cleanup_upvr(function() -- Line 175
					--[[ Upvalues[1]:
						[1]: var11_result2_3_upvr (readonly)
					]]
					var11_result2_3_upvr:destroy()
				end)
			end)
		end
	end
	apply_upvr(arg2.Content.Click)(tbl_5)
end