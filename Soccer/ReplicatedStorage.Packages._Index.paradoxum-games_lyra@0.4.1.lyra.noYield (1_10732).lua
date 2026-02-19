-- Name: noYield
-- Path: game:GetService("ReplicatedStorage").Packages._Index['paradoxum-games_lyra@0'].4.1.lyra.noYield
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6710841999956756 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:19:09
-- Luau version 6, Types version 3
-- Time taken: 0.000957 seconds

local function resultHandler_upvr(arg1, arg2, ...) -- Line 12, Named "resultHandler"
	if not arg2 then
		error(debug.traceback(arg1, ...), 2)
	end
	if coroutine.status(arg1) ~= "dead" then
		error(debug.traceback(arg1, "attempt to yield"), 2)
	end
	return ...
end
return function(arg1, ...) -- Line 25, Named "noYield"
	--[[ Upvalues[1]:
		[1]: resultHandler_upvr (readonly)
	]]
	local coroutine_create_result1 = coroutine.create(arg1)
	return resultHandler_upvr(coroutine_create_result1, coroutine.resume(coroutine_create_result1, ...))
end