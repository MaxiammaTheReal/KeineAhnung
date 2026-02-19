-- Name: ResetDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.ResetDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5656365000031656 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:02
-- Luau version 6, Types version 3
-- Time taken: 0.011475 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local derive_upvr = Vide.derive
local source_upvr = Vide.source
local Resets_upvr_2 = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Resets)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Values_upvr = require(ReplicatedStorage_upvr.Client.Core.Values)
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
local apply_upvr = Vide.apply
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local Resets_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Resets")
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
return function(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[14]:
		[1]: derive_upvr (readonly)
		[2]: source_upvr (readonly)
		[3]: Resets_upvr_2 (readonly)
		[4]: Currencies_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: useAtom_upvr (readonly)
		[7]: Values_upvr (readonly)
		[8]: Requirements_upvr (readonly)
		[9]: apply_upvr (readonly)
		[10]: Sounds_upvr (readonly)
		[11]: ReplicatedStorage_upvr (readonly)
		[12]: Resets_upvr (readonly)
		[13]: UI_upvr (readonly)
		[14]: RichFormat_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local var7_result1_upvr_2 = source_upvr(tonumber(arg2.Parent:GetAttribute("ID")))
	local var22_upvr = Resets_upvr_2.Content[var7_result1_upvr_2()]
	local var7_result1_upvr = source_upvr(var22_upvr.properties.price)
	local var24_upvr = Currencies_upvr[var22_upvr.properties.currency]
	local function var25() -- Line 50
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var24_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var24_upvr.path)
	end
	local var6_result1_upvr = derive_upvr(var25)
	var25 = nil
	local var27_upvw = var25
	if var22_upvr.properties.multiplier then
		var27_upvw = useAtom_upvr(Values_upvr:ReadValue(var22_upvr.properties.multiplier, false))
	end
	local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 60
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: var7_result1_upvr (readonly)
		]]
		local var30
		if var7_result1_upvr() > var6_result1_upvr() then
			var30 = false
		else
			var30 = true
		end
		return var30
	end)
	arg2.Content.Top.TextLabel.Text = var22_upvr.name[1]
	arg2.Content.Buttons.Buy.TextLabel.Text = var22_upvr.name[2]
	arg2.Content.Icon.Image = var22_upvr.image
	arg2.Locked.Content.TextLabel.Text = `LEVEL {var22_upvr.level}`
	local var6_result1_upvr_2 = derive_upvr(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end)
	local var6_result1_upvr_3 = derive_upvr(function() -- Line 42
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Tree
	end)
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 70
		--[[ Upvalues[4]:
			[1]: var6_result1_upvr_2 (readonly)
			[2]: var6_result1_upvr_3 (readonly)
			[3]: Requirements_upvr (copied, readonly)
			[4]: var22_upvr (readonly)
		]]
		var6_result1_upvr_2()
		var6_result1_upvr_3()
		return Requirements_upvr.getRequirement({
			requirements = var22_upvr.requirements;
		})
	end)
	apply_upvr(arg2.Locked)({
		Visible = derive_upvr(function() -- Line 76
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr (readonly)
			]]
			local var39
			if derive_upvr_result1_upvr() == nil then
				var39 = false
			else
				var39 = true
			end
			return var39
		end);
	})
	apply_upvr(arg2.Locked.Content.TextLabel)({
		Text = derive_upvr(function() -- Line 82
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr (readonly)
			]]
			return derive_upvr_result1_upvr() or ""
		end);
	})
	apply_upvr(arg2.Content.Buttons.Buy.Darken)({
		Visible = derive_upvr(function() -- Line 88
			--[[ Upvalues[1]:
				[1]: derive_upvr_result1_upvr_3 (readonly)
			]]
			return not derive_upvr_result1_upvr_3()
		end);
	})
	apply_upvr(arg2.Content.Buttons.Buy)({
		MouseButton1Click = function() -- Line 94, Named "MouseButton1Click"
			--[[ Upvalues[6]:
				[1]: derive_upvr_result1_upvr_3 (readonly)
				[2]: Sounds_upvr (copied, readonly)
				[3]: ReplicatedStorage_upvr (copied, readonly)
				[4]: Resets_upvr (copied, readonly)
				[5]: var7_result1_upvr_2 (readonly)
				[6]: UI_upvr (copied, readonly)
			]]
			if not derive_upvr_result1_upvr_3() then
			else
				Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
				Resets_upvr:Reset(var7_result1_upvr_2()):andThen(function(arg1_2, arg2_2) -- Line 97
					--[[ Upvalues[1]:
						[1]: UI_upvr (copied, readonly)
					]]
					if not arg1_2 then
						UI_upvr:Log(print, `{script.Name} encountered an error while trying to reset: {arg2_2}`)
					end
				end)
			end
		end;
	})
	local tbl = {}
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 58
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var22_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var22_upvr.path)
	end)
	tbl.Text = derive_upvr(function() -- Line 106
		--[[ Upvalues[2]:
			[1]: RichFormat_upvr (copied, readonly)
			[2]: derive_upvr_result1_upvr_2 (readonly)
		]]
		local var49 = RichFormat_upvr
		if 10000 < derive_upvr_result1_upvr_2() then
			var49 = "Abbreviate"
		else
			var49 = "Comma"
		end
		return `Current: {var49.number[var49](derive_upvr_result1_upvr_2())}`
	end)
	apply_upvr(arg2.Content.TextLabel)(tbl)
	arg2.Content.Info.Price.TextLabel.UIGradient.Color = var24_upvr.gradient
	apply_upvr(arg2.Content.Info.Price.TextLabel)({
		Text = derive_upvr(function() -- Line 114
			--[[ Upvalues[3]:
				[1]: var7_result1_upvr (readonly)
				[2]: var24_upvr (readonly)
				[3]: RichFormat_upvr (copied, readonly)
			]]
			local var23_result1 = var7_result1_upvr()
			local var53 = RichFormat_upvr
			if 10000 < var23_result1 then
				var53 = "Abbreviate"
			else
				var53 = "Comma"
			end
			return `{var24_upvr.format:format(var53.number[var53](var23_result1))}`
		end);
	})
	apply_upvr(arg2.Content.Info.Amount.TextLabel)({
		Text = derive_upvr(function() -- Line 121
			--[[ Upvalues[5]:
				[1]: RichFormat_upvr (copied, readonly)
				[2]: var22_upvr (readonly)
				[3]: var6_result1_upvr (readonly)
				[4]: var7_result1_upvr (readonly)
				[5]: var27_upvw (read and write)
			]]
			local var56
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var56 = math.floor(var6_result1_upvr() / var7_result1_upvr() * (var27_upvw() or 1))
				return var56
			end
			if not var22_upvr.properties.bulkable or not INLINED() then
				var56 = 1
			end
			return `+{RichFormat_upvr.number.Abbreviate(var56)}`
		end);
	})
end