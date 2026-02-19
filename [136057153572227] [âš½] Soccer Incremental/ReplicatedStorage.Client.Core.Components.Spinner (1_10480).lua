-- Name: Spinner
-- Path: game:GetService("ReplicatedStorage").Client.Core.Components.Spinner
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5588361999980407 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:53
-- Luau version 6, Types version 3
-- Time taken: 0.002779 seconds

local CollectionService = game:GetService("CollectionService")
local RunService_upvr = game:GetService("RunService")
local Trove_upvr = require(game:GetService("ReplicatedStorage").Packages.Trove)
for _, v_upvr in CollectionService:GetTagged(script.Name) do
	local any_new_result1_2 = Trove_upvr.new()
	any_new_result1_2:AttachToInstance(v_upvr)
	local var16_upvw = 0
	any_new_result1_2:Connect(RunService_upvr.PreRender, function(arg1) -- Line 15
		--[[ Upvalues[2]:
			[1]: var16_upvw (read and write)
			[2]: v_upvr (readonly)
		]]
		var16_upvw += arg1 / 2
		v_upvr:PivotTo(CFrame.new(v_upvr:GetPivot().Position) * CFrame.Angles(0, var16_upvw, 0))
	end)
end
CollectionService:GetInstanceAddedSignal(script.Name):Connect(function(arg1) -- Line 9, Named "onInstanceAdded"
	--[[ Upvalues[2]:
		[1]: Trove_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local any_new_result1 = Trove_upvr.new()
	any_new_result1:AttachToInstance(arg1)
	local var10_upvw = 0
	any_new_result1:Connect(RunService_upvr.PreRender, function(arg1_2) -- Line 15
		--[[ Upvalues[2]:
			[1]: var10_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var10_upvw += arg1_2 / 2
		arg1:PivotTo(CFrame.new(arg1:GetPivot().Position) * CFrame.Angles(0, var10_upvw, 0))
	end)
end)
CollectionService:GetInstanceRemovedSignal(script.Name):Connect(function(arg1) -- Line 21, Named "onInstanceRemoved"
end)
return {}