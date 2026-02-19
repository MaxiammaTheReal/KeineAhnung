-- Name: AdaptiveScreenGui
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Components.AdaptiveScreenGui
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5956701999966754 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:22
-- Luau version 6, Types version 3
-- Time taken: 0.002626 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local tbl = {
	Small = 1.4;
	Medium = 1;
	Large = 0.6;
}
local tbl_upvr = {
	tension = 600;
	friction = 30;
}
local source_upvr = Vide.source
local cleanup_upvr = Vide.cleanup
local vector2_upvr = Vector2.new(1920, 1080)
local useMotion_upvr = require(ReplicatedStorage.Shared.Util).ui.useMotion
local apply_upvr = Vide.apply
local create_upvr = Vide.create
local effect_upvr = Vide.effect
return function(arg1) -- Line 30
	--[[ Upvalues[8]:
		[1]: source_upvr (readonly)
		[2]: cleanup_upvr (readonly)
		[3]: vector2_upvr (readonly)
		[4]: useMotion_upvr (readonly)
		[5]: apply_upvr (readonly)
		[6]: create_upvr (readonly)
		[7]: effect_upvr (readonly)
		[8]: tbl_upvr (readonly)
	]]
	local var6_result1_upvr = source_upvr(workspace.CurrentCamera.ViewportSize)
	cleanup_upvr(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 33
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr (readonly)
		]]
		var6_result1_upvr(workspace.CurrentCamera.ViewportSize)
	end))
	local function _() -- Line 37
		--[[ Upvalues[3]:
			[1]: var6_result1_upvr (readonly)
			[2]: vector2_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return math.clamp((var6_result1_upvr() / vector2_upvr).Magnitude, 0.6, 1) * (arg1:GetAttribute("Scale") or 1)
	end
	local var9_result1, useMotion_upvr_result2_upvr = useMotion_upvr(math.clamp((var6_result1_upvr() / vector2_upvr).Magnitude, 0.6, 1) * (arg1:GetAttribute("Scale") or 1))
	apply_upvr(arg1)({create_upvr("UIScale")({
		Scale = var9_result1;
	})})
	effect_upvr(function() -- Line 49
		--[[ Upvalues[5]:
			[1]: useMotion_upvr_result2_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: vector2_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: tbl_upvr (copied, readonly)
		]]
		useMotion_upvr_result2_upvr:spring(math.clamp((var6_result1_upvr() / vector2_upvr).Magnitude, 0.6, 1) * (arg1:GetAttribute("Scale") or 1), tbl_upvr)
	end)
end