-- Name: checkLifetime
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon.Memory.checkLifetime
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0511316999982228 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.004662 seconds

local Parent = script.Parent.Parent
local nameOf_upvr = require(Parent.Utility.nameOf)
local module = {
	formatters = {};
}
module.formatters.useFunction = function(arg1, arg2) -- Line 19, Named "useFunction"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The use()-d {nameOf_upvr(arg2, "object")}`, `the {nameOf_upvr(arg1, "object")}`
end
module.formatters.boundProperty = function(arg1, arg2, arg3) -- Line 28, Named "boundProperty"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The {nameOf_upvr(arg2, "value")} (bound to the {arg3} property)`, `the {arg1.Name} instance`
end
module.formatters.boundAttribute = function(arg1, arg2, arg3) -- Line 38, Named "boundAttribute"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The {nameOf_upvr(arg2, "value")} (bound to the {arg3} attribute)`, `the {arg1.Name} instance`
end
module.formatters.propertyOutputsTo = function(arg1, arg2, arg3) -- Line 48, Named "propertyOutputsTo"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The {nameOf_upvr(arg2, "object")} (which the {arg3} property outputs to)`, `the {arg1.Name} instance`
end
module.formatters.attributeOutputsTo = function(arg1, arg2, arg3) -- Line 58, Named "attributeOutputsTo"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The {nameOf_upvr(arg2, "object")} (which the {arg3} attribute outputs to)`, `the {arg1.Name} instance`
end
module.formatters.refOutputsTo = function(arg1, arg2) -- Line 68, Named "refOutputsTo"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The {nameOf_upvr(arg2, "object")} (which the Ref key outputs to)`, `the {arg1.Name} instance`
end
module.formatters.animationGoal = function(arg1, arg2) -- Line 77, Named "animationGoal"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The goal {nameOf_upvr(arg2, "object")}`, `the {nameOf_upvr(arg1, "object")} that is following it`
end
module.formatters.parameter = function(arg1, arg2, arg3) -- Line 86, Named "parameter"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	local nameOf_upvr_result1_2 = nameOf_upvr(arg1, "object")
	local nameOf_upvr_result1 = nameOf_upvr(arg2, "object")
	if arg3 == false then
		return `The {nameOf_upvr_result1} parameter`, `the {nameOf_upvr_result1_2} that it was used for`
	end
	return `The {nameOf_upvr_result1} representing the {arg3} parameter`, `the {nameOf_upvr_result1_2} that it was used for`
end
module.formatters.observer = function(arg1, arg2) -- Line 100, Named "observer"
	--[[ Upvalues[1]:
		[1]: nameOf_upvr (readonly)
	]]
	return `The watched {nameOf_upvr(arg2, "object")}`, `the {nameOf_upvr(arg1, "object")} that's observing it for changes`
end
local External_upvr = require(Parent.External)
function module.bOutlivesA(arg1, arg2, arg3, arg4, arg5, ...) -- Line 109
	--[[ Upvalues[1]:
		[1]: External_upvr (readonly)
	]]
	if arg3 == nil then
		External_upvr.logError("useAfterDestroy", nil, arg5(arg2, arg4, ...))
	end
end
return module