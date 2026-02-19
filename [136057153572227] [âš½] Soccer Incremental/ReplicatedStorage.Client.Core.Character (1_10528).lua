-- Name: Character
-- Path: game:GetService("ReplicatedStorage").Client.Core.Character
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.750017200000002 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:31
-- Luau version 6, Types version 3
-- Time taken: 0.003602 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local setmetatable_result1 = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local var4_upvw
local tbl_upvr = {}
setmetatable_result1.Animations = tbl_upvr
function setmetatable_result1.Init(arg1) -- Line 24
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	var4_upvw = require(ReplicatedStorage_upvr.Client.Core.Values)
end
local Charm_upvr = require(ReplicatedStorage_upvr.Packages.Charm)
local Players_upvr = game:GetService("Players")
local Trove_upvr = require(ReplicatedStorage_upvr.Packages.Trove)
function setmetatable_result1.Start(arg1) -- Line 28
	--[[ Upvalues[6]:
		[1]: var4_upvw (read and write)
		[2]: Charm_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: Trove_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	local any_atom_result1_upvr = Charm_upvr.atom(Players_upvr.LocalPlayer.CharacterAdded:Wait())
	local any_ReadValue_result1_upvr = var4_upvw:ReadValue("WalkSpeed", false)
	Charm_upvr.effect(function() -- Line 32
		--[[ Upvalues[2]:
			[1]: any_atom_result1_upvr (readonly)
			[2]: any_ReadValue_result1_upvr (readonly)
		]]
		local var9_result1_upvr = any_atom_result1_upvr()
		task.spawn(function() -- Line 34
			--[[ Upvalues[2]:
				[1]: var9_result1_upvr (readonly)
				[2]: any_ReadValue_result1_upvr (copied, readonly)
			]]
			var9_result1_upvr:WaitForChild("Humanoid").WalkSpeed = math.max(1, any_ReadValue_result1_upvr() or 16)
		end)
	end)
	local function onCharacterAdded(arg1_2) -- Line 40
		--[[ Upvalues[4]:
			[1]: Trove_upvr (copied, readonly)
			[2]: ReplicatedStorage_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: any_atom_result1_upvr (readonly)
		]]
		for _, v in ReplicatedStorage_upvr.Shared.Assets.Animations:GetDescendants() do
			if v:IsA("Animation") and v:GetAttribute("Load") then
				tbl_upvr[v.Name] = arg1_2:WaitForChild("Humanoid"):WaitForChild("Animator"):LoadAnimation(v)
			end
		end
		Trove_upvr.new():AttachToInstance(arg1_2)
		any_atom_result1_upvr(arg1_2)
	end
	if Players_upvr.LocalPlayer.Character then
		onCharacterAdded(Players_upvr.LocalPlayer.Character)
	end
	Players_upvr.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
end
return setmetatable_result1