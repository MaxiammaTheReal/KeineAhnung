-- Name: DisplayBoard
-- Path: game:GetService("ReplicatedStorage").Client.Core.Components.DisplayBoard
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.73431239999627 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:51
-- Luau version 6, Types version 3
-- Time taken: 0.001741 seconds

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local function onInstanceAdded(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	local SOME = ReplicatedStorage_upvr.Shared.Assets.DisplayBoards:FindFirstChild(arg1:GetAttribute("Tag"))
	if SOME then
		local clone = SOME:Clone()
		clone:SetAttribute("ID", arg1:GetAttribute("ID"))
		clone.Parent = arg1
	end
end
for _, v in CollectionService:GetTagged(script.Name) do
	onInstanceAdded(v)
end
CollectionService:GetInstanceAddedSignal(script.Name):Connect(onInstanceAdded)
CollectionService:GetInstanceRemovedSignal(script.Name):Connect(function(arg1) -- Line 18, Named "onInstanceRemoved"
	local class_SurfaceGui = arg1:FindFirstChildWhichIsA("SurfaceGui")
	if class_SurfaceGui then
		class_SurfaceGui:Destroy()
	end
end)
return {}