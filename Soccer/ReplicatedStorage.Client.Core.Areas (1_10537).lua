-- Name: Areas
-- Path: game:GetService("ReplicatedStorage").Client.Core.Areas
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7670710000020335 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:38
-- Luau version 6, Types version 3
-- Time taken: 0.002498 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local var4_upvw
function setmetatable_result1_upvr.Init(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var4_upvw = setmetatable_result1_upvr:GetService("Area")
end
local Areas_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Areas)
local Trove_upvr = require(ReplicatedStorage.Packages.Trove)
local Util_upvr = require(ReplicatedStorage.Shared.Util)
local RunService_upvr = game:GetService("RunService")
local Players_upvr = game:GetService("Players")
function setmetatable_result1_upvr.Start(arg1) -- Line 26
	--[[ Upvalues[6]:
		[1]: var4_upvw (read and write)
		[2]: Areas_upvr (readonly)
		[3]: Trove_upvr (readonly)
		[4]: Util_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: Players_upvr (readonly)
	]]
	var4_upvw.Unlocked:Connect(function(arg1_2) -- Line 27
		--[[ Upvalues[5]:
			[1]: Areas_upvr (copied, readonly)
			[2]: Trove_upvr (copied, readonly)
			[3]: Util_upvr (copied, readonly)
			[4]: RunService_upvr (copied, readonly)
			[5]: Players_upvr (copied, readonly)
		]]
		if Areas_upvr.Content[arg1_2].isShownAfterUnlock then
			local any_new_result1_upvr = Trove_upvr.new()
			local any_new_result1 = Util_upvr.ui.Focus.new(Vector2.new(0, 0), "rectangle", 1)
			local Gate_upvr = workspace.Areas:FindFirstChild(`Area{arg1_2}`).Gate
			any_new_result1:SetPart(Gate_upvr)
			any_new_result1_upvr:Add(any_new_result1)
			local var15_upvw = false
			any_new_result1_upvr:Connect(RunService_upvr.PreRender, function(arg1_3) -- Line 37
				--[[ Upvalues[4]:
					[1]: Gate_upvr (readonly)
					[2]: Players_upvr (copied, readonly)
					[3]: var15_upvw (read and write)
					[4]: any_new_result1_upvr (readonly)
				]]
				if (Gate_upvr.Position - Players_upvr.LocalPlayer.Character.PrimaryPart.Position).Magnitude < 10 and not var15_upvw then
					var15_upvw = true
					any_new_result1_upvr:Destroy()
				end
			end)
		end
	end)
end
return setmetatable_result1_upvr