-- Name: loggerMiddleware
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_reflex@4.3.1.reflex.middleware.loggerMiddleware
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6294307999996818 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:17:32
-- Luau version 6, Types version 3
-- Time taken: 0.003846 seconds

local function stringify_upvr(arg1, arg2) -- Line 3, Named "stringify"
	--[[ Upvalues[1]:
		[1]: stringify_upvr (readonly)
	]]
	local var11 = arg2 or 0
	if type(arg1) == "string" then
		return string.format("%q", arg1)
	end
	if type(arg1) == "table" then
		local var12
		if var11 < var12 then
			var12 = '{'
			for i, v in arg1 do
				var12 = var12..'['..stringify_upvr(i, var11 + 1).."] = "..stringify_upvr(v, var11 + 1)..", "
			end
			return var12..'}'
		end
	end
	return tostring(arg1)
end
return function(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: stringify_upvr (readonly)
	]]
	print("[Reflex]: Mounted with state", arg1:getState())
	arg1:subscribe(function(arg1_2) -- Line 28
		print("[Reflex]: State changed to", arg1_2)
	end)
	return function(arg1_3, arg2) -- Line 32
		--[[ Upvalues[1]:
			[1]: stringify_upvr (copied, readonly)
		]]
		return function(...) -- Line 33
			--[[ Upvalues[3]:
				[1]: stringify_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: arg1_3 (readonly)
			]]
			local packed = table.pack(...)
			for i_2 = 1, packed.n do
				packed[i_2] = stringify_upvr(packed[i_2])
			end
			print(`[Reflex]: Dispatching {arg2}({table.concat(packed, ", ")})`)
			return arg1_3(...)
		end
	end
end