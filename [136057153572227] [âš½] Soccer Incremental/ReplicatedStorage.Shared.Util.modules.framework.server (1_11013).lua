-- Name: server
-- Path: game:GetService("ReplicatedStorage").Shared.Util.modules.framework.server
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0137966999973287 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:51
-- Luau version 6, Types version 3
-- Time taken: 0.002378 seconds

local Comm_upvr = require(game:GetService("ReplicatedStorage").Packages.Comm)
local module = {}
module.__index = module
local function _(arg1) -- Line 7, Named "getComm"
	--[[ Upvalues[1]:
		[1]: Comm_upvr (readonly)
	]]
	if arg1._comm then
		return arg1._comm
	end
	local any_new_result1 = Comm_upvr.ServerComm.new(script.Parent:FindFirstChildOfClass("Configuration"), arg1.Name)
	arg1._comm = any_new_result1
	return any_new_result1
end
function module.Log(arg1, arg2, arg3, ...) -- Line 20
	arg2(`[{arg1.Name}]: {arg3}`, ...)
end
function module.CreateSignal(arg1, arg2, arg3) -- Line 24
	--[[ Upvalues[1]:
		[1]: Comm_upvr (readonly)
	]]
	local var4
	if arg1._comm then
		var4 = arg1._comm
	else
		var4 = Comm_upvr.ServerComm.new(script.Parent:FindFirstChildOfClass("Configuration"), arg1.Name)
		arg1._comm = var4
	end
	return var4:CreateSignal(arg2, arg3)
end
function module.BindFunction(arg1, arg2, arg3) -- Line 29
	--[[ Upvalues[1]:
		[1]: Comm_upvr (readonly)
	]]
	local var5
	if arg1._comm then
		var5 = arg1._comm
	else
		var5 = Comm_upvr.ServerComm.new(script.Parent:FindFirstChildOfClass("Configuration"), arg1.Name)
		arg1._comm = var5
	end
	return var5:BindFunction(arg2, arg3)
end
return module