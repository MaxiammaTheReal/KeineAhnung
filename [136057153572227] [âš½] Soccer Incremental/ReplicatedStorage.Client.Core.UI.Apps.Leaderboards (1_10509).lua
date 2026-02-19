-- Name: Leaderboards
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Leaderboards
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8959774000031757 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:15
-- Luau version 6, Types version 3
-- Time taken: 0.020691 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Promise_upvr = require(ReplicatedStorage_upvr.Packages.Promise)
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local tbl_3_upvr = {"Prestige"}
local function _(arg1) -- Line 30, Named "decompressValue"
	if arg1 == 0 or not 1.0000001 ^ arg1 then
	end
	return 0
end
local module_upvr = {
	Gold = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#FFEA70")), ColorSequenceKeypoint.new(1, Color3.fromHex("#FFD700"))});
	Silver = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#F5F5F5")), ColorSequenceKeypoint.new(1, Color3.fromHex("#C0C0C0"))});
	Bronze = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#e9a14a")), ColorSequenceKeypoint.new(1, Color3.fromHex("#cd7f32"))});
	Default = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#FFFFFF")), ColorSequenceKeypoint.new(1, Color3.fromHex("#FFFFFF"))});
}
local tbl_2_upvr = {
	TreadmillTime = function(arg1) -- Line 54
		--[[ Upvalues[1]:
			[1]: RichFormat_upvr (readonly)
		]]
		return RichFormat_upvr.time.Digital(arg1)
	end;
	Default = function(arg1) -- Line 57
		--[[ Upvalues[1]:
			[1]: RichFormat_upvr (readonly)
		]]
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = 1.0000001 ^ arg1
			return var15
		end
		if arg1 == 0 or not INLINED() then
			var15 = 0
		end
		return RichFormat_upvr.number.Abbreviate(var15)
	end;
}
local function _(arg1) -- Line 62, Named "getUsername"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 63
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		local pcall_result1_2, pcall_result2, pcall_result3 = pcall(function() -- Line 64
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var18
			if arg1 < 1 then
				var18 = "unknown"
			else
				var18 = Players_upvr:GetNameFromUserIdAsync(math.clamp(arg1, 1, math.huge))
			end
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1)
			if not any_GetPlayerByUserId_result1 or not any_GetPlayerByUserId_result1.HasVerifiedBadge then
			end
			return var18, false and ""
		end)
		if pcall_result1_2 then
			arg1_2(pcall_result2, pcall_result3)
		else
			arg2(pcall_result2)
		end
	end)
end
local function getHeadshot_upvr(arg1) -- Line 80, Named "getHeadshot"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_3, arg2) -- Line 81
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 82
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			return Players_upvr:GetUserThumbnailAsync(arg1, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		end)
		if pcall_result1 then
			arg1_3(pcall_result2_2)
		else
			arg2(pcall_result2_2)
		end
	end)
end
local CollectionService_upvr = game:GetService("CollectionService")
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Leaderboards_upvr = require(ReplicatedStorage_upvr.Client.Core.Leaderboards)
local source_upvr = Vide.source
local effect_upvr = Vide.effect
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local root_upvr = Vide.root
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
local values_upvr = Vide.values
return function(arg1, arg2, arg3) -- Line 94
	--[[ Upvalues[17]:
		[1]: CollectionService_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: Leaderboards_upvr (readonly)
		[4]: source_upvr (readonly)
		[5]: effect_upvr (readonly)
		[6]: cleanup_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: root_upvr (readonly)
		[9]: ReplicatedStorage_upvr (readonly)
		[10]: apply_upvr (readonly)
		[11]: derive_upvr (readonly)
		[12]: values_upvr (readonly)
		[13]: Promise_upvr (readonly)
		[14]: getHeadshot_upvr (readonly)
		[15]: module_upvr (readonly)
		[16]: tbl_2_upvr (readonly)
		[17]: tbl_3_upvr (readonly)
	]]
	local var29_result1_upvr_2 = useAtom_upvr(Leaderboards_upvr.Atoms.Names)
	local source_upvr_result1_upvr_2 = source_upvr(0)
	local var29_result1_upvr = useAtom_upvr(Leaderboards_upvr.Atoms.Timer)
	effect_upvr(function() -- Line 102
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr_2 (readonly)
			[2]: var29_result1_upvr (readonly)
		]]
		source_upvr_result1_upvr_2(var29_result1_upvr() - workspace:GetServerTimeNow())
	end)
	cleanup_upvr(RunService_upvr.Heartbeat:Connect(function(arg1_4) -- Line 106
		--[[ Upvalues[1]:
			[1]: source_upvr_result1_upvr_2 (readonly)
		]]
		source_upvr_result1_upvr_2(math.max(0, source_upvr_result1_upvr_2() - arg1_4))
	end))
	for _, v_upvr in CollectionService_upvr:GetTagged("Leaderboard"), nil do
		root_upvr(function(arg1_10) -- Line 111
			--[[ Upvalues[16]:
				[1]: v_upvr (readonly)
				[2]: useAtom_upvr (copied, readonly)
				[3]: Leaderboards_upvr (copied, readonly)
				[4]: ReplicatedStorage_upvr (copied, readonly)
				[5]: apply_upvr (copied, readonly)
				[6]: derive_upvr (copied, readonly)
				[7]: source_upvr_result1_upvr_2 (readonly)
				[8]: values_upvr (copied, readonly)
				[9]: var29_result1_upvr_2 (readonly)
				[10]: source_upvr (copied, readonly)
				[11]: Promise_upvr (copied, readonly)
				[12]: getHeadshot_upvr (copied, readonly)
				[13]: module_upvr (copied, readonly)
				[14]: tbl_2_upvr (copied, readonly)
				[15]: tbl_3_upvr (copied, readonly)
				[16]: cleanup_upvr (copied, readonly)
			]]
			local Stat_upvr_2 = v_upvr:GetAttribute("Stat")
			local clone = ReplicatedStorage_upvr.Shared.Assets.Leaderboards:FindFirstChild(v_upvr:GetAttribute("Type")):Clone()
			clone.Parent = v_upvr
			local Placeholder_upvr_2 = clone.List.Placeholder
			Placeholder_upvr_2.Visible = false
			apply_upvr(clone.Info.TimerLabel)({
				Text = derive_upvr(function() -- Line 122
					--[[ Upvalues[1]:
						[1]: source_upvr_result1_upvr_2 (copied, readonly)
					]]
					return `Refreshing in {math.floor(source_upvr_result1_upvr_2())}s`
				end);
			})
			apply_upvr(clone.List)({values_upvr(useAtom_upvr(Leaderboards_upvr.Atoms[Stat_upvr_2]), function(arg1_11, arg2_3) -- Line 128
				--[[ Upvalues[12]:
					[1]: Placeholder_upvr_2 (readonly)
					[2]: derive_upvr (copied, readonly)
					[3]: var29_result1_upvr_2 (copied, readonly)
					[4]: source_upvr (copied, readonly)
					[5]: Promise_upvr (copied, readonly)
					[6]: getHeadshot_upvr (copied, readonly)
					[7]: apply_upvr (copied, readonly)
					[8]: module_upvr (copied, readonly)
					[9]: tbl_2_upvr (copied, readonly)
					[10]: Stat_upvr_2 (readonly)
					[11]: tbl_3_upvr (copied, readonly)
					[12]: cleanup_upvr (copied, readonly)
				]]
				local clone_2 = Placeholder_upvr_2:Clone()
				local source_upvr_result1_upvr = source_upvr("")
				local var37_result1_upvr = derive_upvr(function() -- Line 139
					--[[ Upvalues[1]:
						[1]: arg2_3 (readonly)
					]]
					local arg2_3_result1 = arg2_3()
					if arg2_3_result1 == 1 then
						return "Gold"
					end
					if arg2_3_result1 == 2 then
						return "Silver"
					end
					if arg2_3_result1 == 3 then
						return "Bronze"
					end
					return "Default"
				end)
				apply_upvr(clone_2)({
					Name = arg2_3();
					LayoutOrder = arg2_3();
				})
				apply_upvr(clone_2.ImageLabel)({
					Image = source_upvr_result1_upvr;
				})
				apply_upvr(clone_2.IndexLabel)({
					Text = derive_upvr(function() -- Line 173
						--[[ Upvalues[1]:
							[1]: arg2_3 (readonly)
						]]
						return `#{arg2_3()}`
					end);
				})
				apply_upvr(clone_2.IndexLabel.UIGradient)({
					Color = derive_upvr(function() -- Line 174
						--[[ Upvalues[2]:
							[1]: module_upvr (copied, readonly)
							[2]: var37_result1_upvr (readonly)
						]]
						return module_upvr[var37_result1_upvr()]
					end);
				})
				apply_upvr(clone_2.NameLabel)({
					Text = derive_upvr(function() -- Line 131
						--[[ Upvalues[2]:
							[1]: var29_result1_upvr_2 (copied, readonly)
							[2]: arg1_11 (readonly)
						]]
						return var29_result1_upvr_2()[arg1_11.key] or "???"
					end);
				})
				apply_upvr(clone_2.BadgeLabel)({
					Text = source_upvr("");
				})
				apply_upvr(clone_2.NameLabel.UIGradient)({
					Color = derive_upvr(function() -- Line 178
						--[[ Upvalues[2]:
							[1]: module_upvr (copied, readonly)
							[2]: var37_result1_upvr (readonly)
						]]
						return module_upvr[var37_result1_upvr()]
					end);
				})
				local tbl = {}
				local var31_result1_upvr_3 = source_upvr(arg1_11.value)
				tbl.Text = derive_upvr(function() -- Line 181
					--[[ Upvalues[4]:
						[1]: tbl_2_upvr (copied, readonly)
						[2]: Stat_upvr_2 (copied, readonly)
						[3]: tbl_3_upvr (copied, readonly)
						[4]: var31_result1_upvr_3 (readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local var111
					if not var111 then
						var111 = tbl_2_upvr.Default
					end
					if not table.find(tbl_3_upvr, Stat_upvr_2) or not var31_result1_upvr_3() then
					end
					return var111(var31_result1_upvr_3())
				end)
				apply_upvr(clone_2.ValueLabel)(tbl)
				clone_2.Visible = true
				local any_catch_result1_upvr = Promise_upvr.retryWithDelay(function() -- Line 162
					--[[ Upvalues[2]:
						[1]: getHeadshot_upvr (copied, readonly)
						[2]: arg1_11 (readonly)
					]]
					return getHeadshot_upvr(tonumber(arg1_11.key))
				end, 3, 1):andThen(function(arg1_12) -- Line 164
					--[[ Upvalues[1]:
						[1]: source_upvr_result1_upvr (readonly)
					]]
					source_upvr_result1_upvr(arg1_12)
				end):catch(function(arg1_13) -- Line 166
					--[[ Upvalues[1]:
						[1]: arg1_11 (readonly)
					]]
					warn(`failed fetching headshot for {arg1_11.key}: {arg1_13}`)
				end)
				cleanup_upvr(function() -- Line 190
					--[[ Upvalues[1]:
						[1]: any_catch_result1_upvr (readonly)
					]]
					any_catch_result1_upvr:cancel()
				end)
				return clone_2
			end)})
		end)
	end
	cleanup_upvr(CollectionService_upvr:GetInstanceAddedSignal("Leaderboard"):Connect(function(arg1_5) -- Line 110, Named "onLeaderboardAdded"
		--[[ Upvalues[16]:
			[1]: root_upvr (copied, readonly)
			[2]: useAtom_upvr (copied, readonly)
			[3]: Leaderboards_upvr (copied, readonly)
			[4]: ReplicatedStorage_upvr (copied, readonly)
			[5]: apply_upvr (copied, readonly)
			[6]: derive_upvr (copied, readonly)
			[7]: source_upvr_result1_upvr_2 (readonly)
			[8]: values_upvr (copied, readonly)
			[9]: var29_result1_upvr_2 (readonly)
			[10]: source_upvr (copied, readonly)
			[11]: Promise_upvr (copied, readonly)
			[12]: getHeadshot_upvr (copied, readonly)
			[13]: module_upvr (copied, readonly)
			[14]: tbl_2_upvr (copied, readonly)
			[15]: tbl_3_upvr (copied, readonly)
			[16]: cleanup_upvr (copied, readonly)
		]]
		root_upvr(function(arg1_6) -- Line 111
			--[[ Upvalues[16]:
				[1]: arg1_5 (readonly)
				[2]: useAtom_upvr (copied, readonly)
				[3]: Leaderboards_upvr (copied, readonly)
				[4]: ReplicatedStorage_upvr (copied, readonly)
				[5]: apply_upvr (copied, readonly)
				[6]: derive_upvr (copied, readonly)
				[7]: source_upvr_result1_upvr_2 (copied, readonly)
				[8]: values_upvr (copied, readonly)
				[9]: var29_result1_upvr_2 (copied, readonly)
				[10]: source_upvr (copied, readonly)
				[11]: Promise_upvr (copied, readonly)
				[12]: getHeadshot_upvr (copied, readonly)
				[13]: module_upvr (copied, readonly)
				[14]: tbl_2_upvr (copied, readonly)
				[15]: tbl_3_upvr (copied, readonly)
				[16]: cleanup_upvr (copied, readonly)
			]]
			local Stat_upvr = arg1_5:GetAttribute("Stat")
			local clone_3 = ReplicatedStorage_upvr.Shared.Assets.Leaderboards:FindFirstChild(arg1_5:GetAttribute("Type")):Clone()
			clone_3.Parent = arg1_5
			local Placeholder_upvr = clone_3.List.Placeholder
			Placeholder_upvr.Visible = false
			apply_upvr(clone_3.Info.TimerLabel)({
				Text = derive_upvr(function() -- Line 122
					--[[ Upvalues[1]:
						[1]: source_upvr_result1_upvr_2 (copied, readonly)
					]]
					return `Refreshing in {math.floor(source_upvr_result1_upvr_2())}s`
				end);
			})
			apply_upvr(clone_3.List)({values_upvr(useAtom_upvr(Leaderboards_upvr.Atoms[Stat_upvr]), function(arg1_7, arg2_2) -- Line 128
				--[[ Upvalues[12]:
					[1]: Placeholder_upvr (readonly)
					[2]: derive_upvr (copied, readonly)
					[3]: var29_result1_upvr_2 (copied, readonly)
					[4]: source_upvr (copied, readonly)
					[5]: Promise_upvr (copied, readonly)
					[6]: getHeadshot_upvr (copied, readonly)
					[7]: apply_upvr (copied, readonly)
					[8]: module_upvr (copied, readonly)
					[9]: tbl_2_upvr (copied, readonly)
					[10]: Stat_upvr (readonly)
					[11]: tbl_3_upvr (copied, readonly)
					[12]: cleanup_upvr (copied, readonly)
				]]
				local clone_4 = Placeholder_upvr:Clone()
				local var31_result1_upvr = source_upvr("")
				local var37_result1_upvr_2 = derive_upvr(function() -- Line 139
					--[[ Upvalues[1]:
						[1]: arg2_2 (readonly)
					]]
					local arg2_2_result1 = arg2_2()
					if arg2_2_result1 == 1 then
						return "Gold"
					end
					if arg2_2_result1 == 2 then
						return "Silver"
					end
					if arg2_2_result1 == 3 then
						return "Bronze"
					end
					return "Default"
				end)
				apply_upvr(clone_4)({
					Name = arg2_2();
					LayoutOrder = arg2_2();
				})
				apply_upvr(clone_4.ImageLabel)({
					Image = var31_result1_upvr;
				})
				apply_upvr(clone_4.IndexLabel)({
					Text = derive_upvr(function() -- Line 173
						--[[ Upvalues[1]:
							[1]: arg2_2 (readonly)
						]]
						return `#{arg2_2()}`
					end);
				})
				apply_upvr(clone_4.IndexLabel.UIGradient)({
					Color = derive_upvr(function() -- Line 174
						--[[ Upvalues[2]:
							[1]: module_upvr (copied, readonly)
							[2]: var37_result1_upvr_2 (readonly)
						]]
						return module_upvr[var37_result1_upvr_2()]
					end);
				})
				apply_upvr(clone_4.NameLabel)({
					Text = derive_upvr(function() -- Line 131
						--[[ Upvalues[2]:
							[1]: var29_result1_upvr_2 (copied, readonly)
							[2]: arg1_7 (readonly)
						]]
						return var29_result1_upvr_2()[arg1_7.key] or "???"
					end);
				})
				apply_upvr(clone_4.BadgeLabel)({
					Text = source_upvr("");
				})
				apply_upvr(clone_4.NameLabel.UIGradient)({
					Color = derive_upvr(function() -- Line 178
						--[[ Upvalues[2]:
							[1]: module_upvr (copied, readonly)
							[2]: var37_result1_upvr_2 (readonly)
						]]
						return module_upvr[var37_result1_upvr_2()]
					end);
				})
				local tbl_4 = {}
				local var31_result1_upvr_2 = source_upvr(arg1_7.value)
				tbl_4.Text = derive_upvr(function() -- Line 181
					--[[ Upvalues[4]:
						[1]: tbl_2_upvr (copied, readonly)
						[2]: Stat_upvr (copied, readonly)
						[3]: tbl_3_upvr (copied, readonly)
						[4]: var31_result1_upvr_2 (readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local var78
					if not var78 then
						var78 = tbl_2_upvr.Default
					end
					if not table.find(tbl_3_upvr, Stat_upvr) or not var31_result1_upvr_2() then
					end
					return var78(var31_result1_upvr_2())
				end)
				apply_upvr(clone_4.ValueLabel)(tbl_4)
				clone_4.Visible = true
				local any_catch_result1_upvr_2 = Promise_upvr.retryWithDelay(function() -- Line 162
					--[[ Upvalues[2]:
						[1]: getHeadshot_upvr (copied, readonly)
						[2]: arg1_7 (readonly)
					]]
					return getHeadshot_upvr(tonumber(arg1_7.key))
				end, 3, 1):andThen(function(arg1_8) -- Line 164
					--[[ Upvalues[1]:
						[1]: var31_result1_upvr (readonly)
					]]
					var31_result1_upvr(arg1_8)
				end):catch(function(arg1_9) -- Line 166
					--[[ Upvalues[1]:
						[1]: arg1_7 (readonly)
					]]
					warn(`failed fetching headshot for {arg1_7.key}: {arg1_9}`)
				end)
				cleanup_upvr(function() -- Line 190
					--[[ Upvalues[1]:
						[1]: any_catch_result1_upvr_2 (readonly)
					]]
					any_catch_result1_upvr_2:cancel()
				end)
				return clone_4
			end)})
		end)
	end))
end