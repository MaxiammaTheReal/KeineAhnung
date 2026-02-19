-- Name: 4
-- Path: game:GetService("ReplicatedStorage").Client.Core.Tutorial.Stages.4
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7715360000001965 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:30
-- Luau version 6, Types version 3
-- Time taken: 0.005027 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local root_upvr = Vide.root
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local Clickers_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Clickers)
local Currencies_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Currencies)
local Requirements_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Requirements)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local cleanup_upvr = Vide.cleanup
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
local effect_upvr = Vide.effect
local CollectionService_upvr = game:GetService("CollectionService")
return function(arg1, arg2) -- Line 28
	--[[ Upvalues[11]:
		[1]: root_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: Clickers_upvr (readonly)
		[5]: Currencies_upvr (readonly)
		[6]: Requirements_upvr (readonly)
		[7]: Util_upvr (readonly)
		[8]: cleanup_upvr (readonly)
		[9]: UI_upvr (readonly)
		[10]: effect_upvr (readonly)
		[11]: CollectionService_upvr (readonly)
	]]
	return root_upvr(function(arg1_2) -- Line 29
		--[[ Upvalues[12]:
			[1]: useAtom_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: derive_upvr (copied, readonly)
			[4]: Clickers_upvr (copied, readonly)
			[5]: Currencies_upvr (copied, readonly)
			[6]: Requirements_upvr (copied, readonly)
			[7]: Util_upvr (copied, readonly)
			[8]: cleanup_upvr (copied, readonly)
			[9]: UI_upvr (copied, readonly)
			[10]: effect_upvr (copied, readonly)
			[11]: CollectionService_upvr (copied, readonly)
			[12]: arg2 (readonly)
		]]
		local var5_result1_upvr = useAtom_upvr(arg1)
		local function _() -- Line 31
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr (readonly)
			]]
			return var5_result1_upvr().properties.Sessions
		end
		local _1_upvr = Clickers_upvr.Content[1]
		local derive_upvr_result1_upvr = derive_upvr(function() -- Line 32
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr (readonly)
			]]
			return var5_result1_upvr().leaderstats.Level
		end)
		local any_new_result1_upvr = Util_upvr.ui.Focus.new(Vector2.new(0, 0), "circle", 0.5)
		any_new_result1_upvr:SetTransparency(0.5)
		cleanup_upvr(any_new_result1_upvr)
		if var5_result1_upvr() and var5_result1_upvr().privatestats["Red Cards"] == 0 then
			UI_upvr.Frames.Notifications:alert("Click the Red Cards button for red cards!", 4, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ffffff")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ffffff"))}))
			local var27_upvr = Currencies_upvr[_1_upvr.currency]
			local var6_result1_upvr = derive_upvr(function() -- Line 37
				--[[ Upvalues[3]:
					[1]: _1_upvr (readonly)
					[2]: derive_upvr_result1_upvr (readonly)
					[3]: Requirements_upvr (copied, readonly)
				]]
				if not _1_upvr.requirements then
					return true
				end
				local var22 = derive_upvr_result1_upvr
				var22()
				if Requirements_upvr.getRequirement({
					requirements = _1_upvr.requirements;
				}) ~= nil then
					var22 = false
				else
					var22 = true
				end
				return var22
			end)
			effect_upvr(function() -- Line 56
				--[[ Upvalues[3]:
					[1]: var6_result1_upvr (readonly)
					[2]: any_new_result1_upvr (readonly)
					[3]: CollectionService_upvr (copied, readonly)
				]]
				if var6_result1_upvr() then
					any_new_result1_upvr:TrackPart(CollectionService_upvr:GetTagged("TutorialStage4FocusPart")[1])
				else
					any_new_result1_upvr:TrackPart(nil)
				end
			end)
			local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 54
				--[[ Upvalues[3]:
					[1]: Util_upvr (copied, readonly)
					[2]: var5_result1_upvr (readonly)
					[3]: var27_upvr (readonly)
				]]
				return Util_upvr.table.navigatePath(var5_result1_upvr(), var27_upvr.path)
			end)
			effect_upvr(function() -- Line 64
				--[[ Upvalues[3]:
					[1]: derive_upvr_result1_upvr_2 (readonly)
					[2]: arg2 (copied, readonly)
					[3]: arg1_2 (readonly)
				]]
				if 1 <= derive_upvr_result1_upvr_2() then
					arg2(arg1_2)
				end
			end)
		else
			derive_upvr_result1_upvr_2 = arg2
			derive_upvr_result1_upvr_2(arg1_2)
		end
	end)
end