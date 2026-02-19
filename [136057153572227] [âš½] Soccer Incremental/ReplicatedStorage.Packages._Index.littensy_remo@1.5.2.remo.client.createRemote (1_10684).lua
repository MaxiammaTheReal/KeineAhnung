-- Name: createRemote
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.client.createRemote
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7249573999943095 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:32
-- Luau version 6, Types version 3
-- Time taken: 0.006580 seconds

local testRemote_upvr = require(script.Parent.Parent.utils.testRemote)
local Promise_upvr = require(script.Parent.Parent.Promise)
local instances_upvr = require(script.Parent.Parent.utils.instances)
local compose_upvr = require(script.Parent.Parent.utils.compose)
return function(arg1, arg2) -- Line 8, Named "createRemote"
	--[[ Upvalues[4]:
		[1]: testRemote_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: instances_upvr (readonly)
		[4]: compose_upvr (readonly)
	]]
	local var5_upvw
	local any_createTestRemote_result1_upvr = testRemote_upvr.createTestRemote()
	local var7_upvw = true
	local tbl_upvr_2 = {}
	local tbl_upvr = {}
	local function noop() -- Line 17
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		error(`Attempted to use a server-only function on the client remote '{arg1}'`)
	end
	local module = {}
	module.name = arg1
	module.type = "event"
	module.test = any_createTestRemote_result1_upvr
	module.fireAll = noop
	module.fireAllExcept = noop
	module.firePlayers = noop
	local var11_upvw = 0
	function module.connect(arg1_2, arg2_2) -- Line 30
		--[[ Upvalues[5]:
			[1]: var7_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var11_upvw (read and write)
			[4]: tbl_upvr_2 (readonly)
			[5]: tbl_upvr (readonly)
		]]
		assert(var7_upvw, `Cannot use destroyed remote '{arg1}'`)
		local var14_upvr = var11_upvw
		var11_upvw += 1
		tbl_upvr_2[var14_upvr] = arg2_2
		if 0 < #tbl_upvr then
			for _, v in tbl_upvr do
				task.spawn(arg2_2, table.unpack(v))
			end
			table.clear(tbl_upvr)
		end
		return function() -- Line 44
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: var14_upvr (readonly)
			]]
			tbl_upvr_2[var14_upvr] = nil
		end
	end
	function module.promise(arg1_3, arg2_3, arg3) -- Line 49
		--[[ Upvalues[3]:
			[1]: var7_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		assert(var7_upvw, `Cannot promise destroyed event remote '{arg1}'`)
		return Promise_upvr.new(function(arg1_4, arg2_4, arg3_2) -- Line 52
			--[[ Upvalues[3]:
				[1]: arg1_3 (readonly)
				[2]: arg2_3 (readonly)
				[3]: arg3 (readonly)
			]]
			local var18_upvw
			var18_upvw = arg1_3:connect(function(...) -- Line 54
				--[[ Upvalues[4]:
					[1]: arg2_3 (copied, readonly)
					[2]: var18_upvw (read and write)
					[3]: arg3 (copied, readonly)
					[4]: arg1_4 (readonly)
				]]
				if not arg2_3 or arg2_3(...) then
					var18_upvw()
					if arg3 then
						arg1_4(arg3(...))
						return
					end
					arg1_4(...)
				end
			end)
			arg3_2(var18_upvw)
		end)
	end
	function module.fire(arg1_5, ...) -- Line 69
		--[[ Upvalues[4]:
			[1]: var7_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: instances_upvr (copied, readonly)
			[4]: any_createTestRemote_result1_upvr (readonly)
		]]
		assert(var7_upvw, `Cannot use destroyed remote '{arg1}'`)
		local packed_upvr = table.pack(...)
		instances_upvr.promiseRemoteEvent(arg1):andThen(function(arg1_6) -- Line 74
			--[[ Upvalues[2]:
				[1]: packed_upvr (readonly)
				[2]: any_createTestRemote_result1_upvr (copied, readonly)
			]]
			arg1_6:FireServer(table.unpack(packed_upvr, 1, packed_upvr.n))
			any_createTestRemote_result1_upvr:_fire(table.unpack(packed_upvr, 1, packed_upvr.n))
		end, function(arg1_7) -- Line 77
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			warn(`Failed to fire remote '{arg1}': {arg1_7}`)
		end)
	end
	function module.destroy(arg1_8) -- Line 82
		--[[ Upvalues[4]:
			[1]: var7_upvw (read and write)
			[2]: var5_upvw (read and write)
			[3]: tbl_upvr_2 (readonly)
			[4]: tbl_upvr (readonly)
		]]
		if not var7_upvw then
		else
			var7_upvw = false
			if var5_upvw then
				var5_upvw:Disconnect()
				var5_upvw = nil
			end
			table.clear(tbl_upvr_2)
			table.clear(tbl_upvr)
		end
	end
	local var26_upvr = compose_upvr(arg2.metadata.middleware)(function(...) -- Line 98
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		if next(tbl_upvr_2) then
			for _, v_2 in tbl_upvr_2 do
				task.spawn(v_2, ...)
			end
		else
			table.insert(tbl_upvr, table.pack(...))
		end
	end, module)
	instances_upvr.promiseRemoteEvent(arg1):andThen(function(arg1_9) -- Line 108
		--[[ Upvalues[5]:
			[1]: var7_upvw (read and write)
			[2]: var5_upvw (read and write)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
			[5]: var26_upvr (readonly)
		]]
		if not var7_upvw then
		else
			var5_upvw = arg1_9.OnClientEvent:Connect(function(...) -- Line 113
				--[[ Upvalues[3]:
					[1]: arg2 (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: var26_upvr (copied, readonly)
				]]
				for i_3, v_3 in arg2.metadata.parameters do
					local selected_arg = select(i_3, ...)
					assert(v_3(selected_arg), `Invalid parameter #{i_3} for remote '{arg1}': got {selected_arg}`)
				end
				var26_upvr(...)
			end)
		end
	end, function(arg1_10) -- Line 121
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		warn(`Failed to initialize remote '{arg1}': {arg1_10}`)
	end)
	setmetatable(module, {
		__call = module.fire;
	})
	return module
end