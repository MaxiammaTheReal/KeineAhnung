-- Name: Values
-- Path: game:GetService("ReplicatedStorage").Client.Core.Values
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.705443999999261 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:16:35
-- Luau version 6, Types version 3
-- Time taken: 0.005021 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local Charm_upvr = require(ReplicatedStorage.Packages.Charm)
local Values_upvr = require(ReplicatedStorage.Shared.Modules.Libraries.Values)
local setmetatable_result1_upvr = setmetatable({
	Name = script.Name;
}, require(ReplicatedStorage.Shared.Util).framework.client)
local var7_upvw
local any_atom_result1_upvr = Charm_upvr.atom({})
setmetatable_result1_upvr.Atoms = {
	Values = any_atom_result1_upvr;
}
function setmetatable_result1_upvr.ReadValue(arg1, arg2, arg3, arg4) -- Line 34
	--[[ Upvalues[4]:
		[1]: Values_upvr (readonly)
		[2]: Charm_upvr (readonly)
		[3]: any_atom_result1_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local var13
	if typeof(arg2) ~= "string" then
		var13 = false
	else
		var13 = true
	end
	assert(var13, "argument #1 must be a string representing the value's name")
	var13 = Values_upvr.Values[arg2]
	assert(var13, `value '{arg2}' does not exist`)
	if not arg3 then
		var13 = Charm_upvr
		function var13() -- Line 39
			--[[ Upvalues[4]:
				[1]: any_atom_result1_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: Values_upvr (copied, readonly)
				[4]: arg2 (readonly)
			]]
			return Values_upvr.process(nil, any_atom_result1_upvr()[tostring(Players_upvr.LocalPlayer.UserId)], arg2)
		end
		return var13.computed(var13)
	end
	var13 = Charm_upvr.peek(any_atom_result1_upvr)
	var13 = Values_upvr.process(nil, var13[tostring(Players_upvr.LocalPlayer.UserId)], arg2)
	return var13
end
function setmetatable_result1_upvr.ReadControl(arg1, arg2, arg3) -- Line 49
	--[[ Upvalues[4]:
		[1]: Values_upvr (readonly)
		[2]: Charm_upvr (readonly)
		[3]: any_atom_result1_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local var15
	if typeof(arg2) ~= "string" then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "argument #1 must be a string representing the control's name")
	if Values_upvr.Controls[arg2] == nil then
		var15 = false
	else
		var15 = true
	end
	assert(var15, `control '{arg2}' does not exist`)
	if not arg3 then
		var15 = Charm_upvr
		function var15() -- Line 54
			--[[ Upvalues[3]:
				[1]: any_atom_result1_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			local var16 = any_atom_result1_upvr()[tostring(Players_upvr.LocalPlayer.UserId)]
			local var17
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var17 = var16.controls[arg2]
				return var17
			end
			if not var16 or not INLINED() then
				var17 = nil
			end
			return var17
		end
		return var15.computed(var15)
	end
	var15 = Charm_upvr.peek(any_atom_result1_upvr)
	local var18 = var15[tostring(Players_upvr.LocalPlayer.UserId)]
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var15 = var18.controls[arg2]
		return var15
	end
	if not var18 or not INLINED_2() then
		var15 = nil
	end
	return var15
end
function setmetatable_result1_upvr.ReadMultiplier(arg1, arg2, arg3) -- Line 67
	return arg1:ReadValue(arg2, arg3)
end
function setmetatable_result1_upvr.Init(arg1) -- Line 71
	--[[ Upvalues[2]:
		[1]: var7_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	var7_upvw = setmetatable_result1_upvr:GetService("Values")
end
local any_client_result1_upvr = require(ReplicatedStorage.Packages.CharmSync).client({
	atoms = {
		Values = any_atom_result1_upvr;
	};
	ignoreUnhydrated = false;
})
function setmetatable_result1_upvr.Start(arg1) -- Line 75
	--[[ Upvalues[3]:
		[1]: var7_upvw (read and write)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: any_client_result1_upvr (readonly)
	]]
	var7_upvw.Sync:Connect(function(arg1_2) -- Line 76
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (copied, readonly)
			[2]: any_client_result1_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr:Log(print, "payload reveived:", arg1_2)
		any_client_result1_upvr:sync(arg1_2)
	end)
	var7_upvw.Sync:Fire()
end
return setmetatable_result1_upvr