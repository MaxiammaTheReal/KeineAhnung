-- Name: Shop
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Shop
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6118598999964888 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:13
-- Luau version 6, Types version 3
-- Time taken: 0.010188 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local Market_upvr = require(ReplicatedStorage_upvr.Client.Core.Market)
local tbl_upvr = {
	tension = 330;
	friction = 18;
}
local tbl_2_upvr = {
	tension = 330;
	friction = 40;
}
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local Data_upvr = require(ReplicatedStorage_upvr.Client.Core.Data)
local derive_upvr = Vide.derive
local useMotion_upvr = require(ReplicatedStorage_upvr.Shared.Util).ui.useMotion
local apply_upvr = Vide.apply
local effect_upvr = Vide.effect
local source_upvr = Vide.source
local Products_upvr = require(ReplicatedStorage_upvr.Shared.Modules.Libraries.Products)
local indexes_upvr = Vide.indexes
local RichFormat_upvr = require(ReplicatedStorage_upvr.Packages.RichFormat)
local Market_upvr_2 = Market_upvr:GetService("Market")
return function(arg1, arg2, arg3) -- Line 34
	--[[ Upvalues[15]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: Data_upvr (readonly)
		[4]: derive_upvr (readonly)
		[5]: useMotion_upvr (readonly)
		[6]: apply_upvr (readonly)
		[7]: effect_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: tbl_2_upvr (readonly)
		[10]: source_upvr (readonly)
		[11]: Products_upvr (readonly)
		[12]: indexes_upvr (readonly)
		[13]: Market_upvr (readonly)
		[14]: RichFormat_upvr (readonly)
		[15]: Market_upvr_2 (readonly)
	]]
	local UI_upvr = require(ReplicatedStorage_upvr.Client.Core.UI)
	local var7_result1_upvr = useAtom_upvr(Data_upvr.Local)
	local Position_upvr = arg3.Container.Position
	local var25_upvr = Position_upvr + UDim2.fromScale(0, -1)
	local useMotion_upvr_result1_2_upvr, useMotion_upvr_result2_upvr = useMotion_upvr(UDim2.fromScale(0.5, 0.5))
	local useMotion_upvr_result1, useMotion_upvr_result2_upvr_2 = useMotion_upvr(1)
	apply_upvr(arg3)({
		Enabled = derive_upvr(function() -- Line 49
			--[[ Upvalues[2]:
				[1]: useMotion_upvr_result1_2_upvr (readonly)
				[2]: var25_upvr (readonly)
			]]
			local var32
			if 0.1 >= math.abs(useMotion_upvr_result1_2_upvr().Y.Scale - var25_upvr.Y.Scale) then
				var32 = false
			else
				var32 = true
			end
			return var32
		end);
	})
	apply_upvr(arg3.Container)({
		Position = useMotion_upvr_result1_2_upvr;
	})
	apply_upvr(arg3.Container.UIScale)({
		Scale = useMotion_upvr_result1;
	})
	local tbl = {}
	local function MouseButton1Click() -- Line 52
		--[[ Upvalues[1]:
			[1]: UI_upvr (readonly)
		]]
		UI_upvr.Globals.Current(nil)
	end
	tbl.MouseButton1Click = MouseButton1Click
	apply_upvr(arg3.Container.Content.Topbar.Close)(tbl)
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 40
		--[[ Upvalues[1]:
			[1]: UI_upvr (readonly)
		]]
		local var23
		if UI_upvr.Globals.Current() ~= script.Name then
			var23 = false
		else
			var23 = true
		end
		return var23
	end)
	effect_upvr(function() -- Line 54
		--[[ Upvalues[7]:
			[1]: useMotion_upvr_result2_upvr (readonly)
			[2]: derive_upvr_result1_upvr (readonly)
			[3]: Position_upvr (readonly)
			[4]: var25_upvr (readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: useMotion_upvr_result2_upvr_2 (readonly)
			[7]: tbl_2_upvr (copied, readonly)
		]]
		local var38
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var38 = Position_upvr
			return var38
		end
		if not derive_upvr_result1_upvr() or not INLINED_2() then
			var38 = var25_upvr
		end
		useMotion_upvr_result2_upvr:spring(var38, tbl_upvr)
		if derive_upvr_result1_upvr() then
			var38 = 1
		else
			var38 = 0
		end
		useMotion_upvr_result2_upvr_2:spring(var38, tbl_2_upvr)
	end)
	local Placeholder_upvr = arg3.Container.Content.List.Placeholder
	Placeholder_upvr.Visible = false
	local tbl_3 = {}
	local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 38
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		local var21
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = var7_result1_upvr().market.Gamepasses
			return var21
		end
		if not var7_result1_upvr() or not INLINED() then
			var21 = {}
		end
		return var21
	end)
	tbl_3[1] = indexes_upvr(source_upvr(Products_upvr.Content.Gamepass.Content), function(arg1_2, arg2_2) -- Line 65
		--[[ Upvalues[10]:
			[1]: Placeholder_upvr (readonly)
			[2]: source_upvr (copied, readonly)
			[3]: derive_upvr (copied, readonly)
			[4]: derive_upvr_result1_upvr_2 (readonly)
			[5]: Market_upvr (copied, readonly)
			[6]: effect_upvr (copied, readonly)
			[7]: RichFormat_upvr (copied, readonly)
			[8]: apply_upvr (copied, readonly)
			[9]: UI_upvr (readonly)
			[10]: Market_upvr_2 (copied, readonly)
		]]
		local arg1_2_result1_upvr = arg1_2()
		if arg1_2_result1_upvr.disabled then return end
		local clone_upvr = Placeholder_upvr:Clone()
		local source_upvr_result1_upvr = source_upvr()
		local var9_result1_upvr = derive_upvr(function() -- Line 70
			--[[ Upvalues[2]:
				[1]: derive_upvr_result1_upvr_2 (copied, readonly)
				[2]: arg2_2 (readonly)
			]]
			local var47
			if table.find(derive_upvr_result1_upvr_2(), arg2_2) == nil then
				var47 = false
			else
				var47 = true
			end
			return var47
		end)
		task.spawn(function() -- Line 74
			--[[ Upvalues[3]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: Market_upvr (copied, readonly)
				[3]: arg2_2 (readonly)
			]]
			source_upvr_result1_upvr(Market_upvr:GetProductInfo(arg2_2, Enum.InfoType.GamePass))
		end)
		effect_upvr(function() -- Line 78
			--[[ Upvalues[5]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: var9_result1_upvr (readonly)
				[3]: clone_upvr (readonly)
				[4]: arg1_2_result1_upvr (readonly)
				[5]: RichFormat_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local var45_result1_2 = source_upvr_result1_upvr()
			clone_upvr.LayoutOrder = arg1_2_result1_upvr.order or 1
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 15. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 15. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 17. Error Block 31 start (CF ANALYSIS FAILED)
			if not arg1_2_result1_upvr.name then
			end
			-- KONSTANTERROR: [22] 17. Error Block 31 end (CF ANALYSIS FAILED)
		end)
		apply_upvr(clone_upvr)({
			LayoutOrder = derive_upvr(function() -- Line 90
				--[[ Upvalues[1]:
					[1]: source_upvr_result1_upvr (readonly)
				]]
				local var45_result1 = source_upvr_result1_upvr()
				local var55
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var55 = var45_result1.PriceInRobux
					return var55
				end
				if not var45_result1 or not INLINED_3() then
					var55 = 1
				end
				return var55
			end);
			Visible = true;
			MouseButton1Click = function() -- Line 95, Named "MouseButton1Click"
				--[[ Upvalues[6]:
					[1]: source_upvr_result1_upvr (readonly)
					[2]: var9_result1_upvr (readonly)
					[3]: UI_upvr (copied, readonly)
					[4]: arg1_2_result1_upvr (readonly)
					[5]: Market_upvr_2 (copied, readonly)
					[6]: arg2_2 (readonly)
				]]
				if not source_upvr_result1_upvr() then
				else
					if var9_result1_upvr() then
						UI_upvr.Frames.Notifications:alert(`You already own {arg1_2_result1_upvr.name}!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						return
					end
					Market_upvr_2:Purchase(arg2_2)
				end
			end;
		})
		return clone_upvr
	end)
	apply_upvr(arg3.Container.Content.List)(tbl_3)
end