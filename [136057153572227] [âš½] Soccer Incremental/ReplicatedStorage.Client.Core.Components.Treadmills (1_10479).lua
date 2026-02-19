-- Name: Treadmills
-- Path: game:GetService("ReplicatedStorage").Client.Core.Components.Treadmills
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9004303999972763 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:52
-- Luau version 6, Types version 3
-- Time taken: 0.015519 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local root_upvr = Vide.root
local source_upvr = Vide.source
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local effect_upvr = Vide.effect
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local Sift_upvr = require(ReplicatedStorage_upvr.Packages.Sift)
local useMotion_upvr = require(ReplicatedStorage_upvr.Shared.Util).ui.useMotion
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local Players_upvr = game:GetService("Players")
local apply_upvr = Vide.apply
local cleanup_upvr = Vide.cleanup
local CollectionService_upvr = game:GetService("CollectionService")
local RunService_upvr = game:GetService("RunService")
local UserInputService_upvr = game:GetService("UserInputService")
local indexes_upvr = Vide.indexes
local create_upvr = Vide.create
local ProximityPromptService_upvr = game:GetService("ProximityPromptService")
return root_upvr(function(arg1) -- Line 32
	--[[ Upvalues[19]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: useAtom_upvr (readonly)
		[4]: derive_upvr (readonly)
		[5]: effect_upvr (readonly)
		[6]: Requirements_upvr (readonly)
		[7]: Sift_upvr (readonly)
		[8]: root_upvr (readonly)
		[9]: useMotion_upvr (readonly)
		[10]: RichFormat_upvr (readonly)
		[11]: Players_upvr (readonly)
		[12]: apply_upvr (readonly)
		[13]: cleanup_upvr (readonly)
		[14]: CollectionService_upvr (readonly)
		[15]: RunService_upvr (readonly)
		[16]: UserInputService_upvr (readonly)
		[17]: indexes_upvr (readonly)
		[18]: create_upvr (readonly)
		[19]: ProximityPromptService_upvr (readonly)
	]]
	local Character_upvr = require(ReplicatedStorage_upvr.Client.Core.Character)
	local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
	local Loop_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Loop")
	local source_upvr_result1_upvr_2 = source_upvr({})
	local source_upvr_result1_upvr_3 = source_upvr(nil)
	local var5_result1_upvr_2 = source_upvr(nil)
	local var6_result1_upvr = useAtom_upvr(require(ReplicatedStorage_upvr.Client.Core.Data).Local)
	local var7_result1_upvr = derive_upvr(function() -- Line 46
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr (readonly)
		]]
		local var33_result1 = var6_result1_upvr()
		if var33_result1 then
			var33_result1 = var6_result1_upvr().inventory.Tree
		end
		return var33_result1
	end)
	effect_upvr(function() -- Line 48
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr (readonly)
			[2]: var5_result1_upvr_2 (readonly)
			[3]: Requirements_upvr (copied, readonly)
		]]
		var7_result1_upvr()
		var5_result1_upvr_2(Requirements_upvr.getRequirement({
			requirements = {
				tree = "3/6";
			};
		}))
	end)
	for _, v in CollectionService_upvr:GetTagged("Treadmill") do
		source_upvr_result1_upvr_2(Sift_upvr.Array.append(source_upvr_result1_upvr_2(), v))
	end
	CollectionService_upvr:GetInstanceAddedSignal("Treadmill"):Connect(function(arg1_2) -- Line 53, Named "onTreadmillAdded"
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: Sift_upvr (copied, readonly)
		]]
		source_upvr_result1_upvr_2(Sift_upvr.Array.append(source_upvr_result1_upvr_2(), arg1_2))
	end)
	CollectionService_upvr:GetInstanceRemovedSignal("Treadmill"):Connect(function(arg1_3) -- Line 57, Named "onTreadmillRemoved"
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: Sift_upvr (copied, readonly)
		]]
		source_upvr_result1_upvr_2(Sift_upvr.Array.removeValue(source_upvr_result1_upvr_2(), arg1_3))
	end)
	cleanup_upvr(Loop_upvr.DisplayStrengthGain:Connect(function(arg1_4) -- Line 61, Named "onDisplayStrengthGain"
		--[[ Upvalues[7]:
			[1]: root_upvr (copied, readonly)
			[2]: useMotion_upvr (copied, readonly)
			[3]: ReplicatedStorage_upvr (copied, readonly)
			[4]: RichFormat_upvr (copied, readonly)
			[5]: Players_upvr (copied, readonly)
			[6]: apply_upvr (copied, readonly)
			[7]: cleanup_upvr (copied, readonly)
		]]
		return root_upvr(function(arg1_5) -- Line 62
			--[[ Upvalues[7]:
				[1]: useMotion_upvr (copied, readonly)
				[2]: ReplicatedStorage_upvr (copied, readonly)
				[3]: RichFormat_upvr (copied, readonly)
				[4]: arg1_4 (readonly)
				[5]: Players_upvr (copied, readonly)
				[6]: apply_upvr (copied, readonly)
				[7]: cleanup_upvr (copied, readonly)
			]]
			local ViewportSize = workspace.CurrentCamera.ViewportSize
			local useMotion_upvr_result1_2, useMotion_upvr_result2 = useMotion_upvr(UDim2.fromOffset(math.random(100, ViewportSize.X - 200), math.random(100, ViewportSize.Y - 200)))
			local useMotion_upvr_result1, useMotion_upvr_result2_2_upvr = useMotion_upvr(0)
			local clone = ReplicatedStorage_upvr.Shared.Assets.TreadmillStrengthGainDisplay:Clone()
			local var46 = RichFormat_upvr
			if 10000 < arg1_4 then
				var46 = "Abbreviate"
			else
				var46 = "Comma"
			end
			clone.TextLabel.Text = `+{var46.number[var46](arg1_4)}`
			clone.Parent = Players_upvr.LocalPlayer.PlayerGui.Temp
			apply_upvr(clone)({
				Position = useMotion_upvr_result1_2;
			})
			apply_upvr(clone.TextLabel)({
				TextTransparency = useMotion_upvr_result1;
			})
			apply_upvr(clone.TextLabel.UIStroke)({
				Transparency = useMotion_upvr_result1;
			})
			apply_upvr(clone.ImageLabel)({
				ImageTransparency = useMotion_upvr_result1;
			})
			useMotion_upvr_result2:spring(useMotion_upvr_result1_2() + UDim2.fromOffset(0, -100), {
				tension = 50;
				friction = 30;
			})
			task.delay(0.5, function() -- Line 81
				--[[ Upvalues[2]:
					[1]: useMotion_upvr_result2_2_upvr (readonly)
					[2]: arg1_5 (readonly)
				]]
				useMotion_upvr_result2_2_upvr:spring(1, {
					tension = 100;
					friction = 30;
				})
				task.delay(1, function() -- Line 84
					--[[ Upvalues[1]:
						[1]: arg1_5 (copied, readonly)
					]]
					arg1_5()
				end)
			end)
			cleanup_upvr(clone)
		end)
	end))
	local var58_upvw = 0
	local function click_upvr() -- Line 106, Named "click"
		--[[ Upvalues[4]:
			[1]: source_upvr_result1_upvr_3 (readonly)
			[2]: var58_upvw (read and write)
			[3]: UI_upvr (readonly)
			[4]: Loop_upvr (readonly)
		]]
		local var30_result1_2 = source_upvr_result1_upvr_3()
		if not var30_result1_2 then
		else
			local os_clock_result1 = os.clock()
			if os_clock_result1 - var58_upvw < 0.1 then return end
			var58_upvw = os_clock_result1
			UI_upvr.Frames.Treadmill:bounce(0.01)
			var30_result1_2.speed(math.clamp(var30_result1_2.speed() + 0.15, 0, 2))
			Loop_upvr:TreadmillClick(var30_result1_2.speed())
		end
	end
	effect_upvr(function() -- Line 119
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: source_upvr_result1_upvr_3 (readonly)
		]]
		local var62
		if source_upvr_result1_upvr_3() == nil then
			var62 = false
		else
			var62 = true
		end
		Players_upvr.LocalPlayer:SetAttribute("Treadmilling", var62)
	end)
	local var64_upvw = 0
	cleanup_upvr(RunService_upvr.Heartbeat:Connect(function(arg1_6) -- Line 123
		--[[ Upvalues[4]:
			[1]: source_upvr_result1_upvr_3 (readonly)
			[2]: var64_upvw (read and write)
			[3]: UI_upvr (readonly)
			[4]: Character_upvr (readonly)
		]]
		local var30_result1 = source_upvr_result1_upvr_3()
		if not var30_result1 then
		else
			local os_clock_result1_2 = os.clock()
			if (1/60) <= os_clock_result1_2 - var64_upvw then
				var30_result1.speed(math.clamp(var30_result1.speed() - 0.01, 1, 2))
				var64_upvw = os_clock_result1_2
			end
			if UI_upvr.Frames.Treadmill then
				if Character_upvr.Animations.Run then
					Character_upvr.Animations.Run:AdjustSpeed(var30_result1.speed())
				end
				UI_upvr.Frames.Treadmill:setValue(var30_result1.speed(), 1, 2)
			end
		end
	end))
	cleanup_upvr(UserInputService_upvr.JumpRequest:Connect(function() -- Line 141
		--[[ Upvalues[1]:
			[1]: source_upvr_result1_upvr_3 (readonly)
		]]
		local var30_result1_6 = source_upvr_result1_upvr_3()
		if var30_result1_6 then
			var30_result1_6.using(false)
		end
	end))
	cleanup_upvr(Players_upvr.LocalPlayer.CharacterRemoving:Connect(function() -- Line 148
		--[[ Upvalues[1]:
			[1]: source_upvr_result1_upvr_3 (readonly)
		]]
		local var30_result1_5 = source_upvr_result1_upvr_3()
		if var30_result1_5 then
			var30_result1_5.using(false)
		end
	end))
	cleanup_upvr(UserInputService_upvr.InputBegan:Connect(function(arg1_7, arg2) -- Line 155
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_3 (readonly)
			[2]: click_upvr (readonly)
		]]
		if arg2 then
		else
			local var30_result1_3 = source_upvr_result1_upvr_3()
			if not var30_result1_3 or not var30_result1_3.using() then return end
			if arg1_7.UserInputType == Enum.UserInputType.MouseButton1 then
				click_upvr()
				return
			end
			if arg1_7.UserInputType == Enum.UserInputType.Touch then
				click_upvr()
				return
			end
			if arg1_7.KeyCode == Enum.KeyCode.ButtonB then
				click_upvr()
			end
		end
	end))
	indexes_upvr(source_upvr_result1_upvr_2, function(arg1_8, arg2) -- Line 175
		--[[ Upvalues[12]:
			[1]: source_upvr (copied, readonly)
			[2]: source_upvr_result1_upvr_3 (readonly)
			[3]: create_upvr (copied, readonly)
			[4]: derive_upvr (copied, readonly)
			[5]: Players_upvr (copied, readonly)
			[6]: var5_result1_upvr_2 (readonly)
			[7]: cleanup_upvr (copied, readonly)
			[8]: effect_upvr (copied, readonly)
			[9]: Loop_upvr (readonly)
			[10]: ProximityPromptService_upvr (copied, readonly)
			[11]: UI_upvr (readonly)
			[12]: Character_upvr (readonly)
		]]
		local arg1_8_result1_upvr = arg1_8()
		local source_upvr_result1_upvr_4 = source_upvr(false)
		local source_upvr_result1_upvr = source_upvr(false)
		local var5_result1_upvr = source_upvr(1)
		;({
			Parent = arg1_8_result1_upvr.PrimaryPart;
			Part0 = arg1_8_result1_upvr.PrimaryPart;
		}).Part1 = derive_upvr(function() -- Line 196
			--[[ Upvalues[2]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			local var82
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var82 = Players_upvr.LocalPlayer.Character.HumanoidRootPart
				return var82
			end
			if not source_upvr_result1_upvr() or not INLINED() then
				var82 = nil
			end
			return var82
		end)
		local tbl = {
			ActionText = "Use";
			HoldDuration = 0.5;
			RequiresLineOfSight = false;
			Parent = arg1_8_result1_upvr.PrimaryPart;
			Enabled = derive_upvr(function() -- Line 206
				--[[ Upvalues[1]:
					[1]: var5_result1_upvr_2 (copied, readonly)
				]]
				local var85
				if var5_result1_upvr_2() ~= nil then
					var85 = false
				else
					var85 = true
				end
				return var85
			end);
			Triggered = function() -- Line 183, Named "use"
				--[[ Upvalues[4]:
					[1]: source_upvr_result1_upvr_3 (copied, readonly)
					[2]: source_upvr_result1_upvr (readonly)
					[3]: var5_result1_upvr (readonly)
					[4]: arg1_8_result1_upvr (readonly)
				]]
				local var30_result1_4 = source_upvr_result1_upvr_3()
				if var30_result1_4 then
					var30_result1_4.using(false)
				end
				source_upvr_result1_upvr_3({
					using = source_upvr_result1_upvr;
					speed = var5_result1_upvr;
					model = arg1_8_result1_upvr;
				})
				source_upvr_result1_upvr(true)
			end;
		}
		source_upvr_result1_upvr_4(arg1_8():GetAttribute("Occupied"))
		cleanup_upvr(arg1_8():GetAttributeChangedSignal("Occupied"):Connect(function() -- Line 211
			--[[ Upvalues[2]:
				[1]: source_upvr_result1_upvr_4 (readonly)
				[2]: arg1_8 (readonly)
			]]
			source_upvr_result1_upvr_4(arg1_8():GetAttribute("Occupied"))
		end))
		local var88_upvw = false
		effect_upvr(function() -- Line 215
			--[[ Upvalues[8]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: var88_upvw (read and write)
				[3]: Loop_upvr (copied, readonly)
				[4]: arg1_8_result1_upvr (readonly)
				[5]: ProximityPromptService_upvr (copied, readonly)
				[6]: UI_upvr (copied, readonly)
				[7]: Character_upvr (copied, readonly)
				[8]: source_upvr_result1_upvr_3 (copied, readonly)
			]]
			local var76_result1 = source_upvr_result1_upvr()
			if var88_upvw == var76_result1 then
			else
				var88_upvw = var76_result1
				Loop_upvr:TreadmillUse(arg1_8_result1_upvr, var76_result1):andThen(function(arg1_9, arg2_2) -- Line 221
					--[[ Upvalues[6]:
						[1]: ProximityPromptService_upvr (copied, readonly)
						[2]: var88_upvw (copied, read and write)
						[3]: UI_upvr (copied, readonly)
						[4]: Character_upvr (copied, readonly)
						[5]: source_upvr_result1_upvr_3 (copied, readonly)
						[6]: arg1_8_result1_upvr (copied, readonly)
					]]
					if not arg1_9 then
						warn(arg2_2)
					else
						ProximityPromptService_upvr.Enabled = not var88_upvw
						UI_upvr.Frames.Treadmill:setEnabled(var88_upvw)
						if var88_upvw then
							Character_upvr.Animations.Run.Priority = Enum.AnimationPriority.Action
							Character_upvr.Animations.Run:Play()
							return
						end
						Character_upvr.Animations.Run:Stop()
						if source_upvr_result1_upvr_3() and source_upvr_result1_upvr_3().model == arg1_8_result1_upvr then
							source_upvr_result1_upvr_3(nil)
						end
					end
				end):catch(function(arg1_10) -- Line 239
					--[[ Upvalues[1]:
						[1]: source_upvr_result1_upvr (copied, readonly)
					]]
					warn("error using treadmill", arg1_10)
					source_upvr_result1_upvr(false)
				end)
			end
		end)
	end)
end)