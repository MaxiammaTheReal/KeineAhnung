-- Name: Level
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.Level
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5884526000008918 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:00
-- Luau version 6, Types version 3
-- Time taken: 0.003999 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local Data_upvr = require(ReplicatedStorage.Client.Core.Data)
local source_upvr = Vide.source
local effect_upvr = Vide.effect
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local cleanup_upvr = Vide.cleanup
local Config_upvr = require(ReplicatedStorage.Shared.Config)
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
return function(arg1, arg2, arg3) -- Line 26
	--[[ Upvalues[9]:
		[1]: useAtom_upvr (readonly)
		[2]: Data_upvr (readonly)
		[3]: source_upvr (readonly)
		[4]: effect_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: cleanup_upvr (readonly)
		[7]: Config_upvr (readonly)
		[8]: apply_upvr (readonly)
		[9]: derive_upvr (readonly)
	]]
	local useAtom_upvr_result1_upvr = useAtom_upvr(Data_upvr:GetAsync())
	local source_upvr_result1_upvr = source_upvr(useAtom_upvr_result1_upvr().leaderstats.Level)
	local source_upvr_result1_upvr_2 = source_upvr(useAtom_upvr_result1_upvr().privatestats.Experience)
	effect_upvr(function() -- Line 32
		--[[ Upvalues[3]:
			[1]: useAtom_upvr_result1_upvr (readonly)
			[2]: source_upvr_result1_upvr (readonly)
			[3]: source_upvr_result1_upvr_2 (readonly)
		]]
		local useAtom_upvr_result1_upvr_result1 = useAtom_upvr_result1_upvr()
		if not useAtom_upvr_result1_upvr_result1 then
		else
			source_upvr_result1_upvr(useAtom_upvr_result1_upvr_result1.leaderstats.Level)
			source_upvr_result1_upvr_2(useAtom_upvr_result1_upvr_result1.privatestats.Experience)
		end
	end)
	local Container = arg3.Container
	local any_useMotion_result1_upvr, any_useMotion_result2_upvr = Util_upvr.ui.useMotion(0)
	cleanup_upvr(any_useMotion_result2_upvr)
	effect_upvr(function() -- Line 49
		--[[ Upvalues[4]:
			[1]: any_useMotion_result2_upvr (readonly)
			[2]: source_upvr_result1_upvr_2 (readonly)
			[3]: Config_upvr (copied, readonly)
			[4]: source_upvr_result1_upvr (readonly)
		]]
		any_useMotion_result2_upvr:spring(source_upvr_result1_upvr_2() / Config_upvr.Game.ExperienceForNextLevel(source_upvr_result1_upvr()), {
			tension = 100;
			friction = 15;
		})
	end)
	apply_upvr(Container.Bar.Fill)({
		Size = derive_upvr(function() -- Line 54
			--[[ Upvalues[1]:
				[1]: any_useMotion_result1_upvr (readonly)
			]]
			return UDim2.fromScale(any_useMotion_result1_upvr(), 1)
		end);
	})
	apply_upvr(Container.TextLabel)({
		Text = derive_upvr(function() -- Line 62
			--[[ Upvalues[3]:
				[1]: source_upvr_result1_upvr (readonly)
				[2]: source_upvr_result1_upvr_2 (readonly)
				[3]: Config_upvr (copied, readonly)
			]]
			return `Level {source_upvr_result1_upvr()}: ({math.floor(source_upvr_result1_upvr_2())}/{math.floor(Config_upvr.Game.ExperienceForNextLevel(source_upvr_result1_upvr()))})`
		end);
	})
end