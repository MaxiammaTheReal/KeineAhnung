-- Name: 3
-- Path: game:GetService("ReplicatedStorage").Client.Core.Tutorial.Stages.3
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.60271769999963 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:29
-- Luau version 6, Types version 3
-- Time taken: 0.006437 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local root_upvr = Vide.root
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local derive_upvr = Vide.derive
local Areas_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Areas)
local Currencies_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Currencies)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local Requirements_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Requirements)
local cleanup_upvr = Vide.cleanup
local effect_upvr = Vide.effect
local UI_upvr = require(ReplicatedStorage.Client.Core.UI)
return function(arg1, arg2) -- Line 27
	--[[ Upvalues[10]:
		[1]: root_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: derive_upvr (readonly)
		[4]: Areas_upvr (readonly)
		[5]: Currencies_upvr (readonly)
		[6]: Util_upvr (readonly)
		[7]: Requirements_upvr (readonly)
		[8]: cleanup_upvr (readonly)
		[9]: effect_upvr (readonly)
		[10]: UI_upvr (readonly)
	]]
	return root_upvr(function(arg1_2) -- Line 28
		--[[ Upvalues[11]:
			[1]: useAtom_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: derive_upvr (copied, readonly)
			[4]: Areas_upvr (copied, readonly)
			[5]: Currencies_upvr (copied, readonly)
			[6]: Util_upvr (copied, readonly)
			[7]: Requirements_upvr (copied, readonly)
			[8]: cleanup_upvr (copied, readonly)
			[9]: effect_upvr (copied, readonly)
			[10]: UI_upvr (copied, readonly)
			[11]: arg2 (readonly)
		]]
		local var5_result1_upvr = useAtom_upvr(arg1)
		local _2_upvr = Areas_upvr.Content[2]
		local var19_upvr = Currencies_upvr[Areas_upvr.Content[2].currency]
		local derive_upvr_result1_upvr = derive_upvr(function() -- Line 30
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr (readonly)
			]]
			return var5_result1_upvr().leaderstats.Level
		end)
		local any_new_result1_upvr = Util_upvr.ui.Focus.new(Vector2.new(0, 0), "rectangle", 0.5)
		any_new_result1_upvr:SetSizeOffset(10)
		any_new_result1_upvr:SetTransparency(0.5)
		cleanup_upvr(any_new_result1_upvr)
		local var6_result1_upvr = derive_upvr(function() -- Line 36
			--[[ Upvalues[4]:
				[1]: Util_upvr (copied, readonly)
				[2]: var5_result1_upvr (readonly)
				[3]: var19_upvr (readonly)
				[4]: _2_upvr (readonly)
			]]
			local var20
			if _2_upvr.price > Util_upvr.table.navigatePath(var5_result1_upvr(), var19_upvr.path) then
				var20 = false
			else
				var20 = true
			end
			return var20
		end)
		local derive_upvr_result1_upvr_2 = derive_upvr(function() -- Line 37
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr (readonly)
			]]
			local var22
			if table.find(var5_result1_upvr().inventory.Areas, 2) == nil then
				var22 = false
			else
				var22 = true
			end
			return var22
		end)
		local derive_upvr_result1_upvr_3 = derive_upvr(function() -- Line 39
			--[[ Upvalues[3]:
				[1]: _2_upvr (readonly)
				[2]: derive_upvr_result1_upvr (readonly)
				[3]: Requirements_upvr (copied, readonly)
			]]
			if not _2_upvr.requirements then
				return true
			end
			local var25 = derive_upvr_result1_upvr
			var25()
			if Requirements_upvr.getRequirement({
				requirements = _2_upvr.requirements;
			}) ~= nil then
				var25 = false
			else
				var25 = true
			end
			return var25
		end)
		local var32_upvw = false
		local Gate_upvr = workspace.Areas:FindFirstChild(`Area{2}`).Gate
		effect_upvr(function() -- Line 55
			--[[ Upvalues[9]:
				[1]: var6_result1_upvr (readonly)
				[2]: derive_upvr_result1_upvr_2 (readonly)
				[3]: derive_upvr_result1_upvr_3 (readonly)
				[4]: var32_upvw (read and write)
				[5]: UI_upvr (copied, readonly)
				[6]: any_new_result1_upvr (readonly)
				[7]: Gate_upvr (readonly)
				[8]: arg2 (copied, readonly)
				[9]: arg1_2 (readonly)
			]]
			local var30_result1 = derive_upvr_result1_upvr_2()
			if not var30_result1 then
				if var6_result1_upvr() and derive_upvr_result1_upvr_3() then
					if not var32_upvw then
						var32_upvw = true
						UI_upvr.Frames.Notifications:alert("You can now afford Area 2!", 4, ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHex("#ffffff")), ColorSequenceKeypoint.new(1, Color3.fromHex("#ffffff"))}))
					end
					local FocusPart = Gate_upvr:FindFirstChild("FocusPart")
					if not FocusPart then
						FocusPart = Gate_upvr
					end
					any_new_result1_upvr:TrackPart(FocusPart)
				else
					any_new_result1_upvr:TrackPart(nil)
				end
			end
			if var30_result1 then
				arg2(arg1_2)
			end
		end)
	end)
end