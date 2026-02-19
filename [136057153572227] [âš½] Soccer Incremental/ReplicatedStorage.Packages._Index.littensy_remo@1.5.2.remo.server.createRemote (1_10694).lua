-- Name: createRemote
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.server.createRemote
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6754776000016136 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:39
-- Luau version 6, Types version 3
-- Time taken: 0.005400 seconds

local instances_upvr = require(script.Parent.Parent.utils.instances)
local testRemote_upvr = require(script.Parent.Parent.utils.testRemote)
local Promise_upvr = require(script.Parent.Parent.Promise)
local Players_upvr = game:GetService("Players")
local compose_upvr = require(script.Parent.Parent.utils.compose)
return function(arg1, arg2) -- Line 10, Named "createRemote"
	--[[ Upvalues[5]:
		[1]: instances_upvr (readonly)
		[2]: testRemote_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: compose_upvr (readonly)
	]]
	local any_createRemoteEvent_result1_upvw = instances_upvr.createRemoteEvent(arg1, arg2.metadata.unreliable)
	local any_createTestRemote_result1_upvr = testRemote_upvr.createTestRemote()
	local var8_upvw = true
	local tbl_upvr = {}
	local module = {}
	module.name = arg1
	module.type = "event"
	module.test = any_createTestRemote_result1_upvr
	local var11_upvw = 0
	function module.connect(arg1_2, arg2_2) -- Line 24
		--[[ Upvalues[4]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var11_upvw (read and write)
			[4]: tbl_upvr (readonly)
		]]
		assert(var8_upvw, `Cannot connect to destroyed event remote '{arg1}'`)
		local var12_upvr = var11_upvw
		var11_upvw += 1
		tbl_upvr[var12_upvr] = arg2_2
		return function() -- Line 31
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: var12_upvr (readonly)
			]]
			tbl_upvr[var12_upvr] = nil
		end
	end
	function module.promise(arg1_3, arg2_3, arg3) -- Line 36
		--[[ Upvalues[3]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		assert(var8_upvw, `Cannot promise destroyed event remote '{arg1}'`)
		return Promise_upvr.new(function(arg1_4, arg2_4, arg3_2) -- Line 39
			--[[ Upvalues[3]:
				[1]: arg1_3 (readonly)
				[2]: arg2_3 (readonly)
				[3]: arg3 (readonly)
			]]
			local var16_upvw
			var16_upvw = arg1_3:connect(function(...) -- Line 41
				--[[ Upvalues[4]:
					[1]: arg2_3 (copied, readonly)
					[2]: var16_upvw (read and write)
					[3]: arg3 (copied, readonly)
					[4]: arg1_4 (readonly)
				]]
				if not arg2_3 or arg2_3(...) then
					var16_upvw()
					if arg3 then
						arg1_4(arg3(...))
						return
					end
					arg1_4(...)
				end
			end)
			arg3_2(var16_upvw)
		end)
	end
	function module.fire(arg1_5, arg2_5, ...) -- Line 56
		--[[ Upvalues[4]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: any_createRemoteEvent_result1_upvw (read and write)
			[4]: any_createTestRemote_result1_upvr (readonly)
		]]
		assert(var8_upvw, `Cannot fire destroyed event remote '{arg1}'`)
		any_createRemoteEvent_result1_upvw:FireClient(arg2_5, ...)
		any_createTestRemote_result1_upvr:_fire(arg2_5, ...)
	end
	function module.fireAll(arg1_6, ...) -- Line 62
		--[[ Upvalues[4]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: any_createRemoteEvent_result1_upvw (read and write)
			[4]: any_createTestRemote_result1_upvr (readonly)
		]]
		assert(var8_upvw, `Cannot fire destroyed event remote '{arg1}'`)
		any_createRemoteEvent_result1_upvw:FireAllClients(...)
		any_createTestRemote_result1_upvr:_fire(...)
	end
	function module.fireAllExcept(arg1_7, arg2_6, ...) -- Line 68
		--[[ Upvalues[5]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: any_createRemoteEvent_result1_upvw (read and write)
			[5]: any_createTestRemote_result1_upvr (readonly)
		]]
		assert(var8_upvw, `Cannot fire destroyed event remote '{arg1}'`)
		for _, v in Players_upvr:GetPlayers() do
			if v ~= arg2_6 then
				any_createRemoteEvent_result1_upvw:FireClient(v, ...)
			end
		end
		any_createTestRemote_result1_upvr:_fire(...)
	end
	function module.firePlayers(arg1_8, arg2_7, ...) -- Line 78
		--[[ Upvalues[4]:
			[1]: var8_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: any_createRemoteEvent_result1_upvw (read and write)
			[4]: any_createTestRemote_result1_upvr (readonly)
		]]
		assert(var8_upvw, `Cannot fire destroyed event remote '{arg1}'`)
		for _, v_2 in arg2_7 do
			any_createRemoteEvent_result1_upvw:FireClient(v_2, ...)
		end
		any_createTestRemote_result1_upvr:_fire(...)
	end
	function module.destroy(arg1_9) -- Line 86
		--[[ Upvalues[3]:
			[1]: var8_upvw (read and write)
			[2]: any_createRemoteEvent_result1_upvw (read and write)
			[3]: tbl_upvr (readonly)
		]]
		if not var8_upvw then
		else
			var8_upvw = false
			any_createRemoteEvent_result1_upvw:Destroy()
			any_createRemoteEvent_result1_upvw = nil
			table.clear(tbl_upvr)
		end
	end
	local var28_upvr = compose_upvr(arg2.metadata.middleware)(function(...) -- Line 99
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		for _, v_3 in tbl_upvr do
			task.spawn(v_3, ...)
		end
	end, module)
	any_createRemoteEvent_result1_upvw.OnServerEvent:Connect(function(arg1_10, ...) -- Line 105
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: var28_upvr (readonly)
		]]
		for i_4, v_4 in arg2.metadata.parameters do
			local selected_arg = select(i_4, ...)
			assert(v_4(selected_arg), `Invalid parameter #{i_4} for event remote '{arg1}': got {selected_arg}`)
		end
		var28_upvr(arg1_10, ...)
	end)
	setmetatable(module, {
		__call = module.fire;
	})
	return module
end