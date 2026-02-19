-- Name: Leaderboards
-- Path: game:GetService("ReplicatedStorage").Client.Core.Leaderboards
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6948724000030779 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:32
-- Luau version 6, Types version 3
-- Time taken: 0.002440 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Charm = require(ReplicatedStorage.Packages.Charm)
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local var5_upvw
local tbl = {
	Money = Charm.atom({});
	Rebirths = Charm.atom({});
	Level = Charm.atom({});
	Prestige = Charm.atom({});
	TreadmillTime = Charm.atom({});
	Timer = Charm.atom(workspace:GetServerTimeNow());
	Names = Charm.atom({});
}
setmetatable_result1_upvr.Atoms = tbl
function setmetatable_result1_upvr.Init(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var5_upvw = setmetatable_result1_upvr:GetService("Leaderboards")
end
local any_client_result1_upvr = require(ReplicatedStorage.Packages.CharmSync).client({
	atoms = tbl;
	ignoreUnhydrated = true;
})
function setmetatable_result1_upvr.Start(arg1) -- Line 43
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: any_client_result1_upvr (readonly)
	]]
	var5_upvw.Sync:Connect(function(arg1_2) -- Line 44
		--[[ Upvalues[1]:
			[1]: any_client_result1_upvr (copied, readonly)
		]]
		any_client_result1_upvr:sync(arg1_2)
	end)
	var5_upvw.Sync:Fire()
end
return setmetatable_result1_upvr