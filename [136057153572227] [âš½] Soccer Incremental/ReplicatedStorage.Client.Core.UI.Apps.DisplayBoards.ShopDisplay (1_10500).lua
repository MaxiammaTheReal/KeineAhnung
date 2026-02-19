-- Name: ShopDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.ShopDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7013813000012306 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:09
-- Luau version 6, Types version 3
-- Time taken: 0.006137 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local Market_upvr = require(ReplicatedStorage.Client.Core.Market)
local source_upvr = Vide.source
local Products_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Products)
local derive_upvr = Vide.derive
local apply_upvr = Vide.apply
local indexes_upvr = Vide.indexes
local effect_upvr = Vide.effect
local RichFormat_upvr = require(ReplicatedStorage.Packages.RichFormat)
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
local Market_upvr_2 = Market_upvr:GetService("Market")
return function(arg1, arg2, arg3) -- Line 33
	--[[ Upvalues[10]:
		[1]: source_upvr (readonly)
		[2]: Products_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: apply_upvr (readonly)
		[5]: indexes_upvr (readonly)
		[6]: Market_upvr (readonly)
		[7]: effect_upvr (readonly)
		[8]: RichFormat_upvr (readonly)
		[9]: UI_upvr (readonly)
		[10]: Market_upvr_2 (readonly)
	]]
	local Placeholder_upvr = arg2.List.Placeholder
	Placeholder_upvr.Visible = false
	local tbl = {}
	local var7_result1_upvr_2 = derive_upvr(function() -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local Gamepasses = arg1.playerData().market.Gamepasses
		if not Gamepasses then
			Gamepasses = {}
		end
		return Gamepasses
	end)
	tbl[1] = indexes_upvr(source_upvr(Products_upvr.Content.Gamepass.Content), function(arg1_2, arg2_2) -- Line 41
		--[[ Upvalues[10]:
			[1]: source_upvr (copied, readonly)
			[2]: derive_upvr (copied, readonly)
			[3]: var7_result1_upvr_2 (readonly)
			[4]: Market_upvr (copied, readonly)
			[5]: Placeholder_upvr (readonly)
			[6]: effect_upvr (copied, readonly)
			[7]: RichFormat_upvr (copied, readonly)
			[8]: apply_upvr (copied, readonly)
			[9]: UI_upvr (copied, readonly)
			[10]: Market_upvr_2 (copied, readonly)
		]]
		if arg1_2().disabled then return end
		local source_upvr_result1_upvr = source_upvr()
		local var7_result1_upvr = derive_upvr(function() -- Line 44
			--[[ Upvalues[2]:
				[1]: var7_result1_upvr_2 (copied, readonly)
				[2]: arg2_2 (readonly)
			]]
			local var22
			if table.find(var7_result1_upvr_2(), arg2_2) == nil then
				var22 = false
			else
				var22 = true
			end
			return var22
		end)
		task.spawn(function() -- Line 48
			--[[ Upvalues[3]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: Market_upvr (copied, readonly)
				[3]: arg2_2 (readonly)
			]]
			source_upvr_result1_upvr(Market_upvr:GetProductInfo(arg2_2, Enum.InfoType.GamePass))
		end)
		local arg1_2_result1_upvr = arg1_2()
		local clone_upvr = Placeholder_upvr:Clone()
		effect_upvr(function() -- Line 55
			--[[ Upvalues[5]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: var7_result1_upvr (readonly)
				[3]: clone_upvr (readonly)
				[4]: arg1_2_result1_upvr (readonly)
				[5]: RichFormat_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local source_upvr_result1_upvr_result1_2 = source_upvr_result1_upvr()
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
			LayoutOrder = derive_upvr(function() -- Line 67
				--[[ Upvalues[1]:
					[1]: source_upvr_result1_upvr (readonly)
				]]
				local source_upvr_result1_upvr_result1 = source_upvr_result1_upvr()
				local var32
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var32 = source_upvr_result1_upvr_result1.PriceInRobux
					return var32
				end
				if not source_upvr_result1_upvr_result1 or not INLINED() then
					var32 = 1
				end
				return var32
			end);
			MouseButton1Click = function() -- Line 71, Named "MouseButton1Click"
				--[[ Upvalues[6]:
					[1]: source_upvr_result1_upvr (readonly)
					[2]: var7_result1_upvr (readonly)
					[3]: UI_upvr (copied, readonly)
					[4]: arg1_2_result1_upvr (readonly)
					[5]: Market_upvr_2 (copied, readonly)
					[6]: arg2_2 (readonly)
				]]
				if not source_upvr_result1_upvr() then
				else
					if var7_result1_upvr() then
						UI_upvr.Frames.Notifications:alert(`You already own {arg1_2_result1_upvr.name}!`, 3, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ff0059")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ff0000"))}))
						return
					end
					Market_upvr_2:Purchase(arg2_2)
				end
			end;
		})
		clone_upvr.Visible = true
		return clone_upvr
	end)
	apply_upvr(arg2.List)(tbl)
end