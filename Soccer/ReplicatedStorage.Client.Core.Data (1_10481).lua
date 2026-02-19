-- Name: Data
-- Path: game:GetService("ReplicatedStorage").Client.Core.Data
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5880544000028749 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:53
-- Luau version 6, Types version 3
-- Time taken: 0.003466 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Charm_upvr = require(ReplicatedStorage.Packages.Charm)
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local var5_upvw
local var6_upvw = false
local any_atom_result1_upvr = Charm_upvr.atom({})
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local any_computed_result1_upvr = Charm_upvr.computed(function() -- Line 28
	--[[ Upvalues[3]:
		[1]: any_atom_result1_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var6_upvw (read and write)
	]]
	local var10 = any_atom_result1_upvr()[`{LocalPlayer_upvr.UserId}`]
	if not var10 then
		var6_upvw = false
		return nil
	end
	var6_upvw = true
	return var10
end)
setmetatable_result1_upvr.Global = any_atom_result1_upvr
setmetatable_result1_upvr.Local = any_computed_result1_upvr
function setmetatable_result1_upvr.Wait(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	while not var6_upvw do
		task.wait()
	end
end
function setmetatable_result1_upvr.Get(arg1, arg2) -- Line 56
	--[[ Upvalues[2]:
		[1]: Charm_upvr (readonly)
		[2]: any_computed_result1_upvr (readonly)
	]]
	if arg2 then
		return Charm_upvr.peek(any_computed_result1_upvr)
	end
	return any_computed_result1_upvr
end
function setmetatable_result1_upvr.GetAsync(arg1, arg2) -- Line 64
	--[[ Upvalues[2]:
		[1]: setmetatable_result1_upvr (readonly)
		[2]: any_computed_result1_upvr (readonly)
	]]
	setmetatable_result1_upvr:Wait()
	local var14
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = any_computed_result1_upvr()
		return var14
	end
	if not arg2 or not INLINED() then
		var14 = any_computed_result1_upvr
	end
	return var14
end
function setmetatable_result1_upvr.Init(arg1) -- Line 69
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var5_upvw = setmetatable_result1_upvr:GetService("Data")
end
local any_client_result1_upvr = require(ReplicatedStorage.Packages.CharmSync).client({
	atoms = {
		Players = any_atom_result1_upvr;
	};
	ignoreUnhydrated = true;
})
function setmetatable_result1_upvr.Start(arg1) -- Line 73
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: any_client_result1_upvr (readonly)
	]]
	var5_upvw.Sync:Connect(function(arg1_2) -- Line 74
		--[[ Upvalues[1]:
			[1]: any_client_result1_upvr (copied, readonly)
		]]
		any_client_result1_upvr:sync(arg1_2)
	end)
	var5_upvw.Sync:Fire()
end
return setmetatable_result1_upvr