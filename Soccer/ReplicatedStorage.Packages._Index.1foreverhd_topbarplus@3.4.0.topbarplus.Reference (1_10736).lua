-- Name: Reference
-- Path: game:GetService("ReplicatedStorage").Packages._Index.1foreverhd_topbarplus@3.4.0.topbarplus.Reference
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6371989999970538 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:13
-- Luau version 6, Types version 3
-- Time taken: 0.001161 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_upvr = {
	objectName = "TopbarPlusReference";
}
function module_upvr.addToReplicatedStorage() -- Line 10
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if ReplicatedStorage_upvr:FindFirstChild(module_upvr.objectName) then
		return false
	end
	local ObjectValue = Instance.new("ObjectValue")
	ObjectValue.Name = module_upvr.objectName
	ObjectValue.Value = script.Parent
	ObjectValue.Parent = ReplicatedStorage_upvr
	return ObjectValue
end
function module_upvr.getObject() -- Line 22
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local SOME = ReplicatedStorage_upvr:FindFirstChild(module_upvr.objectName)
	if SOME then
		return SOME
	end
	return false
end
return module_upvr