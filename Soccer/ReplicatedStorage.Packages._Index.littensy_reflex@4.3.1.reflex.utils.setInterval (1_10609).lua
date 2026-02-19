-- Name: setInterval
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.utils.setInterval
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7625931000002311 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:35
-- Luau version 6, Types version 3
-- Time taken: 0.001639 seconds

local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2) -- Line 3, Named "setInterval"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg2 < 0 then
		return function() -- Line 5
		end
	end
	local var4_upvw = 0
	local any_Connect_result1_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 11
		--[[ Upvalues[3]:
			[1]: var4_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		var4_upvw += arg1_2
		if arg2 <= var4_upvw then
			var4_upvw -= arg2
			arg1()
		end
	end)
	return function() -- Line 20
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvw (read and write)
		]]
		any_Connect_result1_upvw:Disconnect()
	end
end