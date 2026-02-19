-- Name: snapshot
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_ripple@0.9.3.ripple.utils.snapshot
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7385990999973728 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:21
-- Luau version 6, Types version 3
-- Time taken: 0.002248 seconds

local createMotion_upvr = require(script.Parent.Parent.createMotion)
local HttpService_upvr = game:GetService("HttpService")
local function createSnapshot_upvr(arg1, arg2) -- Line 9, Named "createSnapshot"
	--[[ Upvalues[2]:
		[1]: createMotion_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local module = {}
	local var1_result1 = createMotion_upvr(0)
	var1_result1:to(arg1)
	for _ = 1, arg2 or 20 do
		local any_step_result1 = var1_result1:step(0.1)
		if any_step_result1 < 1 then
			any_step_result1 = math.floor(any_step_result1 * 100) / 100
		elseif 1 < any_step_result1 then
			any_step_result1 = math.ceil(any_step_result1 * 100) / 100
		end
		table.insert(module, any_step_result1)
		if any_step_result1 == 1 then break end
	end
	return HttpService_upvr:JSONEncode(module), var1_result1
end
return {
	createSnapshot = createSnapshot_upvr;
	testSnapshot = function(arg1, arg2) -- Line 33, Named "testSnapshot"
		--[[ Upvalues[1]:
			[1]: createSnapshot_upvr (readonly)
		]]
		local createSnapshot_result1, createSnapshot_result2 = createSnapshot_upvr(arg1, select(2, string.gsub(arg2, ',', ',')) + 1)
		if createSnapshot_result1 ~= arg2 then
			error(`Snapshot does not match expected value.\n\nExpected:\n{arg2}\n\nActual:\n{createSnapshot_result1}`, 2)
		end
		return createSnapshot_result2
	end;
}