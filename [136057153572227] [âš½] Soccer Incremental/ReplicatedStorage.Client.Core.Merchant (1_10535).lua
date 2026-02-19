-- Name: Merchant
-- Path: game:GetService("ReplicatedStorage").Client.Core.Merchant
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6343651999995927 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:36
-- Luau version 6, Types version 3
-- Time taken: 0.001651 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local var4_upvw
local any_atom_result1 = require(ReplicatedStorage.Packages.Charm).atom({})
setmetatable_result1_upvr.Atoms = {
	Merchant = any_atom_result1;
}
function setmetatable_result1_upvr.Init(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var4_upvw = setmetatable_result1_upvr:GetService("Merchant")
end
local any_client_result1_upvr = require(ReplicatedStorage.Packages.CharmSync).client({
	atoms = {
		Merchant = any_atom_result1;
	};
	ignoreUnhydrated = false;
})
function setmetatable_result1_upvr.Start(arg1) -- Line 37
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: any_client_result1_upvr (readonly)
	]]
	var4_upvw.Sync:Connect(function(arg1_2) -- Line 38
		--[[ Upvalues[1]:
			[1]: any_client_result1_upvr (copied, readonly)
		]]
		any_client_result1_upvr:sync(arg1_2)
	end)
	var4_upvw.Sync:Fire()
end
return setmetatable_result1_upvr