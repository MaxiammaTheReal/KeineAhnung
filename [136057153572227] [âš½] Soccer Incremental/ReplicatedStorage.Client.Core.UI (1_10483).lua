-- Name: UI
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6516024000011384 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:55
-- Luau version 6, Types version 3
-- Time taken: 0.004635 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Vide_upvr = require(ReplicatedStorage_upvr.Packages.Vide)
local setmetatable_result1 = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local tbl_upvr = {}
local tbl_3_upvr = {
	Current = Vide_upvr.source(nil);
	Minimized = Vide_upvr.source(false);
	Busy = Vide_upvr.source(false);
	Treadmill = Vide_upvr.source(false);
	Frames = tbl_upvr;
}
setmetatable_result1.Globals = tbl_3_upvr
setmetatable_result1.Frames = tbl_upvr
function setmetatable_result1.Get(arg1, arg2) -- Line 35
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 19. Error Block 10 start (CF ANALYSIS FAILED)
	task.wait()
	-- KONSTANTERROR: [23] 19. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
end
local var7_upvw
function setmetatable_result1.Init(arg1) -- Line 49
	--[[ Upvalues[2]:
		[1]: var7_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	var7_upvw = require(ReplicatedStorage_upvr.Client.Core.Data)
end
local Players_upvr = game:GetService("Players")
local AdaptiveScreenGui_upvr = require(script.Components.AdaptiveScreenGui)
function setmetatable_result1.Start(arg1) -- Line 53
	--[[ Upvalues[5]:
		[1]: Players_upvr (readonly)
		[2]: Vide_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: AdaptiveScreenGui_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	for _, v_upvr in script.Apps:GetChildren() do
		if v_upvr:IsA("ModuleScript") and not v_upvr.Name:match('_') then
			task.spawn(function() -- Line 58
				--[[ Upvalues[6]:
					[1]: v_upvr (readonly)
					[2]: Players_upvr (copied, readonly)
					[3]: Vide_upvr (copied, readonly)
					[4]: tbl_3_upvr (copied, readonly)
					[5]: AdaptiveScreenGui_upvr (copied, readonly)
					[6]: tbl_upvr (copied, readonly)
				]]
				local tbl_2_upvr = {}
				local var17_upvw
				if v_upvr:GetAttribute("DontWaitForGui") then
					var17_upvw = Players_upvr.LocalPlayer.PlayerGui:FindFirstChild(v_upvr.Name)
				else
					var17_upvw = Players_upvr.LocalPlayer.PlayerGui:WaitForChild(v_upvr.Name)
				end
				local tbl = {}
				local any_root_result1_upvr = Vide_upvr.root(function(arg1_2) -- Line 68
					--[[ Upvalues[7]:
						[1]: v_upvr (copied, readonly)
						[2]: tbl_2_upvr (readonly)
						[3]: tbl_3_upvr (copied, readonly)
						[4]: var17_upvw (read and write)
						[5]: AdaptiveScreenGui_upvr (copied, readonly)
						[6]: Vide_upvr (copied, readonly)
						[7]: tbl_upvr (copied, readonly)
					]]
					require(v_upvr)(tbl_2_upvr, tbl_3_upvr, var17_upvw)
					if var17_upvw and var17_upvw:GetAttribute("Adaptive") then
						AdaptiveScreenGui_upvr(var17_upvw)
					end
					Vide_upvr.cleanup(function() -- Line 75
						--[[ Upvalues[2]:
							[1]: tbl_upvr (copied, readonly)
							[2]: v_upvr (copied, readonly)
						]]
						tbl_upvr[v_upvr.Name] = nil
					end)
				end)
				function tbl.__call(arg1_3) -- Line 81
					--[[ Upvalues[1]:
						[1]: any_root_result1_upvr (readonly)
					]]
					any_root_result1_upvr()
					return arg1_3
				end
				setmetatable(tbl_2_upvr, tbl)
				tbl_upvr[v_upvr.Name] = tbl_2_upvr
			end)
		end
	end
	Players_upvr.LocalPlayer:GetMouse().TargetFilter = workspace.Areas
end
return setmetatable_result1