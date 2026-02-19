-- Name: interval
-- Path: game:GetService("ReplicatedStorage").Packages._Index['littensy_charm-sync@0'].3.0['charm-sync'].src.interval
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7328016999963438 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:06
-- Luau version 6, Types version 3
-- Time taken: 0.001502 seconds

local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2) -- Line 10, Named "interval"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg2 < 0 then
		return function() -- Line 12
		end
	end
	local var4_upvw = 0
	local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 17
		--[[ Upvalues[3]:
			[1]: var4_upvw (read and write)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		var4_upvw += arg1_2
		if arg2 <= var4_upvw then
			var4_upvw = 0
			arg1()
		end
	end)
	return function() -- Line 25
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end
end