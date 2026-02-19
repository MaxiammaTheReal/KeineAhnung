-- Name: _
-- Path: game:GetService("ReplicatedStorage").Client.Core.Components._
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.707599699999264 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:50
-- Luau version 6, Types version 3
-- Time taken: 0.002030 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local any_new_result1 = require(ReplicatedStorage.Packages.Component).new({
	Tag = script.Name;
	Ancestors = {};
})
local Trove_upvr = require(ReplicatedStorage.Packages.Trove)
function any_new_result1.Construct(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: Trove_upvr (readonly)
	]]
	arg1.scope = Trove_upvr.new()
	arg1.instance = arg1.Instance
end
function any_new_result1.Start(arg1) -- Line 18
end
function any_new_result1.Stop(arg1) -- Line 22
	arg1.scope:Destroy()
end
return any_new_result1