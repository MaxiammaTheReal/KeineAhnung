-- Name: createAsyncRemote
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.client.createAsyncRemote
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5879628999973647 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:30
-- Luau version 6, Types version 3
-- Time taken: 0.004690 seconds

local testRemote_upvr = require(script.Parent.Parent.utils.testRemote)
local instances_upvr = require(script.Parent.Parent.utils.instances)
local compose_upvr = require(script.Parent.Parent.utils.compose)
local unwrap_upvr = require(script.Parent.Parent.utils.unwrap)
return function(arg1, arg2) -- Line 7, Named "createAsyncRemote"
	--[[ Upvalues[4]:
		[1]: testRemote_upvr (readonly)
		[2]: instances_upvr (readonly)
		[3]: compose_upvr (readonly)
		[4]: unwrap_upvr (readonly)
	]]
	local any_createTestAsyncRemote_result1_upvr = testRemote_upvr.createTestAsyncRemote()
	local var6_upvw = true
	local function var18_upvw() -- Line 10
	end
	local module = {}
	module.name = arg1
	module.type = "function"
	module.test = any_createTestAsyncRemote_result1_upvr
	function module.onRequest(arg1_2, arg2_2) -- Line 18
		--[[ Upvalues[3]:
			[1]: var6_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var18_upvw (read and write)
		]]
		assert(var6_upvw, `Cannot use destroyed async remote '{arg1}'`)
		var18_upvw = arg2_2
	end
	function module.request(arg1_3, ...) -- Line 23
		--[[ Upvalues[5]:
			[1]: var6_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: instances_upvr (copied, readonly)
			[4]: any_createTestAsyncRemote_result1_upvr (readonly)
			[5]: arg2 (readonly)
		]]
		assert(var6_upvw, `Cannot use destroyed async remote '{arg1}'`)
		local packed_upvr = table.pack(...)
		return instances_upvr.promiseRemoteFunction(arg1):andThen(function(arg1_4) -- Line 28
			--[[ Upvalues[4]:
				[1]: any_createTestAsyncRemote_result1_upvr (copied, readonly)
				[2]: packed_upvr (readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg1 (copied, readonly)
			]]
			local var15
			if any_createTestAsyncRemote_result1_upvr:hasRequestHandler() then
				var15 = table.pack(any_createTestAsyncRemote_result1_upvr:_request(table.unpack(packed_upvr, 1, packed_upvr.n)))
			else
				var15 = table.pack(arg1_4:InvokeServer(table.unpack(packed_upvr, 1, packed_upvr.n)))
			end
			for i, v in arg2.metadata.returns do
				local var16 = var15[i]
				assert(v(var16), `Invalid return value #{i} for async remote '{arg1}': got {var16}`)
			end
			return table.unpack(var15, 1, var15.n)
		end, function(arg1_5) -- Line 39
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			warn(`Failed to invoke async remote '{arg1}': {arg1_5}`)
		end)
	end
	function module.destroy(arg1_6) -- Line 44
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: var18_upvw (read and write)
		]]
		if var6_upvw then
			var6_upvw = false
			function var18_upvw() -- Line 47
			end
		end
	end
	local var21_upvr = compose_upvr(arg2.metadata.middleware)(function(...) -- Line 51
		--[[ Upvalues[2]:
			[1]: var18_upvw (read and write)
			[2]: unwrap_upvr (copied, readonly)
		]]
		var18_upvw(...)
		return unwrap_upvr(var18_upvw(...))
	end, module)
	instances_upvr.promiseRemoteFunction(arg1):andThen(function(arg1_7) -- Line 56
		--[[ Upvalues[4]:
			[1]: var6_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: var21_upvr (readonly)
		]]
		if not var6_upvw then
		else
			arg1_7.OnClientInvoke = function(...) -- Line 61, Named "OnClientInvoke"
				--[[ Upvalues[4]:
					[1]: var6_upvw (copied, read and write)
					[2]: arg1 (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: var21_upvr (copied, readonly)
				]]
				assert(var6_upvw, `Async remote '{arg1}' was invoked after it was destroyed`)
				for i_2, v_2 in arg2.metadata.parameters do
					local selected_arg = select(i_2, ...)
					assert(v_2(selected_arg), `Invalid parameter #{i_2} for async remote '{arg1}': got {selected_arg}`)
				end
				return var21_upvr(...)
			end
		end
	end, function(arg1_8) -- Line 71
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		warn(`Failed to initialize async remote '{arg1}': {arg1_8}`)
	end)
	setmetatable(module, {
		__call = module.request;
	})
	return module
end