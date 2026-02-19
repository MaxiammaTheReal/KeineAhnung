-- Name: Rewards
-- Path: game:GetService("ReplicatedStorage").Client.Core.Rewards
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6532981999989715 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:33
-- Luau version 6, Types version 3
-- Time taken: 0.000971 seconds

local setmetatable_result1 = setmetatable({
	Name = script.Name;
}, require(game:GetService("ReplicatedStorage").Shared.Util).framework.client)
function setmetatable_result1.Init(arg1) -- Line 19
end
function setmetatable_result1.Start(arg1) -- Line 23
	require(script.DailyGroup)
end
return setmetatable_result1