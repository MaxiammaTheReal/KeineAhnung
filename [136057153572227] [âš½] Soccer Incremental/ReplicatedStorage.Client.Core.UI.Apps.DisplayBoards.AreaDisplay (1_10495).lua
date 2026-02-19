-- Name: AreaDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.AreaDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5462041999999201 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:05
-- Luau version 6, Types version 3
-- Time taken: 0.008734 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local tbl = {
	tension = 100;
	friction = 25;
}
local derive_upvr = Vide.derive
local Areas_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Areas)
local useMotion_upvr = Util_upvr.ui.useMotion
local apply_upvr = Vide.apply
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local Area_upvr = require(ReplicatedStorage_upvr.Client.Core.Loop):GetService("Area")
local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
local Sounds_upvr = require(ReplicatedStorage_upvr.Shared.Assets.Sounds)
local Requirements_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Requirements)
return function(arg1, arg2, arg3) -- Line 37
	--[[ Upvalues[12]:
		[1]: derive_upvr (readonly)
		[2]: Areas_upvr (readonly)
		[3]: useMotion_upvr (readonly)
		[4]: apply_upvr (readonly)
		[5]: Currencies_upvr (readonly)
		[6]: Util_upvr (readonly)
		[7]: RichFormat_upvr (readonly)
		[8]: Area_upvr (readonly)
		[9]: UI_upvr (readonly)
		[10]: Sounds_upvr (readonly)
		[11]: ReplicatedStorage_upvr (readonly)
		[12]: Requirements_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local class_Folder = arg2:FindFirstAncestorWhichIsA("Folder")
	local ID_upvr = class_Folder:GetAttribute("ID")
	local var23_upvr = Areas_upvr.Content[ID_upvr]
	local function _() -- Line 48
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().leaderstats.Level
	end
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: playerData_upvr (readonly)
		]]
		return playerData_upvr().inventory.Areas
	end)
	local function var26_upvr() -- Line 50
		--[[ Upvalues[2]:
			[1]: derive_upvr_result1_upvr (readonly)
			[2]: ID_upvr (readonly)
		]]
		local var28
		if table.find(derive_upvr_result1_upvr(), ID_upvr) == nil then
			var28 = false
		else
			var28 = true
		end
		return var28
	end
	local var6_result1_upvr_2 = derive_upvr(var26_upvr)
	if var23_upvr.price == nil then
		var26_upvr = false
	else
		var26_upvr = true
	end
	local _, _ = useMotion_upvr(0)
	apply_upvr(class_Folder.Gate)({
		Transparency = derive_upvr(function() -- Line 56
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr_2 (readonly)
			]]
			if var6_result1_upvr_2() then
				return 1
			end
			return 1
		end);
		CanCollide = derive_upvr(function() -- Line 57
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr_2 (readonly)
			]]
			return not var6_result1_upvr_2()
		end);
	})
	apply_upvr(arg2)({
		Enabled = derive_upvr(function() -- Line 61
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr_2 (readonly)
			]]
			return not var6_result1_upvr_2()
		end);
	})
	local var37_upvw
	arg2.Container.Content.NameLabel.Text = var23_upvr.name
	arg2.Container.Content.PriceLabel.Visible = var26_upvr
	if var26_upvr then
		local var38_upvr = Currencies_upvr[var23_upvr.currency]
		var37_upvw = derive_upvr(function() -- Line 75
			--[[ Upvalues[4]:
				[1]: Util_upvr (copied, readonly)
				[2]: playerData_upvr (readonly)
				[3]: var38_upvr (readonly)
				[4]: var23_upvr (readonly)
			]]
			local var40
			if var23_upvr.price > Util_upvr.table.navigatePath(playerData_upvr(), var38_upvr.path) then
				var40 = false
			else
				var40 = true
			end
			return var40
		end)
		arg2.Container.Content.PriceLabel.Text = string.format(var38_upvr.format, RichFormat_upvr.number.Abbreviate(var23_upvr.price))
		arg2.Container.Content.PriceLabel.UIGradient.Color = var38_upvr.gradient
	end
	var38_upvr = arg2.Container.Content.Buy
	var38_upvr = {}
	local var44 = var38_upvr
	var44.Visible = var26_upvr
	function var44.MouseButton1Click() -- Line 85
		--[[ Upvalues[9]:
			[1]: var6_result1_upvr_2 (readonly)
			[2]: var26_upvr (readonly)
			[3]: var23_upvr (readonly)
			[4]: Area_upvr (copied, readonly)
			[5]: ID_upvr (readonly)
			[6]: var37_upvw (read and write)
			[7]: UI_upvr (copied, readonly)
			[8]: Sounds_upvr (copied, readonly)
			[9]: ReplicatedStorage_upvr (copied, readonly)
		]]
		if var6_result1_upvr_2() or not var26_upvr then
		else
			if not var23_upvr.price then return end
			Area_upvr:Unlock(ID_upvr):andThen(function(arg1_2, arg2_2) -- Line 88
				--[[ Upvalues[4]:
					[1]: var37_upvw (copied, read and write)
					[2]: UI_upvr (copied, readonly)
					[3]: Sounds_upvr (copied, readonly)
					[4]: ReplicatedStorage_upvr (copied, readonly)
				]]
				if not var37_upvw() then
					UI_upvr.Frames.Notifications:alert("You cannot afford this yet!", 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
				else
					if not arg1_2 then
						UI_upvr:Log(print, `[{script.Name}]: {arg2_2}`)
						return
					end
					Sounds_upvr.playSound(ReplicatedStorage_upvr.Shared.Assets.SoundInstances.Cash)
				end
			end)
		end
	end
	apply_upvr(var38_upvr)(var44)
	if var23_upvr.requirements then
		local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 39
			--[[ Upvalues[1]:
				[1]: playerData_upvr (readonly)
			]]
			return playerData_upvr().leaderstats.Level
		end)
		local derive_upvr_result1_upvr_4 = derive_upvr(function() -- Line 40
			--[[ Upvalues[1]:
				[1]: playerData_upvr (readonly)
			]]
			return playerData_upvr().inventory.Tree
		end)
		local var6_result1_upvr = derive_upvr(function() -- Line 41
			--[[ Upvalues[1]:
				[1]: playerData_upvr (readonly)
			]]
			return playerData_upvr().inventory.Areas
		end)
		local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 42
			--[[ Upvalues[1]:
				[1]: playerData_upvr (readonly)
			]]
			return playerData_upvr().inventory.Ascensions[1]
		end)
		function var44() -- Line 107
			--[[ Upvalues[6]:
				[1]: derive_upvr_result1_upvr_2 (readonly)
				[2]: derive_upvr_result1_upvr_4 (readonly)
				[3]: var6_result1_upvr (readonly)
				[4]: derive_upvr_result1_upvr_3 (readonly)
				[5]: Requirements_upvr (copied, readonly)
				[6]: var23_upvr (readonly)
			]]
			derive_upvr_result1_upvr_2()
			derive_upvr_result1_upvr_4()
			var6_result1_upvr()
			derive_upvr_result1_upvr_3()
			return Requirements_upvr.getRequirement({
				requirements = var23_upvr.requirements;
			})
		end
		local var6_result1_upvr_3 = derive_upvr(var44)
		var44 = apply_upvr(arg2.Locked)
		var44({
			Visible = derive_upvr(function() -- Line 113
				--[[ Upvalues[1]:
					[1]: var6_result1_upvr_3 (readonly)
				]]
				local var53
				if var6_result1_upvr_3() == nil then
					var53 = false
				else
					var53 = true
				end
				return var53
			end);
		})
		var44 = apply_upvr(arg2.Locked.Content.TextLabel)
		var44({
			Text = derive_upvr(function() -- Line 119
				--[[ Upvalues[1]:
					[1]: var6_result1_upvr_3 (readonly)
				]]
				return var6_result1_upvr_3() or ""
			end);
		})
	end
end