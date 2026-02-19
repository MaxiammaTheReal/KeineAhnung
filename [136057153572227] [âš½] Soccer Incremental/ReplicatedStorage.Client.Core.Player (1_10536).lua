-- Name: Player
-- Path: game:GetService("ReplicatedStorage").Client.Core.Player
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6057246999989729 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:37
-- Luau version 6, Types version 3
-- Time taken: 0.002345 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Charm_upvr = require(ReplicatedStorage.Packages.Charm)
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local var5_upvw
function setmetatable_result1_upvr.Init(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var5_upvw = setmetatable_result1_upvr:GetService("Player")
end
local UserInputService_upvr = game:GetService("UserInputService")
local os_clock_result1_upvw = os.clock()
local RunService_upvr = game:GetService("RunService")
local os_clock_result1_upvw_2 = os.clock()
local any_atom_result1_upvr = Charm_upvr.atom(false)
function setmetatable_result1_upvr.Start(arg1) -- Line 31
	--[[ Upvalues[7]:
		[1]: UserInputService_upvr (readonly)
		[2]: os_clock_result1_upvw (read and write)
		[3]: RunService_upvr (readonly)
		[4]: os_clock_result1_upvw_2 (read and write)
		[5]: any_atom_result1_upvr (readonly)
		[6]: Charm_upvr (readonly)
		[7]: var5_upvw (read and write)
	]]
	UserInputService_upvr.InputBegan:Connect(function(arg1_2, arg2) -- Line 32
		--[[ Upvalues[1]:
			[1]: os_clock_result1_upvw (copied, read and write)
		]]
		os_clock_result1_upvw = os.clock()
	end)
	RunService_upvr.Heartbeat:Connect(function() -- Line 36
		--[[ Upvalues[3]:
			[1]: os_clock_result1_upvw_2 (copied, read and write)
			[2]: os_clock_result1_upvw (copied, read and write)
			[3]: any_atom_result1_upvr (copied, readonly)
		]]
		if 0.1 < os.clock() - os_clock_result1_upvw_2 then
			os_clock_result1_upvw_2 = os.clock()
		else
			return
		end
		if 10 < os.clock() - os_clock_result1_upvw then
			any_atom_result1_upvr(true)
		else
			any_atom_result1_upvr(false)
		end
	end)
	Charm_upvr.subscribe(any_atom_result1_upvr, function(arg1_3) -- Line 45
		--[[ Upvalues[1]:
			[1]: var5_upvw (copied, read and write)
		]]
		var5_upvw.AFK:Fire(arg1_3)
	end)
end
return setmetatable_result1_upvr