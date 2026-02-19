-- Name: effect
-- Path: game:GetService("ReplicatedStorage").Packages._Index.littensy_charm@0.10.0.charm.src.effect
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.0055080999954953 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 15:32:50
-- Luau version 6, Types version 3
-- Time taken: 0.001786 seconds

local store_upvr = require(script.Parent.store)
return function(arg1) -- Line 12, Named "effect"
	--[[ Upvalues[1]:
		[1]: store_upvr (readonly)
	]]
	local tbl_upvw = {}
	local var3_upvw
	local var4_upvw = false
	local disconnect_upvw
	local function listener_upvr() -- Line 18, Named "listener"
		--[[ Upvalues[7]:
			[1]: var3_upvw (read and write)
			[2]: store_upvr (copied, readonly)
			[3]: tbl_upvw (read and write)
			[4]: listener_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: disconnect_upvw (read and write)
			[7]: var4_upvw (read and write)
		]]
		if var3_upvw then
			var3_upvw()
		end
		store_upvr.disconnect(tbl_upvw, listener_upvr)
		local any_capture_result1, any_capture_result2 = store_upvr.capture(arg1, disconnect_upvw)
		tbl_upvw = any_capture_result1
		var3_upvw = any_capture_result2
		if not var4_upvw then
			store_upvr.connect(tbl_upvw, listener_upvr)
		end
	end
	function disconnect_upvw() -- Line 31, Named "disconnect"
		--[[ Upvalues[5]:
			[1]: var4_upvw (read and write)
			[2]: store_upvr (copied, readonly)
			[3]: tbl_upvw (read and write)
			[4]: listener_upvr (readonly)
			[5]: var3_upvw (read and write)
		]]
		if var4_upvw then
		else
			var4_upvw = true
			store_upvr.disconnect(tbl_upvw, listener_upvr)
			if var3_upvw then
				var3_upvw()
			end
		end
	end
	local var8 = disconnect_upvw
	local any_capture_result1_2, any_capture_result2_2 = store_upvr.capture(arg1, var8)
	tbl_upvw = any_capture_result1_2
	var3_upvw = any_capture_result2_2
	if not var4_upvw then
		store_upvr.connect(tbl_upvw, listener_upvr)
	end
	return var8
end