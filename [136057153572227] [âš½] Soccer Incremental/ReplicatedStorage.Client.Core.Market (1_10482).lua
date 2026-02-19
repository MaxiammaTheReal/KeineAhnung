-- Name: Market
-- Path: game:GetService("ReplicatedStorage").Client.Core.Market
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6179358000008506 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:15:54
-- Luau version 6, Types version 3
-- Time taken: 0.003284 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage_upvr.Shared.Util).framework.client)
local var4_upvw
local var5_upvw
local any_atom_result1_upvr = require(ReplicatedStorage_upvr.Packages.Charm).atom({})
function setmetatable_result1_upvr.GetProductInfo(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[2]:
		[1]: any_atom_result1_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local var9_upvw = any_atom_result1_upvr()[tostring(arg2)]
	if not var9_upvw then
		setmetatable_result1_upvr:GetService("Market"):GetProductInfo(arg2, arg3):andThen(function(arg1_2) -- Line 35
			--[[ Upvalues[1]:
				[1]: var9_upvw (read and write)
			]]
			var9_upvw = arg1_2
		end):catch(function(arg1_3) -- Line 37
			warn(arg1_3)
		end):await()
	end
	return var9_upvw
end
function setmetatable_result1_upvr.IsGamepassOwned(arg1, arg2) -- Line 45
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	local any_Get_result1 = var4_upvw:Get(true)
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = any_Get_result1.market.Gamepasses
		return var13
	end
	if not any_Get_result1 or not INLINED() then
		var13 = {}
	end
	return table.find(var13, arg2)
end
function setmetatable_result1_upvr.CancelPrompt(arg1) -- Line 52
end
local any_client_result1_upvr = require(ReplicatedStorage_upvr.Packages.CharmSync).client({
	atoms = {
		ProductInfo = any_atom_result1_upvr;
	};
	ignoreUnhydrated = true;
})
function setmetatable_result1_upvr.Start(arg1) -- Line 56
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: any_client_result1_upvr (readonly)
	]]
	var5_upvw.Sync:Connect(function(arg1_4) -- Line 57
		--[[ Upvalues[1]:
			[1]: any_client_result1_upvr (copied, readonly)
		]]
		any_client_result1_upvr:sync(arg1_4)
	end)
	var5_upvw.Sync:Fire()
end
function setmetatable_result1_upvr.Init(arg1) -- Line 64
	--[[ Upvalues[4]:
		[1]: var4_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: setmetatable_result1_upvr (readonly)
	]]
	var4_upvw = require(ReplicatedStorage_upvr.Client.Core.Data)
	var5_upvw = setmetatable_result1_upvr:GetService("Market")
end
return setmetatable_result1_upvr