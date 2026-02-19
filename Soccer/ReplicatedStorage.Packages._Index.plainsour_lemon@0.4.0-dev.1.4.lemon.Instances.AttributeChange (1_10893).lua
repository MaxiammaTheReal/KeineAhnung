-- Name: AttributeChange
-- Path: game:GetService("ReplicatedStorage").Packages._Index.plainsour_lemon@0.4['0-dev'].1.4.lemon.Instances.AttributeChange
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.9406213999973261 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:45
-- Luau version 6, Types version 3
-- Time taken: 0.002101 seconds

local tbl_upvr = {}
local External_upvr = require(script.Parent.Parent.External)
return function(arg1) -- Line 17, Named "AttributeChange"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: External_upvr (readonly)
	]]
	local var4 = tbl_upvr[arg1]
	if var4 == nil then
		var4 = {
			type = "SpecialKey";
			kind = "AttributeChange";
			stage = "observer";
			apply = function(arg1_2, arg2, arg3, arg4) -- Line 26, Named "apply"
				--[[ Upvalues[2]:
					[1]: External_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				if typeof(arg3) ~= "function" then
					External_upvr.logError("invalidAttributeChangeHandler", nil, arg1)
				end
				table.insert(arg2, arg4:GetAttributeChangedSignal(arg1):Connect(function() -- Line 37
					--[[ Upvalues[3]:
						[1]: arg3 (readonly)
						[2]: arg4 (readonly)
						[3]: arg1 (copied, readonly)
					]]
					arg3(arg4:GetAttribute(arg1))
				end))
			end;
		}
		tbl_upvr[arg1] = var4
	end
	return var4
end