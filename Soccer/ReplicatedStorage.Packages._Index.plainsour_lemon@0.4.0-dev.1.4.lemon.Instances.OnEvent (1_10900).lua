-- Name: OnEvent
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon.Instances.OnEvent
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0409512999976869 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.002365 seconds

local function getProperty_unsafe_upvr(arg1, arg2) -- Line 17, Named "getProperty_unsafe"
	return arg1[arg2]
end
local tbl_upvr = {}
local External_upvr = require(script.Parent.Parent.External)
return function(arg1) -- Line 24, Named "OnEvent"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: getProperty_unsafe_upvr (readonly)
		[3]: External_upvr (readonly)
	]]
	local var4 = tbl_upvr[arg1]
	if var4 == nil then
		var4 = {
			type = "SpecialKey";
			kind = "OnEvent";
			stage = "observer";
			apply = function(arg1_2, arg2, arg3, arg4) -- Line 33, Named "apply"
				--[[ Upvalues[3]:
					[1]: getProperty_unsafe_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: External_upvr (copied, readonly)
				]]
				local pcall_result1, pcall_result2 = pcall(getProperty_unsafe_upvr, arg4, arg1)
				if not pcall_result1 or typeof(pcall_result2) ~= "RBXScriptSignal" then
					External_upvr.logError("cannotConnectEvent", nil, arg4.ClassName, arg1)
				else
					if typeof(arg3) ~= "function" then
						External_upvr.logError("invalidEventHandler", nil, arg1)
						return
					end
					table.insert(arg2, pcall_result2:Connect(arg3))
				end
			end;
		}
		tbl_upvr[arg1] = var4
	end
	return var4
end