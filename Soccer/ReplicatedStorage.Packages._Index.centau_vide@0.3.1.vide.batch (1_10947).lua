-- Name: batch
-- Path: game:GetService("ReplicatedStorage").Packages._Index.centau_vide@0.3.1.vide.batch
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0293290999979945 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:48
-- Luau version 6, Types version 3
-- Time taken: 0.001421 seconds

if not game then
	script = require("test/relative-string") -- Setting global
end
local flags_upvr = require(script.Parent.flags)
local graph_upvr = require(script.Parent.graph)
local throw_upvr = require(script.Parent.throw)
return function(arg1) -- Line 7, Named "batch"
	--[[ Upvalues[3]:
		[1]: flags_upvr (readonly)
		[2]: graph_upvr (readonly)
		[3]: throw_upvr (readonly)
	]]
	local batch = flags_upvr.batch
	local var5
	if not batch then
		flags_upvr.batch = true
		var5 = graph_upvr.get_update_queue_length()
	end
	local pcall_result1, pcall_result2 = pcall(arg1)
	if not batch then
		flags_upvr.batch = false
		graph_upvr.flush_update_queue(var5)
	end
	if not pcall_result1 then
		throw_upvr(`error occured while batching updates: {pcall_result2}`)
	end
end