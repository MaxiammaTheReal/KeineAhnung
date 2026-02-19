-- Name: Levels
-- Path: game:GetService("ReplicatedStorage").Client.Core.Levels
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6733463999989908 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:36
-- Luau version 6, Types version 3
-- Time taken: 0.001317 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local var4_upvw
local function onPlayerLevelUp_upvr(arg1) -- Line 17, Named "onPlayerLevelUp"
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	require(ReplicatedStorage_upvr.Shared.Assets.LevelUp)(arg1.Character.HumanoidRootPart)
end
function setmetatable_result1_upvr.Init(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var4_upvw = setmetatable_result1_upvr:GetService("Levels")
end
function setmetatable_result1_upvr.Start(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: onPlayerLevelUp_upvr (readonly)
	]]
	var4_upvw.LevelUp:Connect(onPlayerLevelUp_upvr)
end
return setmetatable_result1_upvr