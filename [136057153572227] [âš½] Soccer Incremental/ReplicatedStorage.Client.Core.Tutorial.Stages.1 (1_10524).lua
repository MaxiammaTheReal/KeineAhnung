-- Name: 1
-- Path: game:GetService("ReplicatedStorage").Client.Core.Tutorial.Stages.1
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6580495000016526 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:28
-- Luau version 6, Types version 3
-- Time taken: 0.005819 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local root_upvr = Vide.root
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local Charm_upvr = require(ReplicatedStorage.Packages.Charm)
local Loop_upvr = require(ReplicatedStorage.Client.Core.Loop)
local Players_upvr = game:GetService("Players")
local source_upvr = Vide.source
local derive_upvr = Vide.derive
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local cleanup_upvr = Vide.cleanup
local CollectionService_upvr = game:GetService("CollectionService")
local effect_upvr = Vide.effect
return function(arg1, arg2) -- Line 25
	--[[ Upvalues[12]:
		[1]: root_upvr (readonly)
		[2]: UI_upvr (readonly)
		[3]: useAtom_upvr (readonly)
		[4]: Charm_upvr (readonly)
		[5]: Loop_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: source_upvr (readonly)
		[8]: derive_upvr (readonly)
		[9]: Util_upvr (readonly)
		[10]: cleanup_upvr (readonly)
		[11]: CollectionService_upvr (readonly)
		[12]: effect_upvr (readonly)
	]]
	root_upvr(function(arg1_2) -- Line 26
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: UI_upvr (copied, readonly)
			[4]: useAtom_upvr (copied, readonly)
			[5]: Charm_upvr (copied, readonly)
			[6]: Loop_upvr (copied, readonly)
			[7]: Players_upvr (copied, readonly)
			[8]: source_upvr (copied, readonly)
			[9]: derive_upvr (copied, readonly)
			[10]: Util_upvr (copied, readonly)
			[11]: cleanup_upvr (copied, readonly)
			[12]: CollectionService_upvr (copied, readonly)
			[13]: effect_upvr (copied, readonly)
			[14]: root_upvr (copied, readonly)
		]]
		local var19_upvw = true
		if arg1().properties.TutorialCompleted then
			return arg2(arg1_2)
		end
		if arg1().privatestats.Balls < 2 then
			UI_upvr.Frames.Notifications:alert("Touch 2 soccer balls!", 4, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ffffff")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ffffff"))}))
			local function _() -- Line 36
				--[[ Upvalues[2]:
					[1]: Loop_upvr (copied, readonly)
					[2]: Players_upvr (copied, readonly)
				]]
				return Loop_upvr.Atoms.Footballs()[tostring(Players_upvr.LocalPlayer.UserId)]
			end
			local var10_result1_upvr = source_upvr(nil)
			local useAtom_upvr_result1_upvr = useAtom_upvr(arg1)
			local any_new_result1_upvr = Util_upvr.ui.Focus.new(Vector2.new(0, 0), "circle", 0.4)
			any_new_result1_upvr:SetTransparency(0.5)
			cleanup_upvr(any_new_result1_upvr)
			local function findNextBall_upvr() -- Line 53, Named "findNextBall"
				--[[ Upvalues[2]:
					[1]: var10_result1_upvr (readonly)
					[2]: CollectionService_upvr (copied, readonly)
				]]
				if var10_result1_upvr() then
				else
					for _, v_2 in CollectionService_upvr:GetTagged("Football") do
						if not v_2:GetAttribute("Kicked") then
							var10_result1_upvr(v_2)
							return
						end
					end
				end
			end
			local var32_upvw
			effect_upvr(function() -- Line 64
				--[[ Upvalues[7]:
					[1]: var19_upvw (read and write)
					[2]: var10_result1_upvr (readonly)
					[3]: var32_upvw (read and write)
					[4]: root_upvr (copied, readonly)
					[5]: any_new_result1_upvr (readonly)
					[6]: cleanup_upvr (copied, readonly)
					[7]: findNextBall_upvr (readonly)
				]]
				if not var19_upvw then
				else
					local var22_result1_upvr = var10_result1_upvr()
					if var32_upvw then
						var32_upvw()
					end
					if var22_result1_upvr then
						var32_upvw = root_upvr(function(arg1_3) -- Line 73
							--[[ Upvalues[6]:
								[1]: any_new_result1_upvr (copied, readonly)
								[2]: cleanup_upvr (copied, readonly)
								[3]: var22_result1_upvr (readonly)
								[4]: var10_result1_upvr (copied, readonly)
								[5]: findNextBall_upvr (copied, readonly)
								[6]: var32_upvw (copied, read and write)
							]]
							any_new_result1_upvr:SetTransparency(0.5)
							cleanup_upvr(var22_result1_upvr:GetAttributeChangedSignal("Kicked"):Connect(function() -- Line 76
								--[[ Upvalues[4]:
									[1]: var22_result1_upvr (copied, readonly)
									[2]: var10_result1_upvr (copied, readonly)
									[3]: any_new_result1_upvr (copied, readonly)
									[4]: findNextBall_upvr (copied, readonly)
								]]
								if var22_result1_upvr:GetAttribute("Kicked") then
									var10_result1_upvr(nil)
									any_new_result1_upvr:SetPart(nil)
									any_new_result1_upvr:SetTransparency(1)
									findNextBall_upvr()
								end
							end))
							cleanup_upvr(function() -- Line 85
								--[[ Upvalues[1]:
									[1]: var32_upvw (copied, read and write)
								]]
								var32_upvw = nil
							end)
							any_new_result1_upvr:TrackPart(var22_result1_upvr.PrimaryPart)
						end)
					end
				end
			end)
			local derive_upvr_result1_upvr = derive_upvr(function() -- Line 42
				--[[ Upvalues[1]:
					[1]: useAtom_upvr_result1_upvr (readonly)
				]]
				return useAtom_upvr_result1_upvr().privatestats.Balls
			end)
			effect_upvr(function() -- Line 94
				--[[ Upvalues[3]:
					[1]: derive_upvr_result1_upvr (readonly)
					[2]: arg2 (copied, readonly)
					[3]: arg1_2 (readonly)
				]]
				if 2 <= derive_upvr_result1_upvr() then
					arg2(arg1_2)
				end
			end)
			for _, v in CollectionService_upvr:GetTagged("Football") do
				if var10_result1_upvr() then
				elseif v:GetAttribute("Kicked") then
				else
					var10_result1_upvr(v)
				end
			end
			cleanup_upvr(function() -- Line 117
				--[[ Upvalues[2]:
					[1]: var19_upvw (read and write)
					[2]: var10_result1_upvr (readonly)
				]]
				var19_upvw = false
				if var10_result1_upvr() then
					var10_result1_upvr(nil)
				end
			end)
			cleanup_upvr(CollectionService_upvr:GetInstanceAddedSignal("Football"):Connect(function(arg1_4) -- Line 100, Named "ballAdded"
				--[[ Upvalues[1]:
					[1]: var10_result1_upvr (readonly)
				]]
				if var10_result1_upvr() then
				else
					if arg1_4:GetAttribute("Kicked") then return end
					var10_result1_upvr(arg1_4)
				end
			end))
			cleanup_upvr(CollectionService_upvr:GetInstanceRemovedSignal("Football"):Connect(function(arg1_5) -- Line 106, Named "ballRemoved"
				--[[ Upvalues[2]:
					[1]: var10_result1_upvr (readonly)
					[2]: findNextBall_upvr (readonly)
				]]
				if var10_result1_upvr() == arg1_5 then
					var10_result1_upvr(nil)
					findNextBall_upvr()
				end
			end))
		else
			useAtom_upvr_result1_upvr = arg2
			useAtom_upvr_result1_upvr(arg1_2)
		end
	end)
end