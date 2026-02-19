-- Name: RadiusDisplay
-- Path: game:GetService("ReplicatedStorage").Client.Core.Loop.RadiusDisplay
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8864793999964604 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:25
-- Luau version 6, Types version 3
-- Time taken: 0.005698 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage_upvr.Packages.Vide)
local _ = {
	Small = "rbxassetid://90267332034107";
	Medium = "rbxassetid://90267332034107";
	Large = "rbxassetid://90267332034107";
}
local root_upvr = Vide.root
local useAtom_upvr = require(ReplicatedStorage_upvr.Packages.VideCharm).useAtom
local source_upvr = Vide.source
local Players_upvr = game:GetService("Players")
local Util_upvr = require(ReplicatedStorage_upvr.Shared.Util)
local cleanup_upvr = Vide.cleanup
local apply_upvr = Vide.apply
local derive_upvr = Vide.derive
local effect_upvr = Vide.effect
local RunService_upvr = game:GetService("RunService")
return function(arg1) -- Line 25
	--[[ Upvalues[11]:
		[1]: root_upvr (readonly)
		[2]: useAtom_upvr (readonly)
		[3]: source_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: Util_upvr (readonly)
		[6]: cleanup_upvr (readonly)
		[7]: ReplicatedStorage_upvr (readonly)
		[8]: apply_upvr (readonly)
		[9]: derive_upvr (readonly)
		[10]: effect_upvr (readonly)
		[11]: RunService_upvr (readonly)
	]]
	return root_upvr(function(arg1_2) -- Line 26
		--[[ Upvalues[11]:
			[1]: useAtom_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: source_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: Util_upvr (copied, readonly)
			[6]: cleanup_upvr (copied, readonly)
			[7]: ReplicatedStorage_upvr (copied, readonly)
			[8]: apply_upvr (copied, readonly)
			[9]: derive_upvr (copied, readonly)
			[10]: effect_upvr (copied, readonly)
			[11]: RunService_upvr (copied, readonly)
		]]
		local var6_result1_upvr = useAtom_upvr(arg1)
		local var7_result1_upvr = source_upvr(false)
		local LocalPlayer = Players_upvr.LocalPlayer
		local Character_upvw = LocalPlayer.Character
		if not Character_upvw then
			Character_upvw = LocalPlayer.CharacterAdded:Wait()
		end
		local any_useMotion_result1_upvr, any_useMotion_result2_upvr = Util_upvr.ui.useMotion(0)
		cleanup_upvr(any_useMotion_result2_upvr)
		local clone_upvr = ReplicatedStorage_upvr.Shared.Assets.RadiusDisplay:Clone()
		clone_upvr.Parent = workspace.Temp
		apply_upvr(clone_upvr)({
			Size = derive_upvr(function() -- Line 40
				--[[ Upvalues[1]:
					[1]: any_useMotion_result1_upvr (readonly)
				]]
				local var20_result1 = any_useMotion_result1_upvr()
				return Vector3.new(var20_result1 * 2, 0.05, var20_result1 * 2)
			end);
		})
		cleanup_upvr(Players_upvr.LocalPlayer:GetAttributeChangedSignal("Area"):Connect(function() -- Line 46
			--[[ Upvalues[2]:
				[1]: var7_result1_upvr (readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			local var27
			if Players_upvr.LocalPlayer:GetAttribute("Area") ~= "Area1" then
				var27 = false
			else
				var27 = true
			end
			var7_result1_upvr(var27)
		end))
		effect_upvr(function() -- Line 50
			--[[ Upvalues[3]:
				[1]: var7_result1_upvr (readonly)
				[2]: var6_result1_upvr (readonly)
				[3]: any_useMotion_result2_upvr (readonly)
			]]
			local var29
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var29 = var6_result1_upvr() + 0.5
				return var29
			end
			if not var7_result1_upvr() or not INLINED() then
				var29 = 0
			end
			any_useMotion_result2_upvr:spring(var29, {
				tension = 500;
				friction = 25;
			})
		end)
		local RaycastParams_new_result1_upvr = RaycastParams.new()
		RaycastParams_new_result1_upvr.FilterDescendantsInstances = {Character_upvw, workspace.Temp}
		RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Exclude
		local OverlapParams_new_result1_upvr = OverlapParams.new()
		OverlapParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Temp}
		OverlapParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
		cleanup_upvr(LocalPlayer.CharacterAdded:Connect(function(arg1_3) -- Line 64
			--[[ Upvalues[2]:
				[1]: Character_upvw (read and write)
				[2]: RaycastParams_new_result1_upvr (readonly)
			]]
			Character_upvw = arg1_3
			local tbl = {}
			tbl[1] = arg1_3
			tbl[2] = workspace.Temp
			RaycastParams_new_result1_upvr.FilterDescendantsInstances = tbl
		end))
		local var37_upvw = 0
		local os_clock_result1_2_upvw = os.clock()
		cleanup_upvr(RunService_upvr.PreRender:Connect(function(arg1_4) -- Line 75, Named "render"
			--[[ Upvalues[7]:
				[1]: var37_upvw (read and write)
				[2]: Character_upvw (read and write)
				[3]: RaycastParams_new_result1_upvr (readonly)
				[4]: clone_upvr (readonly)
				[5]: os_clock_result1_2_upvw (read and write)
				[6]: var6_result1_upvr (readonly)
				[7]: OverlapParams_new_result1_upvr (readonly)
			]]
			local os_clock_result1 = os.clock()
			var37_upvw += arg1_4 * 1
			local HumanoidRootPart = Character_upvw.HumanoidRootPart
			local workspace_Raycast_result1 = workspace:Raycast(HumanoidRootPart.Position, Vector3.new(0, -20, 0), RaycastParams_new_result1_upvr)
			local var46
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var46 = workspace_Raycast_result1.Position
				return var46
			end
			if not workspace_Raycast_result1 or not INLINED_2() then
				var46 = HumanoidRootPart.Position
			end
			clone_upvr.CFrame = CFrame.new(var46) * CFrame.Angles(0, var37_upvw, 0)
			if 0.1 < os_clock_result1 - os_clock_result1_2_upvw then
				os_clock_result1_2_upvw = os_clock_result1
				for _, v in workspace:GetPartBoundsInRadius(var46, var6_result1_upvr(), OverlapParams_new_result1_upvr) do
					local class_Model = v:FindFirstAncestorOfClass("Model")
					if class_Model and class_Model:HasTag("Football") then
						class_Model:SetAttribute("Touched", true)
					end
				end
			end
		end))
	end)
end