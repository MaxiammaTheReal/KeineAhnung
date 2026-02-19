-- Name: createBroadcastReceiver
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.broadcast.createBroadcastReceiver
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7296420999991824 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:15
-- Luau version 6, Types version 3
-- Time taken: 0.003171 seconds

local hydrate_2_upvr = require(script.Parent.hydrate)
return function(arg1) -- Line 10, Named "createBroadcastReceiver"
	--[[ Upvalues[1]:
		[1]: hydrate_2_upvr (readonly)
	]]
	local module = {}
	local var3_upvw
	local function _(arg1_2) -- Line 14, Named "hydrateState"
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		assert(var3_upvw, "Cannot use broadcast receiver before the middleware is applied.")
		local clone_2 = table.clone(var3_upvw:getState())
		for i, v in arg1_2 do
			clone_2[i] = v
		end
		var3_upvw:setState(clone_2)
	end
	function module.dispatch(arg1_3, arg2) -- Line 26
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: hydrate_2_upvr (copied, readonly)
		]]
		assert(var3_upvw, "Cannot dispatch actions before the middleware is applied")
		for _, v_2 in arg2 do
			local var17 = var3_upvw:getDispatchers()[v_2.name]
			if var17 then
				var17(table.unpack(v_2.arguments))
			elseif hydrate_2_upvr.isHydrate(v_2) then
				assert(var3_upvw, "Cannot use broadcast receiver before the middleware is applied.")
				for i_4, v_4 in v_2.arguments[1] do
					table.clone(var3_upvw:getState())[i_4] = v_4
					local var19
				end
				var3_upvw:setState(var19)
			end
		end
	end
	function module.hydrate(arg1_4, arg2) -- Line 42
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		assert(var3_upvw, "Cannot use broadcast receiver before the middleware is applied.")
		local clone = table.clone(var3_upvw:getState())
		for i_3, v_3 in arg2 do
			clone[i_3] = v_3
		end
		var3_upvw:setState(clone)
	end
	function module.middleware(arg1_5) -- Line 46
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var3_upvw = arg1_5
		arg1.start()
		return function(arg1_6) -- Line 51
			return arg1_6
		end
	end
	return module
end