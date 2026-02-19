-- Name: createRemotes
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.createRemotes
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6202107000062824 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:34
-- Luau version 6, Types version 3
-- Time taken: 0.003430 seconds

local function deepApplyMiddleware_upvr(arg1, ...) -- Line 6, Named "deepApplyMiddleware"
	--[[ Upvalues[1]:
		[1]: deepApplyMiddleware_upvr (readonly)
	]]
	for _, v in arg1 do
		if v.type == "namespace" then
			deepApplyMiddleware_upvr(v.remotes, ...)
		else
			v.middleware(...)
		end
	end
end
local constants_upvr = require(script.Parent.constants)
local server_upvr = require(script.Parent.server)
local client_upvr = require(script.Parent.client)
return function(arg1, ...) -- Line 16, Named "createRemotes"
	--[[ Upvalues[4]:
		[1]: deepApplyMiddleware_upvr (readonly)
		[2]: constants_upvr (readonly)
		[3]: server_upvr (readonly)
		[4]: client_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local var15_upvr = deepApplyMiddleware_upvr
	var15_upvr(arg1, ...)
	if constants_upvr.IS_SERVER then
		var15_upvr = server_upvr.createRemotes(arg1)
	else
		var15_upvr = client_upvr.createRemotes(arg1)
	end
	local function recursiveDestroy_upvr(arg1_2) -- Line 23, Named "recursiveDestroy"
		--[[ Upvalues[1]:
			[1]: recursiveDestroy_upvr (readonly)
		]]
		for _, v_2 in arg1_2 do
			if type(v_2) ~= "table" then return end
			if v_2.destroy then
				v_2:destroy()
			else
				recursiveDestroy_upvr(v_2)
			end
		end
	end
	function module.destroy(arg1_3) -- Line 37
		--[[ Upvalues[2]:
			[1]: recursiveDestroy_upvr (readonly)
			[2]: var15_upvr (readonly)
		]]
		recursiveDestroy_upvr(var15_upvr)
	end
	for i_3, v_3 in var15_upvr do
		module[i_3] = v_3
	end
	return module
end