-- Name: UpgradeDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.UpgradeDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8265754999956698 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:01
-- Luau version 6, Types version 3
-- Time taken: 0.043855 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local Products = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Products)
local tbl_6_upvr = {{
	data = {Products:GetByName("High Level Upgrade")};
	productInfo = Vide.source({});
}, {
	data = {Products:GetByName("Medium Level Upgrade")};
	productInfo = Vide.source({});
}, {
	data = {Products:GetByName("Low Level Upgrade")};
	productInfo = Vide.source({});
}, {
	data = {Products:GetByName("Maximum Level Upgrade")};
	productInfo = Vide.source({});
}}
local Market_upvr = require(ReplicatedStorage_upvr.Client.Core.Market)
task.spawn(function() -- Line 47
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: Market_upvr (readonly)
	]]
	for _, v in tbl_6_upvr do
		v.productInfo(Market_upvr:GetProductInfo(v.data[2], Enum.InfoType.Product))
	end
end)
local function _(arg1, arg2) -- Line 53, Named "getUpgradeLevelRange"
	if arg1 < arg2 / 3 then
		return 3
	end
	if arg1 < arg2 / 2 then
		return 2
	end
	return 1
end
local derive_upvr = Vide.derive
local source_upvr = Vide.source
local Upgrades_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Upgrades)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Values_upvr = require(ReplicatedStorage_upvr.Client.Core.Values)
local cleanup_upvr = Vide.cleanup
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local GuiService_upvr = game:GetService("GuiService")
local Players_upvr = game:GetService("Players")
local Upgrades_upvr_2 = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Upgrades")
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
return function(arg1, arg2, arg3) -- Line 59
	--[[ Upvalues[18]:
		[1]: derive_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: Upgrades_upvr (readonly)
		[4]: Currencies_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: useAtom_upvr (readonly)
		[7]: Values_upvr (readonly)
		[8]: cleanup_upvr (readonly)
		[9]: Requirements_upvr (readonly)
		[10]: apply_upvr (readonly)
		[11]: RichFormat_upvr (readonly)
		[12]: GuiService_upvr (readonly)
		[13]: Players_upvr (readonly)
		[14]: Upgrades_upvr_2 (readonly)
		[15]: UI_upvr (readonly)
		[16]: tbl_6_upvr (readonly)
		[17]: Sounds_upvr (readonly)
		[18]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local playerData_upvr = arg1.playerData
	local source_upvr_result1_upvr = source_upvr(arg2:GetAttribute("ID"))
	local any_Get_result1_upvr = Upgrades_upvr:Get(source_upvr_result1_upvr())
	local var20_result1_upvr_2 = derive_upvr(function() -- Line 68
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		local playerData_upvr_result1 = playerData_upvr()
		if not playerData_upvr_result1 then
			return {}
		end
		return playerData_upvr_result1.inventory.Upgrades
	end)
	local var20_result1_upvr_3 = derive_upvr(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: var20_result1_upvr_2 (readonly)
			[2]: source_upvr_result1_upvr (readonly)
		]]
		return var20_result1_upvr_2()[source_upvr_result1_upvr()]
	end)
	local var49_upvr = Currencies_upvr[any_Get_result1_upvr.currency]
	local properties_upvr = any_Get_result1_upvr.properties
	local type = properties_upvr.type
	local var54_upvr
	if type ~= "trade" then
		properties_upvr = false
	else
		properties_upvr = true
	end
	function var54_upvr() -- Line 84
		--[[ Upvalues[2]:
			[1]: var20_result1_upvr_3 (readonly)
			[2]: any_Get_result1_upvr (readonly)
		]]
		local var55
		if any_Get_result1_upvr.properties.max > var20_result1_upvr_3() then
			var55 = false
		else
			var55 = true
		end
		return var55
	end
	local var20_result1_upvr_6 = derive_upvr(var54_upvr)
	var54_upvr = any_Get_result1_upvr.properties.discount
	if var54_upvr then
		var54_upvr = useAtom_upvr(Values_upvr:ReadValue(any_Get_result1_upvr.properties.discount, false))
	end
	local priceMultiplierValue_upvr = any_Get_result1_upvr.properties.priceMultiplierValue
	if priceMultiplierValue_upvr then
		priceMultiplierValue_upvr = useAtom_upvr(Values_upvr:ReadValue(any_Get_result1_upvr.properties.priceMultiplierValue, false))
	end
	local var20_result1_upvr_5 = derive_upvr(function() -- Line 89
		--[[ Upvalues[6]:
			[1]: properties_upvr (readonly)
			[2]: Upgrades_upvr (copied, readonly)
			[3]: any_Get_result1_upvr (readonly)
			[4]: var20_result1_upvr_3 (readonly)
			[5]: priceMultiplierValue_upvr (readonly)
			[6]: var54_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var59
		if properties_upvr then
			return 0
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var59 = priceMultiplierValue_upvr()
			return var59
		end
		if not priceMultiplierValue_upvr or not INLINED() then
			var59 = 1
		end
		local var60 = Upgrades_upvr:GetPrice(any_Get_result1_upvr.properties.priceBase, any_Get_result1_upvr.properties.priceMultiplier, var20_result1_upvr_3()) * var59
		var59 = var54_upvr
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var59 = var60 * var54_upvr() / 100
			return var60 - var59
		end
		if not var59 or not INLINED_2() then
		end
		return var60
	end)
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 79
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var49_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var49_upvr.path)
	end)
	local var20_result1_upvr = derive_upvr(function() -- Line 100
		--[[ Upvalues[3]:
			[1]: properties_upvr (readonly)
			[2]: derive_upvr_result1_upvr (readonly)
			[3]: var20_result1_upvr_5 (readonly)
		]]
		local var64 = properties_upvr
		if var64 then
			if 0 >= derive_upvr_result1_upvr() then
				var64 = false
			else
				var64 = true
			end
			return var64
		end
		if var20_result1_upvr_5() > derive_upvr_result1_upvr() then
			var64 = false
		else
			var64 = true
		end
		return var64
	end)
	cleanup_upvr(arg2:GetAttributeChangedSignal("ID"):Connect(function() -- Line 108
		--[[ Upvalues[2]:
			[1]: source_upvr_result1_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		source_upvr_result1_upvr(arg2:GetAttribute("ID"))
	end))
	local Content = arg2.Content
	local Info = Content.Info
	local Buttons = Content.Buttons
	Content.Icon.Image = any_Get_result1_upvr.image
	Info.Price.PriceText.UIGradient.Color = var49_upvr.gradient
	local derive_upvr_result1_upvr_4 = derive_upvr(function() -- Line 61
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end)
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 62
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Tree
	end)
	local derive_upvr_result1_upvr_5 = derive_upvr(function() -- Line 63
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Areas
	end)
	local derive_upvr_result1_upvr_6 = derive_upvr(function() -- Line 122
		--[[ Upvalues[5]:
			[1]: derive_upvr_result1_upvr_4 (readonly)
			[2]: derive_upvr_result1_upvr_2 (readonly)
			[3]: derive_upvr_result1_upvr_5 (readonly)
			[4]: Requirements_upvr (copied, readonly)
			[5]: any_Get_result1_upvr (readonly)
		]]
		derive_upvr_result1_upvr_4()
		derive_upvr_result1_upvr_2()
		derive_upvr_result1_upvr_5()
		return Requirements_upvr.getRequirement({
			requirements = any_Get_result1_upvr.requirements;
		})
	end)
	apply_upvr(arg2.Locked)({
		Visible = derive_upvr(function() -- Line 128
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_6 (readonly)
			]]
			local var78
			if derive_upvr_result1_upvr_6() == nil then
				var78 = false
			else
				var78 = true
			end
			return var78
		end);
	})
	apply_upvr(arg2.Locked.Content.TextLabel)({
		Text = derive_upvr(function() -- Line 134
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_6 (readonly)
			]]
			return derive_upvr_result1_upvr_6() or ""
		end);
	})
	apply_upvr(Content.UpgradeName)({
		Text = any_Get_result1_upvr.name;
	})
	apply_upvr(Content.Top.LevelCount.Count)({
		Text = derive_upvr(function() -- Line 146
			--[[ Upvalues[4]:
				[1]: properties_upvr (readonly)
				[2]: RichFormat_upvr (copied, readonly)
				[3]: var20_result1_upvr_3 (readonly)
				[4]: any_Get_result1_upvr (readonly)
			]]
			if properties_upvr then
				return `{any_Get_result1_upvr.currency}: {RichFormat_upvr.number.Abbreviate(var20_result1_upvr_3())}`
			end
			return `{RichFormat_upvr.number.Abbreviate(var20_result1_upvr_3())}/{RichFormat_upvr.number.Abbreviate(any_Get_result1_upvr.properties.max)}`
		end);
	})
	apply_upvr(Info.Values.Icon)({
		Visible = derive_upvr(function() -- Line 160
			--[[ Upvalues[2]:
				[1]: properties_upvr (readonly)
				[2]: var20_result1_upvr_6 (readonly)
			]]
			local var86 = not properties_upvr
			if var86 then
				var86 = not var20_result1_upvr_6()
			end
			return var86
		end);
	})
	apply_upvr(Info.Values.Before)({
		Text = derive_upvr(function() -- Line 164
			--[[ Upvalues[5]:
				[1]: properties_upvr (readonly)
				[2]: Upgrades_upvr (copied, readonly)
				[3]: var20_result1_upvr_3 (readonly)
				[4]: source_upvr_result1_upvr (readonly)
				[5]: any_Get_result1_upvr (readonly)
			]]
			if properties_upvr then
				return string.format(any_Get_result1_upvr.format, Upgrades_upvr:GetValue(var20_result1_upvr_3(), source_upvr_result1_upvr()))
			end
			local var89 = math.floor(Upgrades_upvr:GetValue(var20_result1_upvr_3(), source_upvr_result1_upvr()) * 100 + 0.5) / 100
			if any_Get_result1_upvr.format then
				return any_Get_result1_upvr.format:format(var89)
			end
			return var89
		end);
	})
	apply_upvr(Info.Values.After)({
		Visible = derive_upvr(function() -- Line 179
			--[[ Upvalues[2]:
				[1]: properties_upvr (readonly)
				[2]: var20_result1_upvr_6 (readonly)
			]]
			local var92 = not properties_upvr
			if var92 then
				var92 = not var20_result1_upvr_6()
			end
			return var92
		end);
		Text = derive_upvr(function() -- Line 180
			--[[ Upvalues[6]:
				[1]: properties_upvr (readonly)
				[2]: var20_result1_upvr_6 (readonly)
				[3]: Upgrades_upvr (copied, readonly)
				[4]: var20_result1_upvr_3 (readonly)
				[5]: source_upvr_result1_upvr (readonly)
				[6]: any_Get_result1_upvr (readonly)
			]]
			if properties_upvr then
				return ""
			end
			if var20_result1_upvr_6() then
				return "Max"
			end
			local var94 = math.floor(Upgrades_upvr:GetValue(var20_result1_upvr_3() + 1, source_upvr_result1_upvr()) * 100 + 0.5) / 100
			if any_Get_result1_upvr.format then
				return any_Get_result1_upvr.format:format(var94)
			end
			return var94
		end);
	})
	if type ~= "increment" then
	else
	end
	Info.Price.Visible = true
	apply_upvr(Info.Price.PriceText)({
		Text = derive_upvr(function() -- Line 201
			--[[ Upvalues[4]:
				[1]: var20_result1_upvr_6 (readonly)
				[2]: var49_upvr (readonly)
				[3]: RichFormat_upvr (copied, readonly)
				[4]: var20_result1_upvr_5 (readonly)
			]]
			if var20_result1_upvr_6() then
				return "Max"
			end
			local formatShort = var49_upvr.formatShort
			if not formatShort then
				formatShort = var49_upvr.format
			end
			return `{formatShort:format(RichFormat_upvr.number.Abbreviate(var20_result1_upvr_5()))}`
		end);
	})
	local tbl = {
		Visible = derive_upvr(function() -- Line 208
			--[[ Upvalues[4]:
				[1]: var20_result1_upvr (readonly)
				[2]: var20_result1_upvr_6 (readonly)
				[3]: properties_upvr (readonly)
				[4]: any_Get_result1_upvr (readonly)
			]]
			local var102 = not var20_result1_upvr()
			if var102 then
				var102 = not var20_result1_upvr_6()
				if var102 then
					var102 = not properties_upvr
					if var102 then
						var102 = not any_Get_result1_upvr.properties.disablePayToWin
					end
				end
			end
			return var102
		end);
	}
	local function MouseButton1Click() -- Line 211
		--[[ Upvalues[5]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: Upgrades_upvr_2 (copied, readonly)
			[4]: source_upvr_result1_upvr (readonly)
			[5]: UI_upvr (copied, readonly)
		]]
		GuiService_upvr:InspectPlayerFromUserId(Players_upvr.LocalPlayer.UserId)
		GuiService_upvr:CloseInspectMenu()
		Upgrades_upvr_2:RobuxUpgrade(source_upvr_result1_upvr(), false):andThen(function(arg1_2, arg2_2) -- Line 215
			--[[ Upvalues[1]:
				[1]: UI_upvr (copied, readonly)
			]]
			if not arg1_2 then
				UI_upvr:Log(print, `[{script.Name}]: {arg2_2}`)
			else
				UI_upvr:Log(print, `[{script.Name}]: attempting robux upgrade`)
			end
		end):catch(warn)
	end
	tbl.MouseButton1Click = MouseButton1Click
	apply_upvr(Buttons.BuyOne.Robux)(tbl)
	local tbl_4 = {}
	local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 75
		--[[ Upvalues[2]:
			[1]: var20_result1_upvr_3 (readonly)
			[2]: any_Get_result1_upvr (readonly)
		]]
		local var20_result1_upvr_3_result1 = var20_result1_upvr_3()
		local max = any_Get_result1_upvr.properties.max
		if var20_result1_upvr_3_result1 < max / 3 then
			return 3
		end
		if var20_result1_upvr_3_result1 < max / 2 then
			return 2
		end
		return 1
	end)
	tbl_4.Text = derive_upvr(function() -- Line 226
		--[[ Upvalues[2]:
			[1]: tbl_6_upvr (copied, readonly)
			[2]: derive_upvr_result1_upvr_3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local any_productInfo_result1_2 = tbl_6_upvr[derive_upvr_result1_upvr_3()].productInfo()
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 9. Error Block 7 start (CF ANALYSIS FAILED)
		local PriceInRobux = any_productInfo_result1_2.PriceInRobux
		if not PriceInRobux then
			-- KONSTANTERROR: [12] 11. Error Block 3 start (CF ANALYSIS FAILED)
			PriceInRobux = '?'
			-- KONSTANTERROR: [12] 11. Error Block 3 end (CF ANALYSIS FAILED)
		end
		do
			return `{PriceInRobux}`
		end
		-- KONSTANTERROR: [9] 9. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	apply_upvr(Buttons.BuyOne.Robux.TextLabel)(tbl_4)
	local tbl_5 = {
		Visible = derive_upvr(function() -- Line 233
			--[[ Upvalues[4]:
				[1]: var20_result1_upvr (readonly)
				[2]: var20_result1_upvr_6 (readonly)
				[3]: properties_upvr (readonly)
				[4]: any_Get_result1_upvr (readonly)
			]]
			local var111 = not var20_result1_upvr()
			if var111 then
				var111 = not var20_result1_upvr_6()
				if var111 then
					var111 = not properties_upvr
					if var111 then
						var111 = not any_Get_result1_upvr.properties.disablePayToWin
					end
				end
			end
			return var111
		end);
	}
	local function MouseButton1Click() -- Line 236
		--[[ Upvalues[5]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: Upgrades_upvr_2 (copied, readonly)
			[4]: source_upvr_result1_upvr (readonly)
			[5]: UI_upvr (copied, readonly)
		]]
		GuiService_upvr:InspectPlayerFromUserId(Players_upvr.LocalPlayer.UserId)
		GuiService_upvr:CloseInspectMenu()
		Upgrades_upvr_2:RobuxUpgrade(source_upvr_result1_upvr(), true):andThen(function(arg1_3, arg2_3) -- Line 240
			--[[ Upvalues[1]:
				[1]: UI_upvr (copied, readonly)
			]]
			if not arg1_3 then
				UI_upvr:Log(print, `[{script.Name}]: {arg2_3}`)
			else
				UI_upvr:Log(print, `[{script.Name}]: attempting robux upgrade`)
			end
		end):catch(warn)
	end
	tbl_5.MouseButton1Click = MouseButton1Click
	apply_upvr(Buttons.BuyMax.Robux)(tbl_5)
	apply_upvr(Buttons.BuyMax.Robux.TextLabel)({
		Text = derive_upvr(function() -- Line 251
			--[[ Upvalues[1]:
				[1]: tbl_6_upvr (copied, readonly)
			]]
			local any_productInfo_result1 = tbl_6_upvr[4].productInfo()
			local var116
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var116 = any_productInfo_result1.PriceInRobux
				return var116
			end
			if not any_productInfo_result1 or not INLINED_3() then
				var116 = '?'
			end
			return `{var116}`
		end);
	})
	Buttons.BuyOne.Visible = true
	if not properties_upvr or not `Add {var49_upvr.name}` then
	end
	Buttons.BuyOne.TextLabel.Text = "Buy"
	local tbl_7 = {}
	local function MouseButton1Click() -- Line 262
		--[[ Upvalues[7]:
			[1]: var20_result1_upvr (readonly)
			[2]: derive_upvr_result1_upvr_6 (readonly)
			[3]: Sounds_upvr (copied, readonly)
			[4]: ReplicatedStorage_upvr (copied, readonly)
			[5]: Upgrades_upvr_2 (copied, readonly)
			[6]: source_upvr_result1_upvr (readonly)
			[7]: UI_upvr (copied, readonly)
		]]
		if not var20_result1_upvr() then
		else
			if derive_upvr_result1_upvr_6() then return end
			Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
			Upgrades_upvr_2:Upgrade(source_upvr_result1_upvr(), false):andThen(function(arg1_4, arg2_4) -- Line 268
				--[[ Upvalues[1]:
					[1]: UI_upvr (copied, readonly)
				]]
				if not arg1_4 then
					UI_upvr:Log(print, `[{script.Name}]: {arg2_4}`)
				end
			end)
		end
	end
	tbl_7.MouseButton1Click = MouseButton1Click
	apply_upvr(Buttons.BuyOne)(tbl_7)
	local ColorSequence_new_result1_upvr = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))})
	local var20_result1_upvr_4 = derive_upvr(function() -- Line 281
		--[[ Upvalues[2]:
			[1]: var20_result1_upvr (readonly)
			[2]: var20_result1_upvr_6 (readonly)
		]]
		local var20_result1_upvr_result1 = var20_result1_upvr()
		if var20_result1_upvr_result1 then
			var20_result1_upvr_result1 = not var20_result1_upvr_6()
		end
		return var20_result1_upvr_result1
	end)
	apply_upvr(Buttons.BuyOne.Darken)({
		Visible = derive_upvr(function() -- Line 286
			--[[ Upvalues[1]:
				[1]: var20_result1_upvr_4 (readonly)
			]]
			return not var20_result1_upvr_4()
		end);
	})
	local tbl_2 = {}
	local Color_upvr_2 = Buttons.BuyOne.UIGradient.Color
	tbl_2.Color = derive_upvr(function() -- Line 293
		--[[ Upvalues[3]:
			[1]: var20_result1_upvr_4 (readonly)
			[2]: ColorSequence_new_result1_upvr (readonly)
			[3]: Color_upvr_2 (readonly)
		]]
		local var129
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var129 = ColorSequence_new_result1_upvr
			return var129
		end
		if var20_result1_upvr_4() or not INLINED_4() then
			var129 = Color_upvr_2
		end
		return var129
	end)
	apply_upvr(Buttons.BuyOne.UIGradient)(tbl_2)
	if type ~= "increment" then
	else
	end
	Buttons.BuyMax.Visible = true
	apply_upvr(Buttons.BuyMax)({
		MouseButton1Click = function() -- Line 301, Named "MouseButton1Click"
			--[[ Upvalues[7]:
				[1]: var20_result1_upvr (readonly)
				[2]: derive_upvr_result1_upvr_6 (readonly)
				[3]: Sounds_upvr (copied, readonly)
				[4]: ReplicatedStorage_upvr (copied, readonly)
				[5]: Upgrades_upvr_2 (copied, readonly)
				[6]: source_upvr_result1_upvr (readonly)
				[7]: UI_upvr (copied, readonly)
			]]
			if not var20_result1_upvr() then
			else
				if derive_upvr_result1_upvr_6() then return end
				Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
				Upgrades_upvr_2:Upgrade(source_upvr_result1_upvr(), true):andThen(function(arg1_5, arg2_5) -- Line 306
					--[[ Upvalues[1]:
						[1]: UI_upvr (copied, readonly)
					]]
					if not arg1_5 then
						UI_upvr:Log(print, `[{script.Name}]: {arg2_5}`)
					end
				end):catch(warn)
			end
		end;
	})
	local tbl_3 = {}
	local Color_upvr = Buttons.BuyMax.UIGradient.Color
	tbl_3.Color = derive_upvr(function() -- Line 316
		--[[ Upvalues[3]:
			[1]: var20_result1_upvr_4 (readonly)
			[2]: ColorSequence_new_result1_upvr (readonly)
			[3]: Color_upvr (readonly)
		]]
		local var135
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var135 = ColorSequence_new_result1_upvr
			return var135
		end
		if var20_result1_upvr_4() or not INLINED_5() then
			var135 = Color_upvr
		end
		return var135
	end)
	apply_upvr(Buttons.BuyMax.UIGradient)(tbl_3)
	apply_upvr(Buttons.BuyMax.Darken)({
		Visible = derive_upvr(function() -- Line 322
			--[[ Upvalues[1]:
				[1]: var20_result1_upvr_4 (readonly)
			]]
			return not var20_result1_upvr_4()
		end);
	})
end