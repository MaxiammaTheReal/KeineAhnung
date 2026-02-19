-- Name: Prestige
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Prestige
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.708341699995799 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:19
-- Luau version 6, Types version 3
-- Time taken: 0.008958 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local tbl_upvr = {
	tension = 330;
	friction = 18;
}
local tbl_2_upvr = {
	tension = 330;
	friction = 40;
}
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local Resets_upvr_2 = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Resets)
local Currencies_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Currencies)
local useMotion_upvr = Util_upvr.ui.useMotion
local create_upvr = Vide.create
local apply_upvr = Vide.apply
local Players_upvr = game:GetService("Players")
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local effect_upvr = Vide.effect
local CollectionService_upvr = game:GetService("CollectionService")
return function(arg1, arg2, arg3) -- Line 34
	--[[ Upvalues[15]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: Resets_upvr_2 (readonly)
		[5]: Currencies_upvr (readonly)
		[6]: Util_upvr (readonly)
		[7]: useMotion_upvr (readonly)
		[8]: create_upvr (readonly)
		[9]: apply_upvr (readonly)
		[10]: Players_upvr (readonly)
		[11]: RichFormat_upvr (readonly)
		[12]: effect_upvr (readonly)
		[13]: tbl_upvr (readonly)
		[14]: tbl_2_upvr (readonly)
		[15]: CollectionService_upvr (readonly)
	]]
	local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
	local var7_result1_upvr = useAtom_upvr(require(ReplicatedStorage_upvr.Client.Core.Data).Local)
	local function _() -- Line 42
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		local var25
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = var7_result1_upvr().market.Gamepasses
			return var25
		end
		if not var7_result1_upvr() or not INLINED() then
			var25 = {}
		end
		return var25
	end
	local _4_upvr = Resets_upvr_2.Content[4]
	local var8_result1_upvr_2 = derive_upvr(function() -- Line 48
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr (readonly)
			[2]: Util_upvr (copied, readonly)
			[3]: _4_upvr (readonly)
		]]
		local var28
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var28 = Util_upvr.table.navigatePath(var7_result1_upvr(), _4_upvr.path)
			return var28
		end
		if not var7_result1_upvr() or not INLINED_2() then
			var28 = 0
		end
		return var28
	end)
	local Position_upvr = arg3.Container.Position
	local var33_upvr = Position_upvr + UDim2.fromScale(0, -1)
	local var11_result1_upvr, var11_result2_upvr = useMotion_upvr(UDim2.fromScale(0.5, 0.5))
	local useMotion_upvr_result1, useMotion_upvr_result2_upvr = useMotion_upvr(1)
	local function onPrestigePortalAdded(arg1_2) -- Line 59
		--[[ Upvalues[3]:
			[1]: create_upvr (copied, readonly)
			[2]: UI_upvr (readonly)
			[3]: apply_upvr (copied, readonly)
		]]
		apply_upvr(arg1_2)({create_upvr("ProximityPrompt")({
			Parent = arg1_2.PrimaryPart;
			ActionText = "Interact";
			RequiresLineOfSight = false;
			Triggered = function() -- Line 64, Named "Triggered"
				--[[ Upvalues[1]:
					[1]: UI_upvr (copied, readonly)
				]]
				UI_upvr.Globals.Current(script.Name)
			end;
		})})
	end
	local Resets_upvr = UI_upvr:GetService("Resets")
	apply_upvr(arg3)({
		Enabled = derive_upvr(function() -- Line 85
			--[[ Upvalues[2]:
				[1]: var11_result1_upvr (readonly)
				[2]: var33_upvr (readonly)
			]]
			local var45
			if 0.1 >= math.abs(var11_result1_upvr().Y.Scale - var33_upvr.Y.Scale) then
				var45 = false
			else
				var45 = true
			end
			return var45
		end);
	})
	apply_upvr(arg3.Container)({
		Position = var11_result1_upvr;
	})
	apply_upvr(arg3.Container.UIScale)({
		Scale = useMotion_upvr_result1;
	})
	apply_upvr(arg3.Container.Content.Topbar.Close)({
		MouseButton1Click = function() -- Line 88, Named "MouseButton1Click"
			--[[ Upvalues[1]:
				[1]: UI_upvr (readonly)
			]]
			UI_upvr.Globals.Current(nil)
		end;
	})
	local tbl = {}
	local var51_upvr = Currencies_upvr[_4_upvr.properties.currency]
	tbl.Text = derive_upvr(function() -- Line 89
		--[[ Upvalues[3]:
			[1]: var51_upvr (readonly)
			[2]: RichFormat_upvr (copied, readonly)
			[3]: _4_upvr (readonly)
		]]
		return string.format(var51_upvr.format, RichFormat_upvr.number.Abbreviate(_4_upvr.properties.price))
	end)
	apply_upvr(arg3.Container.Content.Reset.PriceLabel)(tbl)
	apply_upvr(arg3.Container.Content.Reset)({
		MouseButton1Click = function() -- Line 73, Named "reset"
			--[[ Upvalues[4]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: Resets_upvr (readonly)
				[4]: UI_upvr (readonly)
			]]
			Players_upvr.LocalPlayer.Character:PivotTo(workspace.SpawnLocation:GetPivot())
			arg2.Current(nil)
			Resets_upvr:Reset(4):andThen(function(arg1_3, arg2_2) -- Line 76
				--[[ Upvalues[1]:
					[1]: UI_upvr (copied, readonly)
				]]
				if not arg1_3 then
					UI_upvr:Log(print, `{script.Name} encountered an error while trying to reset: {arg2_2}`)
				end
			end):catch(function(arg1_4) -- Line 80
				warn(arg1_4)
			end)
		end;
	})
	apply_upvr(arg3.Container.Content.Boost.Before)({
		Text = derive_upvr(function() -- Line 91
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr_2 (readonly)
			]]
			return `{math.floor(var8_result1_upvr_2() * 100) / 100}x`
		end);
	})
	local tbl_3 = {}
	local var7_result1_upvr_2 = useAtom_upvr(require(ReplicatedStorage_upvr.Client.Core.Values):ReadValue(_4_upvr.properties.multiplier, false))
	tbl_3.Text = derive_upvr(function() -- Line 92
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr_2 (readonly)
			[2]: _4_upvr (readonly)
			[3]: var7_result1_upvr_2 (readonly)
		]]
		return `{math.floor((var8_result1_upvr_2() + _4_upvr.properties.amount * (var7_result1_upvr_2() or 0)) * 100) / 100}x`
	end)
	apply_upvr(arg3.Container.Content.Boost.After)(tbl_3)
	local var8_result1_upvr = derive_upvr(function() -- Line 50
		--[[ Upvalues[1]:
			[1]: UI_upvr (readonly)
		]]
		local var31
		if UI_upvr.Globals.Current() ~= script.Name then
			var31 = false
		else
			var31 = true
		end
		return var31
	end)
	effect_upvr(function() -- Line 94
		--[[ Upvalues[7]:
			[1]: var11_result2_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: Position_upvr (readonly)
			[4]: var33_upvr (readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: useMotion_upvr_result2_upvr (readonly)
			[7]: tbl_2_upvr (copied, readonly)
		]]
		local var60
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var60 = Position_upvr
			return var60
		end
		if not var8_result1_upvr() or not INLINED_3() then
			var60 = var33_upvr
		end
		var11_result2_upvr:spring(var60, tbl_upvr)
		if var8_result1_upvr() then
			var60 = 1
		else
			var60 = 0
		end
		useMotion_upvr_result2_upvr:spring(var60, tbl_2_upvr)
	end)
	for _, v in CollectionService_upvr:GetTagged("PrestigePortal") do
		onPrestigePortalAdded(v)
	end
	CollectionService_upvr:GetInstanceAddedSignal("PrestigePortal"):Connect(onPrestigePortalAdded)
end