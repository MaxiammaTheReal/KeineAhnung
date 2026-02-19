-- Name: 2
-- Path: game:GetService("ReplicatedStorage").Client.Core.Tutorial.Stages.2
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6239642999935313 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:28
-- Luau version 6, Types version 3
-- Time taken: 0.005690 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local tbl_upvr = {"Football/2"}
local root_upvr = Vide.root
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local source_upvr = Vide.source
local effect_upvr = Vide.effect
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local CollectionService_upvr = game:GetService("CollectionService")
local Players_upvr = game:GetService("Players")
return function(arg1, arg2) -- Line 23
	--[[ Upvalues[12]:
		[1]: root_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: source_upvr (readonly)
		[7]: effect_upvr (readonly)
		[8]: UI_upvr (readonly)
		[9]: cleanup_upvr (readonly)
		[10]: RunService_upvr (readonly)
		[11]: CollectionService_upvr (readonly)
		[12]: Players_upvr (readonly)
	]]
	return root_upvr(function(arg1_2) -- Line 24
		--[[ Upvalues[13]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: useAtom_upvr (copied, readonly)
			[4]: derive_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: Util_upvr (copied, readonly)
			[7]: source_upvr (copied, readonly)
			[8]: effect_upvr (copied, readonly)
			[9]: UI_upvr (copied, readonly)
			[10]: cleanup_upvr (copied, readonly)
			[11]: RunService_upvr (copied, readonly)
			[12]: CollectionService_upvr (copied, readonly)
			[13]: Players_upvr (copied, readonly)
		]]
		if arg1().properties.TutorialCompleted then
			return arg2(arg1_2)
		end
		local useAtom_upvr_result1_upvr = useAtom_upvr(arg1)
		local var7_result1_upvr_2 = derive_upvr(function() -- Line 29
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: useAtom_upvr_result1_upvr (readonly)
			]]
			for _, v in tbl_upvr do
				if 0 < useAtom_upvr_result1_upvr().inventory.Upgrades[v] then
					return true
				end
			end
			return false
		end)
		local var7_result1_upvr = derive_upvr(function() -- Line 39
			--[[ Upvalues[1]:
				[1]: useAtom_upvr_result1_upvr (readonly)
			]]
			return useAtom_upvr_result1_upvr().properties.TutorialCompleted
		end)
		if not var7_result1_upvr_2() and not var7_result1_upvr() then
			local any_new_result1_upvr = Util_upvr.ui.Focus.new(Vector2.new(0, 0), "rectangle", 0.4)
			any_new_result1_upvr:SetTransparency(0.5)
			local source_upvr_result1_upvr = source_upvr(nil)
			effect_upvr(function() -- Line 47
				--[[ Upvalues[2]:
					[1]: source_upvr_result1_upvr (readonly)
					[2]: any_new_result1_upvr (readonly)
				]]
				local var25_result1 = source_upvr_result1_upvr()
				if var25_result1 then
					local FocusPart = var25_result1.Parent:FindFirstChild("FocusPart")
					if not FocusPart then
						FocusPart = var25_result1.Parent
					end
					any_new_result1_upvr:TrackPart(FocusPart)
				end
			end)
			UI_upvr.Frames.Notifications:alert("Nice, now go get an upgrade!", 4, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ffffff")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ffffff"))}))
			local var31_upvw = false
			effect_upvr(function() -- Line 59
				--[[ Upvalues[5]:
					[1]: var7_result1_upvr_2 (readonly)
					[2]: var7_result1_upvr (readonly)
					[3]: var31_upvw (read and write)
					[4]: arg2 (copied, readonly)
					[5]: arg1_2 (readonly)
				]]
				if var7_result1_upvr_2() and not var7_result1_upvr() and not var31_upvw then
					var31_upvw = true
					arg2(arg1_2)
				end
			end)
			local os_clock_result1_upvw = os.clock()
			cleanup_upvr(RunService_upvr.RenderStepped:Connect(function() -- Line 69
				--[[ Upvalues[5]:
					[1]: os_clock_result1_upvw (read and write)
					[2]: tbl_upvr (copied, readonly)
					[3]: CollectionService_upvr (copied, readonly)
					[4]: Players_upvr (copied, readonly)
					[5]: source_upvr_result1_upvr (readonly)
				]]
				local os_clock_result1_2 = os.clock()
				local var57
				if os_clock_result1_2 - os_clock_result1_upvw < var57 then
				else
					os_clock_result1_upvw = os_clock_result1_2
					var57 = nil
					for _, v_2 in tbl_upvr do
						for _, v_3 in CollectionService_upvr:GetTagged("UpgradeDisplay") do
							if v_3:GetAttribute("ID") == v_2 then
								if Players_upvr.LocalPlayer:DistanceFromCharacter(v_3.Parent.Position) < math.huge then
									var57 = v_3
								end
							end
						end
					end
					if var57 then
						source_upvr_result1_upvr(var57)
					end
				end
			end))
			cleanup_upvr(any_new_result1_upvr)
		else
			any_new_result1_upvr = arg2
			source_upvr_result1_upvr = arg1_2
			any_new_result1_upvr(source_upvr_result1_upvr)
		end
	end)
end