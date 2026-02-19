-- Name: AscendDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.AscendDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7609895999994478 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:07
-- Luau version 6, Types version 3
-- Time taken: 0.010107 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local derive_upvr = Vide.derive
local source_upvr = Vide.source
local Ascensions_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Ascensions)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local Upgrades_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Upgrades)
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local apply_upvr = Vide.apply
local indexes_upvr = Vide.indexes
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local Ascension_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Ascension")
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
return function(arg1, arg2, arg3) -- Line 35
	--[[ Upvalues[14]:
		[1]: derive_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: Ascensions_upvr (readonly)
		[4]: Currencies_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: Upgrades_upvr (readonly)
		[7]: Requirements_upvr (readonly)
		[8]: apply_upvr (readonly)
		[9]: indexes_upvr (readonly)
		[10]: Sounds_upvr (readonly)
		[11]: ReplicatedStorage_upvr (readonly)
		[12]: Ascension_upvr (readonly)
		[13]: UI_upvr (readonly)
		[14]: RichFormat_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local var6_result1_upvr = source_upvr(tonumber(arg2.Parent:GetAttribute("ID")))
	local var22_upvr = Ascensions_upvr.Content[var6_result1_upvr()]
	local var23_upvr = Currencies_upvr[var22_upvr.properties.currency]
	local var6_result1_upvr_2 = source_upvr(var22_upvr.levels)
	local derive_upvr_result1_upvr_5 = derive_upvr(function() -- Line 50
		--[[ Upvalues[2]:
			[1]: playerData_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
		]]
		return playerData_upvr().inventory.Ascensions[var6_result1_upvr()]
	end)
	local derive_upvr_result1_upvr_7 = derive_upvr(function() -- Line 51
		--[[ Upvalues[3]:
			[1]: Upgrades_upvr (copied, readonly)
			[2]: var22_upvr (readonly)
			[3]: derive_upvr_result1_upvr_5 (readonly)
		]]
		return Upgrades_upvr:GetPriceIncrement(var22_upvr.properties.price, var22_upvr.properties.priceIncrement, derive_upvr_result1_upvr_5())
	end)
	local var5_result1_upvr_3 = derive_upvr(function() -- Line 46
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var23_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var23_upvr.path)
	end)
	local var5_result1_upvr = derive_upvr(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: derive_upvr_result1_upvr_5 (readonly)
			[2]: var6_result1_upvr_2 (readonly)
		]]
		local var34
		if #var6_result1_upvr_2() > derive_upvr_result1_upvr_5() then
			var34 = false
		else
			var34 = true
		end
		return var34
	end)
	arg2.Content.Levels.Placeholder.Visible = false
	arg2.Content.Top.TextLabel.Text = var22_upvr.name[1]
	arg2.Content.Buttons.Buy.TextLabel.Text = var22_upvr.name[2]
	local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 37
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end)
	local derive_upvr_result1_upvr_6 = derive_upvr(function() -- Line 38
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Tree
	end)
	local derive_upvr_result1_upvr_4 = derive_upvr(function() -- Line 39
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Areas
	end)
	local derive_upvr_result1_upvr_8 = derive_upvr(function() -- Line 61
		--[[ Upvalues[5]:
			[1]: derive_upvr_result1_upvr_3 (readonly)
			[2]: derive_upvr_result1_upvr_6 (readonly)
			[3]: derive_upvr_result1_upvr_4 (readonly)
			[4]: Requirements_upvr (copied, readonly)
			[5]: var22_upvr (readonly)
		]]
		derive_upvr_result1_upvr_3()
		derive_upvr_result1_upvr_6()
		derive_upvr_result1_upvr_4()
		return Requirements_upvr.getRequirement({
			requirements = var22_upvr.requirements;
		})
	end)
	local tbl_2 = {}
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 55
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().misc.AscendedOnce
	end)
	tbl_2.Visible = derive_upvr(function() -- Line 67
		--[[ Upvalues[2]:
			[1]: derive_upvr_result1_upvr_2 (readonly)
			[2]: derive_upvr_result1_upvr_8 (readonly)
		]]
		local var46
		if var46 then
			var46 = false
			return var46
		end
		if derive_upvr_result1_upvr_8() == nil then
			var46 = false
		else
			var46 = true
		end
		return var46
	end)
	apply_upvr(arg2.Locked)(tbl_2)
	apply_upvr(arg2.Locked.Content.TextLabel)({
		Text = derive_upvr(function() -- Line 77
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_8 (readonly)
			]]
			return derive_upvr_result1_upvr_8() or ""
		end);
	})
	apply_upvr(arg2.Content.Levels)({indexes_upvr(var6_result1_upvr_2, function(arg1_2, arg2_2) -- Line 83
		--[[ Upvalues[4]:
			[1]: derive_upvr (copied, readonly)
			[2]: derive_upvr_result1_upvr_5 (readonly)
			[3]: arg2 (readonly)
			[4]: apply_upvr (copied, readonly)
		]]
		local derive_upvr_result1_upvr = derive_upvr(function() -- Line 84
			--[[ Upvalues[2]:
				[1]: derive_upvr_result1_upvr_5 (copied, readonly)
				[2]: arg2_2 (readonly)
			]]
			local var52
			if arg2_2 > derive_upvr_result1_upvr_5() then
				var52 = false
			else
				var52 = true
			end
			return var52
		end)
		local clone = arg2.Content.Levels.Placeholder:Clone()
		clone.Name = arg2_2
		clone.Visible = true
		clone.TextLabel.Text = arg1_2().description
		clone.Level.TextLabel.Text = arg2_2
		apply_upvr(clone.Level)({
			BackgroundColor3 = derive_upvr(function() -- Line 94
				--[[ Upvalues[1]:
					[1]: derive_upvr_result1_upvr (readonly)
				]]
				local var57
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var57 = Color3.fromHex("#00ff00")
					return var57
				end
				if not derive_upvr_result1_upvr() or not INLINED() then
					var57 = Color3.fromHex("#ffff00")
				end
				return var57
			end);
		})
		apply_upvr(clone.Level.TextLabel)({
			Visible = derive_upvr(function() -- Line 98
				--[[ Upvalues[1]:
					[1]: derive_upvr_result1_upvr (readonly)
				]]
				return not derive_upvr_result1_upvr()
			end);
		})
		apply_upvr(clone.Level.Icon)({
			Visible = derive_upvr_result1_upvr;
		})
		return clone
	end)})
	apply_upvr(arg2.Content.Top.TextLabel)({
		Text = derive_upvr(function() -- Line 112
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_5 (readonly)
			]]
			return `Current Tier: {derive_upvr_result1_upvr_5()}`
		end);
	})
	local tbl = {}
	local var5_result1_upvr_2 = derive_upvr(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: var5_result1_upvr_3 (readonly)
			[2]: derive_upvr_result1_upvr_7 (readonly)
		]]
		local var32
		if derive_upvr_result1_upvr_7() > var5_result1_upvr_3() then
			var32 = false
		else
			var32 = true
		end
		return var32
	end)
	tbl.Visible = derive_upvr(function() -- Line 118
		--[[ Upvalues[2]:
			[1]: var5_result1_upvr_2 (readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		local var66 = not var5_result1_upvr_2()
		if not var66 then
			var66 = var5_result1_upvr()
		end
		return var66
	end)
	apply_upvr(arg2.Content.Buttons.Buy.Darken)(tbl)
	apply_upvr(arg2.Content.Buttons.Buy)({
		MouseButton1Click = function() -- Line 124, Named "MouseButton1Click"
			--[[ Upvalues[5]:
				[1]: Sounds_upvr (copied, readonly)
				[2]: ReplicatedStorage_upvr (copied, readonly)
				[3]: Ascension_upvr (copied, readonly)
				[4]: var6_result1_upvr (readonly)
				[5]: UI_upvr (copied, readonly)
			]]
			Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
			Ascension_upvr:Ascend(var6_result1_upvr()):andThen(function(arg1_3, arg2_3) -- Line 127
				--[[ Upvalues[1]:
					[1]: UI_upvr (copied, readonly)
				]]
				if not arg1_3 then
					UI_upvr:Log(print, `{script.Name} encountered an error while trying to ascend: {arg2_3}`)
				end
			end)
		end;
	})
	apply_upvr(arg2.Content.Buttons.Buy.TextLabel)({
		Text = derive_upvr(function() -- Line 136
			--[[ Upvalues[4]:
				[1]: derive_upvr_result1_upvr_7 (readonly)
				[2]: var5_result1_upvr (readonly)
				[3]: var23_upvr (readonly)
				[4]: RichFormat_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var29_result1 = derive_upvr_result1_upvr_7()
			local var72
			if var5_result1_upvr() then
				local const_string = "Maxed!"
			else
				var72 = RichFormat_upvr
				if 10000 < var29_result1 then
					var72 = "Abbreviate"
				else
					var72 = "Comma"
				end
			end
			return `{var23_upvr.format:format(var72.number[var72](var29_result1))}`
		end);
	})
	arg2.Content.Buttons.Buy.UIGradient.Color = var23_upvr.gradient
end