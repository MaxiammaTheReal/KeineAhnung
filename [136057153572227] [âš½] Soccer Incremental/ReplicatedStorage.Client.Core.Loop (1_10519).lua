-- Name: Loop
-- Path: game:GetService("ReplicatedStorage").Client.Core.Loop
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.726002299998072 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:23
-- Luau version 6, Types version 3
-- Time taken: 0.002708 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Charm_upvr = require(ReplicatedStorage_upvr.Packages.Charm)
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local var5_upvw
local var6_upvw
local var7_upvw
local any_atom_result1_upvr = Charm_upvr.atom({})
setmetatable_result1_upvr.Atoms = {
	Footballs = any_atom_result1_upvr;
}
setmetatable_result1_upvr.Auto = Charm_upvr.atom(false)
function setmetatable_result1_upvr.Init(arg1) -- Line 40
	--[[ Upvalues[5]:
		[1]: var5_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: var7_upvw (read and write)
		[5]: setmetatable_result1_upvr (readonly)
	]]
	var5_upvw = require(ReplicatedStorage_upvr.Client.Core.Data)
	var6_upvw = require(ReplicatedStorage_upvr.Client.Core.Values)
	var7_upvw = setmetatable_result1_upvr:GetService("Loop")
end
local any_client_result1_upvr = require(ReplicatedStorage_upvr.Packages.CharmSync).client({
	atoms = {
		Footballs = any_atom_result1_upvr;
	};
	ignoreUnhydrated = true;
})
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function setmetatable_result1_upvr.Start(arg1) -- Line 46
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: any_client_result1_upvr (readonly)
		[4]: Charm_upvr (readonly)
		[5]: any_atom_result1_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: setmetatable_result1_upvr (readonly)
		[8]: var6_upvw (read and write)
	]]
	var7_upvw.Sync:Connect(function(arg1_2) -- Line 49
		--[[ Upvalues[1]:
			[1]: any_client_result1_upvr (copied, readonly)
		]]
		any_client_result1_upvr:sync(arg1_2)
	end)
	require(script.Footballs)(Charm_upvr.computed(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: any_atom_result1_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
		]]
		local var16 = any_atom_result1_upvr()[tostring(LocalPlayer_upvr.UserId)]
		if not var16 then
			return {}
		end
		return var16.Footballs
	end), setmetatable_result1_upvr.Auto)
	local any_ReadValue_result1_upvr = var6_upvw:ReadValue("KickRadius", false)
	require(script.RadiusDisplay)(Charm_upvr.computed(function() -- Line 61
		--[[ Upvalues[1]:
			[1]: any_ReadValue_result1_upvr (readonly)
		]]
		return any_ReadValue_result1_upvr() or 0
	end))
	require(script.Penalties)(var5_upvw.Local)
	var7_upvw.Sync:Fire()
end
return setmetatable_result1_upvr