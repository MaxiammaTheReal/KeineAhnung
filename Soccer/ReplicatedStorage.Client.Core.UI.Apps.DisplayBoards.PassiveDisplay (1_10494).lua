-- Name: PassiveDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.PassiveDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7542877000014414 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:04
-- Luau version 6, Types version 3
-- Time taken: 0.012953 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local Upgrades_upvr_2 = require(ReplicatedStorage.Shared.Modules.Libraries.Upgrades)
local source_upvr = Vide.source
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local Values_upvr = require(ReplicatedStorage.Client.Core.Values)
local derive_upvr = Vide.derive
local Currencies_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Currencies)
local Requirements_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Requirements)
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage.Packages.RichFormat)
local Upgrades_upvr = require(ReplicatedStorage.Client.Core.Loop):GetService("Upgrades")
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
local Assets_upvr = ReplicatedStorage.Shared.Assets
local effect_upvr = Vide.effect
return function(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[14]:
		[1]: Upgrades_upvr_2 (readonly)
		[2]: source_upvr (readonly)
		[3]: useAtom_upvr (readonly)
		[4]: Values_upvr (readonly)
		[5]: derive_upvr (readonly)
		[6]: Currencies_upvr (readonly)
		[7]: Util_upvr (readonly)
		[8]: Requirements_upvr (readonly)
		[9]: apply_upvr (readonly)
		[10]: RichFormat_upvr (readonly)
		[11]: Upgrades_upvr (readonly)
		[12]: UI_upvr (readonly)
		[13]: Assets_upvr (readonly)
		[14]: effect_upvr (readonly)
	]]
	local ID_upvr = arg2:GetAttribute("ID")
	local any_Get_result1_upvr = Upgrades_upvr_2:Get(ID_upvr)
	local playerData_upvr = arg1.playerData
	local derive_upvr_result1_upvr_5 = derive_upvr(function() -- Line 47
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Upgrades
	end)
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: derive_upvr_result1_upvr_5 (readonly)
			[2]: ID_upvr (readonly)
		]]
		return derive_upvr_result1_upvr_5()[ID_upvr]
	end)
	local var31_upvr = Currencies_upvr[any_Get_result1_upvr.currency]
	local function _() -- Line 57
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var31_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var31_upvr.path)
	end
	local currencyGiven = any_Get_result1_upvr.currencyGiven
	local var34_upvr = Currencies_upvr[currencyGiven]
	local function var35() -- Line 61
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var34_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var34_upvr.path)
	end
	local derive_upvr_result1_upvr_7 = derive_upvr(var35)
	var35 = any_Get_result1_upvr.properties.discount
	local var37_upvr = var35
	if var37_upvr then
		var37_upvr = useAtom_upvr(Values_upvr:ReadValue(any_Get_result1_upvr.properties.discount, false))
	end
	arg2.Content.Top.TextLabel.Text = any_Get_result1_upvr.name
	arg2.Content.TextLabel.Text = any_Get_result1_upvr.description
	arg2.Content.NameContainer.Icon.Image = any_Get_result1_upvr.image
	arg2.Content.Info.Price.TextLabel.UIGradient.Color = var31_upvr.gradient
	arg2.Content.NameContainer.Text.Current.TextLabel.UIGradient.Color = var34_upvr.gradient
	local derive_upvr_result1_upvr_4 = derive_upvr(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end)
	local derive_upvr_result1_upvr_6 = derive_upvr(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Tree
	end)
	local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 50
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Areas
	end)
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 78
		--[[ Upvalues[5]:
			[1]: derive_upvr_result1_upvr_4 (readonly)
			[2]: derive_upvr_result1_upvr_6 (readonly)
			[3]: derive_upvr_result1_upvr_3 (readonly)
			[4]: Requirements_upvr (copied, readonly)
			[5]: any_Get_result1_upvr (readonly)
		]]
		derive_upvr_result1_upvr_4()
		derive_upvr_result1_upvr_6()
		derive_upvr_result1_upvr_3()
		return Requirements_upvr.getRequirement({
			requirements = any_Get_result1_upvr.requirements;
		})
	end)
	apply_upvr(arg2.Locked)({
		Visible = derive_upvr(function() -- Line 84
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_2 (readonly)
			]]
			local var49
			if derive_upvr_result1_upvr_2() == nil then
				var49 = false
			else
				var49 = true
			end
			return var49
		end);
	})
	apply_upvr(arg2.Locked.Content.TextLabel)({
		Text = derive_upvr(function() -- Line 90
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_2 (readonly)
			]]
			return derive_upvr_result1_upvr_2() or ""
		end);
	})
	local tbl = {}
	local var10_result1_upvr = derive_upvr(function() -- Line 65
		--[[ Upvalues[4]:
			[1]: Upgrades_upvr_2 (copied, readonly)
			[2]: any_Get_result1_upvr (readonly)
			[3]: derive_upvr_result1_upvr (readonly)
			[4]: var37_upvr (readonly)
		]]
		local any_GetPrice_result1 = Upgrades_upvr_2:GetPrice(any_Get_result1_upvr.properties.priceBase, any_Get_result1_upvr.properties.priceMultiplier, derive_upvr_result1_upvr())
		local var40
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var40 = any_GetPrice_result1 - any_GetPrice_result1 * (var37_upvr() or 0) / 100
			return var40
		end
		if not var37_upvr or not INLINED() then
			var40 = any_GetPrice_result1
		end
		return var40
	end)
	local derive_upvr_result1_upvr_8 = derive_upvr(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: derive_upvr_result1_upvr (readonly)
			[2]: any_Get_result1_upvr (readonly)
		]]
		local var30
		if any_Get_result1_upvr.properties.max > derive_upvr_result1_upvr() then
			var30 = false
		else
			var30 = true
		end
		return var30
	end)
	tbl.Text = derive_upvr(function() -- Line 97
		--[[ Upvalues[4]:
			[1]: var10_result1_upvr (readonly)
			[2]: derive_upvr_result1_upvr_8 (readonly)
			[3]: var31_upvr (readonly)
			[4]: RichFormat_upvr (copied, readonly)
		]]
		local var56
		if derive_upvr_result1_upvr_8() then
			var56 = "Maxed!"
		else
			var56 = var31_upvr.format:format(RichFormat_upvr.number.Abbreviate(var10_result1_upvr()))
		end
		return `{var56}`
	end)
	apply_upvr(arg2.Content.Info.Price.TextLabel)(tbl)
	apply_upvr(arg2.Content.Top.LevelCount.TextLabel)({
		Text = derive_upvr(function() -- Line 105
			--[[ Upvalues[2]:
				[1]: derive_upvr_result1_upvr (readonly)
				[2]: any_Get_result1_upvr (readonly)
			]]
			return `{derive_upvr_result1_upvr()}/{any_Get_result1_upvr.properties.max}`
		end);
	})
	apply_upvr(arg2.Content.NameContainer.Text.Current.TextLabel)({
		Text = derive_upvr(function() -- Line 112
			--[[ Upvalues[2]:
				[1]: RichFormat_upvr (copied, readonly)
				[2]: derive_upvr_result1_upvr_7 (readonly)
			]]
			return `{RichFormat_upvr.number.Abbreviate(derive_upvr_result1_upvr_7())}`
		end);
	})
	local tbl_3 = {}
	local var8_result1_upvr = useAtom_upvr(Values_upvr:ReadValue(any_Get_result1_upvr.name, false))
	tbl_3.Text = derive_upvr(function() -- Line 119
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		return `+{math.floor(var8_result1_upvr())}/s`
	end)
	apply_upvr(arg2.Content.NameContainer.Text.Value.TextLabel)(tbl_3)
	local tbl_2 = {}
	local function MouseButton1Click() -- Line 126
		--[[ Upvalues[3]:
			[1]: Upgrades_upvr (copied, readonly)
			[2]: ID_upvr (readonly)
			[3]: UI_upvr (copied, readonly)
		]]
		Upgrades_upvr:Upgrade(ID_upvr, false):andThen(function(arg1_2, arg2_2) -- Line 127
			--[[ Upvalues[1]:
				[1]: UI_upvr (copied, readonly)
			]]
			if not arg1_2 then
				UI_upvr:Log(print, `[{script.Name}]: {arg2_2}`)
			end
		end)
	end
	tbl_2.MouseButton1Click = MouseButton1Click
	apply_upvr(arg2.Content.Buttons.BuyOne)(tbl_2)
	apply_upvr(arg2.Content.Buttons.BuyMax)({
		MouseButton1Click = function() -- Line 137, Named "MouseButton1Click"
			--[[ Upvalues[3]:
				[1]: Upgrades_upvr (copied, readonly)
				[2]: ID_upvr (readonly)
				[3]: UI_upvr (copied, readonly)
			]]
			Upgrades_upvr:Upgrade(ID_upvr, true):andThen(function(arg1_3, arg2_3) -- Line 138
				--[[ Upvalues[1]:
					[1]: UI_upvr (copied, readonly)
				]]
				if not arg1_3 then
					UI_upvr:Log(print, `[{script.Name}]: {arg2_3}`)
				end
			end)
		end;
	})
	local SOME_upvr = Assets_upvr.PassiveStatChangedActions:FindFirstChild(currencyGiven)
	if SOME_upvr then
		SOME_upvr = require(Assets_upvr.PassiveStatChangedActions[currencyGiven])
	end
	local var70_upvw = 0
	effect_upvr(function() -- Line 150
		--[[ Upvalues[3]:
			[1]: derive_upvr_result1_upvr_7 (readonly)
			[2]: var70_upvw (read and write)
			[3]: SOME_upvr (readonly)
		]]
		local var36_result1 = derive_upvr_result1_upvr_7()
		if var36_result1 ~= var70_upvw then
			SOME_upvr(var36_result1 - var70_upvw)
			var70_upvw = var36_result1
		end
	end)
end