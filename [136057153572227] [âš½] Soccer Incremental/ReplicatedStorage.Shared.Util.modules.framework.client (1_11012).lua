-- Name: client
-- Path: game:GetService("ReplicatedStorage").Shared.Util.modules.framework.client
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9112672000046587 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:51
-- Luau version 6, Types version 3
-- Time taken: 0.001533 seconds

local module = {}
module.__index = module
function module.Log(arg1, arg2, arg3, ...) -- Line 7
	arg2(`[{arg1.Name}]: {arg3}`, ...)
end
local Comm_upvr = require(game:GetService("ReplicatedStorage").Packages.Comm)
function module.GetService(arg1, arg2) -- Line 11
	--[[ Upvalues[1]:
		[1]: Comm_upvr (readonly)
	]]
	local var3 = arg2
	if not var3 then
		var3 = arg1.Name
	end
	return Comm_upvr.ClientComm.new(script.Parent:FindFirstChildOfClass("Configuration"), true, var3):BuildObject()
end
return module