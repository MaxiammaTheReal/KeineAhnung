-- Name: DisplayBoards
-- Path: game:GetService("ReplicatedStorage").Client.Core.UI.Apps.DisplayBoards
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6250970000037341 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:01
-- Luau version 6, Types version 3
-- Time taken: 0.003018 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Vide = require(ReplicatedStorage.Packages.Vide)
local useAtom_upvr = require(ReplicatedStorage.Packages.VideCharm).useAtom
local Data_upvr = require(ReplicatedStorage.Client.Core.Data)
local Trove_upvr = require(ReplicatedStorage.Packages.Trove)
local root_upvr = Vide.root
local CollectionService_upvr = game:GetService("CollectionService")
local cleanup_upvr = Vide.cleanup
return function(arg1, arg2, arg3) -- Line 27
	--[[ Upvalues[6]:
		[1]: useAtom_upvr (readonly)
		[2]: Data_upvr (readonly)
		[3]: Trove_upvr (readonly)
		[4]: root_upvr (readonly)
		[5]: CollectionService_upvr (readonly)
		[6]: cleanup_upvr (readonly)
	]]
	local tbl_upvr = {
		playerData = useAtom_upvr(Data_upvr:GetAsync());
		shared = {};
	}
	for _, v in script:GetChildren() do
		local v_3_upvr = require(v)
		local any_new_result1_upvr = Trove_upvr.new()
		for _, v_2_upvr in CollectionService_upvr:GetTagged(v.Name) do
			if not v_2_upvr:IsDescendantOf(workspace) then
			else
				any_new_result1_upvr:Add(root_upvr(function(arg1_4) -- Line 39
					--[[ Upvalues[3]:
						[1]: v_3_upvr (readonly)
						[2]: tbl_upvr (readonly)
						[3]: v_2_upvr (readonly)
					]]
					v_3_upvr(tbl_upvr, v_2_upvr, arg1_4)
				end))
			end
		end
		any_new_result1_upvr:Connect(CollectionService_upvr:GetInstanceAddedSignal(v.Name), function(arg1_2) -- Line 37, Named "new"
			--[[ Upvalues[4]:
				[1]: any_new_result1_upvr (readonly)
				[2]: root_upvr (copied, readonly)
				[3]: v_3_upvr (readonly)
				[4]: tbl_upvr (readonly)
			]]
			if not arg1_2:IsDescendantOf(workspace) then
			else
				any_new_result1_upvr:Add(root_upvr(function(arg1_3) -- Line 39
					--[[ Upvalues[3]:
						[1]: v_3_upvr (copied, readonly)
						[2]: tbl_upvr (copied, readonly)
						[3]: arg1_2 (readonly)
					]]
					v_3_upvr(tbl_upvr, arg1_2, arg1_3)
				end))
			end
		end)
		cleanup_upvr(any_new_result1_upvr)
	end
end