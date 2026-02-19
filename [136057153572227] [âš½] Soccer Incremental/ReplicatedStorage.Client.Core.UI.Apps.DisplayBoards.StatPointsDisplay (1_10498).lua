-- Name: StatPointsDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards.StatPointsDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7340327999991132 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:08
-- Luau version 6, Types version 3
-- Time taken: 0.007143 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
local Resets_upvr_2 = require(ReplicatedStorage.Shared.Modules.Libraries.Resets)
local Products_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Products)
local derive_upvr = Vide.derive
local Currencies_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Currencies)
local source_upvr = Vide.source
local cleanup_upvr = Vide.cleanup
local RunService_upvr = game:GetService("RunService")
local apply_upvr = Vide.apply
local RichFormat_upvr = require(ReplicatedStorage.Packages.RichFormat)
local Market_upvr = UI_upvr:GetService("Market")
local Resets_upvr = UI_upvr:GetService("Resets")
return function(arg1, arg2, arg3) -- Line 36
	--[[ Upvalues[13]:
		[1]: Resets_upvr_2 (readonly)
		[2]: Products_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: Util_upvr (readonly)
		[5]: Currencies_upvr (readonly)
		[6]: source_upvr (readonly)
		[7]: cleanup_upvr (readonly)
		[8]: RunService_upvr (readonly)
		[9]: apply_upvr (readonly)
		[10]: RichFormat_upvr (readonly)
		[11]: Market_upvr (readonly)
		[12]: Resets_upvr (readonly)
		[13]: UI_upvr (readonly)
	]]
	local playerData_upvr = arg1.playerData
	local _2_upvr = Resets_upvr_2.Content[2]
	local _, any_GetByName_result2_upvr, any_GetByName_result3 = Products_upvr:GetByName(_2_upvr.properties.cooldownProduct)
	local var10_result1_upvr = source_upvr(os.time())
	local var8_result1_upvr = derive_upvr(function() -- Line 47
		--[[ Upvalues[2]:
			[1]: playerData_upvr (readonly)
			[2]: _2_upvr (readonly)
		]]
		return playerData_upvr().misc[`last{_2_upvr.name[1]}TimerReset`] or 0
	end)
	local var8_result1_upvr_2 = derive_upvr(function() -- Line 48
		--[[ Upvalues[3]:
			[1]: _2_upvr (readonly)
			[2]: var10_result1_upvr (readonly)
			[3]: var8_result1_upvr (readonly)
		]]
		return math.max(0, (_2_upvr.properties.cooldown) - (var10_result1_upvr() - var8_result1_upvr()))
	end)
	cleanup_upvr(RunService_upvr.Heartbeat:Connect(function() -- Line 50
		--[[ Upvalues[1]:
			[1]: var10_result1_upvr (readonly)
		]]
		var10_result1_upvr(os.time())
	end))
	arg2.Content.Info.Amount.TextLabel.UIGradient.Color = Currencies_upvr.Points.gradient
	local tbl = {}
	local derive_upvr_result1_upvr = derive_upvr(function() -- Line 42
		--[[ Upvalues[3]:
			[1]: Util_upvr (copied, readonly)
			[2]: playerData_upvr (readonly)
			[3]: Currencies_upvr (copied, readonly)
		]]
		return Util_upvr.table.navigatePath(playerData_upvr(), Currencies_upvr.Points.path)
	end)
	tbl.Text = derive_upvr(function() -- Line 55
		--[[ Upvalues[2]:
			[1]: RichFormat_upvr (copied, readonly)
			[2]: derive_upvr_result1_upvr (readonly)
		]]
		local var32 = RichFormat_upvr
		if 10000 < derive_upvr_result1_upvr() then
			var32 = "Abbreviate"
		else
			var32 = "Comma"
		end
		return `{var32.number[var32](derive_upvr_result1_upvr())}`
	end)
	apply_upvr(arg2.Content.Info.Amount.TextLabel)(tbl)
	apply_upvr(arg2.Content.Buttons.Buy)({
		MouseButton1Click = function() -- Line 61, Named "MouseButton1Click"
			--[[ Upvalues[5]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: Market_upvr (copied, readonly)
				[3]: any_GetByName_result2_upvr (readonly)
				[4]: Resets_upvr (copied, readonly)
				[5]: UI_upvr (copied, readonly)
			]]
			local var27_result1 = var8_result1_upvr_2()
			if 0 < var27_result1 then
				if 5 < var27_result1 then
					Market_upvr:Purchase(any_GetByName_result2_upvr):catch(warn)
				end
			else
				Resets_upvr:Reset(2):andThen(function(arg1_2, arg2_2) -- Line 72
					--[[ Upvalues[1]:
						[1]: UI_upvr (copied, readonly)
					]]
					if not arg1_2 then
						UI_upvr:Log(print, `{script.Name} encountered an error while trying to reset: {arg2_2}`)
					else
						UI_upvr:Log(print, `{script.Name} successfully reset: {arg2_2}`)
					end
				end)
			end
		end;
	})
	apply_upvr(arg2.Content.Buttons.Buy.TextLabel)({
		Text = derive_upvr(function() -- Line 83
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr_2 (readonly)
			]]
			local var8_result1_upvr_2_result1 = var8_result1_upvr_2()
			if 0 < var8_result1_upvr_2_result1 then
				return string.format("%02d:%02d", math.floor(var8_result1_upvr_2_result1 / 60), math.floor(var8_result1_upvr_2_result1 % 60))
			end
			return "Refund All"
		end);
	})
	local tbl_2 = {}
	local Color_upvr = arg2.Content.Buttons.Buy.UIGradient.Color
	local ColorSequence_new_result1_upvr = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 150, 150))})
	tbl_2.Color = derive_upvr(function() -- Line 102
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr_2 (readonly)
			[2]: Color_upvr (readonly)
			[3]: ColorSequence_new_result1_upvr (readonly)
		]]
		local var44
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var44 = Color_upvr
			return var44
		end
		if var8_result1_upvr_2() > 0 or not INLINED() then
			var44 = ColorSequence_new_result1_upvr
		end
		return var44
	end)
	apply_upvr(arg2.Content.Buttons.Buy.UIGradient)(tbl_2)
end