-- Name: ForPairs
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon.State.ForPairs
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0204465999995591 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.002912 seconds

local Parent = script.Parent.Parent
local module_upvr = {
	__index = {
		roamKeys = false;
		roamValues = false;
		invalidateInputKey = function(arg1) -- Line 33, Named "invalidateInputKey"
			arg1._inputKeyState:set(arg1.inputKey)
		end;
		invalidateInputValue = function(arg1) -- Line 36, Named "invalidateInputValue"
			arg1._inputValueState:set(arg1.inputValue)
		end;
		useOutputPair = function(arg1, arg2) -- Line 39, Named "useOutputPair"
			local arg2_result1 = arg2(arg1._outputPairState)
			return arg2_result1.key, arg2_result1.value
		end;
	};
}
local Value_upvr = require(Parent.State.Value)
local Computed_upvr = require(Parent.State.Computed)
local parseError_upvr = require(Parent.Logging.parseError)
local External_upvr = require(Parent.External)
local doCleanup_upvr = require(Parent.Memory.doCleanup)
local function SubObject_upvr(arg1, arg2, arg3, arg4) -- Line 46, Named "SubObject"
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: parseError_upvr (readonly)
		[4]: External_upvr (readonly)
		[5]: doCleanup_upvr (readonly)
		[6]: module_upvr (readonly)
	]]
	local module_upvr_2 = {}
	module_upvr_2.maybeScope = arg1
	module_upvr_2.inputKey = arg2
	module_upvr_2.inputValue = arg3
	module_upvr_2._inputKeyState = Value_upvr(arg1, arg2)
	module_upvr_2._inputValueState = Value_upvr(arg1, arg3)
	module_upvr_2._processor = arg4
	module_upvr_2._outputPairState = Computed_upvr(arg1, function(arg1_2, arg2_2) -- Line 59
		--[[ Upvalues[4]:
			[1]: module_upvr_2 (readonly)
			[2]: parseError_upvr (copied, readonly)
			[3]: External_upvr (copied, readonly)
			[4]: doCleanup_upvr (copied, readonly)
		]]
		local arg1_2_result1 = arg1_2(module_upvr_2._inputValueState)
		local xpcall_result1, xpcall_result2, xpcall_result3 = xpcall(module_upvr_2._processor, parseError_upvr, arg1_2, arg2_2, arg1_2(module_upvr_2._inputKeyState), arg1_2_result1)
		if xpcall_result1 then
			return {
				key = xpcall_result2;
				value = xpcall_result3;
			}
		end
		xpcall_result2.context = `while processing key {tostring(arg1_2_result1)} and value {tostring(arg1_2_result1)}`
		External_upvr.logErrorNonFatal("callbackError", xpcall_result2)
		doCleanup_upvr(arg2_2)
		table.clear(arg2_2)
		return {
			key = nil;
			value = nil;
		}
	end)
	return setmetatable(module_upvr_2, module_upvr)
end
local For_upvr = require(Parent.State.For)
return function(arg1, arg2, arg3) -- Line 77, Named "ForPairs"
	--[[ Upvalues[2]:
		[1]: For_upvr (readonly)
		[2]: SubObject_upvr (readonly)
	]]
	return For_upvr(arg1, arg2, function(arg1_3, arg2_3, arg3_2) -- Line 85
		--[[ Upvalues[2]:
			[1]: SubObject_upvr (copied, readonly)
			[2]: arg3 (readonly)
		]]
		return SubObject_upvr(arg1_3, arg2_3, arg3_2, arg3)
	end)
end