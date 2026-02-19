-- Name: TreadmillDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.TreadmillDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6829853000017465 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:09
-- Luau version 6, Types version 3
-- Time taken: 0.004497 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local UI = require(ReplicatedStorage.Client.Core.UI)
local derive_upvr = Vide.derive
local Requirements_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Requirements)
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage.Packages.RichFormat)
local Game_upvr = require(ReplicatedStorage.Shared.Config.Game)
return function(arg1, arg2, arg3) -- Line 38
	--[[ Upvalues[5]:
		[1]: derive_upvr (readonly)
		[2]: Requirements_upvr (readonly)
		[3]: apply_upvr (readonly)
		[4]: RichFormat_upvr (readonly)
		[5]: Game_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local var5_result1_upvr_2 = derive_upvr(function() -- Line 43
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().privatestats.LegStrength
	end)
	local var5_result1_upvr_3 = derive_upvr(function() -- Line 40
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end)
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Tree
	end)
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 46
		--[[ Upvalues[3]:
			[1]: var5_result1_upvr_3 (readonly)
			[2]: derive_upvr_result1_upvr_2 (readonly)
			[3]: Requirements_upvr (copied, readonly)
		]]
		var5_result1_upvr_3()
		derive_upvr_result1_upvr_2()
		return Requirements_upvr.getRequirement({
			requirements = {
				tree = "3/6";
			};
		})
	end)
	apply_upvr(arg2.Content.Info.Values.Before)({
		Text = derive_upvr(function() -- Line 53
			--[[ Upvalues[2]:
				[1]: RichFormat_upvr (copied, readonly)
				[2]: var5_result1_upvr_2 (readonly)
			]]
			local var24 = RichFormat_upvr
			if 10000 < var5_result1_upvr_2() then
				var24 = "Abbreviate"
			else
				var24 = "Comma"
			end
			return `{var24.number[var24](var5_result1_upvr_2())}`
		end);
	})
	apply_upvr(arg2.Content.Info.Values.After)({
		Text = derive_upvr(function() -- Line 57
			--[[ Upvalues[2]:
				[1]: Game_upvr (copied, readonly)
				[2]: var5_result1_upvr_2 (readonly)
			]]
			return `{math.floor(Game_upvr.StrengthConversion(var5_result1_upvr_2()) * 100) / 100}x`
		end);
	})
	apply_upvr(arg2.Locked)({
		Visible = derive_upvr(function() -- Line 64
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr (readonly)
			]]
			local var29
			if derive_upvr_result1_upvr() == nil then
				var29 = false
			else
				var29 = true
			end
			return var29
		end);
	})
	apply_upvr(arg2.Locked.Content.TextLabel)({
		Text = derive_upvr(function() -- Line 70
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr (readonly)
			]]
			return derive_upvr_result1_upvr() or ""
		end);
	})
	local tbl = {}
	local var5_result1_upvr = derive_upvr(function() -- Line 44
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().misc.TreadmillTimeSpent
	end)
	tbl.Text = derive_upvr(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: RichFormat_upvr (copied, readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		return `Time: {RichFormat_upvr.time.Digital(var5_result1_upvr())}`
	end)
	apply_upvr(arg2.Content.TimeLabel)(tbl)
end