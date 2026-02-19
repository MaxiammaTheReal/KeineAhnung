-- Name: client
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.client
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6240890000044601 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:29
-- Luau version 6, Types version 3
-- Time taken: 0.002451 seconds

local createRemote_upvr = require(script.createRemote)
local createAsyncRemote_upvr = require(script.createAsyncRemote)
local function createRemotes_upvr(arg1, arg2) -- Line 5, Named "createRemotes"
	--[[ Upvalues[3]:
		[1]: createRemotes_upvr (readonly)
		[2]: createRemote_upvr (readonly)
		[3]: createAsyncRemote_upvr (readonly)
	]]
	local module = {}
	local var8
	if arg2 then
		var8 = `{arg2}.`
	else
		var8 = ""
	end
	for i, v in arg1 do
		local var9
		if v.type == "namespace" then
			var9 = createRemotes_upvr(v.remotes, var8..i)
		elseif v.type == "event" then
			var9 = createRemote_upvr(var8..i, v)
		elseif v.type == "function" then
			var9 = createAsyncRemote_upvr(var8..i, v)
		else
			var9 = error(`Invalid remote type "{v.type}"`)
		end
		module[i] = var9
	end
	return module
end
return {
	createRemotes = createRemotes_upvr;
}