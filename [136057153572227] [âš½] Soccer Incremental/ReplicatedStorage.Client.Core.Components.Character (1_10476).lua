-- Name: Character
-- Path: game:GetService("ReplicatedStorage").Client.Core.Components.Character
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6294659999985015 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:49
-- Luau version 6, Types version 3
-- Time taken: 0.001625 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local any_new_result1 = require(ReplicatedStorage.Packages.Component).new({
	Tag = script.Name;
	Ancestors = {workspace};
})
local Trove_upvr = require(ReplicatedStorage.Packages.Trove)
function any_new_result1.Construct(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: Trove_upvr (readonly)
	]]
	local any_new_result1_2 = Trove_upvr.new()
	any_new_result1_2:AttachToInstance(arg1.Instance)
	arg1.trove = any_new_result1_2
end
function any_new_result1.Start(arg1) -- Line 23
	arg1.Instance:SetAttribute("Ragdoll", false)
end
function any_new_result1.Stop(arg1) -- Line 32
	arg1.trove:Destroy()
end
return any_new_result1