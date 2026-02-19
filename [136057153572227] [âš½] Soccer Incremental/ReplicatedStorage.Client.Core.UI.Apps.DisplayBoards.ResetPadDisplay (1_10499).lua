-- Name: ResetPadDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.ResetPadDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.721407500001078 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:08
-- Luau version 6, Types version 3
-- Time taken: 0.008269 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local source_upvr = Vide.source
local Resets_upvr_2 = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Resets)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local derive_upvr = Vide.derive
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Values_upvr = require(ReplicatedStorage_upvr.Client.Core.Values)
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local Players_upvr = game:GetService("Players")
local Resets_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Resets")
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
return function(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[14]:
		[1]: source_upvr (readonly)
		[2]: Resets_upvr_2 (readonly)
		[3]: Currencies_upvr (readonly)
		[4]: derive_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: useAtom_upvr (readonly)
		[7]: Values_upvr (readonly)
		[8]: apply_upvr (readonly)
		[9]: RichFormat_upvr (readonly)
		[10]: Players_upvr (readonly)
		[11]: Resets_upvr (readonly)
		[12]: UI_upvr (readonly)
		[13]: Sounds_upvr (readonly)
		[14]: ReplicatedStorage_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local source_upvr_result1_upvr = source_upvr(tonumber(arg2.Parent:GetAttribute("ID")))
	local var20_upvr = Resets_upvr_2.Content[source_upvr_result1_upvr()]
	local source_upvr_result1_upvr_2 = source_upvr(var20_upvr.properties.price)
	local var22_upvr = Currencies_upvr[var20_upvr.properties.currency]
	local function var23() -- Line 48
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var22_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var22_upvr.path)
	end
	local derive_upvr_result1_upvr_2 = derive_upvr(var23)
	var23 = nil
	local var25_upvw = var23
	if var20_upvr.properties.multiplier then
		var25_upvw = useAtom_upvr(Values_upvr:ReadValue(var20_upvr.properties.multiplier, false))
	end
	local var9_result1_upvr = derive_upvr(function() -- Line 58
		--[[ Upvalues[2]:
			[1]: derive_upvr_result1_upvr_2 (readonly)
			[2]: source_upvr_result1_upvr_2 (readonly)
		]]
		local var28
		if source_upvr_result1_upvr_2() > derive_upvr_result1_upvr_2() then
			var28 = false
		else
			var28 = true
		end
		return var28
	end)
	local tbl_2 = {}
	local Color_upvr = arg2.Parent.Color
	local Color3_fromRGB_result1_upvr = Color3.fromRGB(120, 120, 120)
	tbl_2.Color = derive_upvr(function() -- Line 66
		--[[ Upvalues[3]:
			[1]: var9_result1_upvr (readonly)
			[2]: Color_upvr (readonly)
			[3]: Color3_fromRGB_result1_upvr (readonly)
		]]
		local var34
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var34 = Color_upvr
			return var34
		end
		if not var9_result1_upvr() or not INLINED() then
			var34 = Color3_fromRGB_result1_upvr
		end
		return var34
	end)
	apply_upvr(arg2.Parent)(tbl_2)
	if arg2.Parent:FindFirstChild("PointLight") then
		apply_upvr(arg2.Parent.PointLight)({
			Enabled = derive_upvr(function() -- Line 73
				--[[ Upvalues[1]:
					[1]: var9_result1_upvr (readonly)
				]]
				return var9_result1_upvr()
			end);
		})
	end
	arg2.Content.TextLabel.Text = var20_upvr.description
	arg2.Content.Info.Price.TextLabel.UIGradient.Color = var22_upvr.gradient
	local tbl = {}
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 56
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: var20_upvr (readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), var20_upvr.path)
	end)
	tbl.Text = derive_upvr(function() -- Line 83
		--[[ Upvalues[2]:
			[1]: RichFormat_upvr (copied, readonly)
			[2]: derive_upvr_result1_upvr (readonly)
		]]
		local var40 = RichFormat_upvr
		if 10000 < derive_upvr_result1_upvr() then
			var40 = "Abbreviate"
		else
			var40 = "Comma"
		end
		return `Current: {var40.number[var40](derive_upvr_result1_upvr())}`
	end)
	apply_upvr(arg2.Content.CurrentLabel)(tbl)
	apply_upvr(arg2.Content.Info.Price.TextLabel)({
		Text = derive_upvr(function() -- Line 89
			--[[ Upvalues[3]:
				[1]: source_upvr_result1_upvr_2 (readonly)
				[2]: var22_upvr (readonly)
				[3]: RichFormat_upvr (copied, readonly)
			]]
			local var21_result1 = source_upvr_result1_upvr_2()
			local var44 = RichFormat_upvr
			if 10000 < var21_result1 then
				var44 = "Abbreviate"
			else
				var44 = "Comma"
			end
			return `{var22_upvr.format:format(var44.number[var44](var21_result1))}`
		end);
	})
	apply_upvr(arg2.Content.Info.Amount.TextLabel)({
		Text = derive_upvr(function() -- Line 96
			--[[ Upvalues[5]:
				[1]: RichFormat_upvr (copied, readonly)
				[2]: var20_upvr (readonly)
				[3]: derive_upvr_result1_upvr_2 (readonly)
				[4]: source_upvr_result1_upvr_2 (readonly)
				[5]: var25_upvw (read and write)
			]]
			local var47
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var47 = math.floor(derive_upvr_result1_upvr_2() / source_upvr_result1_upvr_2())
				return var47
			end
			if not var20_upvr.properties.bulkable or not INLINED_2() then
				var47 = 1
			end
			var47 = var25_upvw() or 1
			return `+{RichFormat_upvr.number.Abbreviate(var47) * var47}`
		end);
	})
	local tbl_3 = {}
	local os_clock_result1_upvw = os.clock()
	function tbl_3.Touched(arg1_2) -- Line 104
		--[[ Upvalues[7]:
			[1]: os_clock_result1_upvw (read and write)
			[2]: Players_upvr (copied, readonly)
			[3]: Resets_upvr (copied, readonly)
			[4]: source_upvr_result1_upvr (readonly)
			[5]: UI_upvr (copied, readonly)
			[6]: Sounds_upvr (copied, readonly)
			[7]: ReplicatedStorage_upvr (copied, readonly)
		]]
		if os.clock() - os_clock_result1_upvw < 0.5 then
		else
			if not arg1_2:IsDescendantOf(Players_upvr.LocalPlayer.Character) then return end
			os_clock_result1_upvw = os.clock()
			Resets_upvr:Reset(source_upvr_result1_upvr()):andThen(function(arg1_3, arg2_2) -- Line 110
				--[[ Upvalues[3]:
					[1]: UI_upvr (copied, readonly)
					[2]: Sounds_upvr (copied, readonly)
					[3]: ReplicatedStorage_upvr (copied, readonly)
				]]
				if not arg1_3 then
					UI_upvr:Log(print, `{script.Name} encountered an error while trying to reset: {arg2_2}`)
				else
					Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
				end
			end):catch(warn)
		end
	end
	apply_upvr(arg2.Parent)(tbl_3)
end