-- Name: createAsyncRemote
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.server.createAsyncRemote
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5375141000040458 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:37
-- Luau version 6, Types version 3
-- Time taken: 0.004010 seconds

local instances_upvr = require(script.Parent.Parent.utils.instances)
local testRemote_upvr = require(script.Parent.Parent.utils.testRemote)
local Promise_upvr = require(script.Parent.Parent.Promise)
local compose_upvr = require(script.Parent.Parent.utils.compose)
local unwrap_upvr = require(script.Parent.Parent.utils.unwrap)
return function(arg1, arg2) -- Line 9, Named "createAsyncRemote"
	--[[ Upvalues[5]:
		[1]: instances_upvr (readonly)
		[2]: testRemote_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: compose_upvr (readonly)
		[5]: unwrap_upvr (readonly)
	]]
	assert(arg2.metadata.returns, `Missing return value validator for async remote '{arg1}'`)
	local any_createRemoteFunction_result1_upvr = instances_upvr.createRemoteFunction(arg1)
	local any_createTestAsyncRemote_result1_upvr = testRemote_upvr.createTestAsyncRemote()
	local var8_upvw = true
	local function var9_upvw() -- Line 15
	end
	local module = {}
	module.name = arg1
	module.type = "function"
	module.test = any_createTestAsyncRemote_result1_upvr
	function module.onRequest(arg1_2, arg2_2) -- Line 23
		--[[ Upvalues[3]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var9_upvw (read and write)
		]]
		assert(var8_upvw, `Cannot use destroyed async remote '{arg1}'`)
		var9_upvw = arg2_2
	end
	function module.request(arg1_3, arg2_3, ...) -- Line 28
		--[[ Upvalues[6]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: any_createTestAsyncRemote_result1_upvr (readonly)
			[5]: any_createRemoteFunction_result1_upvr (readonly)
			[6]: arg2 (readonly)
		]]
		assert(var8_upvw, `Cannot use destroyed async remote '{arg1}'`)
		return Promise_upvr.try(function(...) -- Line 31
			--[[ Upvalues[5]:
				[1]: any_createTestAsyncRemote_result1_upvr (copied, readonly)
				[2]: arg2_3 (readonly)
				[3]: any_createRemoteFunction_result1_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			local var16
			if any_createTestAsyncRemote_result1_upvr:hasRequestHandler() then
				var16 = table.pack(any_createTestAsyncRemote_result1_upvr:_request(arg2_3, ...))
			else
				var16 = table.pack(any_createRemoteFunction_result1_upvr:InvokeClient(arg2_3, ...))
			end
			for i, v in arg2.metadata.returns do
				local var17 = var16[i]
				assert(v(var17), `Invalid return value #{i} for async remote '{arg1}': got {var17}`)
			end
			return table.unpack(var16, 1, var16.n)
		end, ...)
	end
	function module.destroy(arg1_4) -- Line 45
		--[[ Upvalues[2]:
			[1]: var8_upvw (read and write)
			[2]: any_createRemoteFunction_result1_upvr (readonly)
		]]
		if var8_upvw then
			var8_upvw = false
			any_createRemoteFunction_result1_upvr:Destroy()
		end
	end
	local var19_upvr = compose_upvr(arg2.metadata.middleware)(function(...) -- Line 52
		--[[ Upvalues[2]:
			[1]: unwrap_upvr (copied, readonly)
			[2]: var9_upvw (read and write)
		]]
		return unwrap_upvr(var9_upvw(...))
	end, module)
	function any_createRemoteFunction_result1_upvr.OnServerInvoke(arg1_5, ...) -- Line 56
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: var19_upvr (readonly)
		]]
		for i_2, v_2 in arg2.metadata.parameters do
			local selected_arg = select(i_2, ...)
			assert(v_2(selected_arg), `Invalid parameter #{i_2} for async remote '{arg1}': got {selected_arg}`)
		end
		return var19_upvr(arg1_5, ...)
	end
	setmetatable(module, {
		__call = module.request;
	})
	return module
end