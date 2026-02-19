-- Name: loggerMiddleware
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_remo@1.5.2.remo.middleware.loggerMiddleware
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7583329999979469 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:18:41
-- Luau version 6, Types version 3
-- Time taken: 0.003107 seconds

local constants_upvr = script.Parent.Parent.constants
if require(constants_upvr).IS_SERVER then
	constants_upvr = "client → server"
else
	constants_upvr = "server → client"
end
local function stringify_upvr(...) -- Line 6, Named "stringify"
	local module = {}
	for i = 1, select('#', ...) do
		local selected_arg = select(i, ...)
		local var6
		if 1 < i then
			var6 = '\n'
		else
			var6 = ""
		end
		table.insert(module, `{var6}\t{i}.`)
		if type(selected_arg) == "string" then
			table.insert(module, string.format("%q", selected_arg))
		elseif type(selected_arg) == "userdata" then
			var6 = typeof(selected_arg)
			table.insert(module, `{var6}({selected_arg})`)
		else
			table.insert(module, selected_arg)
		end
	end
	if #module == 0 then
		return "\t1. (void)\n"
	end
	table.insert(module, '\n')
	return table.unpack(module)
end
return function(arg1, arg2) -- Line 32
	--[[ Upvalues[2]:
		[1]: constants_upvr (readonly)
		[2]: stringify_upvr (readonly)
	]]
	return function(...) -- Line 33
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: constants_upvr (copied, readonly)
			[3]: stringify_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if arg2.type == "event" then
			print(`\n🟡 ({constants_upvr}) {arg2.name}\n\n`, stringify_upvr(...))
			return arg1(...)
		end
		print(`\n🟣 ({constants_upvr} async) {arg2.name}\n`)
		print("Parameters\n", stringify_upvr(...))
		local packed = table.pack(arg1(...))
		print("Returns\n", stringify_upvr(table.unpack(packed, 1, packed.n)))
		return table.unpack(packed, 1, packed.n)
	end
end