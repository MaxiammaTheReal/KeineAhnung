-- Name: DailyGroup
-- Path: game:GetService("ReplicatedStorage").Client.Core.Rewards.DailyGroup
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7498931000009179 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:34
-- Luau version 6, Types version 3
-- Time taken: 0.015476 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local root_upvr = Vide.root
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local source_upvr = Vide.source
local Players_upvr = game:GetService("Players")
local Game_upvr = require(ReplicatedStorage_upvr.Shared.Config.Game)
local GroupService_upvr = game:GetService("GroupService")
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local Rewards_upvr = UI_upvr:GetService("Rewards")
local cleanup_upvr = Vide.cleanup
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
local RunService_upvr = game:GetService("RunService")
local CollectionService_upvr = game:GetService("CollectionService")
return root_upvr(function(arg1) -- Line 29
	--[[ Upvalues[16]:
		[1]: root_upvr (readonly)
		[2]: Util_upvr (readonly)
		[3]: source_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: Game_upvr (readonly)
		[6]: UI_upvr (readonly)
		[7]: GroupService_upvr (readonly)
		[8]: Sounds_upvr (readonly)
		[9]: ReplicatedStorage_upvr (readonly)
		[10]: RichFormat_upvr (readonly)
		[11]: Rewards_upvr (readonly)
		[12]: cleanup_upvr (readonly)
		[13]: apply_upvr (readonly)
		[14]: derive_upvr (readonly)
		[15]: RunService_upvr (readonly)
		[16]: CollectionService_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 30, Named "onChestAdded"
		--[[ Upvalues[15]:
			[1]: root_upvr (copied, readonly)
			[2]: Util_upvr (copied, readonly)
			[3]: source_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: Game_upvr (copied, readonly)
			[6]: UI_upvr (copied, readonly)
			[7]: GroupService_upvr (copied, readonly)
			[8]: Sounds_upvr (copied, readonly)
			[9]: ReplicatedStorage_upvr (copied, readonly)
			[10]: RichFormat_upvr (copied, readonly)
			[11]: Rewards_upvr (copied, readonly)
			[12]: cleanup_upvr (copied, readonly)
			[13]: apply_upvr (copied, readonly)
			[14]: derive_upvr (copied, readonly)
			[15]: RunService_upvr (copied, readonly)
		]]
		return root_upvr(function(arg1_3) -- Line 31
			--[[ Upvalues[15]:
				[1]: Util_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: source_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: Game_upvr (copied, readonly)
				[6]: UI_upvr (copied, readonly)
				[7]: GroupService_upvr (copied, readonly)
				[8]: Sounds_upvr (copied, readonly)
				[9]: ReplicatedStorage_upvr (copied, readonly)
				[10]: RichFormat_upvr (copied, readonly)
				[11]: Rewards_upvr (copied, readonly)
				[12]: cleanup_upvr (copied, readonly)
				[13]: apply_upvr (copied, readonly)
				[14]: derive_upvr (copied, readonly)
				[15]: RunService_upvr (copied, readonly)
			]]
			local any_new_result1_upvr = Util_upvr.zone.new(arg1_2:FindFirstChild("Hitbox"))
			local TimerLabel = arg1_2:FindFirstChild("TimerLabel", true)
			local var7_result1_upvr_3 = source_upvr(0)
			local function claim() -- Line 36
				--[[ Upvalues[9]:
					[1]: Players_upvr (copied, readonly)
					[2]: Game_upvr (copied, readonly)
					[3]: UI_upvr (copied, readonly)
					[4]: GroupService_upvr (copied, readonly)
					[5]: Sounds_upvr (copied, readonly)
					[6]: ReplicatedStorage_upvr (copied, readonly)
					[7]: var7_result1_upvr_3 (readonly)
					[8]: RichFormat_upvr (copied, readonly)
					[9]: Rewards_upvr (copied, readonly)
				]]
				local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 37
					--[[ Upvalues[2]:
						[1]: Players_upvr (copied, readonly)
						[2]: Game_upvr (copied, readonly)
					]]
					return Players_upvr.LocalPlayer:IsInGroupAsync(Game_upvr.GroupId)
				end)
				if not pcall_result1_3 then
					UI_upvr.Frames.Notifications:alert(pcall_result2_2, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
				else
					if not pcall_result2_2 then
						UI_upvr.Frames.Notifications:alert("Like + Join group to claim!", 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						task.spawn(function() -- Line 53
							--[[ Upvalues[2]:
								[1]: GroupService_upvr (copied, readonly)
								[2]: Game_upvr (copied, readonly)
							]]
							GroupService_upvr:PromptJoinAsync(Game_upvr.GroupId)
						end)
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						return
					end
					if 0 < var7_result1_upvr_3() then
						UI_upvr.Frames.Notifications:alert(`Try again in {RichFormat_upvr.time.Digital(var7_result1_upvr_3())}!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						return
					end
					Rewards_upvr:ClaimDailyGroup():andThen(function(arg1_4, arg2, arg3) -- Line 70
						--[[ Upvalues[4]:
							[1]: UI_upvr (copied, readonly)
							[2]: RichFormat_upvr (copied, readonly)
							[3]: Sounds_upvr (copied, readonly)
							[4]: ReplicatedStorage_upvr (copied, readonly)
						]]
						if arg1_4 then
							UI_upvr.Frames.Notifications:alert(`You claimed ${RichFormat_upvr.number.Comma(tonumber(arg3) or 0)} money!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#00ff7f")), ColorSequenceKeypoint.new(1, Color3.fromHex("#55ff00"))}))
							Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
						else
							warn(arg1_4, arg2, arg3)
							Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						end
					end)
				end
			end
			cleanup_upvr(Rewards_upvr.SetTimer:Connect(var7_result1_upvr_3))
			any_new_result1_upvr.Entered:Connect(function(arg1_5) -- Line 86
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: claim (readonly)
				]]
				if arg1_5 ~= Players_upvr.LocalPlayer.Character then
				else
					claim()
				end
			end)
			if TimerLabel then
				apply_upvr(TimerLabel)({
					Text = derive_upvr(function() -- Line 93
						--[[ Upvalues[2]:
							[1]: var7_result1_upvr_3 (readonly)
							[2]: RichFormat_upvr (copied, readonly)
						]]
						local var24_result1 = var7_result1_upvr_3()
						local var38
						local function INLINED() -- Internal function, doesn't exist in bytecode
							var38 = `{RichFormat_upvr.time.Digital(var24_result1)}`
							return var38
						end
						if 0 >= var24_result1 or not INLINED() then
							var38 = "REDEEM!"
						end
						return var38
					end);
				})
			end
			cleanup_upvr(RunService_upvr.PreSimulation:Connect(function(arg1_6) -- Line 100
				--[[ Upvalues[1]:
					[1]: var7_result1_upvr_3 (readonly)
				]]
				var7_result1_upvr_3(math.max(0, var7_result1_upvr_3() - arg1_6))
			end))
			cleanup_upvr(function() -- Line 104
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (readonly)
				]]
				any_new_result1_upvr:Destroy()
			end)
		end)
	end
	for _, v_upvr in CollectionService_upvr:GetTagged("DailyGroupChest") do
		local function _(arg1_7) -- Line 31
			--[[ Upvalues[15]:
				[1]: Util_upvr (copied, readonly)
				[2]: v_upvr (readonly)
				[3]: source_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: Game_upvr (copied, readonly)
				[6]: UI_upvr (copied, readonly)
				[7]: GroupService_upvr (copied, readonly)
				[8]: Sounds_upvr (copied, readonly)
				[9]: ReplicatedStorage_upvr (copied, readonly)
				[10]: RichFormat_upvr (copied, readonly)
				[11]: Rewards_upvr (copied, readonly)
				[12]: cleanup_upvr (copied, readonly)
				[13]: apply_upvr (copied, readonly)
				[14]: derive_upvr (copied, readonly)
				[15]: RunService_upvr (copied, readonly)
			]]
			local any_new_result1_upvr_2 = Util_upvr.zone.new(v_upvr:FindFirstChild("Hitbox"))
			local TimerLabel_3 = v_upvr:FindFirstChild("TimerLabel", true)
			local var7_result1_upvr_2 = source_upvr(0)
			local function claim() -- Line 36
				--[[ Upvalues[9]:
					[1]: Players_upvr (copied, readonly)
					[2]: Game_upvr (copied, readonly)
					[3]: UI_upvr (copied, readonly)
					[4]: GroupService_upvr (copied, readonly)
					[5]: Sounds_upvr (copied, readonly)
					[6]: ReplicatedStorage_upvr (copied, readonly)
					[7]: var7_result1_upvr_2 (readonly)
					[8]: RichFormat_upvr (copied, readonly)
					[9]: Rewards_upvr (copied, readonly)
				]]
				local pcall_result1, pcall_result2 = pcall(function() -- Line 37
					--[[ Upvalues[2]:
						[1]: Players_upvr (copied, readonly)
						[2]: Game_upvr (copied, readonly)
					]]
					return Players_upvr.LocalPlayer:IsInGroupAsync(Game_upvr.GroupId)
				end)
				if not pcall_result1 then
					UI_upvr.Frames.Notifications:alert(pcall_result2, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
				else
					if not pcall_result2 then
						UI_upvr.Frames.Notifications:alert("Like + Join group to claim!", 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						task.spawn(function() -- Line 53
							--[[ Upvalues[2]:
								[1]: GroupService_upvr (copied, readonly)
								[2]: Game_upvr (copied, readonly)
							]]
							GroupService_upvr:PromptJoinAsync(Game_upvr.GroupId)
						end)
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						return
					end
					if 0 < var7_result1_upvr_2() then
						UI_upvr.Frames.Notifications:alert(`Try again in {RichFormat_upvr.time.Digital(var7_result1_upvr_2())}!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						return
					end
					Rewards_upvr:ClaimDailyGroup():andThen(function(arg1_8, arg2, arg3) -- Line 70
						--[[ Upvalues[4]:
							[1]: UI_upvr (copied, readonly)
							[2]: RichFormat_upvr (copied, readonly)
							[3]: Sounds_upvr (copied, readonly)
							[4]: ReplicatedStorage_upvr (copied, readonly)
						]]
						if arg1_8 then
							UI_upvr.Frames.Notifications:alert(`You claimed ${RichFormat_upvr.number.Comma(tonumber(arg3) or 0)} money!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#00ff7f")), ColorSequenceKeypoint.new(1, Color3.fromHex("#55ff00"))}))
							Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
						else
							warn(arg1_8, arg2, arg3)
							Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						end
					end)
				end
			end
			cleanup_upvr(Rewards_upvr.SetTimer:Connect(var7_result1_upvr_2))
			any_new_result1_upvr_2.Entered:Connect(function(arg1_9) -- Line 86
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: claim (readonly)
				]]
				if arg1_9 ~= Players_upvr.LocalPlayer.Character then
				else
					claim()
				end
			end)
			if TimerLabel_3 then
				apply_upvr(TimerLabel_3)({
					Text = derive_upvr(function() -- Line 93
						--[[ Upvalues[2]:
							[1]: var7_result1_upvr_2 (readonly)
							[2]: RichFormat_upvr (copied, readonly)
						]]
						local var47_result1 = var7_result1_upvr_2()
						local var61
						local function INLINED_2() -- Internal function, doesn't exist in bytecode
							var61 = `{RichFormat_upvr.time.Digital(var47_result1)}`
							return var61
						end
						if 0 >= var47_result1 or not INLINED_2() then
							var61 = "REDEEM!"
						end
						return var61
					end);
				})
			end
			cleanup_upvr(RunService_upvr.PreSimulation:Connect(function(arg1_10) -- Line 100
				--[[ Upvalues[1]:
					[1]: var7_result1_upvr_2 (readonly)
				]]
				var7_result1_upvr_2(math.max(0, var7_result1_upvr_2() - arg1_10))
			end))
			cleanup_upvr(function() -- Line 104
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr_2 (readonly)
				]]
				any_new_result1_upvr_2:Destroy()
			end)
		end
	end
	cleanup_upvr(CollectionService_upvr:GetInstanceAddedSignal("DailyGroupChest"):Connect(function(arg1_11) -- Line 114
		--[[ Upvalues[15]:
			[1]: root_upvr (copied, readonly)
			[2]: Util_upvr (copied, readonly)
			[3]: source_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: Game_upvr (copied, readonly)
			[6]: UI_upvr (copied, readonly)
			[7]: GroupService_upvr (copied, readonly)
			[8]: Sounds_upvr (copied, readonly)
			[9]: ReplicatedStorage_upvr (copied, readonly)
			[10]: RichFormat_upvr (copied, readonly)
			[11]: Rewards_upvr (copied, readonly)
			[12]: cleanup_upvr (copied, readonly)
			[13]: apply_upvr (copied, readonly)
			[14]: derive_upvr (copied, readonly)
			[15]: RunService_upvr (copied, readonly)
		]]
		local function _(arg1_12) -- Line 31
			--[[ Upvalues[15]:
				[1]: Util_upvr (copied, readonly)
				[2]: arg1_11 (readonly)
				[3]: source_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: Game_upvr (copied, readonly)
				[6]: UI_upvr (copied, readonly)
				[7]: GroupService_upvr (copied, readonly)
				[8]: Sounds_upvr (copied, readonly)
				[9]: ReplicatedStorage_upvr (copied, readonly)
				[10]: RichFormat_upvr (copied, readonly)
				[11]: Rewards_upvr (copied, readonly)
				[12]: cleanup_upvr (copied, readonly)
				[13]: apply_upvr (copied, readonly)
				[14]: derive_upvr (copied, readonly)
				[15]: RunService_upvr (copied, readonly)
			]]
			local any_new_result1_upvr_3 = Util_upvr.zone.new(arg1_11:FindFirstChild("Hitbox"))
			local TimerLabel_2 = arg1_11:FindFirstChild("TimerLabel", true)
			local var7_result1_upvr = source_upvr(0)
			local function claim_upvr() -- Line 36, Named "claim"
				--[[ Upvalues[9]:
					[1]: Players_upvr (copied, readonly)
					[2]: Game_upvr (copied, readonly)
					[3]: UI_upvr (copied, readonly)
					[4]: GroupService_upvr (copied, readonly)
					[5]: Sounds_upvr (copied, readonly)
					[6]: ReplicatedStorage_upvr (copied, readonly)
					[7]: var7_result1_upvr (readonly)
					[8]: RichFormat_upvr (copied, readonly)
					[9]: Rewards_upvr (copied, readonly)
				]]
				local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 37
					--[[ Upvalues[2]:
						[1]: Players_upvr (copied, readonly)
						[2]: Game_upvr (copied, readonly)
					]]
					return Players_upvr.LocalPlayer:IsInGroupAsync(Game_upvr.GroupId)
				end)
				if not pcall_result1_2 then
					UI_upvr.Frames.Notifications:alert(pcall_result2_3, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
				else
					if not pcall_result2_3 then
						UI_upvr.Frames.Notifications:alert("Like + Join group to claim!", 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						task.spawn(function() -- Line 53
							--[[ Upvalues[2]:
								[1]: GroupService_upvr (copied, readonly)
								[2]: Game_upvr (copied, readonly)
							]]
							GroupService_upvr:PromptJoinAsync(Game_upvr.GroupId)
						end)
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						return
					end
					if 0 < var7_result1_upvr() then
						UI_upvr.Frames.Notifications:alert(`Try again in {RichFormat_upvr.time.Digital(var7_result1_upvr())}!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						return
					end
					Rewards_upvr:ClaimDailyGroup():andThen(function(arg1_13, arg2, arg3) -- Line 70
						--[[ Upvalues[4]:
							[1]: UI_upvr (copied, readonly)
							[2]: RichFormat_upvr (copied, readonly)
							[3]: Sounds_upvr (copied, readonly)
							[4]: ReplicatedStorage_upvr (copied, readonly)
						]]
						if arg1_13 then
							UI_upvr.Frames.Notifications:alert(`You claimed ${RichFormat_upvr.number.Comma(tonumber(arg3) or 0)} money!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#00ff7f")), ColorSequenceKeypoint.new(1, Color3.fromHex("#55ff00"))}))
							Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
						else
							warn(arg1_13, arg2, arg3)
							Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Error)
						end
					end)
				end
			end
			cleanup_upvr(Rewards_upvr.SetTimer:Connect(var7_result1_upvr))
			any_new_result1_upvr_3.Entered:Connect(function(arg1_14) -- Line 86
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: claim_upvr (readonly)
				]]
				if arg1_14 ~= Players_upvr.LocalPlayer.Character then
				else
					claim_upvr()
				end
			end)
			if TimerLabel_2 then
				apply_upvr(TimerLabel_2)({
					Text = derive_upvr(function() -- Line 93
						--[[ Upvalues[2]:
							[1]: var7_result1_upvr (readonly)
							[2]: RichFormat_upvr (copied, readonly)
						]]
						local var68_result1 = var7_result1_upvr()
						local var82
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var82 = `{RichFormat_upvr.time.Digital(var68_result1)}`
							return var82
						end
						if 0 >= var68_result1 or not INLINED_3() then
							var82 = "REDEEM!"
						end
						return var82
					end);
				})
			end
			cleanup_upvr(RunService_upvr.PreSimulation:Connect(function(arg1_15) -- Line 100
				--[[ Upvalues[1]:
					[1]: var7_result1_upvr (readonly)
				]]
				var7_result1_upvr(math.max(0, var7_result1_upvr() - arg1_15))
			end))
			cleanup_upvr(function() -- Line 104
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr_3 (readonly)
				]]
				any_new_result1_upvr_3:Destroy()
			end)
		end
	end))
end)